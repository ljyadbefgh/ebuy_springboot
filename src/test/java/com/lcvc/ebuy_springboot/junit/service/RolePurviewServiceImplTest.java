package com.lcvc.ebuy_springboot.junit.service;

import com.lcvc.ebuy_springboot.EbuySpringbootApplicationTests;
import com.lcvc.ebuy_springboot.model.RolePurview;
import com.lcvc.ebuy_springboot.service.RolePurviewService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class RolePurviewServiceImplTest extends EbuySpringbootApplicationTests {

    @Autowired
    private RolePurviewService rolePurviewService;

    @Test
    public void testGetRolePurviewsByRoleId() {
        List<RolePurview> rolePurviews=rolePurviewService.getRolePurviewsByRoleId(-99);
        for(RolePurview rolePurview:rolePurviews){
            System.out.print(rolePurview.getId());
            System.out.print(rolePurview.getPurview().getName());
            System.out.print(rolePurview.getRole().getName());
            System.out.println(rolePurview.getCreateTime());
        }
    }
}