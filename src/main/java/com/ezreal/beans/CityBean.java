package com.ezreal.beans;

import java.io.Serializable;

public class CityBean implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -358331216178481710L;
	
	private int cityid;
	private String cityname;
	private String cityurl;
	private String citydes;
	private String nationid;

	public static long getSerialVersionUID() {
		return serialVersionUID;
	}

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

	public String getCityurl() {
		return cityurl;
	}

	public void setCityurl(String cityurl) {
		this.cityurl = cityurl;
	}

	public String getCitydes() {
		return citydes;
	}

	public void setCitydes(String citydes) {
		this.citydes = citydes;
	}

	public String getNationid() {
		return nationid;
	}

	public void setNationid(String nationid) {
		this.nationid = nationid;
	}

	@Override
	public String toString() {
		return "CityBean{" +
				"cityid=" + cityid +
				", cityname='" + cityname + '\'' +
				", cityurl='" + cityurl + '\'' +
				", citydes='" + citydes + '\'' +
				", nationid='" + nationid + '\'' +
				'}';
	}
}
