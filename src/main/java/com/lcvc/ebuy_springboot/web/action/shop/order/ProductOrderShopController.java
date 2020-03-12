package com.lcvc.ebuy_springboot.web.action.shop.order;


import com.lcvc.ebuy_springboot.model.Customer;
import com.lcvc.ebuy_springboot.model.ProductOrder;
import com.lcvc.ebuy_springboot.model.ShoppingCart;
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
import org.apache.commons.lang.StringUtils;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Api(tags = "后台订单管理模块")
@RestController
@RequestMapping(value = "/api/shop/order")
public class ProductOrderShopController {

	public static final Log log= LogFactory.getLog(ProductOrderShopController.class);

	@Autowired
	private ProductOrderService productOrderService;
	@Autowired
	private ProductOrderDetailService productOrderDetailService;

	@ApiOperation(value = "获取产品订单的总记录数")
	@GetMapping("/total")
	public Map<String, Object> total(){
		Map<String, Object> map=new HashMap<String, Object>();
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		map.put(Constant.JSON_DATA,productOrderService.total());
		return map;
	}


	@ApiOperation(value = "分页读取订单信息", notes = "如果page为空则默认是第一页;如果limit为空则采用服务器的默认数值")
	@ApiImplicitParams({
			@ApiImplicitParam(name = "page", value = "当前页码", required = false, dataType = "int",example="1"),
			@ApiImplicitParam(name = "limit", value = "每页最多展示的记录数", required = false, dataType = "int",example="1"),
			@ApiImplicitParam(name = "productOrderQuery", value = "查询条件，以对象方式上传，如果为Null表示没有条件", required = false, dataType = "ProductOrderQuery")
	})
	@GetMapping
	public Map<String, Object> toManageProductOrder(Integer page, Integer limit,  ProductOrderQuery productOrderQuery, HttpSession session){
        Map<String, Object> map=new HashMap<String, Object>();
		Customer customer=(Customer) session.getAttribute("customer");// 获取登陆账户的信息
		if(productOrderQuery==null){//如果没有传递条件过来
			productOrderQuery=new ProductOrderQuery();
		}
		productOrderQuery.setCustomer(customer);//查询登陆账户的订单信息
		PageObject pageObject =productOrderService.search(page,limit,productOrderQuery);
		map.put(Constant.JSON_TOTAL,pageObject.getTotalRecords());
        map.put(Constant.JSON_DATA,pageObject.getList());
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		return map;
	}

	@ApiOperation(value = "读取订单详情", notes = "获取指定订单的所有数据")
	@ApiImplicitParam(name = "orderNo", value = "订单编号", paramType = "path", dataType="String",required = true,example="112314123")
	@GetMapping("/{orderNo}")
	public Map<String, Object> getProductOrder(@PathVariable("orderNo")String orderNo,HttpSession session){
		Map<String, Object> map=new HashMap<String, Object>();
		if(!StringUtils.isEmpty(orderNo)){//如果订单编号存在
			ProductOrderQuery productOrderQuery=new ProductOrderQuery();//直接用查询条件查询
			Customer customer=(Customer) session.getAttribute("customer");// 获取登陆账户的信息
			productOrderQuery.setCustomer(customer);//查询登陆账户的订单信息
			productOrderQuery.setOrderNo(orderNo);// 查找指定编号
			List<ProductOrder> list=productOrderService.search(productOrderQuery);
			if(list.size()==1){//如果只有一条记录，说明找到了
				map.put(Constant.JSON_DATA,list.get(0));
				map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
			}else{//找不到指定订单
				map.put(Constant.JSON_CODE, JsonCode.ERROR.getValue());
				map.put(Constant.JSON_MESSAGE, "读取订单失败，请重新加载订单或是联系管理员");
			}
		}else{
			map.put(Constant.JSON_CODE, JsonCode.ERROR.getValue());
			map.put(Constant.JSON_MESSAGE, "读取订单失败：订单编号不能为空");
		}
		return map;
	}

	@ApiOperation(value = "客户下订单", notes = "将购物车信息存到订单中，并清空购物车")
	@ApiImplicitParam(name = "orderNo", value = "订单编号", paramType = "path", dataType="String",required = true,example="112314123")
	@PostMapping
	public Map<String, Object> save(@RequestBody ProductOrder productOrder, HttpSession session){
		Map<String, Object> map=new HashMap<String, Object>();
		ShoppingCart cart=(ShoppingCart)session.getAttribute("shoppingCart");//获取购物车信息
		Customer customer=(Customer) session.getAttribute("customer");// 获取登陆账户的信息
		String orderNo=productOrderService.save(cart,productOrder,customer);//下订单
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		map.put(Constant.JSON_DATA,orderNo);
		session.removeAttribute("shoppingCart");//清空购物车信息
		return map;
	}

	@ApiOperation(value = "将订单支付状态变更为已付款", notes = "将订单支付状态变更为已付款，适用于货到付款。模拟商家收到钱后进行操作")
	@ApiImplicitParam(name = "orderNo", value = "订单编号", paramType = "path", dataType="String",required = true,example="112314123")
	@PatchMapping("/{orderNo}/payment")
	public Map<String, Object> updatePaymentStatusForPay(@PathVariable("orderNo")String orderNo,HttpSession session){
		Map<String, Object> map=new HashMap<String, Object>();
		productOrderService.updatePaymentStatusForPay(orderNo,(Customer)session.getAttribute("customer"));//将订单付款方式修改为已付款。适用于线上支付
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		return map;
	}

	@ApiOperation(value = "将订单状态修改为已收货", notes = "将订单状态修改为已收货")
	@ApiImplicitParam(name = "orderNo", value = "订单编号", paramType = "path", dataType="String",required = true,example="112314123")
	@PatchMapping("/{orderNo}/reception")
	public Map<String, Object> updateTagForReception(@PathVariable("orderNo")String orderNo, HttpSession session){
		Map<String, Object> map=new HashMap<String, Object>();
		productOrderService.updateTagForReception(orderNo,(Customer)session.getAttribute("customer"));//将订单修改为已收货状态
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		return map;
	}

	@ApiOperation(value = "申请取消订单", notes = "申请取消订单")
	@ApiImplicitParam(name = "orderNo", value = "订单编号", paramType = "path", dataType="String",required = true,example="112314123")
	@PatchMapping("/{orderNo}/cancel")
	public Map<String, Object> updateTagForCancel(@PathVariable("orderNo")String orderNo, HttpSession session){
		Map<String, Object> map=new HashMap<String, Object>();
		productOrderService.updateTagForCancel(orderNo,(Customer)session.getAttribute("customer"));//将订单修改为已收货状态
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		return map;
	}

}
