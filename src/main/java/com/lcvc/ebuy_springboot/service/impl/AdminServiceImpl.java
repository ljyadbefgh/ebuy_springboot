package com.lcvc.ebuy_springboot.service.impl;

import com.lcvc.ebuy_springboot.dao.*;
import com.lcvc.ebuy_springboot.model.Admin;
import com.lcvc.ebuy_springboot.model.AdminRole;
import com.lcvc.ebuy_springboot.model.Role;
import com.lcvc.ebuy_springboot.model.base.PageObject;
import com.lcvc.ebuy_springboot.model.exception.MyServiceException;
import com.lcvc.ebuy_springboot.model.exception.MyWebException;
import com.lcvc.ebuy_springboot.model.query.AdminQuery;
import com.lcvc.ebuy_springboot.model.query.ProductQuery;
import com.lcvc.ebuy_springboot.service.AdminService;
import com.lcvc.ebuy_springboot.util.SHA;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.core.userdetails.UsernameNotFoundException;
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
public class AdminServiceImpl implements  AdminService,UserDetailsService{
    @Autowired
    private AdminDao adminDao;
    @Autowired
    private RoleDao roleDao;
    @Autowired
    private ProductDao productDao;
    @Autowired
    private AdminRoleDao adminRoleDao;
    @Autowired
    private AdminMenuDao adminMenuDao;

    /**
     * 是否是系统管理员
     * 说明：系统管理员不允许删除
     * @param admin
     * @return true表示是超级管理员
     */
    private boolean isSystemAdmin(Admin admin){
        boolean result=false;
        if(admin.getId()<=0){
            result=true;
        }
        return result;
    }


    @Override
    public boolean login(String username, String password){
        boolean judge=false;
        if(StringUtils.isEmpty(username)){
            throw new MyWebException("登陆失败：账户名不能为空");
        }else  if(StringUtils.isEmpty(password)){
            throw new MyWebException("登陆失败：密码不能为空");
        }else{
            if(adminDao.login(username, SHA.getResult(password))==1){
                judge=true;
            }
        }
        return judge;
    }

    @Override
    public Integer total() {
        return adminDao.total();
    }


    @Override
    public List<Admin> getAdmins() {
        return adminDao.readAll(null);
    }

    @Override
    public PageObject searchAdmins(Integer page, Integer limit, AdminQuery adminQuery) {
        PageObject pageObject = new PageObject(limit,page,adminDao.querySize(adminQuery));
        pageObject.setList(adminDao.query(pageObject.getOffset(),pageObject.getLimit(),adminQuery));
        for(Admin admin:(List<Admin>)pageObject.getList()){//遍历对象
            //角色数量
            admin.setRoleNumber(roleDao.getRoleNumberByAdminId(admin.getId()));
            if(admin.getRoleNumber()>0){//如果有角色,获取角色集合
                admin.setRoles(roleDao.getRolesByAdminId(admin.getId()));
            }
            //发布过产品的数量
            ProductQuery productQuery=new ProductQuery();
            productQuery.setCreator(admin);
            admin.setSaveProductNumber(productDao.querySize(productQuery));
            //获取该账户拥有的菜单数量
            admin.setMenuNumber(adminMenuDao.getMenuIdsByAdminId(admin.getId(),true,true).length);
            //将密码清空，不返回给前端

        }
        return pageObject;
    }


    @Override
    public void deleteAdmin(Admin admin,Integer id){
        if(admin==null){
            throw new MyServiceException("操作失败：没有登陆（请检查程序错误）");
        }
        Admin adminDelete=new Admin(id);
        if(this.isSystemAdmin(adminDelete)){
            throw new MyServiceException("操作失败：系统用户不允许删除");
        }
        if(admin.getId()==id.intValue()) {//如果登录账户的id与被删除账户的id一致
            throw new MyServiceException("删除失败：不允许删除自己的账户");
        }
        //检查有没有发布过产品
        ProductQuery productQuery=new ProductQuery();
        productQuery.setCreator(adminDelete);
        int saveProductNumber=productDao.querySize(productQuery);//该账户已经发布的产品数量
        if(saveProductNumber>0){
            throw new MyServiceException("删除失败：该账户发布过number个产品"
                .replace("number",String.valueOf(saveProductNumber)));
        }
        //检查有没有编辑过产品（本项目中应该是有没有是最后编辑者）
        productQuery=new ProductQuery();
        productQuery.setFinalEditor(adminDelete);
        int updateProductNumber=productDao.querySize(productQuery);//该账户已经发布的产品数量
        if(updateProductNumber>0){
            throw new MyServiceException("删除失败：该账户编辑（最后编辑者）过number个产品"
                    .replace("number",String.valueOf(updateProductNumber)));
        }
        adminRoleDao.deleteAllAdminRoleByAdminId(id);//移除所有该账户的关系
        adminDao.delete(id);
    }

