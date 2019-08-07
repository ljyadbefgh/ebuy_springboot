package com.lcvc.ebuy_springboot.web.action.backstage;


import com.lcvc.ebuy_springboot.model.Admin;
import com.lcvc.ebuy_springboot.model.Constant;
import com.lcvc.ebuy_springboot.service.AdminService;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@Controller
@RequestMapping(value = "/backstage")
public class LoginLogoutController {

	@Resource
	private AdminService adminService;

	/*
	 * 跳转到登录页面
	 */
	@RequestMapping(value = "/toLogin")
	public String toLogin(){
		return "/backstage/login.html";
	}


	/*
	 * 后台登录处理
	 */
	@ResponseBody
	@RequestMapping(value = "/login")
	public Map<String, Object> login(String username, String password, HttpServletRequest request){
		Map<String, Object> map=new HashMap<String, Object>();

		//cookie信息,用于讲解用，正式项目不需要
		Cookie[] cookies = request.getCookies();
		if(null!=cookies && cookies.length>0) {
			for(Cookie c:cookies) {
				System.out.printf("cookieName-%s, cookieValue-%s, cookieAge-%d%n", c.getName(), c.getValue(), c.getMaxAge());
			}
		}
		if(adminService.login(username, password)){
			Admin admin=adminService.getAdmin(username);//
			if(request.getSession(false) != null) {
				System.out.println("每次登录成功改变SessionID！");
				request.changeSessionId(); //安全考量，每次登陆成功改变 Session ID，原理：原来的session注销，拷贝其属性建立新的session对象
				//新建/刷新session对象
				HttpSession session = request.getSession();
				System.out.printf("sessionId: %s%n", session.getId());
				session.setAttribute("username",username);
				session.setAttribute("password",password);
			}
			map.put(Constant.JSON_CODE, 0);
		}else{
			map.put(Constant.JSON_CODE, -1);
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
		map.put(Constant.JSON_CODE, 0);
		map.put(Constant.JSON_MESSAGE, "成功注销用户");
		return map;
	}


	/**
	 * 跳转到后台首页
	 * @return
	 */
	@RequestMapping(value = "/index")
	public String index(){
		return "/backstage/index.html";
	}

	/**
	 * 跳转到后台首页主要内容
	 * @return
			 */
	@RequestMapping(value = "/main")
	public String main(){
		return "/backstage/main.html";
	}


}
