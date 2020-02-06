package com.lcvc.ebuy_springboot.junit.dao;


import com.lcvc.ebuy_springboot.EbuySpringbootApplicationTests;
import com.lcvc.ebuy_springboot.dao.CountDao;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Date;
import java.util.List;
import java.util.Map;

public class CountDaoTest extends EbuySpringbootApplicationTests {
    @Autowired
    private CountDao countDao;

    @Test
    public void testGetMaxSalesVolumeOfProduct(){
        List<Map<String, Object>> list=countDao.getMaxSalesVolumeOfProduct(10);
        for(Map<String, Object> map:list){
            System.out.print(map.get("productName")+"\t");
            System.out.println(map.get("productSalesVolume"));
        }
    }

    @Test
    public void testGetMaxSalesVolumeOfProductTypeBySomeDay(){
        List<Map<String, Object>> list=countDao.getMaxSalesVolumeOfProductTypeInSomeDay(10,new Date(),2);
        for(Map<String, Object> map:list){
            System.out.print(map.get("productTypeName")+"\t");
            System.out.println(map.get("productTypeSalesVolume"));
        }
    }

    @Test
    public void testGetMaxSalesVolumeOfProductTypeByProductIdForSomeDay(){
        //List<Map<String, Object>> list=countDao.getMaxSalesVolumeOfProductTypeByProductIdForSomeDay(null,new Date(),1);
        Integer[] productIds=new Integer[]{47,63};
        List<Map<String, Object>> list=countDao.getMaxSalesVolumeOfProductTypeByProductIdInSomeDay(productIds,new Date(),1);
        for(Map<String, Object> map:list){
            System.out.print(map.get("productTypeName")+"\t");
            System.out.println(map.get("productTypeSalesVolume"));
        }
    }

}
