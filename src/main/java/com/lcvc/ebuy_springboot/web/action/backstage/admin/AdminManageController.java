package com.lcvc.ebuy_springboot.web.action.backstage.admin;


import com.lcvc.ebuy_springboot.model.Admin;
import com.lcvc.ebuy_springboot.model.AdminRole;
import com.lcvc.ebuy_springboot.model.Menu;
import com.lcvc.ebuy_springboot.model.base.Constant;
import com.lcvc.ebuy_springboot.model.base.JsonCode;
import com.lcvc.ebuy_springboot.model.base.PageObject;
import com.lcvc.ebuy_springboot.model.form.admin.AdminIdsAndRoleIdsForm;
import com.lcvc.ebuy_springboot.model.query.AdminQuery;
import com.lcvc.ebuy_springboot.service.AdminMenuService;
import com.lcvc.ebuy_springboot.service.AdminRoleService;
import com.lcvc.ebuy_springboot.service.AdminService;
import com.lcvc.ebuy_springboot.service.RoleService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Api(tags = "后台管理所有管理员账户模块")
@RestController
@RequestMapping(value = "/api/backstage/adminmanage")
public class AdminManageController {

	public static final Log log= LogFactory.getLog(AdminManageController.class);

	@Autowired
	private AdminService adminService;

	@Autowired
	private RoleService roleService;

	@Autowired
	private AdminRoleService adminRoleService;
	@Autowired
	private AdminMenuService adminMenuService;




	@ApiOperation(value = "分页读取管理账户信息", notes = "如果page为空则默认是第一页;如果limit为空则采用服务器的默认数值")
	@ApiImplicitParams({
			@ApiImplicitParam(name = "page", value = "当前页码", required = false, dataType = "int",example="1"),
			@ApiImplicitParam(name = "limit", value = "每页最多展示的记录数", required = false, dataType = "int",example="20")
	})
	@GetMapping
	public Map<String, Object> toManageAdmin(Integer page, Integer limit, AdminQuery adminQuery, HttpServletRequest request){
        Map<String, Object> map=new HashMap<String, Object>();
		PageObject pageObject =adminService.searchAdmins(page,limit,adminQuery);
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		map.put(Constant.JSON_TOTAL,pageObject.getTotalRecords());
        map.put(Constant.JSON_DATA,pageObject.getList());
		return map;
	}

	@ApiOperation(value = "删除指定账户", notes = "根据id的值删除指定账户")
	@ApiImplicitParam(name = "id", value = "要删除的账户id", paramType = "path",dataType="int", required = true,example="1")
	@DeleteMapping("/{id}")
	public Map<String, Object> deleteAdmin(@AuthenticationPrincipal Admin admin,@PathVariable Integer id){
		Map<String, Object> map=new HashMap<String, Object>();
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		adminService.deleteAdmin(admin,id);
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		return map;
	}

	@ApiOperation(value = "批量删除账户", notes = "根据id的值删除指定账户")
	@ApiImplicitParam(name = "ids", value = "要删除的账户id集合", required = true,paramType = "path",example ="15,25,74" )
	@DeleteMapping("/deletes/{ids}")
	public Map<String, Object> deleteAdmins(@PathVariable("ids")Integer[] ids, @AuthenticationPrincipal Admin admin){
		Map<String, Object> map=new HashMap<String, Object>();
		//Admin admin=(Admin)session.getAttribute("admin");
		Authentication authentication = SecurityContextHolder.getContext().getAuthentication();
		adminService.deleteAdmins(admin,ids);
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		return map;
	}

	@ApiOperation(value = "添加账户", notes = "添加账户，要添加的管理账户对象，id、createTime不传值")
	@ApiImplicitParam(name = "admin", value = "管理账户信息，id、createTime不传值", paramType = "body", dataType="Admin",required = true)
	@PostMapping
	public Map<String, Object> doAddAdmin(@RequestBody Admin admin){
		Map<String, Object> map=new HashMap<String, Object>();
		adminService.addAdmin(admin);
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		map.put(Constant.JSON_MESSAGE, "账户添加成功");
		return map;
	}

	@ApiOperation(value = "读取指定账户", notes = "根据id的值读取指定账户")
	@ApiImplicitParam(name = "id", value = "要读取的账户id", paramType = "path",dataType="int", required = true,example="1")
	@GetMapping("/{id}")
	public Map<String, Object>  getAdmin(@PathVariable Integer id){
		Map<String, Object> map=new HashMap<String, Object>();
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		map.put(Constant.JSON_DATA,adminService.getAdmin(id));
		return map;
	}

