package com.softAngel.controller;

import java.util.HashMap;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.softAngel.base.BaseController;
import com.softAngel.beans.User;
import com.softAngel.service.UserService;
import com.softAngel.tools.GsonUtils;
import com.softAngel.tools.MD5Crypter;
import com.softAngel.tools.StringUtil;

@Controller
public class UserController extends BaseController {
	@Autowired
	private UserService userService;
	
	@RequestMapping(value = "/")
	public String login(){
		return "/index";
	}
	
	@RequestMapping(value = "/toLogin")
	public String toLogin(User user){
		return "/login/login";
	}
	
	@RequestMapping(value = "/toRegist")
	public String regist(User user){
		return "/login/regist";
	}
	@ResponseBody 
	@RequestMapping(value = "/validateUser")
	public Map<String, Object> validateUser(HttpServletRequest request, User user, HttpServletResponse res){
		Map<String, Object> map = new HashMap<String, Object>();
		int code = 0;
		String text = "";
		
		map.put("userName", user.getUserName());
		map.put("password", new MD5Crypter().encrypt(user.getPassword()));
		User loginUser = userService.get(map);
		if (loginUser != null) {
			code = 20;
			text = "用户名密码输入正确";
			//检查验证码输入是否正确
			String pageValidateCode = (String)request.getSession().getAttribute("validateCode");
			String inputValidateCode = user.getValidateCode();
			if (StringUtil.isEmpty(inputValidateCode)) {
				code = 50;
				text = "请输入验证码";
			}else if(inputValidateCode.equals(pageValidateCode)){
				code = 20;
				text = "验证码输入正确";
			}else{
				code = 40;
				text = "验证码输入错误";
			}
			map.put("code", code);
			map.put("text", text);
			GsonUtils.toJsonAll(map, res);
			return map;
		}else{
			code = 50;
			text = "用户不存在";
			map.put("code", code);
			map.put("text", text);
			GsonUtils.toJsonAll(map, res);
			return map;
		}
	}
}
