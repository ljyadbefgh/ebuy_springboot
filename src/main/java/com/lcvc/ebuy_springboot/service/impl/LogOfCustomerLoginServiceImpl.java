package com.lcvc.ebuy_springboot.service.impl;

import com.lcvc.ebuy_springboot.dao.LogOfCustomerLoginDao;
import com.lcvc.ebuy_springboot.model.LogOfCustomerLogin;
import com.lcvc.ebuy_springboot.model.base.PageObject;
import com.lcvc.ebuy_springboot.model.query.LogOfCustomerLoginQuery;
import com.lcvc.ebuy_springboot.service.LogOfCustomerLoginService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.annotation.Validated;

import javax.validation.Valid;
import javax.validation.constraints.NotNull;

@Transactional(propagation = Propagation.REQUIRED,isolation = Isolation.DEFAULT,timeout=36000,rollbackFor=Exception.class)
@Validated//表示开启sprint的校检框架，会自动扫描方法里的@Valid（@Valid注解一般写在接口即可）
@Service
public class LogOfCustomerLoginServiceImpl implements LogOfCustomerLoginService {
    @Autowired
    private LogOfCustomerLoginDao logOfCustomerLoginDao;

    @Override
    public void save(@Valid @NotNull LogOfCustomerLogin logOfCustomerLogin) {
        logOfCustomerLoginDao.save(logOfCustomerLogin);
    }

    @Override
    public PageObject search(Integer page, Integer limit, LogOfCustomerLoginQuery logOfCustomerLoginQuery) {
        PageObject pageObject = new PageObject(limit,page,logOfCustomerLoginDao.querySize(logOfCustomerLoginQuery));
        pageObject.setList(logOfCustomerLoginDao.query(pageObject.getOffset(),pageObject.getLimit(),logOfCustomerLoginQuery));
        return pageObject;
    }

    @Override
    public int getContinuousLoginErrorNumber(Integer customerId) {
        return logOfCustomerLoginDao.getContinuousLoginErrorNumber(customerId);
    }
}