	@ApiOperation(value = "编辑账户", notes = "根据传入的值（必须要有id）进行修改（没有传入的字段则保持原值）-不包括password、createTime字段")
	@ApiImplicitParam(name = "admin", value = "管理账户信息，根据传入的值（必须要有id）进行修改（没有传入的字段则保持原值）-不包括password、createTime字段", paramType = "body", dataType="Admin",required = true)
	@PutMapping
	public Map<String, Object> updateAdmin(@AuthenticationPrincipal Admin admin,@RequestBody Admin user){
		Map<String, Object> map=new HashMap<String, Object>();
		admin.setPassword(null);//根据业务层说明，不接收密码字段的值
		adminService.updateAdmin(admin,user);
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		map.put(Constant.JSON_MESSAGE, "账户信息修改成功");
		return map;
	}

	@ApiOperation(value = "获取管理账户的总记录数", notes = "获取管理账户的总记录数")
	@GetMapping("/total")
	public Map<String, Object> total(){
		Map<String, Object> map=new HashMap<String, Object>();
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		map.put(Constant.JSON_DATA,adminService.total());
		return map;
	}

	@ApiOperation(value = "根据账户id获取指定账户的角色集合列表", notes = "根据账户id获取指定账户的角色集合列表")
	@ApiImplicitParam(name = "id", value = "要读取的账户id", paramType = "path", required = true,example="1")
	@GetMapping("/{id}/adminRoleRelationManage")
	public Map<String, Object>  getRolesByAdmin(@PathVariable Integer id){
		Map<String, Object> map=new HashMap<String, Object>();
		List<AdminRole> list=adminRoleService.getAllAdminRoleByAdminId(id);
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		map.put(Constant.JSON_DATA,list);
		map.put(Constant.JSON_TOTAL,list.size());
		//map.put("roles", roleService.getAllRoles());//获取所有角色集合
		//map.put("roleIds",adminRoleService.getRolesByAdminId(id));//获取拥有的角色集合
		return map;
	}

	@ApiOperation(value = "为指定账户赋予多个角色的关系", notes = "为指定账户赋予多个角色的关系")
	@ApiImplicitParams({
			@ApiImplicitParam(name = "adminId", value = "指定账户的id", paramType = "path", required = true,example="1"),
			@ApiImplicitParam(name = "roleIds", value = "多个角色的id", paramType = "path", required = true,example="1,2")
	})
	@PostMapping("/{adminId}/adminRoleRelationManage/roles/{roleIds}")
	public Map<String, Object>  addRolesForAdmin(@PathVariable("adminId") Integer adminId,@PathVariable("roleIds") Integer[] roleIds){
		Map<String, Object> map=new HashMap<String, Object>();
		adminRoleService.addAdminRoles(adminId,roleIds);
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		return map;
	}

	@ApiOperation(value = "从指定账户移除和多个角色的关系", notes = "从指定账户移除和多个角色的关系")
	@ApiImplicitParams({
			@ApiImplicitParam(name = "adminId", value = "指定账户的id", paramType = "path", required = true,example="1"),
			@ApiImplicitParam(name = "roleIds", value = "多个角色的id", paramType = "path", required = true,example="1,2")
	})
	@DeleteMapping("/{adminId}/adminRoleRelationManage/roles/{roleIds}")
	public Map<String, Object>  removeRolesFromAdmin(@PathVariable("adminId") Integer adminId,@PathVariable("roleIds") Integer[] roleIds){
		Map<String, Object> map=new HashMap<String, Object>();
		adminRoleService.removeAdminRoles(adminId,roleIds);
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		return map;
	}



	@ApiOperation(value = "从多个账户中移除多个角色的身份", notes = "从多个账户中移除多个角色的身份")
	@ApiImplicitParam(name = "adminIdsAndRoleIdsForm", value = "封装的用于接收adminIds[]和roleIds[]的表单对象", paramType = "body", dataType="AdminIdsAndRoleIdsForm",required = true)
	@DeleteMapping("/adminRoleRelationManage/removeRolesFromAdmins")
	public Map<String, Object>  removeRolesFromAdmins(@RequestBody AdminIdsAndRoleIdsForm adminIdsAndRoleIdsForm){
		Map<String, Object> map=new HashMap<String, Object>();
		adminRoleService.removeAdminRoles(adminIdsAndRoleIdsForm.getAdminIds(),adminIdsAndRoleIdsForm.getRoleIds());
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		return map;
	}

