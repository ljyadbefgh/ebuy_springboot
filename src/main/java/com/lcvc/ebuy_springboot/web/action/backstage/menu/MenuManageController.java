package com.lcvc.ebuy_springboot.web.action.backstage.menu;


import com.lcvc.ebuy_springboot.model.Menu;
import com.lcvc.ebuy_springboot.model.base.Constant;
import com.lcvc.ebuy_springboot.model.base.JsonCode;
import com.lcvc.ebuy_springboot.service.AdminRoleService;
import com.lcvc.ebuy_springboot.service.AdminService;
import com.lcvc.ebuy_springboot.service.MenuService;
import com.lcvc.ebuy_springboot.service.RoleService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;

@Api(tags = "后台菜单管理模块")
@RestController
@RequestMapping(value = "/api/backstage/menumanage")
public class MenuManageController {

	public static final Log log= LogFactory.getLog(MenuManageController.class);

	@Autowired
	private RoleService roleService;
	@Autowired
	private AdminService adminService;
	@Autowired
	private AdminRoleService adminRoleService;
	@Autowired
	private MenuService menuService;


	@ApiOperation(value = "以树形方式读取所有菜单信息", notes = "以树形方式读取所有菜单信息")
	@GetMapping()
	public Map<String, Object> toManageMenu(){
		Map<String, Object> map=new HashMap<String, Object>();
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		map.put(Constant.JSON_DATA,menuService.getTreeMenu());
		return map;
	}


	@ApiOperation(value = "添加新菜单", notes = "添加新菜单，id不传值")
	@ApiImplicitParam(name = "menu", value = "菜单信息，id不传值", paramType = "body", dataType="Menu",required = true)
	@PostMapping
	public Map<String, Object> doAddMenu(@RequestBody Menu menu){
		Map<String, Object> map=new HashMap<String, Object>();
		menuService.addMenu(menu);
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		map.put(Constant.JSON_MESSAGE, "添加成功");
		return map;
	}

	@ApiOperation(value = "根据id获取指定菜单信息", notes = "根据id获取指定菜单信息")
	@GetMapping("/{id}")
	public Map<String, Object> getMenu(@PathVariable Integer id){
		Map<String, Object> map=new HashMap<String, Object>();
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		map.put(Constant.JSON_DATA,menuService.getMenu(id));
		return map;
	}

	@ApiOperation(value = "编辑菜单", notes = "编辑，id不传值，parentId必须在页面有（如果为NLL则该菜单编辑后直接为顶级目录）")
	@ApiImplicitParam(name = "menu", value = "菜单信息，id不传值", paramType = "body", dataType="Menu",required = true)
	@PutMapping
	public Map<String, Object> doUpdateMenu(@RequestBody Menu menu){
		Map<String, Object> map=new HashMap<String, Object>();
		menuService.updateMenu(menu);
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		map.put(Constant.JSON_MESSAGE, "编辑成功");
		return map;
	}

	@ApiOperation(value = "根据id删除指定菜单及其所有子菜单", notes = "根据id删除指定菜单及其所有子菜单，以及所有相关联的信息")
	@DeleteMapping("/{id}")
	public Map<String, Object> deleteMenu(@PathVariable Integer id){
		Map<String, Object> map=new HashMap<String, Object>();
		menuService.deleteMenu(id);
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		return map;
	}

}
