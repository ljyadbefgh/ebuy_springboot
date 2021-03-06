package com.lcvc.ebuy_springboot.web.action.backstage.admin;


import com.lcvc.ebuy_springboot.model.Admin;
import com.lcvc.ebuy_springboot.model.Menu;
import com.lcvc.ebuy_springboot.model.base.Constant;
import com.lcvc.ebuy_springboot.model.base.JsonCode;
import com.lcvc.ebuy_springboot.model.form.PasswordEditForm;
import com.lcvc.ebuy_springboot.service.AdminMenuService;
import com.lcvc.ebuy_springboot.service.AdminService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Api(tags = "后台管理员个人信息管理模块")
@RestController
@RequestMapping(value = "/api/backstage/admin")
public class AdminController {

	public static final Log log= LogFactory.getLog(AdminController.class);

	@Resource
	private AdminService adminService;
	@Autowired
	private AdminMenuService adminMenuService;


	//@AuthenticationPrincipal,直接将Spring security中SecurityContextHolder的Authentication注入进来
	@ApiOperation(value = "读取自己在当前后台系统登陆的管理账户信息", notes = "无需传入参数")
	@GetMapping
	public Map<String, Object>  getAdmin(@AuthenticationPrincipal Admin admin,HttpSession session){
		Map<String, Object> map=new HashMap<String, Object>();
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		//map.put(Constant.JSON_DATA,session.getAttribute("admin"));
		//Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		//SecurityContext securityContext = (SecurityContext) session.getAttribute(HttpSessionSecurityContextRepository.SPRING_SECURITY_CONTEXT_KEY);
		//Authentication authentication = securityContext.getAuthentication();
		map.put(Constant.JSON_DATA,admin);
		map.put("JSESSIONID",session.getId());//将sessionId传给客户端，这里是为了解决ueditor手动传递的问题
		return map;
	}

	@ApiOperation(value = "编辑账户", notes = "根据传入的值（必须要有id）进行修改（没有传入的字段则保持原值）-不包括password字段")
	@PutMapping
	public Map<String, Object> updateAdmin(@RequestBody Admin admin){
		Map<String, Object> map=new HashMap<String, Object>();
		admin.setPassword(null);//根据业务层说明，不接收密码字段的值
		adminService.updateAdmin(null,admin);
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		map.put(Constant.JSON_MESSAGE, "修改成功");
		return map;
	}

	@ApiOperation(value = "修改密码", notes = "修改密码")
	@PatchMapping("/password")
	public Map<String, Object> updatePassword(@RequestBody @Validated PasswordEditForm passwordEditForm, HttpSession session) {
		//String username = ((Admin) session.getAttribute("admin")).getUsername();
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		Admin admin=(Admin)authentication.getPrincipal();
		Map<String, Object> map = new HashMap<String, Object>();
		adminService.updatePassword(admin.getUsername(), passwordEditForm.getPassword(), passwordEditForm.getNewPass(), passwordEditForm.getRePass());
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		map.put(Constant.JSON_MESSAGE, "密码修改成功");
		return map;
	}

	//===================================菜单操作============================================//
	@ApiOperation(value = "获取当前账户的树形菜单", notes = "获取当前账户的树形菜单")
	@GetMapping("/treeMenu")
	public Map<String, Object>  getTreeMenus(){
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();//获取当前登陆账户
		Admin admin=(Admin)authentication.getPrincipal();
		Map<String, Object> map=new HashMap<String, Object>();
		List<Menu> list=adminMenuService.getTreeMenusByAdminId(admin.getId());//读取账户对应的树形菜单
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		map.put(Constant.JSON_DATA,list);
		return map;
	}

}
