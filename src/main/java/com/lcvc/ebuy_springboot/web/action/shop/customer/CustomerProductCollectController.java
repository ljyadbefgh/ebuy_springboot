package com.lcvc.ebuy_springboot.web.action.shop.customer;

import com.lcvc.ebuy_springboot.model.Customer;
import com.lcvc.ebuy_springboot.model.base.Constant;
import com.lcvc.ebuy_springboot.model.base.JsonCode;
import com.lcvc.ebuy_springboot.service.ProductService;
import com.lcvc.ebuy_springboot.web.action.shop.BaseShopController;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.RequestContextHolder;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import javax.validation.constraints.NotEmpty;
import java.util.HashMap;
import java.util.Map;

@Api(tags = "前台客户产品收藏模块")
@RestController
@RequestMapping(value = "/api/shop/customer/productCollect")
public class CustomerProductCollectController extends BaseShopController {

    @Autowired
    private ProductService productService;

    @ApiOperation(value = "为当前客户收藏指定产品")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "productId", value = "产品id", required = true, dataType = "int",example="101")
    })
    @PostMapping("/{productId}")
    public Map<String, Object> save(@PathVariable Integer productId){
        Map<String, Object> map=new HashMap<String, Object>();
        Customer customer=this.getCustomerInRedis();//从redis中读取客户信息
        productService.saveProductCollect(customer.getId(), productId);
        map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
        return map;
    }

    @ApiOperation(value = "移除收藏的产品")
    @DeleteMapping("/{productId}")
    public Map<String, Object> remove(@PathVariable Integer productId){
        Map<String, Object> map=new HashMap<String, Object>();
        Customer customer=this.getCustomerInRedis();//从redis中读取客户信息
        productService.removeProductCollect(customer.getId(),productId);
        map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
        return map;
    }

    @ApiOperation(value = "判断该商品是否已经被当前用户收藏")
    @GetMapping("/{productId}")
    public Map<String, Object> get(@PathVariable Integer productId){
        Map<String, Object> map=new HashMap<String, Object>();
        Customer customer=this.getCustomerInRedis();//从redis中读取客户信息
        map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
        map.put(Constant.JSON_DATA, productService.existsProductCollect(customer.getId(),productId));
        return map;
    }

    @ApiOperation(value = "获取当前用户收藏的商品集合")
    @GetMapping("/allProduct")
    public Map<String, Object> get(){
        Map<String, Object> map=new HashMap<String, Object>();
        Customer customer=this.getCustomerInRedis();//从redis中读取客户信息
        map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
        map.put(Constant.JSON_DATA, productService.getProductCollectByCustomer(customer.getId()));
        return map;
    }

    @ApiOperation(value = "移除选中的收藏商品")
    @DeleteMapping("/productIds/{productIds}")
    public Map<String, Object> removes(@PathVariable("productIds")Integer[] productIds){
        Map<String, Object> map=new HashMap<String, Object>();
        Customer customer=this.getCustomerInRedis();//从redis中读取客户信息
        productService.removeProductCollectByCustomerAndProductIds(customer.getId(),productIds);
        map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
        return map;
    }
}
