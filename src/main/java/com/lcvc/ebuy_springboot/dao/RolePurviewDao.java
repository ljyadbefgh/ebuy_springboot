package com.lcvc.ebuy_springboot.dao;

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
     * 获取指定角色和权限的关系数量
     * @param roleId
     * @param purviewId
     * @return 关系数量
     */
    int getRoleAndPurviewRelationNumber(@Param(value = "roleId") int roleId,@Param(value = "purviewId") int purviewId);

    /**
     * 获取指定角色的所有权限关系
     * @param roleId
     * @return
     */
    List<RolePurview> getRolePurviewsByRoleId(int roleId);

    /**
     * 获取指定权限对应的角色而关系数量
     * @param purviewId
     * @return
     */
    int getRolePurviewNumberByPurviewId(int purviewId);

    /**
     * 获取指定权限对应的角色而关系数量
     * @param roleId
     * @return
     */
    int getRolePurviewNumberByRoleId(int roleId);



}