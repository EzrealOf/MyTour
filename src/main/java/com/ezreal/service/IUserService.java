package com.ezreal.service;

import com.ezreal.beans.UserBean;

public interface IUserService {
	public UserBean login(String username,String password) throws Exception;
	
	public int register(UserBean user) throws Exception;
	
	public int checkUserNameExist(String username) throws Exception;
	
	public int checkUserEmailExist(String mailbox)throws Exception;
	
	
}
