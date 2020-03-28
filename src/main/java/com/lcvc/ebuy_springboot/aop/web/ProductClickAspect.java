package com.lcvc.ebuy_springboot.aop.web;


import com.lcvc.ebuy_springboot.model.Customer;
import com.lcvc.ebuy_springboot.model.Product;
import com.lcvc.ebuy_springboot.model.WebConfig;
import com.lcvc.ebuy_springboot.model.query.LogOfProductClickQuery;
import com.lcvc.ebuy_springboot.service.CustomerService;
import com.lcvc.ebuy_springboot.service.LogOfCustomerLoginService;
import com.lcvc.ebuy_springboot.service.LogOfProductClickService;
import com.lcvc.ebuy_springboot.service.ProductService;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.time.LocalDateTime;

/**
 * 根据产品的点击，记录下点击日志，更新产品点击数
 * 说明：
 */
@Aspect
@Component
public class ProductClickAspect extends BaseWebAspect{

    public static final Log log= LogFactory.getLog(ProductClickAspect.class);

    @Autowired
    private LogOfCustomerLoginService logOfCustomerLoginService;
    @Autowired
    private CustomerService customerService;
    @Autowired
    private ProductService productService;
    @Autowired
    private LogOfProductClickService logOfProductClickService;


    /**
     * 知识点：
     * 对产品点击进行切面处理
     * 说明：
     * 1.更新产品的点击字段
     * 2.进行产品点击日志的记录
     * @param jp
     */
    //@AfterReturning
    @Before("execution(*  com.lcvc.ebuy_springboot.web.action.shop.product.ProductShopController.getProduct(..))")
    public void clickProduct(JoinPoint jp) throws Exception {
        Object[] objs = jp.getArgs();//获取请求参数
        if(objs.length==1) {//主要有一个参数
            Integer productId = (Integer) objs[0];
            if(productId!=null){
                boolean save=true;//表示需要保存日志，true表示不保存
                String ip=super.getClientIp();
                WebConfig webConfig=super.getWebConfig();//获取网站配置
                if(webConfig.getProductClickInterval()!=null&&webConfig.getProductClickInterval()>0){//如果网站配置需要限制产品点击数
                    //查询当天是否点击过，指定时间内同一个IP只能点击一次
                    LogOfProductClickQuery logOfProductClickQuery=new LogOfProductClickQuery();
                    logOfProductClickQuery.setIp(ip);
                    logOfProductClickQuery.setProduct(new Product(productId));
                    LocalDateTime nowTime= LocalDateTime.now();//获取当前时间
                    nowTime=nowTime.minusSeconds(webConfig.getProductClickInterval());//获取指定秒前的日期
                    logOfProductClickQuery.setClickTimeQueryOfBegin(nowTime);
                    if(logOfProductClickService.querySize(logOfProductClickQuery)>0){//如果该IP地址已经访问过该产品
                        save=false;
                    }
                }
                if(save){//如果需要保存
                    productService.updateForClickProduct(productId);//让产品点击数+1
                    Customer customer=(Customer)super.getSession().getAttribute("customer");//获取当前登陆客户
                    logOfProductClickService.save(productId,customer,ip);//实现产品点击日志记录
                }
            }
        }
    }
}
