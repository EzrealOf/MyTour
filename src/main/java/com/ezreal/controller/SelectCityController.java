package com.ezreal.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;

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
	@Autowired
	private BaseResponseByJson json;

	@RequestMapping(value="/select",method=RequestMethod.POST)
	@ResponseBody
	public List selectCityByName(CityBean city) throws Exception{
		List<SpotBean> spotList = new ArrayList<SpotBean>();
		
		CityBean c = ICityServiceImpl.selectCityByName(city.getCityname());
		if(c!=null){

			spotList = ISpotServiceImpl.selectSpotByCityId(c.getCityid());
			return  spotList;

		}
		
		return null;
		
	}
	

}
