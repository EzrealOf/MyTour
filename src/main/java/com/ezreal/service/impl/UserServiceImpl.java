package com.ezreal.service.impl;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.ezreal.beans.UserBean;
import com.ezreal.mapper.UserMapper;
import com.ezreal.service.IUserService;
@Service
public  class UserServiceImpl implements IUserService{
	

	@Resource
	private UserMapper um;
	@Override
	public UserBean login(String username, String password) throws Exception {
		
		return um.login(username, password);
	}
	@Override
	public int register(UserBean user) throws Exception {
		// TODO Auto-generated method stub
		return um.insertUser(user);
	}
	@Override
	public int checkUserNameExist(String username) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}
	@Override
	public int checkUserEmailExist(String mailbox) throws Exception {
		// TODO Auto-generated method stub
		return 0;
	}
	

}
