package com.lcvc.ebuy_springboot.web.action;


import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import springfox.documentation.annotations.ApiIgnore;

@ApiIgnore
@Controller
public class IndexController {

	/*
	 * @RequestMapping(value = "/")表示默认首页
	 */
	@RequestMapping(value = "/hello")
	public String hello(){
		//默认跳转页面是是templates路径下；如果要跳转到static目录，则需要用redirect
		return "redirect:/hello.html";
	}


	/*
	 * @RequestMapping(value = "/")表示默认首页
	 */
	@RequestMapping(value = "/")
	public String index(){
		//默认跳转页面是是templates路径下；如果要跳转到static目录，则需要用redirect
		return "redirect:/swagger-ui.html";
	}

}
