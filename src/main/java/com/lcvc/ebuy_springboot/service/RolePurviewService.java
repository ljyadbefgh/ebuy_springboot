package com.lcvc.ebuy_springboot.service;

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
    List<RolePurview> getRolePurviewsByRoleId(Integer roleId);

    /**
     * 为指定账户添加和指定角色的关系
     * 说明：同一个角色不能拥有相同的两个权限
     * @param roleId
     * @param purviewId
     * @return null表示没有添加任何关系
     */
    RolePurview addRolePurview(Integer roleId,Integer purviewId);

    /**
     * 为指定角色移除相应权限的关系
     *@param roleId
     * @param purviewId
     */
    void removeRolePurview(Integer roleId,Integer purviewId);
}
