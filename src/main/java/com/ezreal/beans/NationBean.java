package com.ezreal.beans;

import java.io.Serializable;

/**
 * Created by Ezreal# on 2017/4/27.
 */
public class NationBean implements Serializable {
    private int nationid;
    private  String nationname;
    private  String nationurl;
    private  String nationdes;

    public int getNationid() {
        return nationid;
    }

    public void setNationid(int nationid) {
        this.nationid = nationid;
    }

    public String getNationname() {
        return nationname;
    }

    public void setNationname(String nationname) {
        this.nationname = nationname;
    }

    public String getNationurl() {
        return nationurl;
    }

    public void setNationurl(String nationurl) {
        this.nationurl = nationurl;
    }

    public String getNationdes() {
        return nationdes;
    }

    public void setNationdes(String nationdes) {
        this.nationdes = nationdes;
    }

    @Override
    public String toString() {
        return "NationBean{" +
                "nationid=" + nationid +
                ", nationname='" + nationname + '\'' +
                ", nationurl='" + nationurl + '\'' +
                ", nationdes='" + nationdes + '\'' +
                '}';
    }
}
