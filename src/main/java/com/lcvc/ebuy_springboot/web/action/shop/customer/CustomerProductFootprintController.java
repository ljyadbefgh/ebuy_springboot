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

import java.util.HashMap;
import java.util.Map;

@Api(tags = "前台客户的商品足迹模块")
@RestController
@RequestMapping(value = "/api/shop/customer/footPrint")
public class CustomerProductFootprintController extends BaseShopController {

    @Autowired
    private ProductService productService;

   /* @ApiOperation(value = "为当前用户添加商品足迹")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "productId", value = "产品id", required = true, dataType = "int",example="101")
    })
    @PostMapping("/{productId}")
    public Map<String, Object> save(@PathVariable Integer productId){
        Map<String, Object> map=new HashMap<String, Object>();
        Customer customer=this.getCustomerInRedis();//从redis中读取客户信息
        productService.saveProductFootprintByCustomerIdAndProductId(customer.getId(), productId);
        map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
        return map;
    }*/


    @ApiOperation(value = "获取当前用户收藏的商品集合")
    @GetMapping
    public Map<String, Object> get(){
        Map<String, Object> map=new HashMap<String, Object>();
        Customer customer=this.getCustomerInRedis();//从redis中读取客户信息
        map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
        map.put(Constant.JSON_DATA, productService.findProductFootprintByCustomerId(customer.getId()));
        return map;
    }

    @ApiOperation(value = "移除选中的商品足迹")
    @ApiImplicitParam(name = "productIds", value = "要删除的产品id集合", required = true,paramType = "path",example ="15,25,74" )
    @DeleteMapping("/{productIds}")
    public Map<String, Object> removes(@PathVariable("productIds")Integer[] productIds){
        Map<String, Object> map=new HashMap<String, Object>();
        Customer customer=this.getCustomerInRedis();//从redis中读取客户信息
        productService.deleteProductFootprintByCustomerIdAndProductIds(customer.getId(),productIds);
        map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
        return map;
    }
}
