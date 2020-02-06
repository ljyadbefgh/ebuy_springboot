package com.lcvc.ebuy_springboot.web.action.backstage.productorderdetail;


import com.lcvc.ebuy_springboot.model.base.Constant;
import com.lcvc.ebuy_springboot.model.base.JsonCode;
import com.lcvc.ebuy_springboot.model.base.PageObject;
import com.lcvc.ebuy_springboot.model.query.ProductOrderDetailQuery;
import com.lcvc.ebuy_springboot.service.ProductOrderDetailService;
import com.lcvc.ebuy_springboot.service.ProductOrderService;
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

@Api(tags = "后台订单管理模块")
@RestController
@RequestMapping(value = "/api/backstage/productorderdetail")
public class ProductOrderDetailController {

	public static final Log log= LogFactory.getLog(ProductOrderDetailController.class);

	@Autowired
	private ProductOrderService productOrderService;
	@Autowired
	private ProductOrderDetailService productOrderDetailService;


	@ApiOperation(value = "分页读取子订单信息", notes = "如果page为空则默认是第一页;如果limit为空则采用服务器的默认数值")
	@ApiImplicitParams({
			@ApiImplicitParam(name = "page", value = "当前页码", required = false, dataType = "int",example="1"),
			@ApiImplicitParam(name = "limit", value = "每页最多展示的记录数", required = false, dataType = "int",example="1"),
			@ApiImplicitParam(name = "productOrderDetailQuery", value = "查询条件，以对象方式上传，如果为Null表示没有条件", required = false, dataType = "ProductOrderDetailQuery")
	})
	@GetMapping
	public Map<String, Object> toManageProductDetailOrder(Integer page, Integer limit, ProductOrderDetailQuery productOrderDetailQuery){
        Map<String, Object> map=new HashMap<String, Object>();
		PageObject pageObject =productOrderDetailService.search(page,limit,productOrderDetailQuery);
		map.put(Constant.JSON_TOTAL,pageObject.getTotalRecords());
        map.put(Constant.JSON_DATA,pageObject.getList());
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		return map;
	}
}
