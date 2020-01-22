package com.lcvc.ebuy_springboot.service.impl;

import com.lcvc.ebuy_springboot.dao.MenuDao;
import com.lcvc.ebuy_springboot.dao.RoleMenuDao;
import com.lcvc.ebuy_springboot.model.Menu;
import com.lcvc.ebuy_springboot.model.exception.MyWebException;
import com.lcvc.ebuy_springboot.service.MenuService;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.annotation.Validated;

import javax.validation.Valid;
import javax.validation.constraints.NotNull;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

@Transactional(propagation = Propagation.REQUIRED,isolation = Isolation.DEFAULT,timeout=36000,rollbackFor=Exception.class)
@Validated//表示开启sprint的校检框架，会自动扫描方法里的@Valid（@Valid注解一般写在接口即可）
@Service
public class MenuServiceImpl implements MenuService {

    @Autowired
    private MenuDao menuDao;
    @Autowired
    private RoleMenuDao roleMenuDao;

    /**
     * 递归处理菜单的子菜单信息
     * 如果菜单的子菜单集合为空，则设置为null
     * @param menus 当前菜单
     */
    private void setChildrenMenuForNULL(List<Menu> menus){
        for(Menu menu:menus){
            if(menu.getChildren().size()==0){
                menu.setChildren(null);
            }else{
                setChildrenMenuForNULL(menu.getChildren());
            }
        }
    }

    /**
     * 用于递归读取菜单及其子菜单
     * 说明：
     * 1.如果是用于读取，可以直接使用该集合
     * 2.如果是用于删除，按照从最低级目录删除的形式，则该集合可以从最后一个逆向上来删除
     * @param menu 当前菜单
     * @param list 应当传入创建好的空集合，最终该集合按照该菜单及其所有子菜单的目录顺序（如当前栏目-子栏目1-子子栏目11-子子栏目12-子栏目2--子子栏目1）的顺序
     */
    private void setMenuList(Menu menu,List<Menu> list){
        list.add(menu);
        List<Menu> childrens=menu.getChildren();//获取子目录
        if(childrens.size()>0){
            for(Menu menuChildren:menu.getChildren()){  //遍历子目录
                setMenuList(menuChildren,list);
            }
        }
    }

    @Override
    public List<Menu> getTreeMenu() {
        List<Menu> menus=menuDao.getTreeMenu();
        //this.setChildrenMenuForNULL(menus);//遍历菜单，请Mybatis查询出的空集合子菜单设置为null，避免前端插件出错
        return menus;
    }

    @Override
    public Menu getMenu(Integer id) {
        Menu menu=null;
        if(id!=null){
            menu=menuDao.get(id);
        }
        return menu;
    }

    @Override
    public void addMenu(@Valid @NotNull Menu menu) {
        //下面主要防止前端表单没有相关字段（及为空）
        if(StringUtils.isEmpty(menu.getName())){
            throw new MyWebException("保存失败：必须有名字");
        }else if(menu.getOrderNum()==null){
            throw new MyWebException("保存失败：必须输入优先级");
        }else if(StringUtils.isEmpty(menu.getUrl())){
            throw new MyWebException("保存失败：必须输入服务器权限地址");
        }else if(menu.getEnabled()==null){
            throw new MyWebException("保存失败：必须选择可用性");
        }else if(menu.getDisplay()==null){
            throw new MyWebException("保存失败：必须选择是否显示");
        }else{
            //保存数据
            menuDao.save(menu);
        }
    }

    @Override
    public void updateMenu(Menu menu) {
        if(menu.getId()==null){
            throw new MyWebException("编辑失败：关键属性不能为空");
        }
        menuDao.update(menu);
    }

    @Override
    public void deleteMenu(@NotNull Integer id) {
        Menu menu=menuDao.getTreeMenuById(id);//获取该目录及其所有子目录（递归）
        List<Menu> menus=new ArrayList<Menu>();//创建一个集合用于把递归树形菜单用集合方式排列
        this.setMenuList(menu,menus);//获取该菜单及所有子目录，按照父目录-子目录的形式
        Collections.reverse(menus);//将集合反转，使得后面的处理可以从最低层目录开始
        Integer[] ids=new Integer[menus.size()];//创建数组
        for(int i=0;i<menus.size();i++){
            Menu menuOfEach=menus.get(i);
            ids[i]=menuOfEach.getId();
        }
        roleMenuDao.deleteRoleMenusByMenuIds(ids);//删除角色关系
        menuDao.deletes(ids);//执行批量删除
    }




}
