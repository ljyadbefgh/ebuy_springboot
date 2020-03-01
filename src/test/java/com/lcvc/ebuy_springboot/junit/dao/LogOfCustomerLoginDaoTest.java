package com.lcvc.ebuy_springboot.junit.dao;

import com.lcvc.ebuy_springboot.EbuySpringbootApplicationTests;
import com.lcvc.ebuy_springboot.dao.LogOfCustomerLoginDao;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

public class LogOfCustomerLoginDaoTest  extends EbuySpringbootApplicationTests {
    @Autowired
    private LogOfCustomerLoginDao logOfCustomerLoginDao;

    @Test
    public void testGetContinuousLoginErrorNumber(){
        System.out.println(logOfCustomerLoginDao.getContinuousLoginErrorNumber(31));
    }
}
