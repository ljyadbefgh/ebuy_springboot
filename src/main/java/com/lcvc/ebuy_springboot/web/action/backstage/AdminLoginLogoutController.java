package com.lcvc.ebuy_springboot.web.action.backstage;


import com.lcvc.ebuy_springboot.model.Admin;
import com.lcvc.ebuy_springboot.model.base.Constant;
import com.lcvc.ebuy_springboot.model.base.JsonCode;
import com.lcvc.ebuy_springboot.service.AdminService;
import io.swagger.annotations.Api;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;


@Api(tags = "后台管理账户登陆注销模块")
@RestController
@RequestMapping(value = "/api/backstage")
public class AdminLoginLogoutController {

	@Resource
	private AdminService adminService;


	/*@ApiOperation(value = "后台管理账户登陆", notes = "根据账户名和密码进行登陆")
	@ApiImplicitParams({
			@ApiImplicitParam(name = "username", value = "账户名", required = true, dataType = "string",example="user"),
			@ApiImplicitParam(name = "password", value = "密码", required = true, dataType = "string",example="111111")
	})*/
	//@GetMapping("/login")
	public Map<String, Object> login(String username, String password, HttpSession session){
		Map<String, Object> map=new HashMap<String, Object>();
		map.put(Constant.JSON_CODE, JsonCode.ERROR.getValue());
		if(adminService.login(username, password)){//如果登录成功
			Admin admin=adminService.getAdmin(username);
			session.setAttribute("admin",admin);
			map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
			//map.put(Constant.JSON_DATA,admin.getUsername());//将账户名值传递到前端先存储，供后端交互
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
		return resultInfo;	}*/

	//@ApiOperation(value = "后台管理账户注销")
	//@GetMapping("/logout")
	public Map<String, Object> logout(HttpSession session){
		Map<String, Object> map=new HashMap<String, Object>();
		session.removeAttribute("admin");
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		map.put(Constant.JSON_MESSAGE, "成功注销用户");
		return map;
	}


}
