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

@Api(tags = "后台管理所有管理员账户模块")
@RestController
@RequestMapping(value = "/api/backstage/adminmanage")
public class AdminManageController {

	public static final Log log= LogFactory.getLog(AdminManageController.class);

	@Resource
	private AdminService adminService;


	@ApiOperation(value = "分页读取管理账户信息", notes = "如果page为空则默认是第一页;如果limit为空则采用服务器的默认数值")
	@ApiImplicitParams({
			@ApiImplicitParam(name = "page", value = "当前页码", required = false, dataType = "int",example="1"),
			@ApiImplicitParam(name = "limit", value = "每页最多展示的记录数", required = false, dataType = "int",example="20")
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

	@ApiOperation(value = "删除指定账户", notes = "根据id的值删除指定账户")
	@ApiImplicitParam(name = "id", value = "要删除的账户id", paramType = "path",dataType="int", required = true,example="1")
	@DeleteMapping("/{id}")
	public Map<String, Object> deleteAdmin(@PathVariable Integer id, HttpSession session){
		Map<String, Object> map=new HashMap<String, Object>();
		Admin admin=(Admin)session.getAttribute("admin");
		adminService.deleteAdmin(admin,id);
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		return map;
	}

	@ApiOperation(value = "批量删除账户", notes = "根据id的值删除指定账户")
	@ApiImplicitParam(name = "ids", value = "要删除的账户id集合", required = true,paramType = "path",example ="15,25,74" )
	@DeleteMapping("/deletes/{ids}")
	public Map<String, Object> deleteAdmins(@PathVariable("ids")Integer[] ids, HttpSession session){
		Map<String, Object> map=new HashMap<String, Object>();
		Admin admin=(Admin)session.getAttribute("admin");
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
	public Map<String, Object> updateAdmin(@RequestBody Admin admin){
		Map<String, Object> map=new HashMap<String, Object>();
		admin.setPassword(null);//根据业务层说明，不接收密码字段的值
		adminService.updateAdmin(admin);
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		map.put(Constant.JSON_MESSAGE, "账户信息修改成功");
		return map;
	}


}
