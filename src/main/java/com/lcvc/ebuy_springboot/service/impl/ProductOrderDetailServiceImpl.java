package com.lcvc.ebuy_springboot.service.impl;

import com.lcvc.ebuy_springboot.dao.ProductOrderDao;
import com.lcvc.ebuy_springboot.dao.ProductOrderDetailDao;
import com.lcvc.ebuy_springboot.model.ProductOrderDetail;
import com.lcvc.ebuy_springboot.model.exception.MyServiceException;
import com.lcvc.ebuy_springboot.model.exception.MyWebException;
import com.lcvc.ebuy_springboot.service.ProductOrderDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.annotation.Validated;

@Transactional(propagation = Propagation.REQUIRED,isolation = Isolation.DEFAULT,timeout=36000,rollbackFor=Exception.class)
@Validated//表示开启sprint的校检框架，会自动扫描方法里的@Valid（@Valid注解一般写在接口即可）
@Service
public class ProductOrderDetailServiceImpl implements ProductOrderDetailService {

    @Autowired
    private ProductOrderDao productOrderDao;
    @Autowired
    private ProductOrderDetailDao productOrderDetailDao;

    @Override
    public void updateProductOrderDetail(ProductOrderDetail productOrderDetail) {
        if(productOrderDetail.getId()==null){
            throw new MyWebException("编辑失败：缺少主键");
        }
        ProductOrderDetail productOrderDetailOriginal =productOrderDetailDao.get(productOrderDetail.getId());//获取原子订单信息
        if(productOrderDetailOriginal.getProductOrder().allowUpdate()){//只有未付款的订单可以修改
            productOrderDetailDao.update(productOrderDetail);
        }else{
            throw new MyServiceException("修改失败：只有待付款的订单可以修改");
        }
    }
}
