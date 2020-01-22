package com.lcvc.ebuy_springboot.service;

import javax.validation.Valid;
import javax.validation.constraints.NotNull;
import java.util.List;

public interface RoleMenuService {
    /**
     * 将新的菜单集合批量赋给角色
     * 说明：
     * 1.当前设计：
     * （1）设计思路
     * a.首先删除该角色原有的菜单集合
     * b.为角色添加上新的菜单集合
     * c.需要对菜单是否存在进行验证
     * （2）特点：简单粗暴，但是会让菜单关系的id自增速度大幅度提升。
     * 2.计划设计
     * （1）将新菜单集合和老菜单集合进行比对
     * a.如果新菜单和原菜单一致，则不进行任何处理
     * b.如果新菜单在原菜单中没有，就添加新菜单
     * c.如果新菜单没有，原菜单中有，则在原菜单中删除
     * （2）特点：常规设计
     * 3.理想设计
     * （1）根据接收的id进行递归目录的判断，如果某子目录都存在，则用父目录代替所有子目录
     * （2）特点：父子菜单的处理较好。太复杂，而且菜单结构改变还要进行数据的维护
     * @param roleId 指定角色
     * @param menuIds 菜单集合
     */
    void updateRoleMenu(@Valid @NotNull Integer roleId,@Valid @NotNull Integer[] menuIds);

    /**
     * 读取该角色拥有的所有菜单id，可以用于提供给前端的树形菜单作为已选列表
     * @param roleId
     * @return
     */
    List<Integer> getMenusIdByRoleId(@Valid @NotNull Integer roleId);

}
