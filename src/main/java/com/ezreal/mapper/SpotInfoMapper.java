package com.ezreal.mapper;

import com.ezreal.beans.SpotInfoBean;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

import java.util.List;

/**
 * Created by Ezreal# on 2017/5/8.
 */
public interface SpotInfoMapper {

    @Insert(value = "INSERT INTO spotinfo (spotdes,userid,spotid,username,spotstar) VALUES(#{spotdes},#{userid},#{spotid},#{username},#{spotstar});")
    public int insertSpotInfo(SpotInfoBean spotInfoBean);
    @Select("SELECT * FROM spotinfo WHERE spotid=#{spotid};")
    public List<SpotInfoBean> selectSpotInfoBySpotId(int spotid);
}
