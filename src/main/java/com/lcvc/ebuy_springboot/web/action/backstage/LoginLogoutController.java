package com.lcvc.ebuy_springboot.web.action.backstage;


import com.lcvc.ebuy_springboot.model.Admin;
import com.lcvc.ebuy_springboot.model.Constant;
import com.lcvc.ebuy_springboot.model.base.JsonCode;
import com.lcvc.ebuy_springboot.service.AdminService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping(value = "/api/backstage")
public class LoginLogoutController {

	@Resource
	private AdminService adminService;


	/*
	 * 后台登录处理
	 */
	@ResponseBody
	@RequestMapping(value = "/login")
	public Map<String, Object> login(String username, String password, HttpSession session){
		Map<String, Object> map=new HashMap<String, Object>();
		if(adminService.login(username, password)){//如果登录成功
			Admin admin=adminService.getAdmin(username);
			session.setAttribute("admin",admin);
			map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		}else{
			map.put(Constant.JSON_CODE, JsonCode.ERROR.getValue());
			map.put(Constant.JSON_MESSAGE, "登录失败：用户名和密码错误");
		}
		return map;
	}

	/**
     * 注销
	 * @return
     */
	@ResponseBody
	@RequestMapping(value="/logout")
	public Map<String, Object> logout(HttpSession session){
		Map<String, Object> map=new HashMap<String, Object>();
		session.removeAttribute("admin");
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		map.put(Constant.JSON_MESSAGE, "成功注销用户");
		return map;
	}


}
