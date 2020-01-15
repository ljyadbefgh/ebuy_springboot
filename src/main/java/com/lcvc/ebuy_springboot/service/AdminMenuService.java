package com.lcvc.ebuy_springboot.service;

import com.lcvc.ebuy_springboot.model.Menu;

import javax.validation.Valid;
import javax.validation.constraints.NotNull;
import java.util.List;

public interface AdminMenuService {


    /**
     * 读取该账户拥有的所有菜单，可以用于提供给前端的树形菜单已选列表
     * @param adminId
     * @return
     */
    List<Menu> getTreeMenusByAdminId(@Valid @NotNull Integer adminId);

}
