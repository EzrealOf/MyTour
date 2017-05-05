package com.ezreal.service.impl;

import javax.annotation.Resource;


import org.springframework.stereotype.Service;

import com.ezreal.beans.CityBean;
import com.ezreal.mapper.CityMapper;
import com.ezreal.service.ICityService;

import java.util.List;

@Service
public class CityServiceImpl implements ICityService{
	
	@Resource
	private CityMapper cm;

	@Override
	public List<CityBean> selectCityByNationID(int nationid) throws Exception {
		return cm.selectCityByNationId(nationid);
	}

	@Override
	public CityBean selectCityByName(String cityname) throws Exception {
		return cm.selectCityByName(cityname);
	}



}
