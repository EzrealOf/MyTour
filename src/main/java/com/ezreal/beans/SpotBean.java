package com.ezreal.beans;

import java.io.Serializable;

public class SpotBean implements Serializable {
	/**
	 * 
	 */
	private static final long serialVersionUID = -1953298502081308682L;
	
	private int spotid;
	private String spotname;
	private int cityid;
	public int getSpotid() {
		return spotid;
	}
	public void setSpotid(int spotid) {
		this.spotid = spotid;
	}
	public String getSpotname() {
		return spotname;
	}
	public void setSpotname(String spotname) {
		this.spotname = spotname;
	}
	public int getCityid() {
		return cityid;
	}
	public void setCityid(int cityid) {
		this.cityid = cityid;
	}
	@Override
	public String toString() {
		return "SpotBean [spotid=" + spotid + ", spotname=" + spotname + ", cityid=" + cityid + "]";
	}
	
}
