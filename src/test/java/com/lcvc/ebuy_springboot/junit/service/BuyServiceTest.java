package com.lcvc.ebuy_springboot.junit.service;

import com.lcvc.ebuy_springboot.EbuySpringbootApplicationTests;
import com.lcvc.ebuy_springboot.dao.CustomerDao;
import com.lcvc.ebuy_springboot.model.Customer;
import com.lcvc.ebuy_springboot.model.ProductOrder;
import com.lcvc.ebuy_springboot.model.ShoppingCart;
import com.lcvc.ebuy_springboot.model.ShoppingCartItem;
import com.lcvc.ebuy_springboot.service.ProductOrderService;
import com.lcvc.ebuy_springboot.service.ShoppingCartService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class BuyServiceTest extends EbuySpringbootApplicationTests {
    @Autowired
    private ShoppingCartService shoppingCartService;
    @Autowired
    private ProductOrderService productOrderService;
    @Autowired
    private CustomerDao customerDao;

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
        printShoppingCart(shoppingCart);
        ProductOrder productOrder=new ProductOrder();//创建订单对象
        Customer customer=customerDao.get(1);//获取客户对象
        productOrder.setSendName(customer.getName());
        productOrder.setSendAddress(customer.getAddress());
        productOrder.setSendTel(customer.getTel());
        productOrder.setSendZip(customer.getZip());
        productOrder.setPaymentType(1);
        productOrderService.save(shoppingCart,productOrder,customer);
    }

}
