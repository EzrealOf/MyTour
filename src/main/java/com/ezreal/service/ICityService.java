package com.ezreal.service;

import com.ezreal.beans.CityBean;

import java.util.List;

public interface ICityService {
	public CityBean selectCityByName(String cityname) throws Exception;

	public List<CityBean> selectCityByNationID(int nationid) throws Exception;

}
