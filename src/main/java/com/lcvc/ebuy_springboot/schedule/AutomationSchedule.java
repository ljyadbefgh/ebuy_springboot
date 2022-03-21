package com.lcvc.ebuy_springboot.schedule;

import com.lcvc.ebuy_springboot.dao.CustomerDao;
import com.lcvc.ebuy_springboot.dao.ProductDao;
import com.lcvc.ebuy_springboot.dao.ProductOrderDao;
import com.lcvc.ebuy_springboot.model.*;
import com.lcvc.ebuy_springboot.model.query.ProductOrderQuery;
import com.lcvc.ebuy_springboot.model.query.ProductQuery;
import com.lcvc.ebuy_springboot.service.AutomationService;
import com.lcvc.ebuy_springboot.service.ProductOrderService;
import com.lcvc.ebuy_springboot.util.date.MyDateUtil;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;
import java.util.Random;

@Service
public class AutomationSchedule {
    public static final Log log= LogFactory.getLog(AutomationSchedule.class);
    @Autowired
    private CustomerDao customerDao;
    @Autowired
    private ProductDao productDao;
    @Autowired
    private AutomationService automationService;
    @Autowired
    private ProductOrderService productOrderService;
    @Autowired
    private ProductOrderDao productOrderDao;

    /**
     * 为每个商品随机增加商品库存——对应随机下单使用
     * 设计为每天上午5点10分执行自动购买
     */
    @Scheduled(cron = "0 10 05 ? * *")
    public void updateProductRepositoryByIncreasementTask(){
        productDao.updateProductRepositoryByIncreasement(300,400);
    }



    /**
     * 执行自动购买订单的任务,设计为每天上午5点30分执行自动购买
     */
    @Scheduled(cron = "0 30 05 ? * *")
    public void buyTask(){
        int buyNumber=Math.round(new Random().nextInt(15))+30;//随机购买次数为30-45
        try {
            this.autoBuy(buyNumber,10000l);//每10秒购买一次
        } catch (Exception e) {
            //让程序能顺利执行，直接捕获
        }
    }

    /**
     * 每隔一段时间，自动执行购买一次
     * 说明：如果某次购买出错，则撤销该次购买；其他未错误的保留
     * 1.随机客户
     * 2.随机购买次数（买几次商品）
     * 3.随机产品
     * 4.随机购买产品数量
     * 5.随机支付方式
     * @param number 下订单的次数
     * @param millisecond 单位：毫秒。表示间隔多少毫秒下一次单
     */
    private void autoBuy(Integer number,Long millisecond) {
        List<Customer> customers=customerDao.readAll(null);//获取所有客户信息
        ProductQuery productQuery=new ProductQuery();
        productQuery.setOnSale(true);//前台只能访问上架的产品
        List<Product> products=productDao.readAll(productQuery);//获取所有已上架的产品信息
        Customer customer=null;
        while(number-->0){
            if(number<=10){//保证有10次是指定的客户购买，用于测试
                customer=customerDao.get(1);
                if(customer==null){
                    continue;//如果已经没有这个账户，则取消本次循环。这里是为了防止未来程序出错
                }
            }else{
                customer=customers.get(new Random().nextInt(customers.size()));//在客户里面随机选一个
            }
            try {
                automationService.buy(customer,products);//执行购买程序
            } catch (Exception e) {//如果出现异常
                log.error("自动购买程序出错:"+e.getMessage());
            }
            try {
                Thread.sleep(millisecond);   // 休眠-毫秒
            } catch (InterruptedException e) {
                break;
            }
        }
    }


    /**
     * 模拟客户本人操作，将当前的所有订单都修改为支付状态
     * 设计为每天晚上11点30分执行自动更改
     * 说明：
     * 1.只有网上支付的才能付款
     */
    @Scheduled(cron = "0 30 23 ? * *")
    public void updatePaymentStatusForPayByCustomerTask(){
        //模拟客户付款，必须是网上支付的才能更改
        ProductOrderQuery productOrderQuery=new ProductOrderQuery();
        productOrderQuery.setPaymentType(1);//如果是网上支付
        productOrderQuery.setPaymentStatus(0);//如果是未付款
        productOrderQuery.setTag(0);//为付款状态
        List<ProductOrder> list=productOrderDao.readAll(productOrderQuery);//查出所有满足条件的订单
        for(ProductOrder productOrder:list){//这里如果数量多可能崩掉，未来再增加批量保存
            if(productOrder.getStrikePrice()==null){//如果没有成交价，则让成交价=总价
                BigDecimal totalPrice=new BigDecimal("0.00");//默认总价
                //处理订单信息
                for(ProductOrderDetail productOrderDetail:productOrder.getProductOrderDetails()){//遍历子订单
                    //计算子订单的价格
                    BigDecimal priceTotal=productOrderDetail.getPrice().multiply(BigDecimal.valueOf(productOrderDetail.getProductNumber()));
                    productOrderDetail.setPriceTotal(priceTotal);
                    totalPrice=totalPrice.add(priceTotal);
                }
                productOrder.setTotalPrice(totalPrice);
            }
            productOrderService.updatePaymentStatusForPay(productOrder.getOrderNo(),productOrder.getCustomer());//修改订单状态为已购买状态
        }
    }

