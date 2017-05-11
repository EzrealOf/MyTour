package com.ezreal.service;

import com.ezreal.beans.SpotInfoBean;

import java.util.List;

/**
 * Created by Ezreal# on 2017/5/8.
 */
public interface ISpotInfoService {

    public int insertSpotInfo(SpotInfoBean spotInfoBean);

    public List<SpotInfoBean> selectSpotInfoBySpotId(int spotid);
}
