package com.lcvc.ebuy_springboot.service.impl;

import com.lcvc.ebuy_springboot.dao.AdminDao;
import com.lcvc.ebuy_springboot.dao.AdminRoleDao;
import com.lcvc.ebuy_springboot.dao.RoleDao;
import com.lcvc.ebuy_springboot.model.Admin;
import com.lcvc.ebuy_springboot.model.AdminRole;
import com.lcvc.ebuy_springboot.model.Role;
import com.lcvc.ebuy_springboot.model.exception.MyWebException;
import com.lcvc.ebuy_springboot.service.AdminRoleService;
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
public class AdminRoleServiceImpl implements AdminRoleService {

    @Autowired
    private RoleDao roleDao;
    @Autowired
    private AdminRoleDao adminRoleDao;
    @Autowired
    private AdminDao adminDao;

    @Override
    public List<AdminRole> getAdminRoleByAdminId(Integer adminId) {
        List<AdminRole> adminRoles=new ArrayList<AdminRole>();//定义所有角色信息
        Admin admin=adminDao.get(adminId);//获取指定账户信息
        if(admin!=null){
            List<Role> roles=roleDao.readAll(null);//获取所有角色信息
            List<AdminRole> adminRolesExistence=adminRoleDao.getAdminRoleByAdminId(adminId);//获取该账户拥有的关系集合
            AdminRole adminRole=null;
            for(Role role:roles){
                adminRole=new AdminRole();
                adminRole.setRole(role);
                adminRole.setAdmin(admin);
                int index=adminRolesExistence.indexOf(adminRole);
                if(index!=-1){//如果该对象存在
                    adminRole=adminRolesExistence.get(index);//获取该对象在数据库的完整值
                }
                adminRoles.add(adminRole);
            }
        }
        return adminRoles;
    }

    @Override
    public AdminRole addAdminRole(Integer adminId, Integer roleId) {
        if(adminId==null||roleId==null){
            throw new MyWebException("操作失败：非法参数");
        }
        Admin admin=adminDao.get(adminId);
        if(admin==null){
            throw new MyWebException("操作失败：相关账户不存在");
        }
        Role role=roleDao.get(roleId);
        if(role==null){
            throw new MyWebException("操作失败：相关角色不存在");
        }
        if(adminRoleDao.getAdminAndRoleRelationNumber(adminId,roleId)>0){
            throw new MyWebException("操作失败：该角色已存在，不需要再赋予");
        }
        AdminRole adminRole=new AdminRole();
        adminRole.setAdmin(admin);
        adminRole.setRole(role);
        adminRole.setCreateTime(Calendar.getInstance().getTime());
        adminRoleDao.save(adminRole);
        return adminRole;
    }

    @Override
    public void addAdminRoles(Integer[] adminIds, Integer[] roleIds) {
        if(adminIds==null||roleIds==null){
            throw new MyWebException("操作失败：非法参数");
        }
        if(adminIds.length==0){
            throw new MyWebException("操作失败：请先选择账户");
        }
        if(roleIds.length==0){
            throw new MyWebException("操作失败：请选择要赋予的角色");
        }
        if(adminIds.length*roleIds.length>100){//批量赋予账户和角色的数量，避免数据库性能问题
            throw new MyWebException("操作失败：一次赋予的账户和角色关系总数不能超过100个");
        }
        List<AdminRole> adminRoleList=new ArrayList<AdminRole>();//将要添加的关系存储到此集合中
        AdminRole adminRole=null;
        for(Integer adminId:adminIds){
            if(adminId==null){
                throw new MyWebException("操作失败：非法参数（账户id为空）");
            }
            Admin admin=adminDao.get(adminId);
            if(admin==null){
                throw new MyWebException("操作失败：相关账户不存在");
            }
            for(Integer roleId:roleIds){//遍历多个角色
                if(roleId==null){
                    throw new MyWebException("操作失败：非法参数（角色id为空）");
                }
                Role role=roleDao.get(roleId);
                if(role==null){
                    throw new MyWebException("操作失败：相关角色不存在");
                }
                if(adminRoleDao.getAdminAndRoleRelationNumber(adminId,roleId)==0){//只有当不存在这个关系时才添加
                    adminRole=new AdminRole();
                    adminRole.setAdmin(admin);
                    adminRole.setRole(role);
                    adminRole.setCreateTime(Calendar.getInstance().getTime());
                    adminRoleList.add(adminRole);
                }
            }
        }
        if(adminRoleList.size()>0){//只有集合大于0才执行保存
            adminRoleDao.saves(adminRoleList);
        }
    }

