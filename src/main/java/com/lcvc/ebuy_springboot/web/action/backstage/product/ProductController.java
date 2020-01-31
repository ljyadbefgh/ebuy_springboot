package com.lcvc.ebuy_springboot.web.action.backstage.product;


import com.lcvc.ebuy_springboot.model.Admin;
import com.lcvc.ebuy_springboot.model.Product;
import com.lcvc.ebuy_springboot.model.base.Constant;
import com.lcvc.ebuy_springboot.model.base.JsonCode;
import com.lcvc.ebuy_springboot.model.base.PageObject;
import com.lcvc.ebuy_springboot.model.form.product.ProductTransferForm;
import com.lcvc.ebuy_springboot.model.query.ProductQuery;
import com.lcvc.ebuy_springboot.service.ProductService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.security.core.annotation.AuthenticationPrincipal;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.validation.constraints.NotNull;
import java.util.HashMap;
import java.util.Map;

@Api(tags = "后台产品管理模块")
@RestController
@RequestMapping(value = "/api/backstage/product")
public class ProductController {

	public static final Log log= LogFactory.getLog(ProductController.class);

	@Resource
	private ProductService productService;


	@ApiOperation(value = "分页读取所有产品信息", notes = "如果page为空则默认是第一页;如果limit为空则采用服务器的默认数值")
	@ApiImplicitParams({
			@ApiImplicitParam(name = "page", value = "当前页码", required = false, dataType = "int",example="1"),
			@ApiImplicitParam(name = "limit", value = "每页最多展示的记录数", required = false, dataType = "int",example="1"),
			@ApiImplicitParam(name = "customerQuery", value = "查询条件，以对象方式上传，如果为Null表示没有条件", required = false, dataType = "CustomerQuery")
	})
	@GetMapping
	public Map<String, Object> toManageProduct(Integer page, Integer limit, ProductQuery productQuery){
        Map<String, Object> map=new HashMap<String, Object>();
		PageObject pageObject =productService.searchProducts(page,limit,productQuery);
		map.put(Constant.JSON_TOTAL,pageObject.getTotalRecords());
        map.put(Constant.JSON_DATA,pageObject.getList());
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		return map;
	}

	@ApiOperation(value = "读取产品初始化信息", notes = "读取产品初始化信息，用于产品添加时候的初始值")
	@GetMapping("/init")
	public Map<String, Object>  getInitProduct(){
		Map<String, Object> map=new HashMap<String, Object>();
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		map.put(Constant.JSON_DATA,productService.getProductInit());
		return map;
	}



	@ApiOperation(value = "添加产品信息", notes = "id、createTime不传值，由服务端赋值")
	@ApiImplicitParam(name = "product", value = "产品信息，id、createTime不传值，由服务端赋值", paramType = "body", dataType="Product",required = true)
	@PostMapping
	public Map<String, Object> addProduct(@RequestBody Product product,@AuthenticationPrincipal Admin admin){
		Map<String, Object> map=new HashMap<String, Object>();
		productService.addProduct(product,admin);
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		map.put(Constant.JSON_MESSAGE, "产品添加成功");
		return map;
	}

	@ApiOperation(value = "读取指定产品信息", notes = "根据id的值读取指定产品信息")
	@ApiImplicitParam(name = "id", value = "要读取的产品信息id", paramType = "path", required = true,example="1")
	@GetMapping("/{id}")
	public Map<String, Object>  getProduct(@PathVariable Integer id){
		Map<String, Object> map=new HashMap<String, Object>();
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		map.put(Constant.JSON_DATA,productService.getProduct(id));
		return map;
	}

	@ApiOperation(value = "编辑产品信息", notes = "id不能为空")
	@ApiImplicitParam(name = "product", value = "id不能为空", paramType = "body", dataType="Product",required = true)
	@PutMapping
	public Map<String, Object> updateProduct(@RequestBody Product product,@AuthenticationPrincipal Admin admin){
		Map<String, Object> map=new HashMap<String, Object>();
		productService.updateProduct(product,admin);
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		map.put(Constant.JSON_MESSAGE, "产品信息修改成功");
		return map;
	}


	@ApiOperation(value = "批量删除指定的多个产品", notes = "批量删除指定的多个产品")
	@ApiImplicitParam(name = "ids", value = "要删除的产品id集合", required = true,paramType = "path",example ="15,25,74" )
	@DeleteMapping("/{ids}")
	public Map<String, Object> deleteProducts(@PathVariable("ids")Integer[] ids){
		Map<String, Object> map=new HashMap<String, Object>();
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		productService.deleteProducts(ids);
		return map;
	}

	@ApiOperation(value = "将产品批量转移到指定栏目下", notes = "将产品批量转移到指定栏目下")
	@ApiImplicitParam(name = "productTransferForm", value = "封装的用于接收productIds[]和productTypeId的表单对象", paramType = "body", dataType="ProductTransferForm",required = true)
	@PutMapping("/productType")
	public Map<String, Object>  transferProductTypeBySelect(@RequestBody @NotNull ProductTransferForm productTransferForm){
		Map<String, Object> map=new HashMap<String, Object>();
		//批量转移栏目
		productService.updateProductToTransferProductTypeBySelect(productTransferForm.getProductIds(),productTransferForm.getProductTypeId());
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		return map;
	}


	@ApiOperation(value = "产品优先级列表", notes = "产品优先级列表，用于选择框")
	@GetMapping("/orderNumMap")
	public Map<String, Object>  getOrderNumMapOfProduct(){
		Map<String, Object> map=new HashMap<String, Object>();
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		map.put(Constant.JSON_DATA, Constant.orderNumMapOfProduct);
		return map;
	}

	@ApiOperation(value = "产品排序规则列表", notes = "产品排序规则列表，用于选择框")
	@GetMapping("/orderTypeMap")
	public Map<String, Object>  getOrderTypeMapOfProduct(){
		Map<String, Object> map=new HashMap<String, Object>();
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		map.put(Constant.JSON_DATA, Constant.orderTypeMapOfProduct);
		return map;
	}




}
