package com.lcvc.ebuy_springboot.junit.dao;


import com.lcvc.ebuy_springboot.EbuySpringbootApplicationTests;
import com.lcvc.ebuy_springboot.dao.PurviewDao;
import org.junit.Test;

import javax.annotation.Resource;

public class PurviewDaoTest extends EbuySpringbootApplicationTests {
    @Resource
    private PurviewDao purviewDao;


    @Test
    public void testReadAll(){
        System.out.println("总数："+purviewDao.readAll().size());
    }





}
