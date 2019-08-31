package com.lcvc.ebuy_springboot.service.impl;

import com.lcvc.ebuy_springboot.dao.CustomerDao;
import com.lcvc.ebuy_springboot.model.Customer;
import com.lcvc.ebuy_springboot.model.base.Constant;
import com.lcvc.ebuy_springboot.model.base.PageObject;
import com.lcvc.ebuy_springboot.model.exception.MyServiceException;
import com.lcvc.ebuy_springboot.model.exception.MyWebException;
import com.lcvc.ebuy_springboot.model.query.CustomerQuery;
import com.lcvc.ebuy_springboot.service.CustomerService;
import com.lcvc.ebuy_springboot.util.SHA;
import com.lcvc.ebuy_springboot.util.file.MyFileOperator;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.annotation.Validated;

import javax.annotation.Resource;
import java.util.Calendar;
import java.util.List;

@Validated//表示开启sprint的校检框架，会自动扫描方法里的@Valid（@Valid注解一般写在接口即可）
@Transactional(propagation = Propagation.REQUIRED,isolation = Isolation.DEFAULT,timeout=36000,rollbackFor=Exception.class)
@Service
public class CustomerServiceImpl implements CustomerService {
    @Resource
    private CustomerDao customerDao;

    @Override
    public boolean login(String username, String password) {
        return false;
    }

    @Override
    public PageObject searchCustomers(Integer page, Integer limit, CustomerQuery customerQuery, String basePath) {
        PageObject pageObject = new PageObject(limit,page,customerDao.querySize(customerQuery));
        pageObject.setList(customerDao.query(pageObject.getOffset(),pageObject.getLimit(),customerQuery));
        for(Customer customer:(List<Customer>)pageObject.getList()){
            //将头像网址进行处理，变为完整的地址
            if(!StringUtils.isEmpty(customer.getPicUrl())){//只要有图片则加上绝对地址
                customer.setPicUrl(basePath+ Constant.CUSTOMER_PROFILE_PICTURE_URL+customer.getPicUrl());
            }
            //设置密码展示状态
            if(customer.getPassword().equals(SHA.getResult("123456"))){//默认初始密码123456
                customer.setInitialPasswordStatus(true);
            }else{
                customer.setInitialPasswordStatus(false);
            }
        }
        return pageObject;
    }

    @Override
    public void deleteCustomers(Integer[] ids){
        for(Integer id:ids){
            //删除账户对应的图片
            Customer customer=customerDao.get(id);//读取相应的记录
            String picUrl=customer.getPicUrl();//获取头像地址
            if(!StringUtils.isEmpty(picUrl)){//如果头像存在
              throw new MyServiceException("账户删除失败：请先删除头像，再执行账户删除");
            }
        }
        customerDao.deletes(ids);
    }

    @Override
    public void removeCustomersProfilePicture(Integer[] ids, String basePath) {
        for(Integer id:ids){
            //删除账户对应的图片
            Customer customer=customerDao.get(id);//读取相应的记录
            String picUrl=customer.getPicUrl();//获取头像地址
            if(!StringUtils.isEmpty(picUrl)){//如果头像存在
                customer.setPicUrl("");//清空图片地址
                customerDao.update(customer);
                MyFileOperator.deleteFile(basePath+ Constant.CUSTOMER_PROFILE_PICTURE_UPLOAD_URL+picUrl);//删除图片
            }
        }
    }

    @Override
    public void addCustomer(Customer customer){
        //前面已经经过spring验证框架的验证
        if(customer!=null){
            if(customer.getUsername()==null){
                throw new MyWebException("客户信息创建失败：账户名不能为空");
            }else if(customer.getName()==null){
                throw new MyWebException("客户信息创建失败：姓名不能为空");
            }else if(customerDao.countUsername(customer.getUsername())>0){//如果有重名的
                throw new MyServiceException("客户信息创建失败：账户名重名");
            }else{
                customer.setPassword(SHA.getResult("123456"));
                customer.setCreateTime(Calendar.getInstance().getTime());//获取当前时间为创建时间
                customerDao.save(customer);
            }
        }else{
            throw new MyWebException("客户信息创建失败：表单数据不能为空");
        }
    }

    @Override
    public Customer getCustomer(Integer id) {
        Customer customer=null;
        if(id!=null){
            customer=customerDao.get(id);
        }
        return customer;
    }

    @Override
    public void updateCustomer(Customer customer){
        boolean status = false;// 默认编辑失败
        //进行账户名验证
        String username=customer.getUsername();
        if(username!=null){//如果有这个字段
            if(customer.getUsername().equals("")){
                throw new MyWebException("客户信息编辑失败：账户名不能为空");
            }else if(customerDao.countOtherUsername(customer.getUsername(),customer.getId())>0){//如果有重名的
                throw new MyWebException("客户信息编辑失败：账户名重名");
            }
        }else if(customer.getName()!=null&&customer.getName().equals("")){//姓名验证
            throw new MyWebException("客户信息编辑失败：姓名不能为空");
        }
        customerDao.update(customer);
    }

    @Override
    public void resetPassword(Integer id) {
        Customer customer=new Customer(id);
        customer.setPassword(SHA.getResult("123456"));
        customerDao.update(customer);
    }
}