    @Override
    public void addAllAdminRoleForAdmin(Integer adminId) {
        Admin admin=adminDao.get(adminId);//获取指定账户信息
        if(admin!=null){
            List<AdminRole> adminRoles=new ArrayList<AdminRole>();//定义账户和所有角色联系集合
            List<Role> roles=roleDao.readAll(null);//获取所有角色信息
            AdminRole adminRole=null;
            for(Role role:roles){
                adminRole=new AdminRole();
                adminRole.setRole(role);
                adminRole.setAdmin(admin);
                adminRole.setCreateTime(Calendar.getInstance().getTime());
                adminRoles.add(adminRole);
            }
            List<AdminRole> adminRolesExistence=adminRoleDao.getAdminRoleByAdminId(adminId);//获取该账户拥有的关系集合
            adminRoles.removeAll(adminRolesExistence);//移除已经有的关系
            adminRoleDao.saves(adminRoles);//将没有的关系添加进数据库
        }
    }

    @Override
    public void removeAdminRole(Integer adminId, Integer roleId) {
        if(adminId==null||roleId==null){
            throw new MyWebException("操作失败：非法参数");
        }
        adminRoleDao.deleteByAdminIdAndRoleId(adminId,roleId);
    }

    @Override
    public void removeAdminRoles(Integer[] adminIds, Integer[] roleIds) {
        if(adminIds==null||roleIds==null){
            throw new MyWebException("操作失败：非法参数");
        }
        if(adminIds.length==0){
            throw new MyWebException("操作失败：请先选择账户");
        }
        if(roleIds.length==0){
            throw new MyWebException("操作失败：请选择要移除的角色");
        }
        List<Integer> idsList=new ArrayList<Integer>();//要删除的id集合
        AdminRole adminRole=null;
        for(Integer adminId:adminIds){
            if(adminId==null){
                throw new MyWebException("操作失败：非法参数（账户id为空）");
            }
            for(Integer roleId:roleIds){//遍历多个角色
                if(roleId==null){
                    throw new MyWebException("操作失败：非法参数（角色id为空）");
                }
                Object idObject=adminRoleDao.getId(adminId,roleId);//获取关系的id值
                if(idObject!=null){//只有当存在这个关系时才进行删除
                    idsList.add((Integer)idObject);
                }
            }
        }
        if(idsList.size()>0){//只有集合大于0才执行删除
            //将集合转换为数组再删除
            Integer[] ids = new Integer[idsList.size()];
            adminRoleDao.deletes(idsList.toArray(ids));
        }
    }

    @Override
    public void removeAllAdminRoleFromAdmin(Integer adminId) {
        if(adminId==null){
            throw new MyWebException("操作失败：非法参数");
        }
        adminRoleDao.deleteAllAdminRoleByAdminId(adminId);
    }

    @Override
    public void removeAdminRoles(Integer[] adminIds, Integer roleId) {
        if(adminIds==null||roleId==null){
            throw new MyWebException("操作失败：非法参数");
        }
        List<Integer> idsList=new ArrayList<Integer>();
        for(Integer adminId:adminIds){
            Object idObject=adminRoleDao.getId(adminId,roleId);
            if(idObject!=null){//如果能够找到相应记录
                idsList.add((Integer)idObject);
            }
        }
        if(idsList.size()>0){//只有集合大于0才执行删除
            //将集合转换为数组再删除
            Integer[] ids = new Integer[idsList.size()];
            adminRoleDao.deletes(idsList.toArray(ids));
        }
    }

}
