package com.lcvc.ebuy_springboot.web.action.backstage.product;


import com.lcvc.ebuy_springboot.model.Admin;
import com.lcvc.ebuy_springboot.model.Product;
import com.lcvc.ebuy_springboot.model.base.Constant;
import com.lcvc.ebuy_springboot.model.base.JsonCode;
import com.lcvc.ebuy_springboot.model.base.PageObject;
import com.lcvc.ebuy_springboot.model.query.ProductQuery;
import com.lcvc.ebuy_springboot.service.ProductService;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping(value = "/api/backstage/product")
public class ProductController {

	public static final Log log= LogFactory.getLog(ProductController.class);

	@Resource
	private ProductService productService;


	/**
     * 分页读取所有产品信息
	 * @param page 当前页码
	 * @param limit 每页最多展示的记录数
	 * @param productQuery 查询条件
	 * @return
	 */
	@GetMapping
	public Map<String, Object> toManageProduct(Integer page, Integer limit, ProductQuery productQuery, HttpServletRequest request){
        Map<String, Object> map=new HashMap<String, Object>();
		PageObject pageObject =productService.searchProducts(page,limit,productQuery);
		map.put(Constant.JSON_TOTAL,pageObject.getTotalRecords());
        map.put(Constant.JSON_DATA,pageObject.getList());
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		return map;
	}

	/**
	 * 读取产品初始化信息，用于产品添加时候的初始值
	 * @return
	 */
	@GetMapping("/init")
	public Map<String, Object>  getInitProduct(){
		Map<String, Object> map=new HashMap<String, Object>();
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		map.put(Constant.JSON_DATA,productService.getProductInit());
		return map;
	}

	/**
	 * 产品优先级列表，用于选择框
	 * @return
	 */
	@GetMapping("/orderNumMap")
	public Map<String, Object>  getOrderNumMapOfProduct(){
		Map<String, Object> map=new HashMap<String, Object>();
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		map.put(Constant.JSON_DATA, Constant.orderNumMapOfProduct);
		return map;
	}


	/**
	 * 添加产品
	 * @param product
	 * @return
	 */
	@PostMapping
	public Map<String, Object> addProduct(@RequestBody Product product,HttpSession session){
		Map<String, Object> map=new HashMap<String, Object>();
		productService.addProduct(product,(Admin)session.getAttribute("admin"));
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		map.put(Constant.JSON_MESSAGE, "产品添加成功");
		return map;
	}

	/**
	 * 读取指定产品
	 * @param id 指定产品的主键
	 * @return
	 */
	@GetMapping("/{id}")
	public Map<String, Object>  getProduct(@PathVariable Integer id){
		Map<String, Object> map=new HashMap<String, Object>();
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		map.put(Constant.JSON_DATA,productService.getProduct(id));
		return map;
	}

	/**
	 * 修改产品信息
	 * @param product
	 * @return
	 */
	@PatchMapping
	public Map<String, Object> updateProduct(@RequestBody Product product){
		Map<String, Object> map=new HashMap<String, Object>();
		map.put(Constant.JSON_CODE, JsonCode.ERROR.getValue());
		productService.updateProduct(product);
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		map.put(Constant.JSON_MESSAGE, "产品信息修改成功");
		return map;
	}


	/**
	 * 批量删除指定的多个产品
	 * @param ids 产品id集合，前端必须以“15,25,74”这样的方式传回
	 * @return
	 */
	@DeleteMapping("/{ids}")
	public Map<String, Object> deleteProducts(@PathVariable("ids")Integer[] ids){
		Map<String, Object> map=new HashMap<String, Object>();
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		productService.deleteProducts(ids);
		return map;
	}
}
