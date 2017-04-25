package com.ezreal.beans;

import java.io.Serializable;

public class Hotel implements Serializable{
	/**
	 * 
	 */
	private static final long serialVersionUID = -4064272002369969928L;
	
	private int hotelid;
	private String hotelname;
	private String point;
	private String title;
	private float price;
	private String tel;
	private int level;
	private int cityid;
	public int getHotelid() {
		return hotelid;
	}
	public void setHotelid(int hotelid) {
		this.hotelid = hotelid;
	}
	public String getHotelname() {
		return hotelname;
	}
	public void setHotelname(String hotelname) {
		this.hotelname = hotelname;
	}
	public String getPoint() {
		return point;
	}
	public void setPoint(String point) {
		this.point = point;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public float getPrice() {
		return price;
	}
	public void setPrice(float price) {
		this.price = price;
	}
	public String getTel() {
		return tel;
	}
	public void setTel(String tel) {
		this.tel = tel;
	}
	public int getLevel() {
		return level;
	}
	public void setLevel(int level) {
		this.level = level;
	}
	public int getCityid() {
		return cityid;
	}
	public void setCityid(int cityid) {
		this.cityid = cityid;
	}
	@Override
	public String toString() {
		return "Hotel [hotelid=" + hotelid + ", hotelname=" + hotelname + ", point=" + point + ", title=" + title
				+ ", price=" + price + ", tel=" + tel + ", level=" + level + ", cityid=" + cityid + "]";
	}
	

}
