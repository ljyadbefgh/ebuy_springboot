package com.lcvc.ebuy_springboot.junit.util;

import com.lcvc.ebuy_springboot.EbuySpringbootApplicationTests;
import com.lcvc.ebuy_springboot.dao.AdminDao;
import com.lcvc.ebuy_springboot.model.Admin;
import com.lcvc.ebuy_springboot.util.serialize.SerializeUtil;
import org.junit.Test;

import javax.annotation.Resource;

public class SerializeUtilTest  extends EbuySpringbootApplicationTests {
    @Resource
    private AdminDao adminDao;

    private SerializeUtil serializeUtil=new SerializeUtil();

    @Test
    public void testSerialize(){
        Admin admin=adminDao.get(-99);
        byte[] bs=serializeUtil.serialize(admin);
        System.out.println(bs);
        admin=(Admin)serializeUtil.deserialize(bs);
        System.out.println(admin.getId());
    }
}
