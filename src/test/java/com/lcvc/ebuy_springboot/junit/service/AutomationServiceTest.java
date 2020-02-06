package com.lcvc.ebuy_springboot.junit.service;

import com.lcvc.ebuy_springboot.EbuySpringbootApplicationTests;
import com.lcvc.ebuy_springboot.service.AutomationService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

public class AutomationServiceTest extends EbuySpringbootApplicationTests {
    @Autowired
    private AutomationService automationService;

    @Test
    public void testAutoBuy(){
        automationService.autoBuy(16,12000l);
    }

}
