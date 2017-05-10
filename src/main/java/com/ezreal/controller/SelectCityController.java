package com.ezreal.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.ezreal.beans.NationBean;
import com.ezreal.beans.UserBean;
import com.ezreal.service.INationService;
import com.ezreal.tool.BaseResponseByJson;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.ModelAndView;

import com.ezreal.beans.CityBean;
import com.ezreal.beans.SpotBean;
import com.ezreal.service.ICityService;
import com.ezreal.service.ISpotService;
@Controller
public class SelectCityController {
	
	private Logger log = Logger.getLogger(this.getClass());
	
	@Resource
	private ICityService ICityServiceImpl;
	@Resource
	private ISpotService ISpotServiceImpl;
	@Resource
	private INationService INationServiceImpl;

	/*@RequestMapping("/toCity")
	public String City(){
		return "poit";
	}	*/

	@RequestMapping(value="/toCity")
	public String selectCityByName(HttpServletRequest req,String name,CityBean city, Map<String,Object> model) throws Exception{
		List spotList = null;
		if (name == null){
			name = city.getCityname();
		}
		CityBean c = ICityServiceImpl.selectCityByName(name);
		NationBean nationBean =INationServiceImpl.selectNationByName(name);
		SpotBean spotBean = ISpotServiceImpl.selectSpotBySpotname(name);
		if(c!=null){
			spotList = ISpotServiceImpl.selectSpotByCityId(c.getCityid());
			System.out.print(spotList);
			model.put("city",c.getCityname());
			model.put("spotList", spotList);
			return  "city";
		}else if(nationBean != null){
			spotList =ICityServiceImpl.selectCityByNationID(nationBean.getNationid());
			System.out.print(spotList);
			model.put("city",nationBean.getNationname());
			model.put("spotList", spotList);
			return "nation";
		}else if(spotBean !=null){
			model.put("spot",spotBean);
			System.out.print(spotBean);
			return "spot";
		}
		return null;
		
	}
	

}
