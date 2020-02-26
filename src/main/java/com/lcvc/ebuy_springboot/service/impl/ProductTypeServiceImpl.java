package com.lcvc.ebuy_springboot.service.impl;

import com.lcvc.ebuy_springboot.dao.ProductDao;
import com.lcvc.ebuy_springboot.dao.ProductTypeDao;
import com.lcvc.ebuy_springboot.model.ProductType;
import com.lcvc.ebuy_springboot.model.base.Constant;
import com.lcvc.ebuy_springboot.model.base.PageObject;
import com.lcvc.ebuy_springboot.model.exception.MyServiceException;
import com.lcvc.ebuy_springboot.model.exception.MyWebException;
import com.lcvc.ebuy_springboot.model.query.ProductQuery;
import com.lcvc.ebuy_springboot.model.query.ProductTypeQuery;
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
@Validated//表示开启sprint的校检框架，会自动扫描方法里的@Valid（@Valid注解一般写在接口即可）
public class ProductTypeServiceImpl implements ProductTypeService {

    @Resource
    private ProductTypeDao productTypeDao;
    @Resource
    private ProductDao productDao;

    @Override
    public  List<ProductType> getProductTypes(String basePath) {
        List<ProductType> productTypes=productTypeDao.readAll(null);
        for(ProductType productType:productTypes){
            //将头像网址进行处理，变为完整的地址
            if(!StringUtils.isEmpty(productType.getImageUrl())){//只要有图片则加上绝对地址
                productType.setImageUrl(basePath+ Constant.PRODUCTTYPE_PICTURE_URL+productType.getImageUrl());
            }
        }
        return productTypes;
    }

    public PageObject searchProductTypes(Integer page, Integer limit, ProductTypeQuery productTypeQuery, String basePath){
        PageObject pageObject = new PageObject(limit,page,productTypeDao.querySize(productTypeQuery));
        pageObject.setList(productTypeDao.query(pageObject.getOffset(),pageObject.getLimit(),productTypeQuery));
        ProductQuery productQuery=null;//预设产品查询条件
        for(ProductType productType:(List<ProductType>)pageObject.getList()){
            //将头像网址进行处理，变为完整的地址
            if(!StringUtils.isEmpty(productType.getImageUrl())){//只要有图片则加上绝对地址
                productType.setImageUrl(basePath+ Constant.PRODUCTTYPE_PICTURE_URL+productType.getImageUrl());
            }
            //获取栏目下的产品数量
            productQuery=new ProductQuery();
            productQuery.setProductType(productType);
            int number=productDao.querySize(productQuery);
            productType.setProductNumber(number);
        }
        return pageObject;
    }

    public void deleteProductTypes(Integer[] ids, String basePath) throws MyWebException, MyServiceException {
        for(Integer id:ids){
            //删除账户对应的图片
            ProductType productType=productTypeDao.get(id);//读取相应的记录
            if(productType!=null){
                //获取栏目下产品数量
                ProductQuery productQuery=new ProductQuery();
                productQuery.setProductType(productType);
                int number=productDao.querySize(productQuery);
                if(number>0){
                    throw new MyServiceException("栏目批量删除失败：栏目（name)下有number个产品"
                            .replace("name",productType.getName())
                            .replace("number",String.valueOf(number)));
                }
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
            productType.setId(null);//清空产品分类的id值，防止前端赋值
            productTypeDao.save(productType);
        }
    }

    public ProductType getProductType(Integer id,String basePath){
        ProductType productType=null;
        if(id!=null){
            productType=productTypeDao.get(id);
            if(productType!=null){
                //将头像网址进行处理，变为完整的地址
                if(!StringUtils.isEmpty(productType.getImageUrl())){//只要有图片则加上绝对地址
                    productType.setImageUrl(basePath+ Constant.PRODUCTTYPE_PICTURE_URL+productType.getImageUrl());
                }
            }
        }
        return productType;
    }

    public void updateProductType(ProductType productType) throws MyWebException {
        if(productType!=null){
            if(!StringUtils.isEmpty(productType.getImageUrl())){//如果图片地址不为空
                if(productType.getImageUrl().contains("http")){ // 因为图片地址是加工后（加绝对地址）传过去的，所以要注意前端未处理传回来
                    productType.setImageUrl(null);//清空该地址，表示不更新
                }
            }
            productTypeDao.update(productType);
        }else{
            throw new MyWebException("产品类别编辑失败:表单异常");
        }
    }
}
