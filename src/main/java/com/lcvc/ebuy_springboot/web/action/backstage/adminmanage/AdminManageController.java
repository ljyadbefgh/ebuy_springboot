package com.lcvc.ebuy_springboot.web.action.backstage.adminmanage;


import com.lcvc.ebuy_springboot.model.Constant;
import com.lcvc.ebuy_springboot.model.base.PageObject;
import com.lcvc.ebuy_springboot.service.AdminService;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping(value = "/backstage/adminmanage")
public class AdminManageController {

	@Resource
	private AdminService adminService;


	/*
	 * 跳转到账户管理页面
	 */
	@GetMapping
	public Map<String, Object> toManageAdmin(Integer page,Integer limit){
        Map<String, Object> map=new HashMap<String, Object>();
        map.put(Constant.JSON_CODE, 0);
		PageObject pageObject =adminService.searchAdmins(page,limit);
		map.put(Constant.JSON_TOTAL,pageObject.getTotalRecords());
        map.put(Constant.JSON_DATA,pageObject.getList());
		return map;
	}

	/**
	 * 删除指定账户
	 * @param id
	 * @return
	 */
	/*@ResponseBody
	@RequestMapping(value = "/doDeleteAdmin")
	public Map<String, Object> doDeleteAdmin(Integer id,HttpSession session){
		Map<String, Object> map=new HashMap<String, Object>();
		Admin admin=(Admin)session.getAttribute("admin");
		if(admin.getId()==id.intValue()){//如果登录账户的id与被删除账户的id一致
			//不允许删除自己的账户
			map.put("status", -1);
			map.put("myMessage", "删除失败：不允许删除自己");
		}else{
			adminService.deleteAdmin(id);
			map.put("status", 1);
		}
		return map;
	}*/

	/**
	 * 跳转到账户添加页面
	 */
	@RequestMapping(value = "/toAddAdmin")
	public String toAddAdmin(){
		return "/jsp/backstage/adminmanage/adminadd.jsp";
	}

	/*@ResponseBody
	@RequestMapping(value = "/doAddAdmin")
	public Map<String, Object> doAddAdmin(Admin admin){
		Map<String, Object> map=new HashMap<String, Object>();
		try {
			adminService.addAdmin(admin);
			map.put("status", 1);
			map.put("myMessage", "账户添加成功");
		} catch (MyFormException e) {
			map.put("status", -1);
			map.put("myMessage", e.getMessage());
		}
		return map;
	}*/


	/**
	 * 跳转到账户编辑页面
	 */
	@RequestMapping(value = "/toUpdateAdmin")
	public String toUpdateAdmin(Integer id,HttpServletRequest request){
		request.setAttribute("admin",adminService.getAdmin(id));
		return "/jsp/backstage/adminmanage/adminupdate.jsp";
	}

	/*@ResponseBody
	@RequestMapping(value = "/doUpdateAdmin")
	public Map<String, Object> doUpdateAdmin(Admin admin){
		Map<String, Object> map=new HashMap<String, Object>();
		map.put("status", -1);//默认失败
		try {
			if(adminService.updateAdmin(admin)){
				map.put("status", 1);
				map.put("myMessage", "账户编辑成功");
			}else{
				map.put("myMessage", "账户编辑失败");
			}
		} catch (MyFormException e) {
			map.put("myMessage", e.getMessage());
		}
		return map;
	}*/

}
