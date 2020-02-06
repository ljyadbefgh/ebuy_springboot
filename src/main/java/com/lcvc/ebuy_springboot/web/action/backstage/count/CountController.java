package com.lcvc.ebuy_springboot.web.action.backstage.count;


import com.lcvc.ebuy_springboot.model.base.Constant;
import com.lcvc.ebuy_springboot.model.base.JsonCode;
import com.lcvc.ebuy_springboot.service.CountService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiOperation;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;

@Api(tags = "后台管理员个人信息管理模块")
@RestController
@RequestMapping(value = "/api/backstage/count")
public class CountController {

	public static final Log log= LogFactory.getLog(CountController.class);

	@Resource
	private CountService countService;


	@ApiOperation(value = "产品销量排行榜", notes = "产品销量排行榜")
	@ApiImplicitParam(name = "limit", value = "展示的产品数",dataType="int", required = true,example="1")
	@GetMapping("/maxSalesVolumeOfProduct")
	public Map<String, Object>  getProductNameAndSalesVolumeData(Integer limit){
		Map<String, Object> map=new HashMap<String, Object>();
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		map.put(Constant.JSON_DATA,countService.getProductNameAndSalesVolumeData(limit));
		return map;
	}

	@ApiOperation(value = "产品栏目销售额排行榜", notes = "产品栏目销售额排行榜")
	@ApiImplicitParam(name = "limit", value = "展示的产品栏目数",dataType="int", required = true,example="1")
	@GetMapping("/maxSaleOfProductType")
	public Map<String, Object>  getMaxSaleOfProductType(Integer limit){
		Map<String, Object> map=new HashMap<String, Object>();
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		map.put(Constant.JSON_DATA,countService.getMaxSaleOfProductType(limit));
		return map;
	}

	@ApiOperation(value = "产品栏目销售额排行榜", notes = "产品栏目销售额排行榜")
	@ApiImplicitParam(name = "limit", value = "展示的产品栏目数",dataType="int", required = true,example="1")
	@GetMapping("/productTypeSalesVolumeInRecentlyEveryDay")
	public Map<String, Object>  getMaxSalesVolumeOfProductTypeRecentlyEveryDay(Integer dayNumber){
		Map<String, Object> map=new HashMap<String, Object>();
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		map.put(Constant.JSON_DATA,countService.getSalesVolumeOfProductTypeInRecentlyEveryDay(null,dayNumber));
		return map;
	}
}
