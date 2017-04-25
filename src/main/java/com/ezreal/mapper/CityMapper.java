package com.ezreal.mapper;

import org.apache.ibatis.annotations.Select;

import com.ezreal.beans.CityBean;

public interface CityMapper {
	
	@Select("select * from city where cityid =#{cityid}")
	public CityBean  selectCityByID(int cityid)throws Exception;
	
	@Select("select * from city where cityname =#{cityname}")
	public CityBean  selectCityByName(String cityname) throws Exception;

	
}
