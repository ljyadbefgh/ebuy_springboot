package com.lcvc.ebuy_springboot.service.impl;

import com.lcvc.ebuy_springboot.dao.ProductDao;
import com.lcvc.ebuy_springboot.dao.ProductTypeDao;
import com.lcvc.ebuy_springboot.model.Admin;
import com.lcvc.ebuy_springboot.model.Product;
import com.lcvc.ebuy_springboot.model.ProductType;
import com.lcvc.ebuy_springboot.model.base.PageObject;
import com.lcvc.ebuy_springboot.model.exception.MyWebException;
import com.lcvc.ebuy_springboot.model.query.ProductQuery;
import com.lcvc.ebuy_springboot.service.ProductService;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.annotation.Validated;

import javax.annotation.Resource;
import java.math.BigDecimal;
import java.util.Calendar;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

@Transactional(propagation = Propagation.REQUIRED,isolation = Isolation.DEFAULT,timeout=36000,rollbackFor=Exception.class)
@Service
@Validated//表示开启sprint的校检框架，会自动扫描方法里的@Valid（@Valid注解一般写在接口即可）
public class ProductServiceImpl implements ProductService {

    @Resource
    private ProductDao productDao;
    @Resource
    private ProductTypeDao productTypeDao;

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
        product.setPrice(new BigDecimal("0.00"));
        product.setOriginalPrice(new BigDecimal("0.00"));
        //product.setOnSale(false);
        return product;
    }

    @Override
    public void addProduct(Product product, Admin admin) {
        //前面必须经过spring验证框架的验证
        //下面主要防止前端表单没有相关字段（及为空）
        if(product.getProductType().getId()==null){
            throw new MyWebException("产品保存失败：必须选择产品所属栏目");
        }else if(product.getName()==null){
            throw new MyWebException("产品保存失败：表单必须有产品名字");
        }else if(StringUtils.isEmpty(product.getPicUrl())){
            throw new MyWebException("产品保存失败：必须上传图片");
        }else if(product.getPrice()==null){
            throw new MyWebException("产品保存失败：必须输入当前价格");
        }else if(product.getOriginalPrice()==null){
            throw new MyWebException("产品保存失败：必须输入原价");
        }else if(product.getRepository()==null){
            throw new MyWebException("产品保存失败：必须输入库存");
        }else if(product.getClick()==null){
            throw new MyWebException("产品保存失败：必须输入人气");
        }else if(product.getOnSale()==null){
            throw new MyWebException("产品保存失败：必须选择是否上架");
        }else if(StringUtils.isEmpty(product.getContent())){
            throw new MyWebException("产品保存失败：产品介绍不能为空");
        }else{
            product.setCreator(admin);
            product.setCreateTime(Calendar.getInstance().getTime());
            //保存数据
            productDao.save(product);
        }
    }

    @Override
    public void deleteProducts(Integer[] ids){
        //如果商品有订单不允许删除
        productDao.deletes(ids);
    }



    @Override
    public Product getProduct(Integer id) {
        return productDao.get(id);
    }

    @Override
    public void updateProduct(Product product,Admin admin){
        //前面必须经过spring验证框架的验证
        if(product.getProductType()!=null){//如果有栏目信息（如前端有相应表单）过来，则必须进行验证；
            if(product.getProductType().getId()==null){
                throw new MyWebException("产品保存失败：必须选择产品所属栏目");
            }
        }
        //如果都验证通过
        product.setFinalEditor(admin);
        product.setUpdateTime(Calendar.getInstance().getTime());
        productDao.update(product);
    }

    @Override
    public void updateProductToTransferProductTypeBySelect(Integer[] productIds, Integer productTypeId) {
        Set<Integer> productIdSet=new HashSet<Integer>();
        if(productTypeId==null){
            throw new MyWebException("操作错误：请选择要转移的产品栏目");
        }
        ProductType productType=productTypeDao.get(productTypeId);
        if(productType!=null){
            //进行栏目转移
            productDao.updateProductToTransferProductTypeBySelect(productIds,productTypeId);
        }else{//如果栏目不存在
            throw new MyWebException("操作错误：栏目（"+productType.getName()+"不存在");
        }
    }
}
