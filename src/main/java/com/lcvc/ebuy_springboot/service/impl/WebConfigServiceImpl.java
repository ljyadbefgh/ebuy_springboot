package com.lcvc.ebuy_springboot.service.impl;

import com.lcvc.ebuy_springboot.dao.WebConfigDao;
import com.lcvc.ebuy_springboot.model.WebConfig;
import com.lcvc.ebuy_springboot.service.WebConfigService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.annotation.Validated;

import javax.validation.Valid;
import javax.validation.constraints.NotNull;

@Transactional(propagation = Propagation.REQUIRED,isolation = Isolation.DEFAULT,timeout=36000,rollbackFor=Exception.class)
@Service
@Validated//表示开启sprint的校检框架，会自动扫描方法里的@Valid（@Valid注解一般写在接口即可）
public class WebConfigServiceImpl implements WebConfigService {

    @Autowired
    private WebConfigDao webConfigDao;

    @Override
    public WebConfig get() {
        return webConfigDao.get();
    }

    @Override
    public void update(@Valid @NotNull WebConfig webConfig) {
        webConfigDao.update(webConfig);
    }
}
