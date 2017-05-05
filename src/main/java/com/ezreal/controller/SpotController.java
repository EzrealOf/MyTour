package com.ezreal.controller;

import com.ezreal.beans.SpotBean;
import com.ezreal.service.ISpotService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.annotation.Resource;
import java.util.Map;

/**
 * Created by Ezreal# on 2017/4/29.
 */
@Controller
public class SpotController {
    @Resource
    private ISpotService ISpotServiceImpl;

    @RequestMapping("toSpot")
    public String selectSpotByName(SpotBean spotBean,Map<String,Object>model){
        model.put("spot",spotBean);
        return "spot";

    }

}