	@ApiOperation(value = "为多个账户赋予和多个指定角色的关系", notes = "为多个账户赋予和多个指定角色的关系")
	@ApiImplicitParam(name = "adminIdsAndRoleIdsForm", value = "封装的用于接收adminIds[]和roleIds[]的表单对象", paramType = "body", dataType="AdminIdsAndRoleIdsForm",required = true)
	@PostMapping("/adminRoleRelationManage/addRolesForAdmins")
	public Map<String, Object>  addRolesForAdmins(@RequestBody AdminIdsAndRoleIdsForm adminIdsAndRoleIdsForm){
		Map<String, Object> map=new HashMap<String, Object>();
		adminRoleService.addAdminRoles(adminIdsAndRoleIdsForm.getAdminIds(),adminIdsAndRoleIdsForm.getRoleIds());
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		return map;
	}




	@ApiOperation(value = "为指定账户赋予和所有角色的关系", notes = "为指定账户赋予和所有角色的关系")
	@ApiImplicitParams({
			@ApiImplicitParam(name = "adminId", value = "指定账户的id", paramType = "path", required = true,example="1")
	})
	@PostMapping("/{adminId}/adminRoleRelationManage")
	public Map<String, Object>  addAllRoleForAdmin(@PathVariable("adminId") Integer adminId){
		Map<String, Object> map=new HashMap<String, Object>();
		adminRoleService.addAllAdminRoleForAdmin(adminId);
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		return map;
	}

	@ApiOperation(value = "从指定账户移除和指定角色的关系", notes = "从指定账户移除和指定角色的关系")
	@ApiImplicitParams({
			@ApiImplicitParam(name = "adminId", value = "指定账户的id", paramType = "path", required = true,example="1")
	})
	@DeleteMapping("/{adminId}/adminRoleRelationManage")
	public Map<String, Object>  removeAllRoleFromAdmin(@PathVariable("adminId") Integer adminId){
		Map<String, Object> map=new HashMap<String, Object>();
		adminRoleService.removeAllAdminRoleFromAdmin(adminId);
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		return map;
	}


	//===================================菜单操作============================================
	@ApiOperation(value = "根据账户id获取指定账户的树形菜单", notes = "根据账户id获取指定账户的树形菜单")
	@ApiImplicitParam(name = "id", value = "要读取的账户id", paramType = "path", required = true,example="1")
	@GetMapping("/{id}/treeMenu")
	public Map<String, Object>  getMenusByAdmin(@PathVariable Integer id){
		Map<String, Object> map=new HashMap<String, Object>();
		List<Menu> list=adminMenuService.getTreeMenusByAdminId(id);//读取账户对应的树形菜单
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		map.put(Constant.JSON_DATA,list);
		return map;
	}





















	@ApiOperation(value = "为指定账户赋予和指定角色的关系", notes = "为指定账户赋予和指定角色的关系")
	@ApiImplicitParams({
			@ApiImplicitParam(name = "adminId", value = "指定账户的id", paramType = "path", required = true,example="1"),
			@ApiImplicitParam(name = "roleId", value = "指定角色的id", paramType = "path", required = true,example="1")
	})
	@PostMapping("/{adminId}/adminRoleRelationManage/{roleId}")
	public Map<String, Object>  addRoleForAdmin(@PathVariable("adminId") Integer adminId,@PathVariable("roleId") Integer roleId){
		Map<String, Object> map=new HashMap<String, Object>();
		AdminRole adminRole=adminRoleService.addAdminRole(adminId,roleId);
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		map.put(Constant.JSON_DATA,adminRole);
		return map;
	}


	@ApiOperation(value = "从指定账户移除和指定角色的关系", notes = "从指定账户移除和指定角色的关系")
	@ApiImplicitParams({
			@ApiImplicitParam(name = "adminId", value = "指定账户的id", paramType = "path", required = true,example="1"),
			@ApiImplicitParam(name = "roleId", value = "指定角色的id", paramType = "path", required = true,example="1")
	})
	@DeleteMapping("/{adminId}/adminRoleRelationManage/{roleId}")
	public Map<String, Object>  removeRoleFromAdmin(@PathVariable("adminId") Integer adminId,@PathVariable("roleId") Integer roleId){
		Map<String, Object> map=new HashMap<String, Object>();
		adminRoleService.removeAdminRole(adminId,roleId);
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		return map;
	}

}
