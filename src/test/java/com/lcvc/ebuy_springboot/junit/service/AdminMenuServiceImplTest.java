package com.lcvc.ebuy_springboot.junit.service;

import com.lcvc.ebuy_springboot.EbuySpringbootApplicationTests;
import com.lcvc.ebuy_springboot.model.Menu;
import com.lcvc.ebuy_springboot.service.AdminMenuService;
import org.junit.Test;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class AdminMenuServiceImplTest extends EbuySpringbootApplicationTests {

    @Autowired
    private AdminMenuService adminMenuService;

    /**
     * 用于递归读取树形菜单
     * @param menus 菜单集合
     * @param level 菜单所在的目录层级
     */
    private void readMenus(List<Menu> menus,int level){
        for(Menu menu:menus){
            for(int i=2;i<=level;i++){//一级目录不缩进
                System.out.print("\t");
            }
            System.out.println(menu.getId()+"\t"+menu.getName());
            List<Menu> childrens=menu.getChildren();//获取子目录
            if(childrens.size()>0){
                readMenus(childrens,level+1);
            }
        }
    }

    @Test
    public void testGetMenusByAdminId() {
        List<Menu> menus=adminMenuService.getTreeMenusByAdminId(-99);
        this.readMenus(menus,1);
    }

}