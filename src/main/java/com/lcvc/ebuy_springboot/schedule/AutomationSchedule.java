package com.lcvc.ebuy_springboot.schedule;

import com.lcvc.ebuy_springboot.dao.ProductDao;
import com.lcvc.ebuy_springboot.dao.ProductOrderDao;
import com.lcvc.ebuy_springboot.model.Admin;
import com.lcvc.ebuy_springboot.model.ProductOrder;
import com.lcvc.ebuy_springboot.model.ProductOrderDetail;
import com.lcvc.ebuy_springboot.model.query.ProductOrderQuery;
import com.lcvc.ebuy_springboot.service.AutomationService;
import com.lcvc.ebuy_springboot.service.ProductOrderService;
import com.lcvc.ebuy_springboot.util.date.MyDateUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

import java.math.BigDecimal;
import java.util.Date;
import java.util.List;
import java.util.Random;

@Service
public class AutomationSchedule {

    @Autowired
    private AutomationService automationService;
    @Autowired
    private ProductDao productDao;
    @Autowired
    private ProductOrderService productOrderService;
    @Autowired
    private ProductOrderDao productOrderDao;

    /**
     * 执行自动购买订单的任务,设计为每天上午5点30分执行自动购买
     */
    @Scheduled(cron = "0 30 05 ? * *")
    public void buyTask(){
        int buyNumber=new Random().nextInt(6)+6;//随机购买次数为6-11
        automationService.autoBuy(buyNumber,5000l);//每5秒购买一次
    }

    /**
     * 为每个商品随机增加商品库存——对应随机下单使用
     * 设计为每天上午5点10分执行自动购买
     */
    @Scheduled(cron = "0 10 05 ? * *")
    public void updateProductRepositoryByIncreasementTask(){
        productDao.updateProductRepositoryByIncreasement(20,30);
    }

    /**
     * 模拟客户本人操作，将当前的所有订单都修改为支付状态
     * 设计为每天晚上11点30分执行自动购买
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
     * 模拟管理员操作，将当前的所有订单都修改为支付状态
     * 设计为每天晚上11点35分执行自动购买
     * 说明：
     * 1.只有已经收货的才能付款
     */
    @Scheduled(cron = "0 35 23 ? * *")
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
    }

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
     * 1.必须是已经发货后满2天
     */
    @Scheduled(cron = "0 45 23 ? * *")
    public void updateTagForReceptionTask(){
        ProductOrderQuery productOrderQuery=new ProductOrderQuery();
        productOrderQuery.setTag(2);//处于已发货状态
        productOrderQuery.setSendTimeQueryOfEnd(MyDateUtil.getDateBefore(new Date(),2));//发货时间在2天以前
        List<ProductOrder> list=productOrderDao.readAll(productOrderQuery);//查出所有满足条件的订单
        for(ProductOrder productOrder:list){//这里如果数量多可能崩掉，未来再增加批量保存
            productOrderService.updateTagForReception(productOrder.getOrderNo(),productOrder.getCustomer());//修改订单状态为已收货状态
        }
    }

    /**
     * 将订单变为已完成状态
     * 设计为每天晚上11点53分执行自动购买
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
