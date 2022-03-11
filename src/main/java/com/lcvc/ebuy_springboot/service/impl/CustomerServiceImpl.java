package com.lcvc.ebuy_springboot.service.impl;

import com.lcvc.ebuy_springboot.dao.CustomerDao;
import com.lcvc.ebuy_springboot.dao.LogOfCustomerLoginDao;
import com.lcvc.ebuy_springboot.dao.ProductOrderDao;
import com.lcvc.ebuy_springboot.dao.WebConfigDao;
import com.lcvc.ebuy_springboot.model.Customer;
import com.lcvc.ebuy_springboot.model.LogOfCustomerLogin;
import com.lcvc.ebuy_springboot.model.WebConfig;
import com.lcvc.ebuy_springboot.model.base.Constant;
import com.lcvc.ebuy_springboot.model.base.PageObject;
import com.lcvc.ebuy_springboot.model.exception.MyDataException;
import com.lcvc.ebuy_springboot.model.exception.MyServiceException;
import com.lcvc.ebuy_springboot.model.exception.MyWebException;
import com.lcvc.ebuy_springboot.model.query.CustomerQuery;
import com.lcvc.ebuy_springboot.model.query.LogOfCustomerLoginQuery;
import com.lcvc.ebuy_springboot.model.query.ProductOrderQuery;
import com.lcvc.ebuy_springboot.service.CustomerService;
import com.lcvc.ebuy_springboot.util.SHA;
import com.lcvc.ebuy_springboot.junit.util.file.MyFileOperator;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.annotation.Validated;

import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;

@Validated//表示开启sprint的校检框架，会自动扫描方法里的@Valid（@Valid注解一般写在接口即可）
@Transactional(propagation = Propagation.REQUIRED,isolation = Isolation.DEFAULT,timeout=36000,rollbackFor=Exception.class)
@Service
public class CustomerServiceImpl implements CustomerService {
    @Autowired
    private CustomerDao customerDao;
    @Autowired
    private ProductOrderDao productOrderDao;
    @Autowired
    private WebConfigDao webConfigDao;
    @Autowired
    private LogOfCustomerLoginDao logOfCustomerLoginDao;


    /**
     * 单纯进行登陆验证，不考虑其他验证
     * @param username
     * @param password
     * @return
     */
    private boolean loginOfSimple(String username, String password) {
        boolean judge=false;
        if(StringUtils.isEmpty(username)){
            throw new MyWebException("登陆失败：账户名不能为空");
        }else  if(StringUtils.isEmpty(password)){
            throw new MyWebException("登陆失败：密码不能为空");
        }else{
            if(customerDao.login(username, SHA.getResult(password))==1){
                judge=true;
            }
        }
        return judge;
    }


    /**
     * 专门用于完善客户订单模块的数据
     * @param customer 必须包含数据库的基本字段
     */
    private void getCustomerOrderParam(Customer customer){
        //获取客户拥有的订单数量
        ProductOrderQuery productOrderQuery=new ProductOrderQuery();
        productOrderQuery.setCustomer(customer);
        customer.setProductOrderNumber(productOrderDao.querySize(productOrderQuery));
        //获取该客户拥有的待付款订单数
        productOrderQuery=new ProductOrderQuery();
        productOrderQuery.setCustomer(customer);
        productOrderQuery.setTag(0);
        customer.setPayTagOrderNumber(productOrderDao.querySize(productOrderQuery));
        //获取该客户拥有的待发货订单数
        productOrderQuery.setTag(1);
        customer.setSendTagOrderNumber(productOrderDao.querySize(productOrderQuery));
        //获取该客户拥有的待收货订单数
        productOrderQuery.setTag(2);
        customer.setReceiveTagOrderNumber(productOrderDao.querySize(productOrderQuery));
        //获取该客户拥有的待评价订单数
        productOrderQuery.setTag(3);
        customer.setCommentTagNumber(productOrderDao.querySize(productOrderQuery));

    }

    @Override
    public boolean existsCustomer(Integer userId) {
        boolean judge=false;//默认失败
        if(userId!=null){
            if(customerDao.countCustomerId(userId)>0){
                judge=true;
            }
        }
        return judge;
    }

    @Override
    public boolean login(String username, String password) {
        //前面已经经过spring验证框架的验证
        return this.loginOfSimple(username,password);
    }

    @Override
    public Integer total() {
        return customerDao.total();
    }

    @Override
    public Customer getCustomer(Integer customerId) {
        Customer customer=null;
        if(customerId!=null){
            customer=customerDao.get(customerId);
        }
        return customer;
    }

