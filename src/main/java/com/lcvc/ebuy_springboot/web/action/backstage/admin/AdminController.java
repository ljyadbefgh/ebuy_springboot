package com.lcvc.ebuy_springboot.web.action.backstage.admin;


import com.lcvc.ebuy_springboot.model.base.Constant;
import com.lcvc.ebuy_springboot.model.base.JsonCode;
import com.lcvc.ebuy_springboot.service.AdminService;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping(value = "/api/backstage/admin")
public class AdminController {

	public static final Log log= LogFactory.getLog(AdminController.class);

	@Resource
	private AdminService adminService;

	/**
	 * 读取指定账户
	 * @return
	 */
	@GetMapping
	public Map<String, Object>  getAdmin(HttpSession session){
		Map<String, Object> map=new HashMap<String, Object>();
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		map.put(Constant.JSON_DATA,session.getAttribute("admin"));
		return map;
	}
}
