package com.lcvc.ebuy_springboot.service.impl;

import com.lcvc.ebuy_springboot.dao.MenuDao;
import com.lcvc.ebuy_springboot.dao.RoleMenuDao;
import com.lcvc.ebuy_springboot.model.Menu;
import com.lcvc.ebuy_springboot.model.exception.MyDataException;
import com.lcvc.ebuy_springboot.service.RoleMenuService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.annotation.Validated;

import javax.validation.Valid;
import javax.validation.constraints.NotNull;
import java.util.ArrayList;
import java.util.List;

@Transactional(propagation = Propagation.REQUIRED,isolation = Isolation.DEFAULT,timeout=36000,rollbackFor=Exception.class)
@Validated//表示开启sprint的校检框架，会自动扫描方法里的@Valid（@Valid注解一般写在接口即可）
@Service
public class RoleMenuServiceImpl implements RoleMenuService {

    @Autowired
    private MenuDao menuDao;

    @Autowired
    private RoleMenuDao roleMenuDao;

    public void updateRoleMenu(Integer roleId, Integer[] menuIds) {
        List<Integer> menuIdList=new ArrayList<Integer>();//获取实际存在的id集合
        for(Integer menuId:menuIds){
            Menu menu=menuDao.get(menuId);
            if(menu!=null){
                menuIdList.add(menuId);
            }else{
                throw new MyDataException("编辑失败：菜单("+menu.getName()+")已不存在，请重新刷新菜单再操作");
            }
        }
        //如果执行到这里，说明菜单都存在
        roleMenuDao.deleteMenusByRoleId(roleId);//将该角色原有的菜单移除
        int[] menuIdArray = new int[menuIdList.size()];
        for(int i = 0; i < menuIdArray.length; i ++){
            menuIdArray[i]=menuIdList.get(i).intValue();
        }
        if(menuIdArray.length>0){//只有有菜单时才执行添加
            roleMenuDao.addMenusForRoleId(roleId,menuIdArray);//将菜单批量添加
        }

    }

    @Override
    public List<Integer> getMenusIdByRoleId(@Valid @NotNull Integer roleId) {
        return roleMenuDao.getMenusIdByRoleId(roleId);
    }
}
