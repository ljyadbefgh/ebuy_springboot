package com.lcvc.ebuy_springboot.service.impl;

import com.lcvc.ebuy_springboot.dao.AdminRoleDao;
import com.lcvc.ebuy_springboot.dao.RoleDao;
import com.lcvc.ebuy_springboot.dao.RoleMenuDao;
import com.lcvc.ebuy_springboot.dao.RolePurviewDao;
import com.lcvc.ebuy_springboot.model.AdminRole;
import com.lcvc.ebuy_springboot.model.Role;
import com.lcvc.ebuy_springboot.model.base.PageObject;
import com.lcvc.ebuy_springboot.model.exception.MyServiceException;
import com.lcvc.ebuy_springboot.model.exception.MyWebException;
import com.lcvc.ebuy_springboot.model.query.RoleQuery;
import com.lcvc.ebuy_springboot.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.annotation.Validated;

import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Transactional(propagation = Propagation.REQUIRED,isolation = Isolation.DEFAULT,timeout=36000,rollbackFor=Exception.class)
@Validated//表示开启sprint的校检框架，会自动扫描方法里的@Valid（@Valid注解一般写在接口即可）
@Service
public class RoleServiceImpl implements RoleService {

    @Autowired
    private RoleDao roleDao;
    @Autowired
    private AdminRoleDao adminRoleDao;
    @Autowired
    private RolePurviewDao rolePurviewDao;
    @Autowired
    private RoleMenuDao roleMenuDao;

    /**
     * 是否是系统角色
     * 说明：系统角色不允许删除
     * @param role
     * @return true表示是系统角色
     */
    private boolean isSystemRole(Role role){
        boolean result=false;
        if(role.getId()<=0){
            result=true;
        }
        return result;
    }

    @Override
    public List<Role> getAllRoles() {
        return roleDao.readAll(null);
    }

    @Override
    public List<Role> getAllEnabledRoles() {
        RoleQuery roleQuery=new RoleQuery();
        roleQuery.setEnabled(true);
        return roleDao.readAll(roleQuery);
    }

    @Override
    public PageObject searchRoles(Integer page, Integer limit) {
        PageObject pageObject = new PageObject(limit,page,roleDao.querySize(null));
        pageObject.setList(roleDao.query(pageObject.getOffset(),pageObject.getLimit(),null));
        for(Role role:(List<Role>)pageObject.getList()){//遍历对象
            //获取该角色拥有的账户数量
            int adminNumber=adminRoleDao.getAdminNumberByRoleId(role.getId());
            role.setAdminNumber(adminNumber);
            //获取该角色对应的权限数量
            role.setPurviewNumber(rolePurviewDao.getRolePurviewNumberByRoleId(role.getId()));
            //获取该角色对应的菜单数量
            role.setMenuNumber(roleMenuDao.getMenuNumberByRoleId(role.getId()));
        }
        return pageObject;
    }

    @Override
    public List<Role> getRolesByAdmin(Integer adminId) {
        return roleDao.getRolesByAdminId(adminId);
    }

    @Override
    public void addRole(Role role) {
        //前面必须经过spring验证框架的验证
        role.setId(null);//主键自增
        if(role.getLevel()==null){
            role.setLevel(100);//默认100
        }
        if(role.getDefaultRole()==null){//如果没有传递默认角色字段
            role.setDefaultRole(false);
        }
        if(role.getEnabled()==null){//如果没有传递是否启用字段
            role.setEnabled(true);
        }
        roleDao.save(role);
    }

    @Override
    public void updateRole(Role role) {
        if(role.getId()==null){
            throw new MyWebException("角色编辑失败：id不能为空");
        }
        roleDao.update(role);
    }

    @Override
    public Role getRole(Integer id) {
        Role role=null;
        if(id!=null){
            role=roleDao.get(id);
        }
        return role;
    }



    @Override
    public void deleteRoles(Integer[] ids) {
        Set<AdminRole> adminRoles=new HashSet<AdminRole>();//定义账户和角色的关系集合，用于后面批量删除
        for(Integer id:ids){
            Role role=roleDao.get(id);
            if(role!=null){
                if(this.isSystemRole(role)){
                    throw new MyServiceException("角色删除失败：系统固定角色不允许删除");
                }
                //获取该角色拥有的账户数量
                /*int adminNumber=adminRoleDao.getAdminNumberByRoleId(role.getId());
                if(adminNumber>0){
                    throw new MyServiceException("角色删除失败：角色"+role.getName()+"拥有"+adminNumber+"个管理账户，请先移除管理账户的角色关系再删除");
                }*/
                //获取该角色拥有的菜单数量
                int menuNumber=roleMenuDao.getMenuNumberByRoleId(role.getId());
                if(menuNumber>0){
                    throw new MyServiceException("角色删除失败：角色"+role.getName()+"拥有"+menuNumber+"个菜单，请先移除和菜单的关联再删除");
                }
                //如果有权限信息
                int purviewNumber=rolePurviewDao.getRolePurviewNumberByRoleId(role.getId());
                if(purviewNumber>0){
                    throw new MyServiceException("角色删除失败：角色"+role.getName()+"拥有"+purviewNumber+"个权限，请先移除和权限的关联再删除");
                }
                //获取该角色和所有账户的关系集合
                adminRoles.addAll(adminRoleDao.getAdminRoleByRoleId(role.getId()));
            }
        }
        if(adminRoles.size()>0){//移除所有账户和角色关系
            adminRoleDao.deletesAdminRole(adminRoles);
        }
        if(ids.length>0){//移除所有角色
            roleDao.deletes(ids);
        }

    }
}
