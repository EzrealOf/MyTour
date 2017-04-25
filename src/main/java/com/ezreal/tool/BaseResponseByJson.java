package com.ezreal.tool;

import org.springframework.stereotype.Component;

@Component
public class BaseResponseByJson {
	/**   
	 * @Fields status : The status of BaseResponseByJson
	 */ 
	private int status;
	
	/**   
	 * @Fields message : The message of BaseResponseByJson
	 */ 
	private String message;
	
	public int getStatus() {
		return status;
	}
	
	public void setStatus(int status) {
		this.status = status;
	}
	
	public String getMessage() {
		return message;
	}
	
	public void setMessage(String message) {
		this.message = message;
	}
}
