package com.lcvc.ebuy_springboot.service.impl;

import com.lcvc.ebuy_springboot.dao.AdminDao;
import com.lcvc.ebuy_springboot.model.Admin;
import com.lcvc.ebuy_springboot.model.exception.MyFormException;
import com.lcvc.ebuy_springboot.service.AdminService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;

import javax.annotation.Resource;
import java.util.List;

@Transactional(propagation = Propagation.REQUIRED,isolation = Isolation.DEFAULT,timeout=36000,rollbackFor=Exception.class)
@Service
public class AdminServiceImpl implements AdminService {
    @Resource
    private AdminDao adminDao;

    @Override
    public boolean login(String username, String password) {
        boolean judge=false;
        if(adminDao.login(username, password)==1){
            judge=true;
        }
        return judge;
    }


    @Override
    public List<Admin> getAdmins() {
        return adminDao.readAll();
    }


    @Override
    public void deleteAdmin(Integer id){
        adminDao.delete(id);
    }

    @Override
    public void addAdmin(Admin admin) throws MyFormException {
        if(admin!=null){
            if(admin.getUsername().equals("")){
                throw new MyFormException("添加失败：账户名不能为空");
            }
            if(admin.getName().equals("")){
                throw new MyFormException("添加失败：姓名不能为空");
            }
            if(adminDao.countAdminByUsername(admin.getUsername())==0){
                admin.setPassword("123456");
                adminDao.add(admin);
            }else{
                throw new MyFormException("添加失败：账户名重名");
            }
        }else{
            throw new MyFormException("添加失败：表单数据不能为空");
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
        if(admin.getName().length()==0){
            throw new MyFormException("添加失败：姓名不能为空");
        }
        int i = adminDao.update(admin);// 更改了多少条记录
        // 编写代码，判断是否编辑成功
        if (i ==1) {
            status = true;
        }
        return status;
    }


}
