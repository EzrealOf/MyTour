package com.ezreal.controller;

import com.ezreal.beans.SpotBean;
import com.ezreal.beans.SpotInfoBean;
import com.ezreal.beans.SpotWantBean;
import com.ezreal.service.ICityService;
import com.ezreal.service.ISpotInfoService;
import com.ezreal.service.ISpotService;
import com.ezreal.service.ISpotWantService;
import com.ezreal.service.impl.SpotServiceImpl;
import com.ezreal.tool.BaseResponseByJson;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by Ezreal# on 2017/4/29.
 */
@Controller
public class SpotController {


    @Resource
    private ISpotService spotServiceImpl;
    @Autowired
    private ISpotWantService spotwantServiceImpl;
    @Autowired
    private ISpotInfoService spotInfoServiceImpl;
    @Autowired
    BaseResponseByJson json;



    private List<SpotBean> tourList =new ArrayList<SpotBean>();
    private List<SpotBean> timeTourList = new ArrayList<SpotBean>(); //最优时间



    @RequestMapping("toSpot")
    public String selectSpotByName(String  name,Map<String,Object>model) throws Exception{
        SpotBean spotBean=spotServiceImpl.selectSpotBySpotname(name);
        model.put("spot",spotBean);
        List<SpotInfoBean> InfoList =spotInfoServiceImpl.selectSpotInfoBySpotId(spotBean.getSpotid());
        model.put("infoList",InfoList);
//        System.out.print(InfoList);
        return "spot";
    }
    @ResponseBody
    @RequestMapping("/addSpotInfo")
    public BaseResponseByJson addSpotInfo(SpotInfoBean spotInfoBean){

        if(spotInfoServiceImpl.insertSpotInfo(spotInfoBean) == 1){
            json.setMessage("评论成功");
            json.setStatus(1);
        }else {
            json.setMessage("评论失败");
            json.setStatus(0);
        }
        return  json;
    }

    @ResponseBody
    @RequestMapping("/spotWant")
    public BaseResponseByJson spotWant(SpotWantBean spotWantBean){
        if (spotwantServiceImpl.selectSpotWant(spotWantBean.getSpotid(),spotWantBean.getUserid()) == 0){
            spotwantServiceImpl.spotWant(spotWantBean);
            json.setMessage("添加成功");
            json.setStatus(1);
        }else {
            spotwantServiceImpl.spotWant(spotWantBean);
            json.setMessage("添加成功");
            json.setStatus(1);
        }
    return json;
    }

//    @ResponseBody
    @RequestMapping("/myTour")
    public  String myTour(int cityid,int types,int days ,Map<String,Object> model)throws Exception{
        if(tourList.size() !=0)
            tourList=new ArrayList<SpotBean>();
        if(!timeTourList.isEmpty())
            timeTourList=new ArrayList<SpotBean>();
        List<SpotBean> spotlist = new ArrayList<SpotBean>();
        spotlist= spotServiceImpl.selectSpotByCityId(cityid);
        ArrayList<Integer> starList = new ArrayList<Integer>();//景点平均星级
        ArrayList<Integer> resultList; //结果转换tmp

        ArrayList<SpotBean> maxStarSpotList = new ArrayList<SpotBean>();//最优价值
        ArrayList<SpotBean> maxTimeSpotList =new ArrayList<SpotBean>();//最优时间
        String start ="13.6899991,100.7479237";  //起始点位置
        for (int i=0;i<spotlist.size();i++){
            List<SpotInfoBean> list=spotInfoServiceImpl.selectSpotInfoBySpotId(spotlist.get(i).getSpotid());//获取SpotInfoBean
            int star =0;
            int avg=0;
            if(list.size() !=0){
                 for (int j =0;j<list.size();j++){
                star +=list.get(j).getSpotstar();
//
//                arrayList.add(list.get(j).getSpotstar()); // 获取每个景点的星级
                 }
                avg=star/list.size(); //景点平均星级
            }else{
                avg=2;
            }
            starList.add(avg);
        }

        int spotnumber =types*days;//景点数

        resultList = valueOfSpot(starList,spotnumber);
        for (int i = 0; i <resultList.size() ; i++) {

            maxStarSpotList.add(spotServiceImpl.selectSpotBySpotId(resultList.get(i)));
        }
        model.put("maxStarSpotList",maxStarSpotList); //最优价值景点
        timeOfSpot(start,spotlist,spotnumber);
        model.put("timeTourList",timeTourList);//最优时间
        spotlist= spotServiceImpl.selectSpotByCityId(cityid);
        greedy(start,spotlist,starList,spotnumber);
        model.put("tourList",tourList);//瞎写的

        return "mytour";
    }

