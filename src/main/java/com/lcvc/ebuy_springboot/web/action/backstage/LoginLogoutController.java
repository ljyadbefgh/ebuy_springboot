package com.lcvc.ebuy_springboot.web.action.backstage;


import com.lcvc.ebuy_springboot.model.Admin;
import com.lcvc.ebuy_springboot.model.base.Constant;
import com.lcvc.ebuy_springboot.model.base.JsonCode;
import com.lcvc.ebuy_springboot.service.AdminService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping(value = "/api/backstage")
public class LoginLogoutController {

	@Resource
	private AdminService adminService;


	/**
	 * 后台登录处理
	 */
	@GetMapping("/login")
	public Map<String, Object> login(String username, String password, HttpSession session){
		Map<String, Object> map=new HashMap<String, Object>();
		map.put(Constant.JSON_CODE, JsonCode.ERROR.getValue());
		if(adminService.login(username, password)){//如果登录成功
			Admin admin=adminService.getAdmin(username);
			session.setAttribute("admin",admin);
			map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
			map.put(Constant.JSON_DATA,admin.getUsername());//将账户名值传递到前端先存储，供后端交互
		}else{
			map.put(Constant.JSON_MESSAGE, "登录失败：用户名和密码错误");
		}
		return map;
	}

	/**
	 * 后台登录处理
	 */
	/*@GetMapping("/login")
	public ResultInfo login(String username, String password, HttpSession session){
		ResultInfo resultInfo=new ResultInfo();
		resultInfo.setCode(JsonCode.ERROR.getValue());
		try {
			if(adminService.login(username, password)){//如果登录成功
				Admin admin=adminService.getAdmin(username);
				session.setAttribute("admin",admin);
				resultInfo.setCode(JsonCode.SUCCESS.getValue());
				resultInfo.setData(admin.getUsername());//将账户名值传递到前端先存储，供后端交互
			}else{
				resultInfo.setMsg( "登录失败：用户名和密码错误");
			}
		} catch (MyFormException e) {
			resultInfo.setMsg(e.getMessage());
		}
		return resultInfo;
	}*/

	/**
     * 注销
	 * @return
     */
	@GetMapping("/logout")
	public Map<String, Object> logout(HttpSession session){
		Map<String, Object> map=new HashMap<String, Object>();
		session.removeAttribute("admin");
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		map.put(Constant.JSON_MESSAGE, "成功注销用户");
		return map;
	}


}
