package com.lcvc.ebuy_springboot.service.impl;

import com.lcvc.ebuy_springboot.dao.CustomerDao;
import com.lcvc.ebuy_springboot.model.Customer;
import com.lcvc.ebuy_springboot.model.base.PageObject;
import com.lcvc.ebuy_springboot.model.exception.MyFormException;
import com.lcvc.ebuy_springboot.model.query.CustomerQuery;
import com.lcvc.ebuy_springboot.service.CustomerService;
import com.lcvc.ebuy_springboot.util.SHA;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.Calendar;
import java.util.List;

@Service
public class CustomerServiceImpl implements CustomerService {
    @Resource
    private CustomerDao customerDao;

    @Override
    public boolean login(String username, String password) {
        return false;
    }

    @Override
    public PageObject searchCustomers(Integer page, Integer limit, CustomerQuery customerQuery) {
        PageObject pageObject = new PageObject(limit,page,customerDao.querySize(customerQuery));
        pageObject.setList(customerDao.query(pageObject.getOffset(),pageObject.getLimit(),customerQuery));
        for(Customer customer:(List<Customer>)pageObject.getList()){
            if(customer.getPassword().equals(SHA.getResult("123456"))){//默认初始密码123456
                customer.setInitialPasswordStatus(true);
            }else{
                customer.setInitialPasswordStatus(false);
            }
        }
        return pageObject;
    }

    @Override
    public void deleteCustomers(Integer[] ids) {
        customerDao.deletes(ids);
    }

    @Override
    public void addCustomer(Customer customer) throws MyFormException {
        if(customer!=null){
            if(customer.getUsername().equals("")){
                throw new MyFormException("添加失败：账户名不能为空");
            }else if(customer.getName().equals("")){
                throw new MyFormException("添加失败：姓名不能为空");
            }else if(customerDao.countUsername(customer.getUsername())>0){//如果有重名的
                throw new MyFormException("添加失败：账户名重名");
            }else{
                customer.setPassword(SHA.getResult("123456"));
                customer.setCreateTime(Calendar.getInstance().getTime());//获取当前时间为创建时间
                customerDao.save(customer);
            }
        }else{
            throw new MyFormException("添加失败：表单数据不能为空");
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
    public void updateCustomer(Customer customer) throws MyFormException {
        boolean status = false;// 默认编辑失败
        //进行账户名验证
        String username=customer.getUsername();
        if(username!=null){//如果有这个字段
            if(customer.getUsername().equals("")){
                throw new MyFormException("账户名不能为空");
            }else if(customerDao.countOtherUsername(customer.getUsername(),customer.getId())>0){//如果有重名的
                throw new MyFormException("账户名重名");
            }
        }else if(customer.getName()!=null&&customer.getName().equals("")){//姓名验证
            throw new MyFormException("姓名不能为空");
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
