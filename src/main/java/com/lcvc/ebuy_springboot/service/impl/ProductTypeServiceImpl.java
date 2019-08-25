package com.lcvc.ebuy_springboot.service.impl;

import com.lcvc.ebuy_springboot.dao.ProductTypeDao;
import com.lcvc.ebuy_springboot.model.ProductType;
import com.lcvc.ebuy_springboot.model.base.Constant;
import com.lcvc.ebuy_springboot.model.exception.MyFormException;
import com.lcvc.ebuy_springboot.model.exception.MyServiceException;
import com.lcvc.ebuy_springboot.service.ProductTypeService;
import com.lcvc.ebuy_springboot.util.file.MyFileOperator;
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

    public void deleteProductTypes(Integer[] ids, String basePath) throws MyFormException, MyServiceException {
        for(Integer id:ids){
            //删除账户对应的图片
            ProductType productType=productTypeDao.get(id);//读取相应的记录
            if(productType!=null){
                String imageUrl=productType.getImageUrl();//获取图片地址
                if(!StringUtils.isEmpty(imageUrl)){//如果图片地址存在
                    MyFileOperator.deleteFile(basePath+ Constant.PRODUCTTYPE_PICTURE_UPLOAD_URL+imageUrl);//删除图片
                }
            }
        }
        productTypeDao.deletes(ids);
    }

    public void saveProductType(ProductType productType){
        if(productType!=null){
            productTypeDao.save(productType);
        }
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
            productTypeDao.update(productType);
        }else{
            throw new MyFormException("产品类别编辑失败:表单异常");
        }
    }
}
