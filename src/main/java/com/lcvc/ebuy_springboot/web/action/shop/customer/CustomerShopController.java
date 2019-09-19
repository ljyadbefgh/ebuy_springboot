package com.lcvc.ebuy_springboot.web.action.shop.customer;


import com.lcvc.ebuy_springboot.model.Customer;
import com.lcvc.ebuy_springboot.model.base.Constant;
import com.lcvc.ebuy_springboot.model.base.JsonCode;
import com.lcvc.ebuy_springboot.service.CustomerService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;


@Api(tags = "前台客户登陆注销模块")
@RestController
@RequestMapping(value = "/api/shop/customer")
public class CustomerShopController {

	@Resource
	private CustomerService cstomerService;


	@ApiOperation(value = "前台客户登陆", notes = "根据账户名和密码进行登陆")
	@ApiImplicitParams({
			@ApiImplicitParam(name = "username", value = "账户名", required = true, dataType = "string",example="user"),
			@ApiImplicitParam(name = "password", value = "密码", required = true, dataType = "string",example="111111")
	})
	@GetMapping("/login")
	public Map<String, Object> login(String username, String password, HttpSession session){
		Map<String, Object> map=new HashMap<String, Object>();
		map.put(Constant.JSON_CODE, JsonCode.ERROR.getValue());
		if(cstomerService.login(username, password)){//如果登录成功
			Customer customer=cstomerService.getCustomer(username);
			session.setAttribute("customer",customer);
			map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
			//map.put(Constant.JSON_DATA,admin.getUsername());//将账户名值传递到前端先存储，供后端交互
		}else{
			map.put(Constant.JSON_MESSAGE, "登录失败：用户名和密码错误");
		}
		return map;
	}


	@ApiOperation(value = "前台客户注销")
	@GetMapping("/logout")
	public Map<String, Object> logout(HttpSession session){
		Map<String, Object> map=new HashMap<String, Object>();
		session.removeAttribute("customer");
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		map.put(Constant.JSON_MESSAGE, "成功注销用户");
		return map;
	}


}
