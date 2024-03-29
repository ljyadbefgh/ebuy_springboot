package com.lcvc.ebuy_springboot.web.action.shop.product;


import com.github.xiaoymin.knife4j.annotations.DynamicParameter;
import com.github.xiaoymin.knife4j.annotations.DynamicResponseParameters;
import com.lcvc.ebuy_springboot.model.Customer;
import com.lcvc.ebuy_springboot.model.Product;
import com.lcvc.ebuy_springboot.model.ProductType;
import com.lcvc.ebuy_springboot.model.Products;
import com.lcvc.ebuy_springboot.model.base.Constant;
import com.lcvc.ebuy_springboot.model.base.JsonCode;
import com.lcvc.ebuy_springboot.model.base.PageObject;
import com.lcvc.ebuy_springboot.model.query.ProductQuery;
import com.lcvc.ebuy_springboot.service.ProductService;
import com.lcvc.ebuy_springboot.web.action.shop.BaseShopController;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;

@Api(tags = "前台产品模块")
@RestController
@RequestMapping(value = "/api/shop/product")
public class ProductShopController extends BaseShopController {

	public static final Log log= LogFactory.getLog(ProductShopController.class);

	@Resource
	private ProductService productService;

	@ApiOperation(value = "读取指定产品信息", notes = "根据id的值读取指定产品信息")
	@ApiImplicitParam(name = "id", value = "要读取的产品信息id", paramType = "path", required = true,example="1")
	@GetMapping("/{id}")
	@DynamicResponseParameters(properties = {
			@DynamicParameter(name = "body", value = "返回内容", dataTypeClass = Products.class),
			@DynamicParameter(name = "code", value = "状态码,0表示成功，-1表示失败，-9表示未登录"),
			@DynamicParameter(name = "msg", value = "返回信息")
	})
	public Map<String, Object>  getProduct(@PathVariable Integer id){
		Map<String, Object> map=new HashMap<String, Object>();
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		map.put(Constant.JSON_DATA,productService.getProduct(id));
		//为当前登录账户添加商品足迹
		Customer customer=this.getCustomerInRedis();//从redis中读取客户信息
		if(customer!=null){//如果客户已经登录
			//添加商品足迹
			productService.saveProductFootprintByCustomerIdAndProductId(customer.getId(), id);
		}
		return map;
	}


	@ApiOperation(value = "分页搜索所有已经上架的产品信息", notes = "如果page为空则默认是第一页;如果limit为空则采用服务器的默认数值")
	@ApiImplicitParams({
			@ApiImplicitParam(name = "page", value = "当前页码", required = false, dataType = "int",example="1"),
			@ApiImplicitParam(name = "limit", value = "每页最多展示的记录数", required = false, dataType = "int",example="10"),
			@ApiImplicitParam(name = "customerQuery", value = "查询条件，以对象方式上传，如果为Null表示默认条件", required = false, dataType = "CustomerQuery")
	})
	@GetMapping(value = "/searchProduct")
	public Map<String, Object> searchProduct(Integer page, Integer limit, ProductQuery productQuery){
        Map<String, Object> map=new HashMap<String, Object>();
        if(productQuery==null){//如果没有查询条件则创建新的条件
			productQuery=new ProductQuery();
		}
		productQuery.setOnSale(true);//前台只能访问上架的产品
		PageObject pageObject =productService.searchProducts(page,limit,productQuery);
		map.put(Constant.JSON_TOTAL,pageObject.getTotalRecords());
        map.put(Constant.JSON_DATA,pageObject.getList());
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		return map;
	}

	@ApiOperation(value = "分页搜索指定栏目（或所有栏目）已经上架的产品信息（常规）", notes = "如果page为空则默认是第一页;如果limit为空则采用服务器的默认数值")
	@ApiImplicitParams({
			@ApiImplicitParam(name = "page", value = "当前页码", required = false, dataType = "int",example="1"),
			@ApiImplicitParam(name = "limit", value = "每页最多展示的记录数", required = false, dataType = "int",example="10"),
			@ApiImplicitParam(name = "productTypeId", value = "所属产品栏目，如果不传值则查询所有栏目", required = false, dataType = "int",example="1")
	})
	@GetMapping(value = "/normalProducts")
	public Map<String, Object> normalProducts(Integer page, Integer limit,Integer productTypeId){
		Map<String, Object> map=new HashMap<String, Object>();
		//创建查询条件
		ProductQuery productQuery=new ProductQuery();
		productQuery.setOnSale(true);//前台只能访问上架的产品
		if(productTypeId!=null){//如果有产品栏目
			productQuery.setProductType(new ProductType(productTypeId));
		}
		PageObject pageObject =productService.searchProducts(page,limit,productQuery);
		map.put(Constant.JSON_TOTAL,pageObject.getTotalRecords());
		map.put(Constant.JSON_DATA,pageObject.getList());
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		return map;
	}

