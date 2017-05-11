package com.ezreal.beans;

import java.io.Serializable;

/**
 * Created by Ezreal# on 2017/5/11.
 */
public class SpotWantBean implements Serializable {
    private int spotwantid;
    private int spotwant;
    private int spotid;
    private int userid;

    public int getSpotwantid() {
        return spotwantid;
    }

    public void setSpotwantid(int spotwantid) {
        this.spotwantid = spotwantid;
    }

    public int getSpotwant() {
        return spotwant;
    }

    public void setSpotwant(int spotwant) {
        this.spotwant = spotwant;
    }

    public int getSpotid() {
        return spotid;
    }

    public void setSpotid(int spotid) {
        this.spotid = spotid;
    }

    public int getUserid() {
        return userid;
    }

    public void setUserid(int userid) {
        this.userid = userid;
    }

    @Override
    public String toString() {
        return "SpotWantBean{" +
                "spotwantid=" + spotwantid +
                ", spotwant=" + spotwant +
                ", spotid=" + spotid +
                ", userid=" + userid +
                '}';
    }
}
