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
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.annotation.Validated;

import java.util.List;
import java.util.Random;

@Transactional(propagation = Propagation.REQUIRED,isolation = Isolation.DEFAULT,timeout=36000,rollbackFor=Exception.class)
@Validated//表示开启sprint的校检框架，会自动扫描方法里的@Valid（@Valid注解一般写在接口即可）
@Service
public class AutomationServiceImpl implements AutomationService {
    public static final Log log= LogFactory.getLog(AutomationServiceImpl.class);
    @Autowired
    private CustomerDao customerDao;
    @Autowired
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
    public void buy(Customer customer,List<Product> products){
        ShoppingCart shoppingCart=new ShoppingCart();
        int buyNumber=Math.round(new Random().nextInt(4))+1;//随机购买次数为1-5
        while(buyNumber-->0){
            Product product=this.getProductByRandom(products);//获取随机产品数
            int productNumber=Math.round(new Random().nextInt(2))+1;//随机购买数量为1-3
            try {
                shoppingCartService.addShoppingCart(shoppingCart,product.getId(),productNumber);//将商品添加到购物车
            } catch (Exception e) {//如果出现异常，一般是商品超出库存或是超过购买数量。此时移除，重新购买——也可能是其他异常，这里要慎重处理
                //shoppingCartService.removeShoppingCart(shoppingCart,product.getId());//移除该商品
                //buyNumber++;//重新让次数增加，达到重新购买的目的。但要防止库存都超出出现死循环_20200228，注释掉，因为一次系统更新导致新功能出异常，这里不断循环耗尽系统资源
                continue;//终止本次循环
            }
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
    public Customer getCustomerByRandom(List<Customer> customers){
        int customerRandom=new Random().nextInt(customers.size());
        Customer customer=customers.get(customerRandom);//在客户里面随机选一个
        return customer;
    }

    /**
     * 从已有产品中随机获取一个产品信息
     * @param products 已有的产品
     * @return
     */
    public Product getProductByRandom(List<Product> products){
        int productRandom=(int)(new Random().nextInt(products.size()));
        Product product=products.get(productRandom);//在客户里面随机选一个
        return product;
    }



    /*@Override
    public void autoBuy(Integer number,Long millisecond) {
        List<Customer> customers=customerDao.readAll(null);//获取所有客户信息
        List<Product> products=productDao.readAll(null);//获取所有产品信息
        Customer customer=null;
        while(number-->0){
            if(number==1){//保证有一次是指定的客户购买，用于测试
                customer=customerDao.get(1);
                if(customer==null){
                    continue;//如果已经没有这个账户，则取消本次循环。这里是为了防止未来程序出错
                }
            }else{
                customer=this.getCustomerByRandom(customers);
            }
            try {
                this.buy(customer,products);//执行购买程序
            } catch (Exception e) {//如果出现异常
                log.error("自动购买程序出错:"+e.getMessage());
                throw new MyServiceException(e.getMessage());
            }
            try {
                Thread.sleep(millisecond);   // 休眠-毫秒
            } catch (InterruptedException e) {
                break;
            }
        }
    }*/
}
