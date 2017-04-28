package com.ezreal.controller;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

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

	/*@RequestMapping("/toCity")
	public String City(){
		return "poit";
	}	*/

	@RequestMapping(value="/toCity")
	public String selectCityByName( CityBean city, Map<String,Object> model) throws Exception{
		List<SpotBean> spotList = new ArrayList<SpotBean>();
		System.out.print("1234534564");
		CityBean c = ICityServiceImpl.selectCityByName(city.getCityname());
		if(c!=null){
			spotList = ISpotServiceImpl.selectSpotByCityId(c.getCityid());
			System.out.print(spotList);
			model.put("city",c.getCityname());
			model.put("spotList", spotList);
			return  "city";
		}
		return null;
		
	}
	

}
