package com.lcvc.ebuy_springboot.service.impl;

import com.lcvc.ebuy_springboot.dao.ProductOrderDao;
import com.lcvc.ebuy_springboot.dao.ProductOrderDetailDao;
import com.lcvc.ebuy_springboot.model.ProductOrderDetail;
import com.lcvc.ebuy_springboot.model.base.PageObject;
import com.lcvc.ebuy_springboot.model.exception.MyServiceException;
import com.lcvc.ebuy_springboot.model.exception.MyWebException;
import com.lcvc.ebuy_springboot.model.query.ProductOrderDetailQuery;
import com.lcvc.ebuy_springboot.service.ProductOrderDetailService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.annotation.Validated;

import java.math.BigDecimal;
import java.util.List;

@Transactional(propagation = Propagation.REQUIRED,isolation = Isolation.DEFAULT,timeout=36000,rollbackFor=Exception.class)
@Validated//表示开启sprint的校检框架，会自动扫描方法里的@Valid（@Valid注解一般写在接口即可）
@Service
public class ProductOrderDetailServiceImpl implements ProductOrderDetailService {

    @Autowired
    private ProductOrderDao productOrderDao;
    @Autowired
    private ProductOrderDetailDao productOrderDetailDao;

    @Override
    public PageObject search(Integer page, Integer limit, ProductOrderDetailQuery productOrderDetailQuery) {
        PageObject pageObject = new PageObject(limit,page,productOrderDetailDao.querySize(productOrderDetailQuery));
        pageObject.setList(productOrderDetailDao.query(pageObject.getOffset(),pageObject.getLimit(),productOrderDetailQuery));
        for(ProductOrderDetail productOrderDetail:(List<ProductOrderDetail>)pageObject.getList()){//遍历子订单
            //计算子订单的价格
            BigDecimal priceTotal=productOrderDetail.getPrice().multiply(BigDecimal.valueOf(productOrderDetail.getProductNumber()));
            productOrderDetail.setPriceTotal(priceTotal);
        }
        return pageObject;
    }

    @Override
    public void updateProductOrderDetail(ProductOrderDetail productOrderDetail) {
        if(productOrderDetail.getId()==null){
            throw new MyWebException("编辑失败：缺少主键");
        }
        ProductOrderDetail productOrderDetailOriginal =productOrderDetailDao.get(productOrderDetail.getId());//获取原子订单信息
        if(!productOrderDetailOriginal.getProductOrder().allowUpdate()){//只有未付款的订单可以修改
            throw new MyServiceException("修改失败：只有待付款的订单可以修改");
        }
        if(productOrderDetailOriginal.getProductOrder().getStrikePrice()!=null){//如果已经设定了成交价，即管理员给了优惠
            throw new MyServiceException("修改失败：该订单已经有成交价，请取消后再修改");
        }
        productOrderDetailDao.update(productOrderDetail);
    }
}
