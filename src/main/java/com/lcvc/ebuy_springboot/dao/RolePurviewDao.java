package com.lcvc.ebuy_springboot.dao;

import com.lcvc.ebuy_springboot.model.Role;
import com.lcvc.ebuy_springboot.model.RolePurview;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository//为了不让idea报错加上
public interface RolePurviewDao extends IBaseDao<RolePurview>{

    /**
     * 获取关系表的主键id
     * @param roleId
     * @param purviewId
     * @return id null表示没有找到
     */
    java.io.Serializable getId(@Param(value = "roleId") int roleId,@Param(value = "purviewId") int purviewId);

    /**
     * 获取指定角色和权限的关系
     * @param roleId
     * @param purviewId
     * @return 关系数量
     */
    RolePurview getRolePurviewByRoleIdAndPurviewId(@Param(value = "roleId") int roleId,@Param(value = "purviewId") int purviewId);

    /**
     * 获取指定角色和权限的关系数量
     * @param roleId
     * @param purviewId
     * @return 关系数量
     */
    int getRolePurviewNumberByRoleIdAndPurviewId(@Param(value = "roleId") int roleId,@Param(value = "purviewId") int purviewId);


    /**
     * 获取指定角色的所有权限关系
     * @param roleId
     * @return
     */
    List<RolePurview> getRolePurviewsByRoleId(int roleId);

    /**
     * 获取指定角色的所有权限关系数量
     * @param roleId
     * @return
     */
    int getRolePurviewNumberByRoleId(int roleId);

    /**
     * 获取指定权限对应的角色关系数量
     * @param purviewId
     * @return
     */
    int getRolePurviewNumberByPurviewId(int purviewId);


    /**
     * 读取指定权限对应的所有角色集合
     * @param purviewId
     * @return
     */
    List<Role> getRolesByPurviewId(int purviewId);

    /**
     * 读取指定权限对应的所有可用角色集合
     * @param purviewId
     * @return
     */
    List<Role> getEnabledRolesByPurviewId(int purviewId);

    /**
     * 删除指定角色的所有权限关系
     * @param roleId
     * @return 删除的记录数
     */
    int deleteAllRolePurviewByPurviewId(int roleId);



}
