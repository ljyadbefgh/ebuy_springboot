package com.lcvc.ebuy_springboot.service.impl;

import com.lcvc.ebuy_springboot.dao.CustomerDao;
import com.lcvc.ebuy_springboot.dao.ProductDao;
import com.lcvc.ebuy_springboot.dao.ProductOrderDao;
import com.lcvc.ebuy_springboot.model.Customer;
import com.lcvc.ebuy_springboot.model.Product;
import com.lcvc.ebuy_springboot.model.ProductOrder;
import com.lcvc.ebuy_springboot.model.ShoppingCart;
import com.lcvc.ebuy_springboot.service.AutomationService;
import com.lcvc.ebuy_springboot.service.ProductOrderService;
import com.lcvc.ebuy_springboot.service.ShoppingCartService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.annotation.Validated;

import javax.annotation.Resource;
import java.util.List;
import java.util.Random;

@Transactional(propagation = Propagation.REQUIRED,isolation = Isolation.DEFAULT,timeout=36000,rollbackFor=Exception.class)
@Validated//表示开启sprint的校检框架，会自动扫描方法里的@Valid（@Valid注解一般写在接口即可）
@Service
public class AutomationServiceImpl implements AutomationService {
    @Resource
    private CustomerDao customerDao;
    @Resource
    private ProductDao productDao;
    @Autowired
    private ProductOrderDao productOrderDao;
    @Autowired
    private ShoppingCartService shoppingCartService;
    @Autowired
    private ProductOrderService productOrderService;


    /**
     * 自动执行购买
     * 说明：
     * 全部是随机，只执行一次
     * 1.随机购买次数（买几次商品）
     * 2.随机产品
     * 3.随机购买产品数量
     * 4.随机支付方式
     * @param customer 该次订单购买的客户
     * @param products 从这些产品中随机选一个
     */
    private void save(Customer customer,List<Product> products){
        ShoppingCart shoppingCart=new ShoppingCart();
        int buyNumber=new Random().nextInt(4)+1;//随机购买次数为1-4
        while(buyNumber-->0){
            Product product=this.getProductByRandom(products);//获取随机产品数
            int productNumber=new Random().nextInt(10)+1;//随机购买数量为1-10
            shoppingCartService.addShoppingCart(shoppingCart,product.getId(),productNumber);
        }
        ProductOrder productOrder=new ProductOrder();//创建订单对象
        productOrder.setSendName(customer.getName());//收货人
        productOrder.setSendAddress(customer.getAddress());//收货人地址
        productOrder.setSendTel(customer.getTel());//收货人电话
        productOrder.setSendZip(customer.getZip());//收货人邮编
        productOrder.setPaymentType(new Random().nextInt(2)+1);//付款方式（1、网上支付；2、货到付款）。随机两种
        productOrderService.save(shoppingCart,productOrder,customer);
    }

    /**
     * 从已有客户中随机获取一个客户信息
     * @param customers 从这些集合中随机选一个
     * @return
     */
    private Customer getCustomerByRandom(List<Customer> customers){
        int customerRandom=(int)(new Random().nextInt(customers.size()));
        Customer customer=customers.get(customerRandom);//在客户里面随机选一个
        return customer;
    }

    /**
     * 从已有产品中随机获取一个产品信息
     * @param products 已有的产品
     * @return
     */
    private Product getProductByRandom(List<Product> products){
        int productRandom=(int)(new Random().nextInt(products.size()));
        Product product=products.get(productRandom);//在客户里面随机选一个
        return product;
    }



    @Override
    public void autoBuy(Integer number,Long millisecond) {
        List<Customer> customers=customerDao.readAll(null);//获取所有客户信息
        List<Product> products=productDao.readAll(null);//获取所有产品信息
        while(number-->0){
            this.save(this.getCustomerByRandom(customers),products);
            try {
                Thread.sleep(millisecond);   // 休眠-毫秒
            } catch (InterruptedException e) {
                break;
            }
        }

    }
}