    /**
     */
    @Override
    public void deleteAdmins(Admin admin,Integer[] ids) {
        //先进行验证
        if(ids.length>0){//只有集合大于0才执行删除，否则容易执行空SQL语句
            for(Integer id:ids){
                Admin adminDelete=new Admin(id);
                if(this.isSystemAdmin(adminDelete)){
                    throw new MyServiceException("系统用户不允许删除");
                }
                if(admin.getId()==id.intValue()) {//如果登录账户的id与被删除账户的id一致
                    throw new MyServiceException("删除失败：不允许删除自己的账户");
                }
                adminDelete=adminDao.get(id);//被删除账户的数据
                //检查有没有发布过产品
                ProductQuery productQuery=new ProductQuery();
                productQuery.setCreator(adminDelete);
                int saveProductNumber=productDao.querySize(productQuery);//该账户已经发布的产品数量
                if(saveProductNumber>0){
                    throw new MyServiceException("删除失败：该账户（username）发布过number个产品"
                            .replace("username",admin.getUsername())
                            .replace("number",String.valueOf(saveProductNumber)));
                }
                //检查有没有编辑过产品（本项目中应该是有没有是最后编辑者）
                productQuery=new ProductQuery();
                productQuery.setFinalEditor(adminDelete);
                int updateProductNumber=productDao.querySize(productQuery);//该账户已经发布的产品数量
                if(updateProductNumber>0){
                    throw new MyServiceException("删除失败：该账户(username)编辑（最后编辑者）过number个产品"
                            .replace("username",adminDelete.getUsername())
                            .replace("number",String.valueOf(updateProductNumber)));
                }
                adminRoleDao.deleteAllAdminRoleByAdminId(id);//移除所有该账户的角色关系
            }
            adminDao.deletes(ids);
        }
    }

    @Override
    public void addAdmin(Admin admin){
        //前面必须经过spring验证框架的验证
        if(admin!=null){
            if(admin.getUsername()==null){
                throw new MyWebException("账户添加失败：账户名不能为空");
            }
            if(admin.getPassword()==null){
                throw new MyWebException("账户添加失败：密码不能为空");
            }
            if(admin.getName()==null){
                throw new MyWebException("账户添加失败：网名不能为空");
            }
            if(admin.getSex()==null){
                throw new MyWebException("账户添加失败：请选择性别");
            }
            if(adminDao.countUsername(admin.getUsername())==0){
                admin.setId(null);//主键自增
                admin.setPassword(SHA.getResult("123456"));
                admin.setUnLocked(true);//默认是不锁定的
                admin.setCreateTime(Calendar.getInstance().getTime());//获取当前时间为创建时间
                adminDao.save(admin);
                //添加账户和角色的关系
                if(admin.getRoleIds()!=null&&admin.getRoleIds().length>0){//如果有角色关系传递过来
                    List<AdminRole> adminRoles=new ArrayList<AdminRole>();//定义账户和角色关系集合
                    AdminRole adminRole=null;
                    for(Integer roleId:admin.getRoleIds()){
                        Role role=roleDao.get(roleId);
                        if(role!=null){
                            adminRole=new AdminRole();
                            adminRole.setRole(role);
                            adminRole.setAdmin(admin);
                            adminRole.setCreateTime(Calendar.getInstance().getTime());
                            adminRoles.add(adminRole);
                        }else{
                            throw new MyWebException("操作失败：相关角色不存在，请刷新表单");
                        }
                    }
                    adminRoleDao.saves(adminRoles);//将账户和角色的关系存入数据库
                }
            }else{
                throw new MyServiceException("账户添加失败：账户名重名");
            }
        }else{
            throw new MyWebException("账户添加失败：表单数据不能为空");
        }
    }

    @Override
    public Admin getAdmin(Integer id) {
        Admin admin=null;
        if(id!=null){
            admin=adminDao.get(id);
            admin.setRoles(roleDao.getRolesByAdminId(id));//获取该账户拥有的角色集合
        }
        return admin;
    }

