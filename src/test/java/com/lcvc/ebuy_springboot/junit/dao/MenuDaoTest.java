package com.lcvc.ebuy_springboot.junit.dao;


import com.lcvc.ebuy_springboot.EbuySpringbootApplicationTests;
import com.lcvc.ebuy_springboot.dao.MenuDao;
import com.lcvc.ebuy_springboot.model.Menu;
import org.junit.Test;

import javax.annotation.Resource;
import java.util.List;

public class MenuDaoTest extends EbuySpringbootApplicationTests {
    @Resource
    private MenuDao menuDao;

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
            System.out.println(level+""+menu.getName());
            List<Menu> childrens=menu.getChildren();//获取子目录
            if(childrens.size()>0){
                readMenus(childrens,level+1);
            }
        }
    }

    /**
     * 用于递归读取菜单及其子菜单
     * @param menu 当前菜单
     * @param level 菜单所在的目录层级
     */
    private void readMenu(Menu menu,int level){
        for(int i=2;i<=level;i++){//一级目录不缩进
            System.out.print("\t");
        }
        System.out.println(level+""+menu.getName());
        List<Menu> childrens=menu.getChildren();//获取子目录
        if(childrens.size()>0){
            for(Menu menuChildren:menu.getChildren()){  //遍历子目录
                readMenu(menuChildren,level+1);
            }
        }
    }

    /**
     * ljy于20200111第一次测试通过
     */
    @Test
    public void testGetTreeMenu(){
        List<Menu> list=menuDao.getTreeMenu();
        readMenus(list,1);//1表示1级目录
    }

    /**
     * ljy于20200111第一次测试通过
     */
    @Test
    public void testGetTreeMenuById(){
        Menu menu=menuDao.getTreeMenuById(39);
        readMenu(menu,1);//1表示当前目录的层次，模拟
    }






    @Test
    public void testGet(){
        System.out.println("读取菜单："+menuDao.get(2));
    }




}
