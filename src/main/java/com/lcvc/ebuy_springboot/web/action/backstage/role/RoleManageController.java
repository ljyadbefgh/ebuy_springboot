package com.lcvc.ebuy_springboot.web.action.backstage.role;


import com.lcvc.ebuy_springboot.model.Role;
import com.lcvc.ebuy_springboot.model.RolePurview;
import com.lcvc.ebuy_springboot.model.base.Constant;
import com.lcvc.ebuy_springboot.model.base.JsonCode;
import com.lcvc.ebuy_springboot.model.base.PageObject;
import com.lcvc.ebuy_springboot.model.query.AdminQuery;
import com.lcvc.ebuy_springboot.service.AdminRoleService;
import com.lcvc.ebuy_springboot.service.AdminService;
import com.lcvc.ebuy_springboot.service.RolePurviewService;
import com.lcvc.ebuy_springboot.service.RoleService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Api(tags = "后台角色管理模块")
@RestController
@RequestMapping(value = "/api/backstage/rolemanage")
public class RoleManageController {

	public static final Log log= LogFactory.getLog(RoleManageController.class);

	@Autowired
	private RoleService roleService;
	@Autowired
	private AdminService adminService;
	@Autowired
	private AdminRoleService adminRoleService;
	@Autowired
	private RolePurviewService rolePurviewService;


	@ApiOperation(value = "读取所有角色信息", notes = "读取所有角色信息")
	@GetMapping("/all")
	public Map<String, Object> toManageRole(){
		Map<String, Object> map=new HashMap<String, Object>();
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		map.put(Constant.JSON_DATA,roleService.getAllRoles());
		return map;
	}

	@ApiOperation(value = "分页读取角色信息", notes = "如果page为空则默认是第一页;如果limit为空则采用服务器的默认数值")
	@ApiImplicitParams({
			@ApiImplicitParam(name = "page", value = "当前页码", required = false, dataType = "int",example="1"),
			@ApiImplicitParam(name = "limit", value = "每页最多展示的记录数", required = false, dataType = "int",example="20")
	})
	@GetMapping
	public Map<String, Object> toManageRole(Integer page,Integer limit){
        Map<String, Object> map=new HashMap<String, Object>();
		PageObject pageObject =roleService.searchRoles(page,limit);
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		map.put(Constant.JSON_TOTAL,pageObject.getTotalRecords());
        map.put(Constant.JSON_DATA,pageObject.getList());
		return map;
	}

	@ApiOperation(value = "添加新角色", notes = "添加新角色，id不传值")
	@ApiImplicitParam(name = "role", value = "角色信息，id不传值", paramType = "body", dataType="Role",required = true)
	@PostMapping
	public Map<String, Object> doAddRole(@RequestBody Role role){
		Map<String, Object> map=new HashMap<String, Object>();
		roleService.addRole(role);
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		map.put(Constant.JSON_MESSAGE, "新角色添加成功");
		return map;
	}

	@ApiOperation(value = "编辑角色", notes = "编辑角色")
	@ApiImplicitParam(name = "role", value = "角色信息，id不能为空", paramType = "body", dataType="Role",required = true)
	@PutMapping
	public Map<String, Object> doUpdateRole(@RequestBody Role role){
		Map<String, Object> map=new HashMap<String, Object>();
		roleService.updateRole(role);
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		map.put(Constant.JSON_MESSAGE, "角色信息修改成功");
		return map;
	}

	@ApiOperation(value = "批量删除指定的多个角色", notes = "批量删除指定的多个角色")
	@ApiImplicitParam(name = "ids", value = "要删除的角色id集合", required = true,paramType = "path",example ="15,25,74" )
	@DeleteMapping("/{ids}")
	public Map<String, Object> deleteRoles(@PathVariable("ids")Integer[] ids){
		Map<String, Object> map=new HashMap<String, Object>();
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		roleService.deleteRoles(ids);
		return map;
	}

