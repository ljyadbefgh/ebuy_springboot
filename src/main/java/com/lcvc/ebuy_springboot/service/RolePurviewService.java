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
     * 为指定角色添加和指定权限的关系，并返回保存后的关系信息对象
     * 说明：
     * 1.同一个角色不能拥有相同的两个权限，如果重复则在抛出异常提示重复
     * 2.在添加关系时会附上默认的权限操作动作（默认权限由Constant.DEFAULTPERMISSIONIDS决定）
     * @param roleId
     * @param purviewId
     * @return 返回插入后的关系信息（包含拥有的权限操作集合），null表示没有添加任何关系
     */
    RolePurview addRolePurview(Integer roleId,Integer purviewId);


    /**
     * 为指定角色批量移除相应权限的关系
     *@param roleId
     * @param purviewsId
     */
    void removeRolePurview(Integer roleId,Integer purviewsId);

    /**
     * 为指定角色添加所有权限关系
     * 说明：该方法不会重复添加该角色已有的角色关系
     * 1.同一个角色不能拥有相同的两个权限，如果有重复的不会再进行添加，但不会抛出异常
     * 2.在添加关系时会附上默认的操作权限
     * @param roleId
     */
    void addAllRolePurviewForRole(Integer roleId);

    /**
     * 移除指定角色的所有权限关系
     * 说明：
     * @param roleId
     */
    void removeAllRolePurviewForRole(Integer roleId);

    /**
     * 读取指定权限对应的所有角色集合
     * @param purviewId
     * @return 如果没有相应角色，则返回空集合
     */
    List<Role> getRolesByPurview(Integer purviewId);

    /**
     * 读取指定权限对应的当前启用的所有角色集合
     * @param purviewId
     * @return 如果没有相应角色，则返回空集合
     */
    List<Role> getEnabledRolesByPurview(Integer purviewId);

    /**
     * 获取指定的角色和权限关系的method方法集合
     * @param roleId
     * @param purviewId
     * @return 空集合表示没有添加任何关系
     */
    List<String> getRolePurviewPermissionMethods(Integer roleId,Integer purviewId);

    /**
     * 为指定的角色和权限关系添加单个操作权限
     * 说明：
     * 1.只有该关系不存在单个操作权限时才会添加；如果存在则不作任何处理
     * @param roleId
     * @param purviewId
     * @return 空集合表示没有添加任何关系
     */
    void addRolePurviewPermission(Integer roleId,Integer purviewId,Integer permissionId);

    /**
     * 从指定的角色和权限关系移除相应的单个操作权限
     * 说明：只有该操作权限存在时才会移除，否则不做任何处理
     * @param roleId
     * @param purviewId
     * @return 空集合表示没有添加任何关系
     */
    void removeRolePurviewPermission(Integer roleId,Integer purviewId,Integer permissionId);
}
