package com.lcvc.ebuy_springboot.service.impl;

import com.lcvc.ebuy_springboot.dao.ProductTypeDao;
import com.lcvc.ebuy_springboot.model.ProductType;
import com.lcvc.ebuy_springboot.model.base.Constant;
import com.lcvc.ebuy_springboot.model.exception.MyFormException;
import com.lcvc.ebuy_springboot.service.ProductTypeService;
import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.annotation.Validated;

import javax.annotation.Resource;
import java.util.List;

@Transactional(propagation = Propagation.REQUIRED,isolation = Isolation.DEFAULT,timeout=36000,rollbackFor=Exception.class)
@Service
@Validated//表示开启sprint的校检框架，会自动扫描方法里的@Valid（该注解一般写在接口即可）
public class ProductTypeServiceImpl implements ProductTypeService {

    @Resource
    private ProductTypeDao productTypeDao;

    public List<ProductType> getProductTypes(String basePath){
        List<ProductType> productTypeList=productTypeDao.readAll();
        for(ProductType productType:productTypeList){
            //将头像网址进行处理，变为完整的地址
            if(!StringUtils.isEmpty(productType.getImageUrl())){//只要有图片则加上绝对地址
                productType.setImageUrl(basePath+ Constant.PRODUCTTYPE_PICTURE_URL+productType.getImageUrl());
            }
            //获取栏目下的产品数量
            productType.setProductNumber(0);
        }
        return productTypeList;
    }

    public boolean deleteProductType(Integer id){
        boolean judge=false;
        if(id!=null){
            if(productTypeDao.delete(id)>0){
                judge=true;
            }
        }
        return judge;
    }

    public boolean saveProductType(ProductType productType){
        boolean judge=false;
        if(productType!=null){
            if(productTypeDao.save(productType)>0){
                judge=true;
            }
        }
        return judge;
    }

    public ProductType getProductType(Integer id){
        ProductType productType=null;
        if(id!=null){
            productType=productTypeDao.get(id);
        }
        return productType;
    }

    public void updateProductType(ProductType productType) throws MyFormException {
        if(productType!=null){
            if(productType.getName()!=null){
                if(productType.getName().length()==0) {
                    throw new MyFormException("产品类别编辑失败:产品分类名称不能为空");
                }
            }
            productTypeDao.update(productType);
        }else{
            throw new MyFormException("产品类别编辑失败:表单异常");
        }

    }
}
