package com.ezreal.service;
import com.ezreal.beans.SpotWantBean;
/**
 * Created by Ezreal# on 2017/5/11.
 */
public interface ISpotWantService {

    public int spotWant(SpotWantBean spotWantBean);


    public int disSpotWant(int spotid,int userid);


    public int selectSpotWant(int spotid,int userid);
}
