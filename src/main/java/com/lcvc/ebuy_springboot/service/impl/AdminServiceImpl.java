package com.lcvc.ebuy_springboot.service.impl;

import com.lcvc.ebuy_springboot.dao.AdminDao;
import com.lcvc.ebuy_springboot.model.Admin;
import com.lcvc.ebuy_springboot.model.base.PageObject;
import com.lcvc.ebuy_springboot.model.exception.MyFormException;
import com.lcvc.ebuy_springboot.service.AdminService;
import com.lcvc.ebuy_springboot.util.SHA;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.Calendar;
import java.util.List;

@Transactional(propagation = Propagation.REQUIRED,isolation = Isolation.DEFAULT,timeout=36000,rollbackFor=Exception.class)
@Service
public class AdminServiceImpl implements AdminService {
    @Resource
    private AdminDao adminDao;


    @Override
    public boolean login(String username, String password) throws MyFormException{
        boolean judge=false;
        if(StringUtils.isEmpty(username)){
            throw new MyFormException("登陆失败：账户名不能为空");
        }else  if(StringUtils.isEmpty(password)){
            throw new MyFormException("登陆失败：密码不能为空");
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
        return pageObject;
    }


    @Override
    public void deleteAdmin(Admin admin,Integer id) throws MyFormException{
        if(admin.getId()==id.intValue()) {//如果登录账户的id与被删除账户的id一致
            throw new MyFormException("删除失败：不允许删除自己的账户");
        }else{
            adminDao.delete(id);
        }
    }

    @Override
    public void deleteAdmins(Admin admin,Integer[] ids)  throws MyFormException{
        //先进行验证
        for(Integer id:ids){
            if(admin.getId()==id.intValue()) {//如果登录账户的id与被删除账户的id一致
                throw new MyFormException("删除失败：不允许删除自己的账户");
            }
        }
        adminDao.deletes(ids);
    }

    @Override
    public void addAdmin(Admin admin) throws MyFormException {
        if(admin!=null){
            if(admin.getUsername().equals("")){
                throw new MyFormException("账户添加失败：账户名不能为空");
            }
            if(admin.getName().equals("")){
                throw new MyFormException("账户添加失败：姓名不能为空");
            }
            if(adminDao.countUsername(admin.getUsername())==0){
                admin.setPassword(SHA.getResult("123456"));
                admin.setCreateTime(Calendar.getInstance().getTime());//获取当前时间为创建时间
                adminDao.save(admin);
            }else{
                throw new MyFormException("账户添加失败：账户名重名");
            }
        }else{
            throw new MyFormException("账户添加失败：表单数据不能为空");
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
    public boolean updateAdmin(Admin admin) throws MyFormException {
        boolean status = false;// 默认编辑失败
        if(admin.getUsername().length()==0){
            throw new MyFormException("账户编辑失败：账户名不能为空");
        }else if(adminDao.countOtherUsername(admin.getUsername(),admin.getId())>0) {//如果账户名重名
            throw new MyFormException("账户编辑失败：和其他管理账户的账户名重名");
        }else{
            int i = adminDao.update(admin);// 更改了多少条记录
            // 编写代码，判断是否编辑成功
            if (i ==1) {
                status = true;
            }
        }
        return status;
    }


}