	@ApiOperation(value = "根据id获取指定角色信息", notes = "根据id的值读取指定角色信息")
	@ApiImplicitParam(name = "id", value = "要读取的角色信息id", paramType = "path", required = true,example="1")
	@GetMapping("/{id}")
	public Map<String, Object>  getRole(@PathVariable Integer id){
    	Map<String, Object> map=new HashMap<String, Object>();
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		map.put(Constant.JSON_DATA,roleService.getRole(id));
		return map;
	}

	@ApiOperation(value = "分页读取指定角色对应的管理账户信息", notes = "如果page为空则默认是第一页;如果limit为空则采用服务器的默认数值")
	@ApiImplicitParams({
			@ApiImplicitParam(name = "page", value = "当前页码", required = false, dataType = "int",example="1"),
			@ApiImplicitParam(name = "limit", value = "每页最多展示的记录数", required = false, dataType = "int",example="20")
	})
	@GetMapping("/{roleId}/adminRoleRelationManage")
	public Map<String, Object> toManageAdmin(@PathVariable("roleId") Integer roleId,Integer page, Integer limit,AdminQuery adminQuery){
		Map<String, Object> map=new HashMap<String, Object>();
		if(adminQuery==null){//如果没有传值，重新封装查询条件
			adminQuery=new AdminQuery();
		}
		adminQuery.setRoleId(roleId);
		PageObject pageObject =adminService.searchAdmins(page,limit,adminQuery);
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		map.put(Constant.JSON_TOTAL,pageObject.getTotalRecords());
		map.put(Constant.JSON_DATA,pageObject.getList());
		return map;
	}

	@ApiOperation(value = "从指定角色移除和指定账户的关系", notes = "从指定角色移除和指定账户的关系")
	@ApiImplicitParams({
			@ApiImplicitParam(name = "roleId", value = "指定角色的id", paramType = "path", required = true,example="1"),
			@ApiImplicitParam(name = "adminIds", value = "指定账户的id", paramType = "path", required = true,example="1")
	})
	@DeleteMapping("/{roleId}/adminRoleRelationManage/{adminIds}")
	public Map<String, Object>  removeAdminsFromRole(@PathVariable("roleId") Integer roleId,@PathVariable("adminIds") Integer[] adminIds){
		Map<String, Object> map=new HashMap<String, Object>();
		adminRoleService.removeAdminRoles(adminIds,roleId);
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		return map;
	}

	@ApiOperation(value = "根据角色id获取指定角色的权限关系列表", notes = "根据角色id获取指定角色的权限关系列表")
	@ApiImplicitParam(name = "id", value = "要读取的角色id", paramType = "path", required = true,example="1")
	@GetMapping("/{id}/rolePurviewRelationManage")
	public Map<String, Object>  getPurviewsByRoleId(@PathVariable Integer id){
		Map<String, Object> map=new HashMap<String, Object>();
		List<RolePurview> list=rolePurviewService.getAllRolePurviewsByRoleId(id);
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		map.put(Constant.JSON_DATA,list);
		map.put(Constant.JSON_TOTAL,list.size());
		return map;
	}

	@ApiOperation(value = "为指定角色赋予指定权限的关系", notes = "为指定角色赋予指定权限的关系")
	@ApiImplicitParams({
			@ApiImplicitParam(name = "roleId", value = "指定角色的id", paramType = "path", required = true,example="1"),
			@ApiImplicitParam(name = "purviewId", value = "指定权限的id", paramType = "path", required = true,example="1")
	})
	@PostMapping("/{roleId}/rolePurviewRelationManage/{purviewId}")
	public Map<String, Object>  addPurviewForRole(@PathVariable("roleId") Integer roleId,@PathVariable("purviewId") Integer purviewId){
		Map<String, Object> map=new HashMap<String, Object>();
		RolePurview rolePurview=rolePurviewService.addRolePurview(roleId,purviewId);
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		map.put(Constant.JSON_DATA,rolePurview);
		return map;
	}

