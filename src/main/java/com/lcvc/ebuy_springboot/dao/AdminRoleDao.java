package com.lcvc.ebuy_springboot.dao;

import com.lcvc.ebuy_springboot.model.AdminRole;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository//为了不让idea报错加上
public interface AdminRoleDao{

    /**
     * 根据关系主键，返回关系实体
     * @param id
     * @return
     */
    AdminRole get(int id);

    /**
     * 获取指定账户和角色的关系表的主键id
     * @param adminId
     * @param roleId
     * @return id null表示没有找到
     */
    java.io.Serializable getId(@Param(value = "adminId")int adminId, @Param(value = "roleId") int roleId);

    /**
     * 获取指定账户和角色的关系数量
     * @param adminId
     * @param roleId
     * @return 关系数量
     */
    int getAdminAndRoleRelationNumber(@Param(value = "adminId")int adminId, @Param(value = "roleId") int roleId);

    /**
     * 获取指定账户的关系
     * @param adminId
     * @return
     */
    List<AdminRole> getAdminRoleByAdminId(int adminId);

    /**
     * 获取指定角色拥有的账户数量
     * @param roleId
     * @return
     */
    int getAdminNumberByRoleId(int roleId);

    /**
     * 保存指定记录(并返回主键值，主键值自动存储在t对象里)
     * @param adminRole adminId和roleId字段不能为空
     * @return 1表示成功，0表示失败，>1表示数据库存在异常。并且会将插入后的主键值赋给AdminRole对象
     */
    int save(AdminRole adminRole);


    /**
     * 一次插入多条记录：将账户和角色关系的多条记录同时插入
     * 说明：集合为空则不插入任何记录
     * @param adminRoles 不能为Null
     * @return 返回插入的记录数
     */
    int saves(List<AdminRole> adminRoles);

    /**
     * 删除指定账户的所有角色关系信息
     * @param adminId
     * @return
     */
    int  deleteAllAdminRoleByAdminId(int adminId);

    /**
     * 删除账户和角色的关系
     * @param adminId
     * @param roleId
     * @return 删除的记录数，1表示删除成功，0表示删除失败，>1表示数据库存在异常
     */
    int deleteByAdminIdAndRoleId(@Param(value = "adminId")int adminId, @Param(value = "roleId") int roleId);

    /**
     * 删除指定账户的所有角色关系信息，长度不能为0
     * @param ids
     * @return
     */
    int  deletes(java.io.Serializable[] ids);
}
