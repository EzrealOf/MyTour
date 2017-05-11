package com.ezreal.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import com.ezreal.beans.SpotBean;

public interface SpotMapper {
	@Select("SELECT * from spot where cityid=#{id}")
	public List<SpotBean> selectSpotByCityId(int id) throws Exception;

	@Select("SELECT * from spot WHERE spotname =#{spotname}")
	public SpotBean selectSpotBySpotname(String spotname) throws  Exception;

	@Select("SELECT * from spot WHERE spotid =#{spotid}")
	public SpotBean selectSpotBySpotid(int spotid) throws  Exception;

}
