package com.ezreal.controller;

import com.ezreal.beans.UserBean;
import com.ezreal.service.IUserService;
import com.ezreal.tool.BaseResponseByJson;
import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
@Controller
public class UserController {

	private Logger log = Logger.getLogger(this.getClass());

	@Resource
	private IUserService IUserServiceImp;
	
	@Autowired
	private BaseResponseByJson json;
	
	@RequestMapping("/login")
	@ResponseBody
	public BaseResponseByJson login(HttpServletRequest req,UserBean user) throws Exception{

		log.info(user);
		
		UserBean u = IUserServiceImp.login(user.getUsername(), user.getPassword());
		
		if(u!=null){
			req.getSession().setAttribute("user", u);
			json.setStatus(1);
			json.setMessage("登陆成功");
		}else{
			json.setStatus(0);
			json.setMessage("用户名或者密码错误");
		}
		return json;
		
	}

	@RequestMapping("/toLogin")
	public String toLogin() {

		return "login";
	}

	@RequestMapping("/toRegister")
	public String toRegister() {

		return "register";
	}

	@RequestMapping("/register")
	@ResponseBody
	public BaseResponseByJson register(HttpServletRequest req,UserBean user) throws Exception{
		int status=IUserServiceImp.checkUserNameExist(user.getUsername());
		if(status == 0){
			json.setStatus(status);
			json.setMessage("恭喜!该用户名可以使用");
		}else{
			json.setStatus(status);
			json.setMessage("该用户名已被注册");
			
		}
		user.setPermission(1);
		IUserServiceImp.register(user);
			
		return json;
	}
		
	@RequestMapping("/toIndex")
	public String toIndex() {

		return "index";
	}


}
