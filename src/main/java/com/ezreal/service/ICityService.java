package com.ezreal.service;

import com.ezreal.beans.CityBean;

public interface ICityService {
	public CityBean selectCityByName(String cityname) throws Exception;

}
