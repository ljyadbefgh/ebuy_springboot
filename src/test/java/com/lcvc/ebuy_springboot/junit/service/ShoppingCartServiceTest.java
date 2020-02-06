package com.lcvc.ebuy_springboot.junit.service;

import com.lcvc.ebuy_springboot.EbuySpringbootApplicationTests;
import com.lcvc.ebuy_springboot.model.ShoppingCart;
import com.lcvc.ebuy_springboot.model.ShoppingCartItem;
import com.lcvc.ebuy_springboot.service.ShoppingCartService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class ShoppingCartServiceTest extends EbuySpringbootApplicationTests {
    @Autowired
    private ShoppingCartService shoppingCartService;

    private void printShoppingCart(ShoppingCart shoppingCart){
        List<ShoppingCartItem> list=shoppingCart.getList();
        for(ShoppingCartItem item:list){
            System.out.print(item.getProduct().getName()+"\t");
            System.out.print(item.getProduct().getOriginalPrice()+"\t");
            System.out.print(item.getProduct().getPrice()+"\t");
            System.out.println(item.getNumber()+"\t");
        }
    }

    @Test
    public void testBuy(){
        ShoppingCart shoppingCart=new ShoppingCart();
        shoppingCartService.addShoppingCart(shoppingCart,72,10);
        shoppingCartService.addShoppingCart(shoppingCart,72,32);
        shoppingCartService.addShoppingCart(shoppingCart,96,13);
        shoppingCartService.addShoppingCart(shoppingCart,77,21);
        shoppingCartService.updateShoppingCart(shoppingCart,96,10);
        shoppingCartService.removeShoppingCart(shoppingCart,96);
        printShoppingCart(shoppingCart);
    }
}