	@ApiOperation(value = "从指定角色移除和指定权限的关系", notes = "从指定角色移除和指定权限的关系")
	@ApiImplicitParams({
			@ApiImplicitParam(name = "roleId", value = "指定角色的id", paramType = "path", required = true,example="1"),
			@ApiImplicitParam(name = "purviewId", value = "指定权限的id", paramType = "path", required = true,example="1")
	})
	@DeleteMapping("/{roleId}/rolePurviewRelationManage/{purviewId}")
	public Map<String, Object>  removePurviewsFromRole(@PathVariable("roleId") Integer roleId,@PathVariable("purviewId") Integer purviewId){
		Map<String, Object> map=new HashMap<String, Object>();
		rolePurviewService.removeRolePurview(roleId,purviewId);
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		return map;
	}

	@ApiOperation(value = "为指定角色权限关系赋予相应的操作权限", notes = "为指定角色权限关系赋予相应的操作权限")
	@ApiImplicitParams({
			@ApiImplicitParam(name = "roleId", value = "指定角色的id", paramType = "path", required = true,example="1"),
			@ApiImplicitParam(name = "purviewId", value = "指定权限的id", paramType = "path", required = true,example="1"),
			@ApiImplicitParam(name = "permissionId", value = "指定操作权限的id", paramType = "path", required = true,example="1")
	})
	@PostMapping("/{roleId}/rolePurviewRelationManage/{purviewId}/rolePurviewMethod/{permissionId}")
	public Map<String, Object>  addMethodForRolePurview(@PathVariable("roleId") Integer roleId,@PathVariable("purviewId") Integer purviewId,@PathVariable("permissionId") Integer permissionId){
		Map<String, Object> map=new HashMap<String, Object>();
		rolePurviewService.addRolePurviewPermission(roleId,purviewId,permissionId);//添加该操作权限到关系中
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		return map;
	}

	@ApiOperation(value = "为指定角色权限关系赋予相应的操作权限", notes = "为指定角色权限关系赋予相应的操作权限")
	@ApiImplicitParams({
			@ApiImplicitParam(name = "roleId", value = "指定角色的id", paramType = "path", required = true,example="1"),
			@ApiImplicitParam(name = "purviewId", value = "指定权限的id", paramType = "path", required = true,example="1"),
			@ApiImplicitParam(name = "permissionId", value = "指定操作权限的id", paramType = "path", required = true,example="1")
	})
	@DeleteMapping("/{roleId}/rolePurviewRelationManage/{purviewId}/rolePurviewMethod/{permissionId}")
	public Map<String, Object>  removeMethodFromRolePurview(@PathVariable("roleId") Integer roleId,@PathVariable("purviewId") Integer purviewId,@PathVariable("permissionId") Integer permissionId){
		Map<String, Object> map=new HashMap<String, Object>();
		rolePurviewService.removeRolePurviewPermission(roleId,purviewId,permissionId);//添加该操作权限到关系中
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		return map;
	}

	@ApiOperation(value = "为指定角色赋予所有权限的关系", notes = "为指定角色赋予所有权限的关系")
	@ApiImplicitParams({
			@ApiImplicitParam(name = "roleId", value = "指定角色的id", paramType = "path", required = true,example="1")
	})
	@PostMapping("/{roleId}/rolePurviewRelationManage")
	public Map<String, Object>  addAllPurviewForRole(@PathVariable("roleId") Integer roleId){
		Map<String, Object> map=new HashMap<String, Object>();
		rolePurviewService.addAllRolePurviewForRole(roleId);
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		return map;
	}

	@ApiOperation(value = "为指定角色移除所有权限的关系", notes = "为指定角色移除所有权限的关系")
	@ApiImplicitParams({
			@ApiImplicitParam(name = "roleId", value = "指定角色的id", paramType = "path", required = true,example="1")
	})
	@DeleteMapping("/{roleId}/rolePurviewRelationManage")
	public Map<String, Object>  removeAllPurviewfromRole(@PathVariable("roleId") Integer roleId){
		Map<String, Object> map=new HashMap<String, Object>();
		rolePurviewService.removeAllRolePurviewForRole(roleId);
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		return map;
	}


}
