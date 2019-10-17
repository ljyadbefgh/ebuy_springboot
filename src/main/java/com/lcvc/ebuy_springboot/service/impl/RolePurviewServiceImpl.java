package com.lcvc.ebuy_springboot.service.impl;

import com.lcvc.ebuy_springboot.dao.*;
import com.lcvc.ebuy_springboot.model.*;
import com.lcvc.ebuy_springboot.model.exception.MyWebException;
import com.lcvc.ebuy_springboot.service.RolePurviewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.annotation.Validated;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

@Transactional(propagation = Propagation.REQUIRED,isolation = Isolation.DEFAULT,timeout=36000,rollbackFor=Exception.class)
@Validated//表示开启sprint的校检框架，会自动扫描方法里的@Valid（@Valid注解一般写在接口即可）
@Service
public class RolePurviewServiceImpl implements RolePurviewService {

    @Autowired
    private RoleDao roleDao;
    @Autowired
    private AdminRoleDao adminRoleDao;
    @Autowired
    private AdminDao adminDao;
    @Autowired
    private PurviewDao purviewDao;
    @Autowired
    private RolePurviewDao rolePurviewDao;

    @Override
    public List<RolePurview> getRolePurviewsByRoleId(Integer roleId) {
        List<RolePurview> rolePurviews = new ArrayList<RolePurview>();//定义所有权限信息
        Role role = roleDao.get(roleId);//获取指定角色信息
        if (role != null) {
            List<Purview> purviews = purviewDao.readAll();//获取所有权限信息
            List<RolePurview> rolePurviewsExistence = rolePurviewDao.getRolePurviewsByRoleId(roleId);//获取该角色拥有的权限关系集合
            RolePurview rolePurview = null;
            for (Purview purview : purviews) {
                rolePurview = new RolePurview();
                rolePurview.setRole(role);
                rolePurview.setPurview(purview);
                int index = rolePurviewsExistence.indexOf(rolePurview);//判断该关系是否已经存在
                if (index != -1) {//如果该对象存在
                    rolePurview = rolePurviewsExistence.get(index);//获取该对象在数据库的完整值
                }
                rolePurviews.add(rolePurview);
            }
        }
        return rolePurviews;
    }

    @Override
    public RolePurview addRolePurview(Integer roleId, Integer purviewId) {
        if(roleId==null||purviewId==null){
            throw new MyWebException("操作失败：非法参数");
        }
        Role role=roleDao.get(roleId);
        if(role==null){
            throw new MyWebException("操作失败：相关角色不存在");
        }
        Purview purview=purviewDao.get(purviewId);
        if(purview==null){
            throw new MyWebException("操作失败：相关权限不存在");
        }

        if(rolePurviewDao.getRoleAndPurviewRelationNumber(roleId,purviewId)>0){
            throw new MyWebException("操作失败：该角色已存在，不需要再赋予");
        }
        RolePurview rolePurview=new RolePurview();
        rolePurview.setPurview(purview);
        rolePurview.setRole(role);
        rolePurview.setCreateTime(Calendar.getInstance().getTime());
        rolePurviewDao.save(rolePurview);//保存新的关系进入数据库
        return rolePurview;
    }

    @Override
    public void removeRolePurview(Integer roleId, Integer purviewId) {
        if(purviewId==null||roleId==null){
            throw new MyWebException("操作失败：非法参数");
        }
        Integer id=(Integer)rolePurviewDao.getId(roleId,purviewId);//查找该关系的主键
        if(id!=null){//如果存在该关系
            rolePurviewDao.delete(id);
        }
    }
}
