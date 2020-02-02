package com.lcvc.ebuy_springboot.web.action.backstage.productorder;


import com.lcvc.ebuy_springboot.model.Admin;
import com.lcvc.ebuy_springboot.model.ProductOrder;
import com.lcvc.ebuy_springboot.model.ProductOrderDetail;
import com.lcvc.ebuy_springboot.model.base.Constant;
import com.lcvc.ebuy_springboot.model.base.JsonCode;
import com.lcvc.ebuy_springboot.model.base.PageObject;
import com.lcvc.ebuy_springboot.model.query.ProductOrderQuery;
import com.lcvc.ebuy_springboot.service.ProductOrderDetailService;
import com.lcvc.ebuy_springboot.service.ProductOrderService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.*;

import java.util.HashMap;
import java.util.Map;

@Api(tags = "后台订单管理模块")
@RestController
@RequestMapping(value = "/api/backstage/productorder")
public class ProductOrderController {

	public static final Log log= LogFactory.getLog(ProductOrderController.class);

	@Autowired
	private ProductOrderService productOrderService;
	@Autowired
	private ProductOrderDetailService productOrderDetailService;


	@ApiOperation(value = "分页读取所有产品信息", notes = "如果page为空则默认是第一页;如果limit为空则采用服务器的默认数值")
	@ApiImplicitParams({
			@ApiImplicitParam(name = "page", value = "当前页码", required = false, dataType = "int",example="1"),
			@ApiImplicitParam(name = "limit", value = "每页最多展示的记录数", required = false, dataType = "int",example="1"),
			@ApiImplicitParam(name = "customerQuery", value = "查询条件，以对象方式上传，如果为Null表示没有条件", required = false, dataType = "CustomerQuery")
	})
	@GetMapping
	public Map<String, Object> toManageProductOrder(Integer page, Integer limit,  ProductOrderQuery productOrderQuery){
        Map<String, Object> map=new HashMap<String, Object>();
		PageObject pageObject =productOrderService.search(page,limit,productOrderQuery);
		map.put(Constant.JSON_TOTAL,pageObject.getTotalRecords());
        map.put(Constant.JSON_DATA,pageObject.getList());
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		return map;
	}

	@ApiOperation(value = "编辑订单", notes = "编辑订单，只能修改成交价，收获信息等，并且不修改订单状态")
	@ApiImplicitParam(name = "productOrder", value = "订单信息，必须传递订单编号，本请求不修改订单状态", paramType = "body", dataType="ProductOrder",required = true)
	@PutMapping()
	public Map<String, Object> doUpdateProductOrder(@RequestBody ProductOrder productOrder, @AuthenticationPrincipal Admin admin){
		Map<String, Object> map=new HashMap<String, Object>();
		productOrderService.update(productOrder,admin);
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		return map;
	}

	@ApiOperation(value = "编辑子订单", notes = "编辑子订")
	@ApiImplicitParam(name = "productOrderDetail", value = "子订单信息，id不能为空，只能修改当前价格和商品数量", paramType = "body", dataType="ProductOrderDetail",required = true)
	@PutMapping("/detail")
	public Map<String, Object> doUpdateProductOrderDetail(@RequestBody ProductOrderDetail productOrderDetail){
		Map<String, Object> map=new HashMap<String, Object>();
		productOrderDetailService.updateProductOrderDetail(productOrderDetail);
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		return map;
	}

	@ApiOperation(value = "将订单支付状态变更为已付款", notes = "将订单支付状态变更为已付款，适用于货到付款。模拟商家收到钱后进行操作")
	@ApiImplicitParam(name = "orderNo", value = "订单编号", paramType = "path", dataType="String",required = true,example="112314123")
	@PatchMapping("/{orderNo}/payment")
	public Map<String, Object> updatePaymentStatusForPay(@PathVariable("orderNo")String orderNo, @AuthenticationPrincipal Admin admin){
		Map<String, Object> map=new HashMap<String, Object>();
		productOrderService.updatePaymentStatusForPay(orderNo,admin);//将订单付款方式修改为已付款。适用于货到付款。本方法模拟商家收到钱后进行操作
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		return map;
	}

	@ApiOperation(value = "将订单状态修改为已发货", notes = "将订单状态修改为已发货")
	@ApiImplicitParam(name = "orderNo", value = "订单编号", paramType = "path", dataType="String",required = true,example="112314123")
	@PatchMapping("/{orderNo}/merchantShipped")
	public Map<String, Object> updateTagForMerchantShipped(@PathVariable("orderNo")String orderNo, @AuthenticationPrincipal Admin admin){
		Map<String, Object> map=new HashMap<String, Object>();
		productOrderService.updateTagForMerchantShipped(orderNo,admin);//将订单付款方式修改为已付款。适用于货到付款。本方法模拟商家收到钱后进行操作
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		return map;
	}

}
