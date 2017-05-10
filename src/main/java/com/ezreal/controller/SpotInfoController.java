package com.ezreal.controller;

import com.ezreal.beans.SpotInfoBean;
import com.ezreal.service.ISpotInfoService;
import com.ezreal.tool.BaseResponseByJson;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by Ezreal# on 2017/5/8.
 */
@Controller
public class SpotInfoController {
    @Autowired
    ISpotInfoService spotInfoServiceImpl;
    @Autowired
    BaseResponseByJson json;
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

}
