package com.lcvc.ebuy_springboot.aop.web;

import com.lcvc.ebuy_springboot.model.WebConfig;
import com.lcvc.ebuy_springboot.service.WebConfigService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.RequestContextHolder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * 如果需要使用aop拦截web层的方法，则继承该类，这里封装了常规web层需要获取的方法
 */
public class BaseWebAspect {

	@Autowired
	private WebConfigService webConfigService;


	/**
	 * 获取Web应用的HttpServletRequest对象：request对象
	 * @return null表示获取不到，即不是以web方式访问
	 */
	protected HttpServletRequest getRequest() {
		if(RequestContextHolder.getRequestAttributes()!=null) {//如果是不通过web调用本aop（例如定时程序或是业务层调用，不会获得web对象）
			RequestAttributes requestAttributes = RequestContextHolder.getRequestAttributes();
			HttpServletRequest request = (HttpServletRequest) requestAttributes.resolveReference(RequestAttributes.REFERENCE_REQUEST);
			return request;
		}else{
			return null;
		}
	}

	/**
	 * 获取Web应用的HttpSession对象
	 * @return null表示获取不到，即不是以web方式访问
	 */
	protected HttpSession getSession() {
		HttpServletRequest request=this.getRequest();
		if(request!=null){
			return this.getRequest().getSession();
		}else{
			return null;
		}
	}

	/**
	 * 获取客户端的IP
	 * @return
	 */
	protected String getClientIp() {
		try {
			HttpServletRequest request=this.getRequest();
			String ip = request.getHeader("x-forwarded-for");
			if (ip == null) {
				ip = request.getRemoteAddr();
			}
			if (ip != null && ip.length() > 50) {
				ip = ip.substring(0, 50);
			}
			return ip;
		} catch (Exception e) {
			return null;
		}
	}

	/**
	 * 读取网站配置信息
	 * 说明
	 * 1.首先从session读取
	 * 2.如果session没有（一般是在业务层测试中），则直接从数据库读取
	 */
	protected WebConfig getWebConfig(){
		WebConfig webConfig=null;
		HttpSession session=this.getSession();
		if(session!=null){//如果是通过web调用本aop（例如定时程序或是业务层调用，不会获得web对象）
			webConfig=(WebConfig)session.getAttribute("webConfig");//更新客户的登陆信息
		}
		if(webConfig==null){
			webConfig=webConfigService.get();//从数据库读取
		}
		return webConfig;
	}

}
