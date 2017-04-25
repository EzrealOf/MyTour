package com.ezreal.beans;

import java.io.Serializable;

public class CityBean implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -358331216178481710L;
	
	private int cityid;
	private String cityname;
	public int getCityid() {
		return cityid;
	}
	public void setCityid(int cityid) {
		this.cityid = cityid;
	}
	public String getCityname() {
		return cityname;
	}
	public void setCityname(String cityname) {
		this.cityname = cityname;
	}
	@Override
	public String toString() {
		return "CityBean [cityid=" + cityid + ", cityname=" + cityname + "]";
	}
	

}
