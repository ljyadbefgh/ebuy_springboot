package com.lcvc.ebuy_springboot.web.action.backstage.purview;


import com.lcvc.ebuy_springboot.model.Purview;
import com.lcvc.ebuy_springboot.model.base.Constant;
import com.lcvc.ebuy_springboot.model.base.JsonCode;
import com.lcvc.ebuy_springboot.model.base.PageObject;
import com.lcvc.ebuy_springboot.model.query.PurviewQuery;
import com.lcvc.ebuy_springboot.service.PurviewService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;

@Api(tags = "后台权限管理模块")
@RestController
@RequestMapping(value = "/api/backstage/purviewmanage")
public class PurviewManageController {

	public static final Log log= LogFactory.getLog(PurviewManageController.class);

	@Autowired
	private PurviewService purviewService;


	@ApiOperation(value = "分页读取权限信息", notes = "如果page为空则默认是第一页;如果limit为空则采用服务器的默认数值")
	@ApiImplicitParams({
			@ApiImplicitParam(name = "page", value = "当前页码", required = false, dataType = "int",example="1"),
			@ApiImplicitParam(name = "limit", value = "每页最多展示的记录数", required = false, dataType = "int",example="1"),
			@ApiImplicitParam(name = "customerQuery", value = "查询条件，以对象方式上传，如果为Null表示没有条件", required = false, dataType = "CustomerQuery")
	})
	@GetMapping
	public Map<String, Object> toManagePurview(Integer page, Integer limit, PurviewQuery purviewQuery){
        Map<String, Object> map=new HashMap<String, Object>();
		PageObject pageObject =purviewService.searchPurviews(page,limit,purviewQuery);
		map.put(Constant.JSON_TOTAL,pageObject.getTotalRecords());
        map.put(Constant.JSON_DATA,pageObject.getList());
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		return map;
	}

	@ApiOperation(value = "根据id获取指定权限信息", notes = "根据id的值读取指定权限信息")
	@ApiImplicitParam(name = "id", value = "要读取的权限信息id", paramType = "path", required = true,example="1")
	@GetMapping("/{id}")
	public Map<String, Object>  getPurview(@PathVariable Integer id){
		Map<String, Object> map=new HashMap<String, Object>();
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		map.put(Constant.JSON_DATA,purviewService.getPurview(id));
		return map;
	}

	@ApiOperation(value = "添加权限", notes = "添加权限，id不传值")
	@ApiImplicitParam(name = "purview", value = "id不传值", paramType = "body", dataType="Purview",required = true)
	@PostMapping
	public Map<String, Object> doAddPurview(@RequestBody Purview purview){
		Map<String, Object> map=new HashMap<String, Object>();
		purviewService.addPurview(purview);
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		map.put(Constant.JSON_MESSAGE, "权限添加成功");
		return map;
	}

	@ApiOperation(value = "编辑权限", notes = "编辑权限")
	@ApiImplicitParam(name = "purview", value = "权限信息，id不能为空", paramType = "body", dataType="Purview",required = true)
	@PutMapping
	public Map<String, Object> doUpdatePurview(@RequestBody Purview purview){
		Map<String, Object> map=new HashMap<String, Object>();
		purviewService.updatePurview(purview);
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		map.put(Constant.JSON_MESSAGE, "修改成功");
		return map;
	}

	@ApiOperation(value = "批量删除指定的多个权限", notes = "批量删除指定的多个权限")
	@ApiImplicitParam(name = "ids", value = "要删除的权限id集合", required = true,paramType = "path",example ="15,25,74" )
	@DeleteMapping("/{ids}")
	public Map<String, Object> deletePurviews(@PathVariable("ids")Integer[] ids){
		Map<String, Object> map=new HashMap<String, Object>();
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		purviewService.deletePurviews(ids);
		return map;
	}


}
