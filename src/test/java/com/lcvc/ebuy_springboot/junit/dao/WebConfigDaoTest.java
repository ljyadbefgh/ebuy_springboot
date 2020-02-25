package com.lcvc.ebuy_springboot.junit.dao;


import com.lcvc.ebuy_springboot.EbuySpringbootApplicationTests;
import com.lcvc.ebuy_springboot.dao.WebConfigDao;
import com.lcvc.ebuy_springboot.model.WebConfig;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

public class WebConfigDaoTest extends EbuySpringbootApplicationTests {
    @Autowired
    private WebConfigDao webConfigDao;


    @Test
    public void testGet(){
        WebConfig webConfig=webConfigDao.get();
        System.out.println(webConfig);
    }
}
