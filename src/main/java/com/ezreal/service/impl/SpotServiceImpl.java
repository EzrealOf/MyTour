package com.ezreal.service.impl;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ezreal.beans.SpotBean;
import com.ezreal.mapper.SpotMapper;
import com.ezreal.service.ISpotService;
@Service
public class SpotServiceImpl implements ISpotService{
	@Resource
	SpotMapper sm;
	@Override
	public List<SpotBean> selectSpotByCityId(int id) throws Exception {
		return sm.selectSpotByCityId(id);
	}

}
