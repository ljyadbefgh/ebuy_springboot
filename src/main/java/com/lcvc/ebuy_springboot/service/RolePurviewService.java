package com.lcvc.ebuy_springboot.service;

import com.lcvc.ebuy_springboot.model.Role;
import com.lcvc.ebuy_springboot.model.RolePurview;

import java.util.List;

public interface RolePurviewService {
    /**
     * 获取指定角色与所有权限的关系
     * 说明：
     * 1.返回的是角色与数据库中所有权限的关系（包括不存在的）
     * 2.如果存在的关系则有详细的信息（如id,createTime）；反之则没有
     * @param roleId
     * @return
     */
    List<RolePurview> getAllRolePurviewsByRoleId(Integer roleId);

    /**
     * 获取指定的账户和角色的关系
     * @param roleId
     * @param purviewId
     * @return null表示没有添加任何关系
     */
    RolePurview getRolePurview(Integer roleId,Integer purviewId);


    /**
     * 为指定账户添加和指定角色的关系，并返回保存后的关系信息对象
     * 说明：
     * 1.同一个角色不能拥有相同的两个权限
     * 2.在添加关系时会默认添加查询的操作权限
     * @param roleId
     * @param purviewId
     * @return 返回插入后的关系信息（包含拥有的权限操作集合），null表示没有添加任何关系
     */
    RolePurview addRolePurview(Integer roleId,Integer purviewId);


    /**
     * 为指定角色移除相应权限的关系
     *@param roleId
     * @param purviewId
     */
    void removeRolePurview(Integer roleId,Integer purviewId);

    /**
     * 读取指定权限对应的所有角色集合
     * @param purviewId
     * @return 如果没有相应角色，则返回空集合
     */
    List<Role> getRolesByPurview(Integer purviewId);

    /**
     * 获取指定的账户和角色关系的method方法集合
     * @param roleId
     * @param purviewId
     * @return 空集合表示没有添加任何关系
     */
    List<String> getRolePurviewPermissionMethods(Integer roleId,Integer purviewId);

    /**
     * 为指定的账户和角色关系添加单个操作权限
     * 说明：
     * 1.只有该关系不存在单个操作权限时才会添加；如果存在则不作任何处理
     * @param roleId
     * @param purviewId
     * @return 空集合表示没有添加任何关系
     */
    void addRolePurviewPermission(Integer roleId,Integer purviewId,Integer permissionId);

    /**
     * 从指定的账户和角色关系移除相应的单个操作权限
     * 说明：只有该操作权限存在时才会移除，否则不做任何处理
     * @param roleId
     * @param purviewId
     * @return 空集合表示没有添加任何关系
     */
    void removeRolePurviewPermission(Integer roleId,Integer purviewId,Integer permissionId);
}
