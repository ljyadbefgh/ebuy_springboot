package com.lcvc.ebuy_springboot.web.action.backstage.log;


import com.lcvc.ebuy_springboot.model.base.Constant;
import com.lcvc.ebuy_springboot.model.base.JsonCode;
import com.lcvc.ebuy_springboot.model.base.PageObject;
import com.lcvc.ebuy_springboot.model.query.LogOfAdminLoginQuery;
import com.lcvc.ebuy_springboot.service.LogOfAdminLoginService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.HashMap;
import java.util.Map;

@Api(tags = "后台管理员登陆日志管理模块")
@RestController
@RequestMapping(value = "/api/backstage/log/admin")
public class LogOfAdminLoginManageController {

	public static final Log log= LogFactory.getLog(LogOfAdminLoginManageController.class);

	@Autowired
	private LogOfAdminLoginService logOfAdminLoginService;


	@ApiOperation(value = "分页读取管理员登陆日志信息", notes = "如果page为空则默认是第一页;如果limit为空则采用服务器的默认数值")
	@ApiImplicitParams({
			@ApiImplicitParam(name = "page", value = "当前页码", required = false, dataType = "int",example="1"),
			@ApiImplicitParam(name = "limit", value = "每页最多展示的记录数", required = false, dataType = "int",example="1"),
			@ApiImplicitParam(name = "adminQuery", value = "查询条件，以对象方式上传，如果为Null表示没有条件", required = false, dataType = "AdminQuery")
	})
	@GetMapping
	public Map<String, Object> toManageLogOfAdminLogin(Integer page, Integer limit, LogOfAdminLoginQuery logOfAdminLoginQuery){
        Map<String, Object> map=new HashMap<String, Object>();
		PageObject pageObject =logOfAdminLoginService.search(page,limit,logOfAdminLoginQuery);
		map.put(Constant.JSON_TOTAL,pageObject.getTotalRecords());
        map.put(Constant.JSON_DATA,pageObject.getList());
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		return map;
	}
}
