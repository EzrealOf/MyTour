package com.ezreal.service.impl;

import javax.annotation.Resource;


import org.springframework.stereotype.Service;

import com.ezreal.beans.CityBean;
import com.ezreal.mapper.CityMapper;
import com.ezreal.service.ICityService;

@Service
public class CityServiceImpl implements ICityService{
	
	@Resource
	private CityMapper cm;

	@Override
	public CityBean selectCityByName(String cityname) throws Exception {
		return cm.selectCityByName(cityname);
	}



}
