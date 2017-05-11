package com.ezreal.service.impl;

import com.ezreal.beans.SpotWantBean;
import com.ezreal.mapper.SpotWantMapper;
import com.ezreal.service.ISpotWantService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * Created by Ezreal# on 2017/5/11.
 */
@Service
public class SpotWantServiceImpl implements ISpotWantService{
    @Autowired
    private SpotWantMapper spotWantMapper;

    @Override
    public int spotWant(SpotWantBean spotWantBean) {

        return spotWantMapper.spotWant(spotWantBean);
    }

    @Override
    public int disSpotWant(int spotid, int userid) {

        return spotWantMapper.disSpotWant(spotid,userid);
    }

    @Override
    public int selectSpotWant(int spotid, int userid) {

        return selectSpotWant(spotid,userid);
    }
}
