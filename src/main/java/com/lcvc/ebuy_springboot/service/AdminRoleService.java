package com.lcvc.ebuy_springboot.service;

import com.lcvc.ebuy_springboot.model.AdminRole;
import com.lcvc.ebuy_springboot.model.Role;

import java.util.List;

public interface AdminRoleService {


    /**
     * 获取指定账户与所有角色的关系
     * 说明：
     * 1.返回的是账户与数据库中所有角色的关系（包括不存在的）
     * 2.如果存在的关系则有详细的信息（如id,createTime）；反之则没有
     * @param adminId
     * @return
     */
    List<AdminRole> getAllAdminRoleByAdminId(Integer adminId);



    /**
     * 为指定的一个账户添加指定的多个角色
     * 说明：
     * 同一个账户不能拥有相同的两个角色，如果有重复关系，则不进行添加
     * @param adminId
     * @param roleIds 多个角色
     */
    void addAdminRoles(Integer adminId,Integer[] roleIds);

    /**
     * 为指定账户移除多个角色的关系
     * @param adminId
     * @param roleIds 多个角色
     */
    void removeAdminRoles(Integer adminId,Integer[] roleIds);


    /**
     * 为指定的多个账户添加指定的多个角色
     * 说明：
     * 同一个账户不能拥有相同的两个角色，如果有重复关系，则不进行添加
     * @param adminIds 多个账户
     * @param roleIds 多个角色
     */
    void addAdminRoles(Integer[] adminIds,Integer[] roleIds);

    /**
     * 为指定账户添加所有角色关系
     * 说明：
     * 1.如果已经拥有某角色关系，则该方法不会重复添加
     * @param adminId
     * @return null表示没有添加任何关系
     */
    void addAllAdminRoleForAdmin(Integer adminId);



    /**
     * 为指定的多个账户移除指定的多个角色
     * 说明：
     * 只有关系存在时执行对数据库的删除操作
     * @param adminIds 多个账户
     * @param roleIds 多个角色
     */
    void removeAdminRoles(Integer[] adminIds,Integer[] roleIds);

    /**
     * 20200303废弃改方法，因为账户必须保留一个角色
     * 为指定账户移除所有角色的关系
     * @param adminId
     */
    void removeAllAdminRoleFromAdmin(Integer adminId);

    /**
     * 为指定角色移除相应的一个或多个账户的关系
     * @param adminIds 多个账户
     * @param roleId
     */
    void removeAdminRoles(Integer[] adminIds,Integer roleId);



    /**
     * 获取指定账户拥有的角色集合
     * 说明：
     * 1.返回的是账户与数据库中角色的关系
     * @param adminId
     * @return
     */
    List<Role> getRolesByAdminId(Integer adminId);












    /**
     * ************20191231说明 当前端完全过度到vue后，移除该方法
     * 为指定账户添加和指定角色的关系
     * 说明：同一个账户不能拥有相同的两个角色
     * @param adminId
     * @param roleId
     * @return null表示没有添加任何关系
     */
    AdminRole addAdminRole(Integer adminId,Integer roleId);

    /**
     * ************20191231说明 当前端完全过度到vue后，移除该方法
     * 为指定账户移除相应角色的关系
     * @param adminId
     * @param roleId
     */
    void removeAdminRole(Integer adminId,Integer roleId);

}