    /**
     * 废弃方法，管理员不再负责处理支付问题
     * 模拟管理员操作，将当前的所有订单都修改为支付状态
     * 设计为每天晚上11点35分执行自动购买
     * 说明：
     * 1.只有已经收货的才能付款
     */
    /*@Scheduled(cron = "0 35 23 ? * *")
    public void updatePaymentStatusForPayByAdminTask(){
        //模拟管理员操作。必须是已收货状态才能更改
        ProductOrderQuery productOrderQuery=new ProductOrderQuery();
        productOrderQuery.setPaymentType(2);//如果是货到付款
        productOrderQuery.setPaymentStatus(0);//如果是未付款
        productOrderQuery.setTag(3);//已收货状态
        List<ProductOrder> list=productOrderDao.readAll(productOrderQuery);//查出所有满足条件的订单
        for(ProductOrder productOrder:list){//这里如果数量多可能崩掉，未来再增加批量保存
            productOrderService.updatePaymentStatusForPay(productOrder.getOrderNo(),new Admin(-99));//修改订单状态为已购买状态
        }
    }*/

    /**
     * 将订单变为已发货状态
     * 设计为每天晚上11点40分执行自动购买
     * 1.必须是已经下单后满1天，并且满足发货条件的订单才能发货
     */
    @Scheduled(cron = "0 40 23 ? * *")
    public void updateTagForMerchantShippedTask(){
        ProductOrderQuery productOrderQuery=new ProductOrderQuery();
        productOrderQuery.setTag(1);//处于待发货状态
        productOrderQuery.setCreateTimeQueryOfEnd(MyDateUtil.getDateBefore(new Date(),1));//查找当前时间一天以前的订单
        List<ProductOrder> list=productOrderDao.readAll(productOrderQuery);//查出所有满足条件的订单
        for(ProductOrder productOrder:list){//这里如果数量多可能崩掉，未来再增加批量保存
            productOrderService.updateTagForMerchantShipped(productOrder.getOrderNo(),new Admin(-99));//修改订单状态为已发货状态
        }
    }

    /**
     * 将订单变为已收货状态
     * 设计为每天晚上11点45分执行自动购买
     * 1.必须是已经发货后满3天
     */
    @Scheduled(cron = "0 45 23 ? * *")
    public void updateTagForReceptionTask(){
        ProductOrderQuery productOrderQuery=new ProductOrderQuery();
        productOrderQuery.setTag(2);//处于已发货状态
        productOrderQuery.setSendTimeQueryOfEnd(MyDateUtil.getDateBefore(new Date(),3));//发货时间在3天以前
        List<ProductOrder> list=productOrderDao.readAll(productOrderQuery);//查出所有满足条件的订单
        for(ProductOrder productOrder:list){//这里如果数量多可能崩掉，未来再增加批量保存
            productOrderService.updateTagForReception(productOrder.getOrderNo(),productOrder.getCustomer());//修改订单状态为已收货状态
        }
    }

    /**
     * 将订单变为已完成状态
     * 设计为每天晚上11点50分执行自动购买
     * 1.必须是已经收货满7天后，并且满足完成条件
     */
    @Scheduled(cron = "0 50 23 ? * *")
    public void updateTagForCompleteTask(){
        ProductOrderQuery productOrderQuery=new ProductOrderQuery();
        productOrderQuery.setTag(3);//处于已收货状态
        productOrderQuery.setPaymentStatus(1);//必须处于已经支付状态
        productOrderQuery.setReceiveTimeQueryOfEnd(MyDateUtil.getDateBefore(new Date(),7));//收货时间在7天以前
        List<ProductOrder> list=productOrderDao.readAll(productOrderQuery);//查出所有满足条件的订单
        for(ProductOrder productOrder:list){//这里如果数量多可能崩掉，未来再增加批量保存
            try {
                productOrderService.updateTagForComplete(productOrder.getOrderNo());//修改订单状态为已完成状态
            } catch (Exception e) {
                continue;//如果出现异常则不中断执行，继续往下走
            }
        }
    }
}
