package com.ezreal.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
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
	@RequestMapping(value="/select",method=RequestMethod.POST)
	public ModelAndView selectCityByName(HttpServletRequest req,CityBean city) throws Exception{
		ModelAndView mv = new ModelAndView();
		
		CityBean c = ICityServiceImpl.selectCityByName(city.getCityname());
		if(c!=null){
			List<SpotBean> spotList = new ArrayList<SpotBean>();
			spotList = ISpotServiceImpl.selectSpotByCityId(c.getCityid());
			mv.addObject("imessage",c);
			mv.addObject("c",c);
			mv.addObject("L",spotList);
			mv.setViewName("city");
			return mv;
		}
		
		return null;
		
	}
	

}
