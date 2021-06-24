package com.lcvc.ebuy_springboot.junit.service;

import com.lcvc.ebuy_springboot.EbuySpringbootApplicationTests;
import com.lcvc.ebuy_springboot.schedule.AutomationSchedule;
import com.lcvc.ebuy_springboot.service.AutomationService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.Random;

public class AutomationServiceTest extends EbuySpringbootApplicationTests {
    @Autowired
    private AutomationService automationService;
    @Autowired
    private AutomationSchedule automationSchedule;//自动购买业务

    @Test
    public void testAutoBuy(){
        /*int buyNumber=Math.round(new Random().nextInt(10))+5;//随机购买次数为5-15
        try {
            automationSchedule.autoBuy(buyNumber,60000l);//每60秒购买一次
        } catch (Exception e) {
            //让程序能顺利执行，直接捕获
        }*/
    }

}
