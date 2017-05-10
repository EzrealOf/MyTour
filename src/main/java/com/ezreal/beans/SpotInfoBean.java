package com.ezreal.beans;

import java.io.Serializable;

/**
 * Created by Ezreal# on 2017/5/8.
 */
public class SpotInfoBean implements Serializable{
    private  int spotinfoid;
    private  String spotdes;
    private int userid;
    private  int spotid;

    public int getSpotinfoid() {
        return spotinfoid;
    }

    public void setSpotinfoid(int spotinfoid) {
        this.spotinfoid = spotinfoid;
    }

    public String getSpotdes() {
        return spotdes;
    }

    public void setSpotdes(String spotdes) {
        this.spotdes = spotdes;
    }

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    public int getSpotid() {
        return spotid;
    }

    public void setSpotid(int spotid) {
        this.spotid = spotid;
    }

    @Override
    public String toString() {
        return "SpotInfoBean{" +
                "spotinfoid=" + spotinfoid +
                ", spotdes='" + spotdes + '\'' +
                ", userid=" + userid +
                ", spotid=" + spotid +
                '}';
    }
}
