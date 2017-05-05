package com.ezreal.service;

import java.util.List;

import com.ezreal.beans.SpotBean;

public interface ISpotService {
	public List<SpotBean> selectSpotByCityId(int id) throws Exception;

	public SpotBean selectSpotBySpotname(String spotname) throws Exception;
}