    /**
     *最优时间规划
     * @param start
     * @param spotlist
     * @param spotnumber
     */
    public  void timeOfSpot(String start,List<SpotBean> spotlist,int spotnumber){
        if (spotnumber == 0)
            return;
        double perDistance = 39920.0234468869;
        double time=Double.MAX_VALUE;
        int k =0;
        int destination=0;
//      List<Double>  distanceList =new ArrayList<Double>();
        String startLatitude=start.substring(0,start.indexOf(','));//开始纬度
        String startLongitude=start.substring(start.indexOf(',')+1);//开始经度
        for (int i=0;i<spotlist.size();i++){
            String end =spotlist.get(i).getSpotpoint();
            String endLatitude=end.substring(0,end.indexOf(','));//目标纬度
            String endLongitude=end.substring(end.indexOf(',')+1);//目标经度

            int a =Math.abs(Integer.valueOf(endLatitude.substring(endLatitude.indexOf('.')+1))-Integer.valueOf(startLatitude.substring(startLatitude.indexOf('.')+1))); //a边
            int b =Math.abs(Integer.valueOf(endLongitude.substring(endLongitude.indexOf('.')+1))-Integer.valueOf(startLongitude.substring(startLongitude.indexOf('.')+1)));//b边
            double  c =Math.abs(a*a+b*b);
            double d =Math.sqrt(c/(perDistance*perDistance));//到达目标的的小时数
            if(time > d){
                k=i;
                time =d;
            }
        }
        timeTourList.add(spotlist.get(k));
        spotnumber--;
        start = spotlist.get(k).getSpotpoint();
        spotlist.remove(k);
        if (spotlist.size()==0)
            return;
        timeOfSpot(start,spotlist,spotnumber);
    }

    /**
     *最优价值规划
     * @param starList
     * @param spotnumber
     * @return
     */
    public  ArrayList<Integer> valueOfSpot(ArrayList<Integer> starList,int spotnumber){
        ArrayList<Integer> resultList = new ArrayList<Integer>();
        for (int i = 0; i <spotnumber ; i++) {
            int temp=0;
            int k=0;
            for (int j=0;j<starList.size();j++){

                if (temp<starList.get(j)){
                    temp = starList.get(j);
                    k=j;
                }

            }
            resultList.add(k+1);
            starList.set(k,0);
            if(starList.size()==0){
                return resultList;
            }
        }
        return resultList;
    }

    /**
     * 带权规划（瞎JB写）
     * @param start
     * @param spotlist
     * @param starList
     * @param spotnumber
     */
    public void greedy(String start,List<SpotBean> spotlist, List<Integer> starList,int spotnumber){
        if(spotnumber == 0)
            return;

        double maxdistance = 39920.0234468869;
        double k =0.5;
        double flag=Double.MIN_VALUE;
        double e =0;
        int index=0;
//      List<Double>  distanceList =new ArrayList<Double>();
        String startLatitude=start.substring(0,start.indexOf(','));//开始纬度
        String startLongitude=start.substring(start.indexOf(',')+1);//开始经度
        for (int i=0;i<spotlist.size();i++){
            String end =spotlist.get(i).getSpotpoint();
            String endLatitude=end.substring(0,end.indexOf(','));//目标纬度
            String endLongitude=end.substring(end.indexOf(',')+1);//目标经度
            int a =Math.abs(Integer.valueOf(endLatitude.substring(endLatitude.indexOf('.')+1))-Integer.valueOf(startLatitude.substring(startLatitude.indexOf(".")+1)));
            int b =Math.abs(Integer.valueOf(endLongitude.substring(endLongitude.indexOf('.')+1))-Integer.valueOf(startLongitude.substring(startLongitude.indexOf(".")+1)));
            double  c =Math.sqrt(Math.abs(a*a+b*b));
            double d =(c/maxdistance);//到达目标的的小时数
            e =starList.get(i)*k/d; //带权分配的价值
            if(e>flag){
                index=i;
                flag =e;
            }
        }
        tourList.add(spotlist.get(index));
        spotnumber--;
        start =spotlist.get(index).getSpotpoint();
        spotlist.remove(index);
        starList.remove(index);
        if (spotlist.size() ==0 || starList.size() ==0)
            return;
        greedy(start,spotlist,starList,spotnumber);
    }


}
