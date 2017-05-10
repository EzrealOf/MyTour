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
	private String spoturl;
	private String spotdes;
	private String spottouch;
	private String spotlocation;
	private String spotarrive;
	private String spotopeningtime;
	private String spotticket;
	private String spotphone;
	private String spotinformurl;
	private String spottips;
	private String spotenglishname;

	public static long getSerialVersionUID() {
		return serialVersionUID;
	}

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

	public String getSpoturl() {
		return spoturl;
	}

	public void setSpoturl(String spoturl) {
		this.spoturl = spoturl;
	}

	public String getSpotdes() {
		return spotdes;
	}

	public void setSpotdes(String spotdes) {
		this.spotdes = spotdes;
	}

	public String getSpottouch() {
		return spottouch;
	}

	public void setSpottouch(String spottouch) {
		this.spottouch = spottouch;
	}

	public String getSpotlocation() {
		return spotlocation;
	}

	public void setSpotlocation(String spotlocation) {
		this.spotlocation = spotlocation;
	}

	public String getSpotarrive() {
		return spotarrive;
	}

	public void setSpotarrive(String spotarrive) {
		this.spotarrive = spotarrive;
	}

	public String getSpotopeningtime() {
		return spotopeningtime;
	}

	public void setSpotopeningtime(String spotopeningtime) {
		this.spotopeningtime = spotopeningtime;
	}

	public String getSpotticket() {
		return spotticket;
	}

	public void setSpotticket(String spotticket) {
		this.spotticket = spotticket;
	}

	public String getSpotphone() {
		return spotphone;
	}

	public void setSpotphone(String spotphone) {
		this.spotphone = spotphone;
	}

	public String getSpotinformurl() {
		return spotinformurl;
	}

	public void setSpotinformurl(String spotinformurl) {
		this.spotinformurl = spotinformurl;
	}

	public String getSpottips() {
		return spottips;
	}

	public void setSpottips(String spottips) {
		this.spottips = spottips;
	}

	public String getSpotenglishname() {
		return spotenglishname;
	}

	public void setSpotenglishname(String spotenglishname) {
		this.spotenglishname = spotenglishname;
	}

	@Override
	public String toString() {
		return "SpotBean{" +
				"spotid=" + spotid +
				", spotname='" + spotname + '\'' +
				", cityid=" + cityid +
				", spoturl='" + spoturl + '\'' +
				", spotdes='" + spotdes + '\'' +
				", spottouch='" + spottouch + '\'' +
				", spotlocation='" + spotlocation + '\'' +
				", spotarrive='" + spotarrive + '\'' +
				", spotopeningtime='" + spotopeningtime + '\'' +
				", spotticket='" + spotticket + '\'' +
				", spotphone='" + spotphone + '\'' +
				", spotinformurl='" + spotinformurl + '\'' +
				", spottips='" + spottips + '\'' +
				", spotenglishname='" + spotenglishname + '\'' +
				'}';
	}
}
