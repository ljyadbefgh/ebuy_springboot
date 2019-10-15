package com.lcvc.ebuy_springboot.service.impl;

import com.lcvc.ebuy_springboot.dao.AdminRoleDao;
import com.lcvc.ebuy_springboot.dao.RoleDao;
import com.lcvc.ebuy_springboot.model.Role;
import com.lcvc.ebuy_springboot.model.base.PageObject;
import com.lcvc.ebuy_springboot.model.exception.MyServiceException;
import com.lcvc.ebuy_springboot.model.exception.MyWebException;
import com.lcvc.ebuy_springboot.service.RoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.annotation.Validated;

import javax.validation.Valid;
import javax.validation.constraints.NotNull;
import java.util.List;

@Transactional(propagation = Propagation.REQUIRED,isolation = Isolation.DEFAULT,timeout=36000,rollbackFor=Exception.class)
@Validated//表示开启sprint的校检框架，会自动扫描方法里的@Valid（@Valid注解一般写在接口即可）
@Service
public class RoleServiceImpl implements RoleService {

    @Autowired
    private RoleDao roleDao;
    @Autowired
    private AdminRoleDao adminRoleDao;

    /**
     * 是否是系统角色
     * @param role
     * @return true表示是超级管理员
     */
    private boolean isSystemRole(Role role){
        boolean result=false;
        if(role.getId()<0){
            result=true;
        }
        return result;
    }

    @Override
    public List<Role> getAllRoles() {
        return roleDao.readAll();
    }

    @Override
    public PageObject searchRoles(Integer page, Integer limit) {
        PageObject pageObject = new PageObject(limit,page,roleDao.querySize(null));
        pageObject.setList(roleDao.query(pageObject.getOffset(),pageObject.getLimit(),null));
        for(Role role:(List<Role>)pageObject.getList()){//遍历对象
            //获取该角色拥有的账户数量
            int adminNumber=adminRoleDao.getAdminNumberByRoleId(role.getId());
            role.setAdminNumber(adminNumber);

        }
        return pageObject;
    }

    @Override
    public List<Role> getRolesByAdmin(Integer adminId) {
        return roleDao.getRolesByAdminId(adminId);
    }

    @Override
    public void addRole(@Valid @NotNull Role role) {
        //前面必须经过spring验证框架的验证
        role.setId(null);//主键自增
        if(role.getLevel()==null){
            role.setLevel(100);//默认100
        }
        if(role.getDefaultRole()==null){//如果没有传递默认角色字段
            role.setDefaultRole(false);
        }
        roleDao.save(role);
    }

    @Override
    public void updateRole(@Valid @NotNull Role role) {
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
        for(Integer id:ids){
            Role role=roleDao.get(id);
            if(role!=null){
                if(this.isSystemRole(role)){
                    throw new MyServiceException("角色删除失败：系统固定角色不允许删除");
                }
                //获取该角色拥有的账户数量
                int adminNumber=adminRoleDao.getAdminNumberByRoleId(role.getId());
                if(adminNumber>0){
                    throw new MyServiceException("角色删除失败：角色"+role.getName()+"拥有"+adminNumber+"个管理账户，请先移除管理账户的角色关系再删除");
                }
                //如果有账户信息
            }
        }
        roleDao.deletes(ids);
    }
}
