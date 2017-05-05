package com.ezreal.mapper;

import org.apache.ibatis.annotations.Select;

import com.ezreal.beans.CityBean;

import java.util.List;

public interface CityMapper {
	
	@Select("select * from city where cityid =#{cityid}")
	public CityBean  selectCityByID(int cityid)throws Exception;
	@Select("select * from city where cityname =#{cityname}")
	public CityBean  selectCityByName(String cityname) throws Exception;

	@Select("select * from city where nationid =#{nationid}")
	public List<CityBean> selectCityByNationId(int nationid) throws Exception;


}
