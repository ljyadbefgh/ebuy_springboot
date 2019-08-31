package com.lcvc.ebuy_springboot.web.action.backstage.admin;


import com.lcvc.ebuy_springboot.model.Admin;
import com.lcvc.ebuy_springboot.model.base.Constant;
import com.lcvc.ebuy_springboot.model.base.JsonCode;
import com.lcvc.ebuy_springboot.model.base.PageObject;
import com.lcvc.ebuy_springboot.service.AdminService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@Api(tags = "后台管理员管理模块")
@RestController
@RequestMapping(value = "/api/backstage/adminmanage")
public class AdminManageController {

	public static final Log log= LogFactory.getLog(AdminManageController.class);

	@Resource
	private AdminService adminService;


	@ApiOperation(value = "分页读取所有管理账户信息", notes = "如果page为空则默认是第一页;如果limit则采用服务器的默认数值")
	@ApiImplicitParams({
			@ApiImplicitParam(name = "page", value = "当前页码", required = false, dataType = "Integer"),
			@ApiImplicitParam(name = "limit", value = "每页最多展示的记录数", required = false, dataType = "String")
	})
	@GetMapping
	public Map<String, Object> toManageAdmin(Integer page,Integer limit){
        Map<String, Object> map=new HashMap<String, Object>();
		PageObject pageObject =adminService.searchAdmins(page,limit);
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		map.put(Constant.JSON_TOTAL,pageObject.getTotalRecords());
        map.put(Constant.JSON_DATA,pageObject.getList());
		return map;
	}

	/**
	 * 删除指定账户
	 * @param id 指定账户的主键
	 * @return
	 */
	@ApiOperation(value = "删除指定账户", notes = "根据id的值删除指定账户")
	@ApiImplicitParam(name = "id", value = "要删除的账户id", required = true, dataType = "Integer",paramType = "path")
	@DeleteMapping("/{id}")
	public Map<String, Object> deleteAdmin(@PathVariable Integer id, HttpSession session){
		Map<String, Object> map=new HashMap<String, Object>();
		Admin admin=(Admin)session.getAttribute("admin");
		adminService.deleteAdmin(admin,id);
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		return map;
	}

	/**
	 * 批量删除指定的多个账户
	 * @param ids 账户id集合，前端必须以“15,25,74”这样的方式传回
	 * @return
	 */
	@DeleteMapping("/deletes/{ids}")
	public Map<String, Object> deleteAdmins(@PathVariable("ids")Integer[] ids, HttpSession session){
		Map<String, Object> map=new HashMap<String, Object>();
		Admin admin=(Admin)session.getAttribute("admin");
		adminService.deleteAdmins(admin,ids);
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		return map;
	}


	/**
	 * 添加账户
	 * @param admin
	 * @return
	 */
	@PostMapping
	public Map<String, Object> doAddAdmin(@RequestBody Admin admin){
		Map<String, Object> map=new HashMap<String, Object>();
		adminService.addAdmin(admin);
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		map.put(Constant.JSON_MESSAGE, "账户添加成功");
		return map;
	}

	@ApiOperation(value = "读取指定账户", notes = "根据id的值读取指定账户")
	@ApiImplicitParam(name = "id", value = "要读取的账户id", paramType = "path", required = true, dataType = "Integer")
	@GetMapping("/{id}")
	public Map<String, Object>  getAdmin(@PathVariable Integer id){
		Map<String, Object> map=new HashMap<String, Object>();
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		map.put(Constant.JSON_DATA,adminService.getAdmin(id));
		return map;
	}

	/**
	 * 编辑账户信息
	 * @param admin
	 * @return
	 */
	@PatchMapping
	public Map<String, Object> updateAdmin(@RequestBody Admin admin){
		Map<String, Object> map=new HashMap<String, Object>();
		adminService.updateAdmin(admin);
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		map.put(Constant.JSON_MESSAGE, "账户信息修改成功");
		return map;
	}

}
