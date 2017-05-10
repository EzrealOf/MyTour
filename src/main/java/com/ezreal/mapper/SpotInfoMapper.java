package com.ezreal.mapper;

import com.ezreal.beans.SpotInfoBean;
import org.apache.ibatis.annotations.Insert;

/**
 * Created by Ezreal# on 2017/5/8.
 */
public interface SpotInfoMapper {

    @Insert(value = "INSERT INTO spotinfo (spotdes,userid,spotid) VALUES(#{spotdes},#{userid},#{spotid});")
    public int insertSpotInfo(SpotInfoBean spotInfoBean);
}
