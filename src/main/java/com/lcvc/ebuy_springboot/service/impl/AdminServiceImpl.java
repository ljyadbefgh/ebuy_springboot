package com.lcvc.ebuy_springboot.service.impl;

import com.lcvc.ebuy_springboot.dao.AdminDao;
import com.lcvc.ebuy_springboot.dao.ProductDao;
import com.lcvc.ebuy_springboot.model.Admin;
import com.lcvc.ebuy_springboot.model.base.PageObject;
import com.lcvc.ebuy_springboot.model.exception.MyServiceException;
import com.lcvc.ebuy_springboot.model.exception.MyWebException;
import com.lcvc.ebuy_springboot.model.query.ProductQuery;
import com.lcvc.ebuy_springboot.service.AdminService;
import com.lcvc.ebuy_springboot.util.SHA;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.annotation.Validated;

import javax.annotation.Resource;
import java.util.Calendar;
import java.util.List;

@Transactional(propagation = Propagation.REQUIRED,isolation = Isolation.DEFAULT,timeout=36000,rollbackFor=Exception.class)
@Validated//表示开启sprint的校检框架，会自动扫描方法里的@Valid（@Valid注解一般写在接口即可）
@Service
public class AdminServiceImpl implements AdminService {
    @Resource
    private AdminDao adminDao;
    @Resource
    private ProductDao productDao;

    /**
     * 是否是超级管理员
     * @param admin
     * @return true表示是超级管理员
     */
    private boolean isSuperAdmin(Admin admin){
        boolean result=false;
        if(admin.getId()<0){
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
    public List<Admin> getAdmins() {
        return adminDao.readAll();
    }

    @Override
    public PageObject searchAdmins(Integer page, Integer limit) {
        PageObject pageObject = new PageObject(limit,page,adminDao.querySize(null));
        pageObject.setList(adminDao.query(pageObject.getOffset(),pageObject.getLimit(),null));
        for(Admin admin:(List<Admin>)pageObject.getList()){//遍历对象
            //发布过产品的数量
            ProductQuery productQuery=new ProductQuery();
            productQuery.setCreator(admin);
            admin.setSaveProductNumber(productDao.querySize(productQuery));
            //将密码清空，不返回给前端

        }
        return pageObject;
    }


    @Override
    public void deleteAdmin(Admin admin,Integer id){
        Admin adminDelete=new Admin(id);
        if(this.isSuperAdmin(adminDelete)){
            throw new MyServiceException("超级用户不允许删除");
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
        adminDao.delete(id);
    }

    @Override
    public void deleteAdmins(Admin admin,Integer[] ids) {
        //先进行验证
        for(Integer id:ids){
            Admin adminDelete=new Admin(id);
            if(this.isSuperAdmin(adminDelete)){
                throw new MyServiceException("超级用户不允许删除");
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
        }
        adminDao.deletes(ids);
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
                admin.setCreateTime(Calendar.getInstance().getTime());//获取当前时间为创建时间
                adminDao.save(admin);
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
    public void updateAdmin(Admin admin){
        if(admin.getId()==null){
            throw new MyWebException("账户编辑失败：id不能为空");
        }
        if(admin.getUsername()!=null){
            if(admin.getUsername().length()==0){
                throw new MyWebException("账户编辑失败：账户名不能为空");
            }
        }
        if(admin.getName()!=null){
            if(admin.getName().length()==0){
                throw new MyWebException("账户编辑失败：网名不能为空");
            }else{
                if(adminDao.countOtherUsername(admin.getUsername(),admin.getId())>0) {//如果账户名重名
                    throw new MyServiceException("账户编辑失败：和其他管理账户的账户名重名");
                }
            }
        }
        admin.setPassword(null);
        adminDao.update(admin);
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
}
