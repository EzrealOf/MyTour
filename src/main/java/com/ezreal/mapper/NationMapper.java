package com.ezreal.mapper;

import com.ezreal.beans.NationBean;
import org.apache.ibatis.annotations.Select;

/**
 * Created by Ezreal# on 2017/4/29.
 */
public interface NationMapper {

    @Select("select * from nation where nationname =#{nationname}")
    public NationBean selectNationByName(String nationname) throws Exception;


}