	@ApiOperation(value = "按照点击数降序排列，分页查询指定栏目（或所有栏目）已经上架的产品信息", notes = "如果page为空则默认是第一页;如果limit为空则采用服务器的默认数值")
	@ApiImplicitParams({
			@ApiImplicitParam(name = "page", value = "当前页码", required = false, dataType = "int",example="1"),
			@ApiImplicitParam(name = "limit", value = "每页最多展示的记录数", required = false, dataType = "int",example="10"),
			@ApiImplicitParam(name = "productTypeId", value = "所属产品栏目，如果不传值则查询所有栏目", required = false, dataType = "int",example="1")
	})
	@GetMapping(value = "/hitProducts")
	public Map<String, Object> hitProducts(Integer page, Integer limit,Integer productTypeId){
		Map<String, Object> map=new HashMap<String, Object>();
		//创建查询条件
		ProductQuery productQuery=new ProductQuery();
		if(productTypeId!=null){//如果有产品栏目
			productQuery.setProductType(new ProductType(productTypeId));
		}
		productQuery.setOnSale(true);//前台只能访问上架的产品
		productQuery.setOrderType(3);//按照点击数降序排列
		PageObject pageObject =productService.searchProducts(page,limit,productQuery);
		map.put(Constant.JSON_TOTAL,pageObject.getTotalRecords());
		map.put(Constant.JSON_DATA,pageObject.getList());
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		return map;
	}

	@ApiOperation(value = "按照发布时间降序排列，分页查询指定栏目（或所有栏目）已经上架的产品信息", notes = "如果page为空则默认是第一页;如果limit为空则采用服务器的默认数值")
	@ApiImplicitParams({
			@ApiImplicitParam(name = "page", value = "当前页码", required = false, dataType = "int",example="1"),
			@ApiImplicitParam(name = "limit", value = "每页最多展示的记录数", required = false, dataType = "int",example="10"),
			@ApiImplicitParam(name = "productTypeId", value = "所属产品栏目，如果不传值则查询所有栏目", required = false, dataType = "int",example="1")
	})
	@GetMapping(value = "/newProducts")
	public Map<String, Object> newProducts(Integer page, Integer limit,Integer productTypeId){
		Map<String, Object> map=new HashMap<String, Object>();
		//创建查询条件
		ProductQuery productQuery=new ProductQuery();
		if(productTypeId!=null){//如果有产品栏目
			productQuery.setProductType(new ProductType(productTypeId));
		}
		productQuery.setOnSale(true);//前台只能访问上架的产品
		productQuery.setOrderType(5);//按照时间降序降序排列
		PageObject pageObject =productService.searchProducts(page,limit,productQuery);
		map.put(Constant.JSON_TOTAL,pageObject.getTotalRecords());
		map.put(Constant.JSON_DATA,pageObject.getList());
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		return map;
	}

	@ApiOperation(value = "按照推荐指数降序排列，分页查询指定栏目（或所有栏目）已经上架的产品信息", notes = "如果page为空则默认是第一页;如果limit为空则采用服务器的默认数值")
	@ApiImplicitParams({
			@ApiImplicitParam(name = "page", value = "当前页码", required = false, dataType = "int",example="1"),
			@ApiImplicitParam(name = "limit", value = "每页最多展示的记录数", required = false, dataType = "int",example="10"),
			@ApiImplicitParam(name = "productTypeId", value = "所属产品栏目，如果不传值则查询所有栏目", required = false, dataType = "int",example="1")
	})
	@GetMapping(value = "/recommendationProducts")
	public Map<String, Object> recommendationProducts(Integer page, Integer limit,Integer productTypeId){
		Map<String, Object> map=new HashMap<String, Object>();
		//创建查询条件
		ProductQuery productQuery=new ProductQuery();
		if(productTypeId!=null){//如果有产品栏目
			productQuery.setProductType(new ProductType(productTypeId));
		}
		productQuery.setOnSale(true);//前台只能访问上架的产品
		productQuery.setOrderType(9);//按照时间降序降序排列
		PageObject pageObject =productService.searchProducts(page,limit,productQuery);
		map.put(Constant.JSON_TOTAL,pageObject.getTotalRecords());
		map.put(Constant.JSON_DATA,pageObject.getList());
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		return map;
	}

	@ApiOperation(value = "按价格从低到高，分页查询指定栏目（或所有栏目）已经上架的产品信息", notes = "如果page为空则默认是第一页;如果limit为空则采用服务器的默认数值")
	@ApiImplicitParams({
			@ApiImplicitParam(name = "page", value = "当前页码", required = false, dataType = "int",example="1"),
			@ApiImplicitParam(name = "limit", value = "每页最多展示的记录数", required = false, dataType = "int",example="10"),
			@ApiImplicitParam(name = "productTypeId", value = "所属产品栏目，如果不传值则查询所有栏目", required = false, dataType = "int",example="1")
	})
	@GetMapping(value = "/priceAscProducts")
	public Map<String, Object> priceAscProducts(Integer page, Integer limit,Integer productTypeId){
		Map<String, Object> map=new HashMap<String, Object>();
		//创建查询条件
		ProductQuery productQuery=new ProductQuery();
		productQuery.setOnSale(true);//前台只能访问上架的产品
		productQuery.setOrderType(7);//按当前价格降序排序排列
		if(productTypeId!=null){//如果有产品栏目
			productQuery.setProductType(new ProductType(productTypeId));
		}
		PageObject pageObject =productService.searchProducts(page,limit,productQuery);
		map.put(Constant.JSON_TOTAL,pageObject.getTotalRecords());
		map.put(Constant.JSON_DATA,pageObject.getList());
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		return map;
	}
}
