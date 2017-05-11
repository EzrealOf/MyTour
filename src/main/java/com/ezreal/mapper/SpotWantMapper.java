package com.ezreal.mapper;

import com.ezreal.beans.SpotWantBean;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Select;

/**
 * Created by Ezreal# on 2017/5/11.
 */
public interface SpotWantMapper {


    @Insert("INSERT INTO spotwant (spotwant,spotid,userid) VALUES(#{spotwant},#{spotid},#{userid};")
    public int spotWant(SpotWantBean spotWantBean);

    @Insert("DELETE  FROM spotwant where spotid =#{spotid} and userid=#{userid};")
    public int disSpotWant(int spotid,int userid);

    @Select("SELECT * FROM spotwant WHERE spotid=#{spodid} and userid=#{userid};")
    public int selectSpotWant(int spotid,int userid);
}
