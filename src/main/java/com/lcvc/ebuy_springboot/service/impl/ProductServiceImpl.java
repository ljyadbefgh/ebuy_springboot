package com.lcvc.ebuy_springboot.service.impl;

import com.lcvc.ebuy_springboot.dao.ProductDao;
import com.lcvc.ebuy_springboot.model.Product;
import com.lcvc.ebuy_springboot.model.base.PageObject;
import com.lcvc.ebuy_springboot.model.exception.MyWebException;
import com.lcvc.ebuy_springboot.model.exception.MyServiceException;
import com.lcvc.ebuy_springboot.model.query.ProductQuery;
import com.lcvc.ebuy_springboot.service.ProductService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.annotation.Validated;

import javax.annotation.Resource;
import java.util.List;

@Transactional(propagation = Propagation.REQUIRED,isolation = Isolation.DEFAULT,timeout=36000,rollbackFor=Exception.class)
@Service
@Validated//表示开启sprint的校检框架，会自动扫描方法里的@Valid（@Valid注解一般写在接口即可）
public class ProductServiceImpl implements ProductService {

    @Resource
    private ProductDao productDao;

    @Override
    public PageObject searchProducts(Integer page, Integer limit, ProductQuery productQuery) {
        PageObject pageObject = new PageObject(limit,page,productDao.querySize(productQuery));
        pageObject.setList(productDao.query(pageObject.getOffset(),pageObject.getLimit(),productQuery));
        for(Product product:(List<Product>)pageObject.getList()){
            //处理订单信息
        }
        return pageObject;
    }

    @Override
    public Product getProductInit() {
        Product product=new Product();
        product.setClick(0);
        product.setOrderNum(100);
        //product.setOnSale(false);
        return product;
    }

    @Override
    public void addProduct(Product product) throws MyWebException {
        if(product.getProductType().getId()==null){
            throw new MyWebException("产品保存失败：产品栏目不能为空");
        }
    }

    @Override
    public void deleteProducts(Integer[] ids) throws MyWebException, MyServiceException {

    }



    @Override
    public Product getProduct(Integer id) {
        return null;
    }

    @Override
    public void updateProduct(Product product) throws MyWebException {

    }
}
