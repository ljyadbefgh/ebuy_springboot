package com.lcvc.ebuy_springboot.service.impl;

import com.lcvc.ebuy_springboot.dao.LogOfProductClickDao;
import com.lcvc.ebuy_springboot.dao.ProductDao;
import com.lcvc.ebuy_springboot.model.Customer;
import com.lcvc.ebuy_springboot.model.LogOfProductClick;
import com.lcvc.ebuy_springboot.model.query.LogOfProductClickQuery;
import com.lcvc.ebuy_springboot.model.Product;
import com.lcvc.ebuy_springboot.model.base.PageObject;
import com.lcvc.ebuy_springboot.service.LogOfProductClickService;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.annotation.Validated;

@Transactional(propagation = Propagation.REQUIRED,isolation = Isolation.DEFAULT,timeout=36000,rollbackFor=Exception.class)
@Validated//表示开启sprint的校检框架，会自动扫描方法里的@Valid（@Valid注解一般写在接口即可）
@Service
public class LogOfProductClickServiceImpl implements LogOfProductClickService {
    @Autowired
    private LogOfProductClickDao logOfProductClickDao;
    @Autowired
    private ProductDao productDao;

    @Override
    public void save(Integer productId, Customer customer, String ip) {
        LogOfProductClick logOfProductClick=new LogOfProductClick();
        //对产品id进行验证
        Product product=productDao.getSimple(productId);
        if(product!=null&& !StringUtils.isEmpty(ip)){
            logOfProductClick.setProduct(product);
            logOfProductClick.setCustomer(customer);
            logOfProductClick.setIp(ip);
            logOfProductClickDao.save(logOfProductClick);
        }
    }

    @Override
    public PageObject search(Integer page, Integer limit, LogOfProductClickQuery logOfProductClickQuery) {
        PageObject pageObject = new PageObject(limit,page,logOfProductClickDao.querySize(logOfProductClickQuery));
        pageObject.setList(logOfProductClickDao.query(pageObject.getOffset(),pageObject.getLimit(),logOfProductClickQuery));
        return pageObject;
    }

    @Override
    public Integer querySize(LogOfProductClickQuery logOfProductClickQuery) {
        return logOfProductClickDao.querySize(logOfProductClickQuery);
    }
}
