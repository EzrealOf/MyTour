package com.ezreal.service.impl;

import com.ezreal.beans.SpotInfoBean;
import com.ezreal.mapper.SpotInfoMapper;
import com.ezreal.service.ISpotInfoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * Created by Ezreal# on 2017/5/8.
 */
@Service
public class SpotInfoServiceImpl implements ISpotInfoService {

    @Autowired
    SpotInfoMapper spotInfoMapper;

    @Override
    public int insertSpotInfo(SpotInfoBean spotInfoBean) {
        return spotInfoMapper.insertSpotInfo(spotInfoBean);
    }

    @Override
    public List<SpotInfoBean> selectSpotInfoBySpotId(int spotid) {
        return spotInfoMapper.selectSpotInfoBySpotId(spotid);
    }
}

