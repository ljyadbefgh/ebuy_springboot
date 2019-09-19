package com.lcvc.ebuy_springboot.web.action.shop.product;


import com.lcvc.ebuy_springboot.model.ProductType;
import com.lcvc.ebuy_springboot.model.base.Constant;
import com.lcvc.ebuy_springboot.model.base.JsonCode;
import com.lcvc.ebuy_springboot.service.ProductService;
import com.lcvc.ebuy_springboot.service.ProductTypeService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Api(tags = "前台产品栏目模块")
@RestController
@RequestMapping(value = "/api/shop/producttype")
public class ProductTypeShopController {

	public static final Log log= LogFactory.getLog(ProductTypeShopController.class);

	@Resource
	private ProductService productService;
	@Resource
	private ProductTypeService productTypeService;


	@ApiOperation(value = "获取所有产品栏目信息", notes = "获取所有产品栏目信息")
	@GetMapping(value = "/listProductType")
	public Map<String, Object> listProductType(HttpServletRequest request){
        Map<String, Object> map=new HashMap<String, Object>();
		String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";//获取项目根目录网址
		List<ProductType> list=productTypeService.getProductTypes(basePath);
		map.put(Constant.JSON_DATA,list);
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		return map;
	}
}
