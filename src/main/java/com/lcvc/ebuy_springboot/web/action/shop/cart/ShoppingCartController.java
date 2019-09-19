package com.lcvc.ebuy_springboot.web.action.shop.cart;

import com.lcvc.ebuy_springboot.model.ShoppingCart;
import com.lcvc.ebuy_springboot.model.base.Constant;
import com.lcvc.ebuy_springboot.model.base.JsonCode;
import com.lcvc.ebuy_springboot.service.ShoppingCartService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@Api(tags = "前台购物车模块")
@RestController
@RequestMapping(value = "/api/shop/cart")
public class ShoppingCartController {
    @Resource
    private ShoppingCartService shoppingCartService;

    @ApiOperation(value = "前台购物车信息", notes = "返回购物车中的信息")
    @GetMapping
    public Map<String, Object> getCart( HttpSession session){
        Map<String, Object> map=new HashMap<String, Object>();
        map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
        ShoppingCart cart=(ShoppingCart)session.getAttribute("shoppingCart");
        map.put(Constant.JSON_DATA,cart);
        return map;
    }

    @ApiOperation(value = "添加商品到购物车", notes = "添加商品到购物车，然后返回添加商品后的购物车信息")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "productId", value = "产品id", required = true, dataType = "int",example="101"),
            @ApiImplicitParam(name = "number", value = "数量", required = true, dataType = "int",example="1")
    })
    @PostMapping
    public Map<String, Object> putProductToCart(@RequestParam Integer productId,@RequestParam Integer number, HttpSession session){
        Map<String, Object> map=new HashMap<String, Object>();
        ShoppingCart cart=(ShoppingCart)session.getAttribute("shoppingCart");
        cart=shoppingCartService.addShoppingCart(cart,productId,number);
        session.setAttribute("shoppingCart", cart);
        map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
        map.put(Constant.JSON_DATA,cart);
        return map;
    }

    @ApiOperation(value = "修改购物车中的商品数量", notes = "修改购物车中的商品数量，然后返回修改后的购物车信息")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "productId", value = "产品id", required = true, dataType = "int",example="101"),
            @ApiImplicitParam(name = "number", value = "数量", required = true, dataType = "int",example="1")
    })
    @PutMapping
    public Map<String, Object> modifyCart(Integer productId,Integer number, HttpSession session){
        Map<String, Object> map=new HashMap<String, Object>();
        ShoppingCart cart=(ShoppingCart)session.getAttribute("shoppingCart");
        shoppingCartService.updateShoppingCart(cart,productId,number);
        session.setAttribute("shoppingCart", cart);
        map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
        map.put(Constant.JSON_DATA,cart);
        return map;
    }

    @ApiOperation(value = "移除购物车中的指定商品", notes = "移除购物车中的指定商品，然后返回修改后的购物车信息")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "productId", value = "产品id", required = true, dataType = "int",example="101")
    })
    @DeleteMapping
    public Map<String, Object> removeProductFromCart(Integer productId, HttpSession session){
        Map<String, Object> map=new HashMap<String, Object>();
        ShoppingCart cart=(ShoppingCart)session.getAttribute("shoppingCart");
        shoppingCartService.removeShoppingCart(cart,productId);
        session.setAttribute("shoppingCart", cart);
        map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
        map.put(Constant.JSON_DATA,cart);
        return map;
    }

    @ApiOperation(value = "清空购物车", notes = "清空购物车")
    @DeleteMapping("/clear")
    public Map<String, Object> clearCart(Integer productId,Integer number, HttpSession session){
        Map<String, Object> map=new HashMap<String, Object>();
        session.removeAttribute("shoppingCart");
        map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
        return map;
    }
}