    @Override
    public Admin getAdmin(String username) {
        Admin admin=null;
        if(username!=null){
            admin=adminDao.getAdminByUsername(username);
        }
        return admin;
    }

    @Override
    public void updateAdmin(Admin admin,Admin user){
        if(user.getId()==null){
            throw new MyWebException("账户编辑失败：id不能为空");
        }
        if(admin!=null){
            if(admin.getId()==user.getId().intValue()){
                throw new MyWebException("账户编辑失败：不能编辑自己的账户");
            }
        }
        if(user.getUsername()!=null){
            if(user.getUsername().length()==0){
                throw new MyWebException("账户编辑失败：账户名不能为空");
            }
        }
        if(user.getName()!=null){
            if(user.getName().length()==0){
                throw new MyWebException("账户编辑失败：网名不能为空");
            }else{
                if(adminDao.countOtherUsername(user.getUsername(),user.getId())>0) {//如果账户名重名
                    throw new MyServiceException("账户编辑失败：和其他管理账户的账户名重名");
                }
            }
        }
        //对修改的角色进行处理。注：这里没有简单的对角色进行删除再重新添加，仅对变更的关系进行数据库的处理
        if(user.getRoleIds()!=null){//如果前端传有角色信息进来才进行处理，否则不对角色关系进行维护
            List<Role> rolesAll=roleDao.readAll(null);//获取所有角色信息
            List<Role> rolesSelect=new ArrayList<Role>();//定义前端选择的角色集合
            for(Integer roleId:user.getRoleIds()) {//获取账户表当前选择的值
                int index=rolesAll.indexOf(new Role(roleId));//直接从集合中获取角色元素，避免读取数据库
                if(index!=-1){//如果角色存在
                    rolesSelect.add(rolesAll.get(index));
                }else{
                    throw new MyWebException("操作失败：相关角色不存在，请刷新表单");
                }
            }
            List<AdminRole> adminRoles=new ArrayList<AdminRole>();//定义账户和所有角色联系集合,用于在数据库添加
            AdminRole adminRole=null;
            for(Role roleEach:rolesAll){
                int adminRoleNumber=adminRoleDao.getAdminAndRoleRelationNumber(user.getId(),roleEach.getId());//获取选择的角色关系原来在数据库中存在的数量
                if(rolesSelect.contains(roleEach)){//如果该角色已经选择
                    if(adminRoleNumber==0){//如果选择的角色关系原来在数据库不存在
                        adminRole=new AdminRole();//创建关系
                        adminRole.setRole(roleEach);
                        adminRole.setAdmin(user);
                        adminRole.setCreateTime(Calendar.getInstance().getTime());
                        adminRoles.add(adminRole);//将关系存入集合中
                    }
                }else{//如果该角色没有选择
                    if(adminRoleNumber>0){//如果该角色关系已经在数据库存在
                        adminRoleDao.deleteByAdminIdAndRoleId(user.getId(),roleEach.getId());//删除该关系
                    }
                }
            }
            adminRoleDao.saves(adminRoles);//将新添加的关系插入数据库
        }
        user.setPassword(null);
        adminDao.update(user);
    }

    @Override
    public void updatePassword(String username, String password, String newPass, String rePass) {
        //在web层已对密码字段进行验证
        if(!newPass.equals(rePass)){
            throw new MyWebException("密码修改失败：确认密码与新密码必须相同");
        }
        if(this.login(username, password)){//说明原密码正确
            Admin admin=adminDao.getAdminByUsername(username);
            admin.setPassword(SHA.getResult(newPass));
            adminDao.update(admin);
        }else{
            throw new MyServiceException("密码修改失败：原密码错误");
        }
    }


    //spring security接口UserDetailsService必须要实现的方法
    @Override
    public Admin loadUserByUsername(String username) throws UsernameNotFoundException {
        Admin admin=adminDao.getAdminByUsername(username);//根据账户名查找指定账户信息
        if(admin!=null){
            admin.setRoles(roleDao.getRolesByAdminId(admin.getId()));//获取该账户的角色集合
            //发布过产品的数量
            ProductQuery productQuery=new ProductQuery();
            productQuery.setCreator(admin);
            admin.setSaveProductNumber(productDao.querySize(productQuery));
        }else{
            throw new UsernameNotFoundException("该账户不存在");
        }
        return admin;
    }
}