    @Override
    public Customer getCustomer(String username) {
        Customer customer=null;
        if(username!=null){
            customer=customerDao.getCustomerByUsername(username);
        }
        return customer;
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
            //获取客户购买的订单数据
            this.getCustomerOrderParam(customer);
        }
        return pageObject;
    }

    @Override
    public void deleteCustomers(Integer[] ids){
        List<LogOfCustomerLogin> logOfCustomerLogins=new ArrayList<LogOfCustomerLogin>();//存储后面要删除的登陆入职
        for(Integer id:ids){
            //删除账户对应的图片
            Customer customer=customerDao.get(id);//读取相应的记录
            String picUrl=customer.getPicUrl();//获取头像地址
            if(!StringUtils.isEmpty(picUrl)){//如果头像存在
              throw new MyServiceException("账户删除失败：请先删除头像，再执行账户删除");
            }
            //获取客户拥有的订单数量
            ProductOrderQuery productOrderQuery=new ProductOrderQuery();
            productOrderQuery.setCustomer(customer);
            if(productOrderDao.querySize(productOrderQuery)>0){
                throw new MyServiceException("账户删除失败：该客户已经下了订单，不能删除");
            }
            //获取客户的登陆日志
            LogOfCustomerLoginQuery logOfCustomerLoginQuery=new LogOfCustomerLoginQuery();
            logOfCustomerLoginQuery.setCustomer(customer);
            logOfCustomerLogins.addAll(logOfCustomerLoginDao.readAll(logOfCustomerLoginQuery));
        }
        logOfCustomerLoginDao.deleteObjects(logOfCustomerLogins);//删除客户的登陆日志
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
    public void regCustomer(Customer customer, String inviteCode) {
        //前面已经经过spring验证框架的验证
        WebConfig webConfig=webConfigDao.get();//读取网站配置信息
        if(webConfig.getCloseRegOfCustomer()){
            throw new MyServiceException("注册失败：系统当前禁止注册客户");
        }
        if(!StringUtils.isEmpty(webConfig.getInviteCodeOfCustomer())){//如果邀请码不为空
            if(!inviteCode.equals(webConfig.getInviteCodeOfCustomer())){
                throw new MyWebException("注册失败：邀请码不正确，请咨询管理员要正确的邀请码");
            }
        }
        if(customer!=null){
            if(customer.getUsername()==null){
                throw new MyWebException("注册失败：账户名不能为空");
            }else if(customer.getPassword()==null){//如果有重名的
                throw new MyServiceException("注册失败：密码不能为空");
            }else if(customer.getName()==null){
                throw new MyWebException("注册失败：姓名不能为空");
            }else if(customer.getSex()==null){
                throw new MyWebException("注册失败：性别不能为空");
            }else if(customerDao.countUsername(customer.getUsername())>0){//如果有重名的
                throw new MyServiceException("注册失败：账户名重名");
            }else{
                customer.setPassword(SHA.getResult(customer.getPassword()));//加密密码
                customer.setCreateTime(Calendar.getInstance().getTime());//获取当前时间为创建时间
                customerDao.save(customer);
            }
        }else{
            throw new MyWebException("客户信息创建失败：表单数据不能为空");
        }
    }

    @Override
    public Customer getCustomer(Integer id,String basePath) {
        Customer customer=null;
        if(id!=null){
            customer=customerDao.get(id);
            if(customer!=null){
                //将头像网址进行处理，变为完整的地址
                if(!StringUtils.isEmpty(customer.getPicUrl())){//只要有图片则加上绝对地址
                    customer.setPicUrl(basePath+ Constant.CUSTOMER_PROFILE_PICTURE_URL+customer.getPicUrl());
                }
                //获取客户购买的订单数据
                this.getCustomerOrderParam(customer);
            }else{
                throw new MyDataException("客户信息读取失败：找不到指定的客户信息");
            }
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
        if(!StringUtils.isEmpty(customer.getPicUrl())){//如果图片地址不为空
            if(customer.getPicUrl().contains("http")){ // 因为图片地址是加工后（加绝对地址）传过去的，所以要注意前端未处理传回来
               customer.setPicUrl(null);//清空该地址，表示不更新
            }
        }
        customer.setPassword(null);//不修改密码字段
        customerDao.update(customer);
    }

    @Override
    public void resetPassword(Integer id) {
        Customer customer=new Customer(id);
        customer.setPassword(SHA.getResult("123456"));
        customerDao.update(customer);
    }

    @Override
    public void updatePassword(String username, String password, String newPass, String rePass) {
        //在web层已对密码字段进行验证
        if(!newPass.equals(rePass)){
            throw new MyWebException("密码修改失败：确认密码与新密码必须相同");
        }
        if(this.loginOfSimple(username, password)){//说明原密码正确
            Customer customer=customerDao.getCustomerByUsername(username);
            customer.setPassword(SHA.getResult(newPass));//设置新密码
            customerDao.update(customer);
        }else{
            throw new MyServiceException("密码修改失败：原密码错误");
        }
    }
}
