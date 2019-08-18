package com.lcvc.ebuy_springboot.web.action.backstage.admin;


import com.lcvc.ebuy_springboot.model.Admin;
import com.lcvc.ebuy_springboot.model.base.Constant;
import com.lcvc.ebuy_springboot.model.base.JsonCode;
import com.lcvc.ebuy_springboot.model.base.PageObject;
import com.lcvc.ebuy_springboot.model.exception.MyFormException;
import com.lcvc.ebuy_springboot.service.AdminService;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping(value = "/api/backstage/adminmanage")
public class AdminManageController {

	public static final Log log= LogFactory.getLog(AdminManageController.class);

	@Resource
	private AdminService adminService;


	/**
	 * 分页读取所有管理账户信息
	 * @param page 当前页码
	 * @param limit 每页最多展示的记录数
	 * @return
	 */
	@GetMapping
	public Map<String, Object> toManageAdmin(Integer page,Integer limit, HttpServletRequest request){
        Map<String, Object> map=new HashMap<String, Object>();
		//新建/刷新session对象
		HttpSession session = request.getSession();
		System.out.printf("sessionId: %s%n", session.getId());
        map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		PageObject pageObject =adminService.searchAdmins(page,limit);
		map.put(Constant.JSON_TOTAL,pageObject.getTotalRecords());
        map.put(Constant.JSON_DATA,pageObject.getList());
		return map;
	}

	/**
	 * 删除指定账户
	 * @param id 指定账户的主键
	 * @return
	 */
	@DeleteMapping("/{id}")
	public Map<String, Object> deleteAdmin(@PathVariable Integer id, HttpSession session){
		Map<String, Object> map=new HashMap<String, Object>();
		adminService.deleteAdmin(id);
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		/*Admin admin=(Admin)session.getAttribute("admin");
		if(admin.getId()==id.intValue()){//如果登录账户的id与被删除账户的id一致
			//不允许删除自己的账户
			map.put(Constant.JSON_CODE, JsonCode.ERROR.getValue());
			map.put("myMessage", "删除失败：不允许删除自己");
		}else{
			adminService.deleteAdmin(id);
			map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		}*/
		return map;
	}

	/**
	 * 批量删除指定的多个账户
	 * @param ids 账户id集合，前端必须以“15,25,74”这样的方式传回
	 * @return
	 */
	@DeleteMapping("/deletes/{ids}")
	public Map<String, Object> deleteAdmins(@PathVariable("ids")Integer[] ids){
		Map<String, Object> map=new HashMap<String, Object>();
		adminService.deleteAdmins(ids);
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
		try {
			adminService.addAdmin(admin);
			map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
			map.put(Constant.JSON_MESSAGE, "账户添加成功");
		} catch (MyFormException e) {
			map.put(Constant.JSON_CODE, JsonCode.ERROR.getValue());
			map.put(Constant.JSON_MESSAGE, e.getMessage());
		}
		return map;
	}

	/**
	 * 读取指定账户
	 * @param id 指定账户的主键
	 * @return
	 */
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
		map.put(Constant.JSON_CODE, JsonCode.ERROR.getValue());
		try {
			if(adminService.updateAdmin(admin)){
				map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
				map.put(Constant.JSON_MESSAGE, "账户信息修改成功");
			}else{
				map.put(Constant.JSON_MESSAGE, "账户信息修改失败");
			}
		} catch (MyFormException e) {
			map.put(Constant.JSON_MESSAGE, "账户信息编辑失败："+e.getMessage());
		}
		return map;
	}

}
