package com.lcvc.ebuy_springboot.service.impl;

import com.lcvc.ebuy_springboot.dao.LogOfAdminLoginDao;
import com.lcvc.ebuy_springboot.model.LogOfAdminLogin;
import com.lcvc.ebuy_springboot.model.base.PageObject;
import com.lcvc.ebuy_springboot.model.query.LogOfAdminLoginQuery;
import com.lcvc.ebuy_springboot.service.LogOfAdminLoginService;
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
public class LogOfAdminLoginServiceImpl implements LogOfAdminLoginService {
    @Autowired
    private LogOfAdminLoginDao logOfAdminLoginDao;

    @Override
    public void save(@Valid @NotNull LogOfAdminLogin logOfAdminLogin) {
        logOfAdminLoginDao.save(logOfAdminLogin);
    }

    @Override
    public PageObject search(Integer page, Integer limit, LogOfAdminLoginQuery logOfAdminLoginQuery) {
        PageObject pageObject = new PageObject(limit,page,logOfAdminLoginDao.querySize(logOfAdminLoginQuery));
        pageObject.setList(logOfAdminLoginDao.query(pageObject.getOffset(),pageObject.getLimit(),logOfAdminLoginQuery));
        return pageObject;
    }

    @Override
    public int getContinuousLoginErrorNumber(Integer adminId) {
        return logOfAdminLoginDao.getContinuousLoginErrorNumber(adminId);
    }
}
