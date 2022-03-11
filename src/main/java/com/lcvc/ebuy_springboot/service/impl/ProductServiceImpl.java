package com.lcvc.ebuy_springboot.service.impl;

import com.lcvc.ebuy_springboot.dao.LogOfProductClickDao;
import com.lcvc.ebuy_springboot.dao.ProductDao;
import com.lcvc.ebuy_springboot.dao.ProductOrderDetailDao;
import com.lcvc.ebuy_springboot.dao.ProductTypeDao;
import com.lcvc.ebuy_springboot.model.*;
import com.lcvc.ebuy_springboot.model.base.Constant;
import com.lcvc.ebuy_springboot.model.base.PageObject;
import com.lcvc.ebuy_springboot.model.exception.MyServiceException;
import com.lcvc.ebuy_springboot.model.exception.MyWebException;
import com.lcvc.ebuy_springboot.model.query.LogOfProductClickQuery;
import com.lcvc.ebuy_springboot.model.query.ProductOrderDetailQuery;
import com.lcvc.ebuy_springboot.model.query.ProductOrderQuery;
import com.lcvc.ebuy_springboot.model.query.ProductQuery;
import com.lcvc.ebuy_springboot.service.ProductService;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.annotation.Validated;

import javax.annotation.Resource;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.NotNull;
import java.math.BigDecimal;
import java.util.*;

@Transactional(propagation = Propagation.REQUIRED,isolation = Isolation.DEFAULT,timeout=36000,rollbackFor=Exception.class)
@Service
@Validated//表示开启sprint的校检框架，会自动扫描方法里的@Valid（@Valid注解一般写在接口即可）
public class ProductServiceImpl implements ProductService {

    @Resource
    private ProductDao productDao;
    @Resource
    private ProductTypeDao productTypeDao;
    @Autowired
    private ProductOrderDetailDao productOrderDetailDao;
    @Autowired
    private LogOfProductClickDao logOfProductClickDao;

    /**
     * 专门用于完善产品要统计的销售类数据
     * @param product 必须包含数据库的基本字段
     */
    private void getProductSaleParam(Product product){
        //格式化小数数据，让前端显示。但是12.00，还是可能在前端被格式化为12，所以前端也要进行处理
        product.setOriginalPrice(product.getOriginalPrice().setScale(2,BigDecimal.ROUND_DOWN));//直接去掉多余的位数
        product.setPrice(product.getPrice().setScale(2,BigDecimal.ROUND_DOWN));//直接去掉多余的位数
        //处理订单信息
        ProductOrderDetailQuery productOrderDetailQuery=new ProductOrderDetailQuery();
        productOrderDetailQuery.setProduct(product);
        ProductOrderQuery productOrderQuery=new ProductOrderQuery();
        productOrderQuery.setTagQueryOfEnable(true);//只统计有效订单
        productOrderDetailQuery.setProductOrderQuery(productOrderQuery);
        List<ProductOrderDetail> productOrderDetails=productOrderDetailDao.readAll(productOrderDetailQuery);//获取该产品对应的子订单集合
        product.setProductOrderDetailNumber(productOrderDetails.size());//获取商品的订单数量
        product.setSalesVolume(0);//设置初始销售量0
        product.setSale(new BigDecimal("0.00"));//设置初始销售额
        for(ProductOrderDetail productOrderDetail:productOrderDetails){//遍历子订单进行价格计算
            product.setSalesVolume(product.getSalesVolume()+productOrderDetail.getProductNumber());//计算总销量
            product.setSale(product.getSale().add(productOrderDetail.getPrice()));//计算总销售额
        }
    }

    @Override
    public PageObject searchProducts(Integer page, Integer limit, ProductQuery productQuery) {
        PageObject pageObject = new PageObject(limit,page,productDao.querySize(productQuery));
        pageObject.setList(productDao.query(pageObject.getOffset(),pageObject.getLimit(),productQuery));
        BigDecimal totalPrice=new BigDecimal("0.00");//默认总价
        for(Product product:(List<Product>)pageObject.getList()){
           this.getProductSaleParam(product);//获取销售方面的统计数据
        }
        return pageObject;
    }

    @Override
    public Integer total() {
        return productDao.total();
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
        }else if(product.getPreviewPictures()==null||product.getPreviewPictures().size()==0){
            throw new MyWebException("产品保存失败：必须上传预览图");
        }else if(product.getPreviewPictures().size()>Constant.MAX_PREVIEWPICTURE_UPLOAD_NUMBER){
            throw new MyWebException("产品保存失败：预览图数量不能超过"+Constant.MAX_PREVIEWPICTURE_UPLOAD_NUMBER+"个");
        }else if(product.getOrderNum()==null){
            throw new MyWebException("产品保存失败：必须输入优先级");
        }else if(product.getRecommendation()==null){
            throw new MyWebException("产品保存失败：必须输入推荐级别");
        }else if(product.getOriginalPrice()==null){
            throw new MyWebException("产品保存失败：必须输入原价");
        }else if(product.getOriginalPrice().compareTo(BigDecimal.ZERO)==0){
            throw new MyWebException("产品保存失败：原价不能为0");
        }else if(product.getPrice()==null){
            throw new MyWebException("产品保存失败：必须输入当前价格");
        }else if(product.getPrice().compareTo(BigDecimal.ZERO)==0){
            throw new MyWebException("产品保存失败：当前价格不能为0");
        }else if(product.getPrice().compareTo(product.getOriginalPrice())>0){//如果现价比原价搞
            throw new MyWebException("产品保存失败：现价不能高于原价");
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
            //保存产品对应的预览图
            productDao.savePeviewPictures(product.getPreviewPictures(),product.getId());
        }
    }

    @Override
    public void deleteProducts(Integer[] ids){
        List<LogOfProductClick> logOfProductClicks=new ArrayList<LogOfProductClick>();//存储要删除的产品日志
        for(Integer id:ids){
            //判断是否有订单
            ProductOrderDetailQuery productOrderDetailQuery=new ProductOrderDetailQuery();
            productOrderDetailQuery.setProduct(new Product(id));
            if(productOrderDetailDao.querySize(productOrderDetailQuery)>0) {
                throw new MyServiceException("删除失败：产品" + productDao.get(id).getName() + "已经有订单，无法删除");
            }
            //查询产品点击日志
            LogOfProductClickQuery logOfProductClickQuery=new LogOfProductClickQuery();
            logOfProductClickQuery.setProduct(new Product(id));
            logOfProductClicks.addAll(logOfProductClickDao.readAll(logOfProductClickQuery));
        }
        logOfProductClickDao.deleteObjects(logOfProductClicks);//删除所有相关的产品日志
        productDao.deletePeviewPicturesByProductId(ids);//移除产品的预览图
        //如果商品有订单不允许删除
        productDao.deletes(ids);
    }



    @Override
    public Product getProduct(Integer id) {
        Product product=productDao.get(id);
        if(product!=null){
            this.getProductSaleParam(product);//获取销售方面的统计数据
        }
        return product;

    }

    @Override
    public void updateProduct(Product product,Admin admin){
        //前面必须经过spring验证框架的验证
        if(product.getProductType()!=null&&product.getProductType().getId()==null){//如果有栏目信息（如前端有相应表单）过来，则必须进行验证；
            throw new MyWebException("产品保存失败：必须选择产品所属栏目");
        }else if(product.getPicUrl()!=null&&product.getPicUrl().equals("")){
            throw new MyWebException("产品保存失败：必须上传图片");
        }else if(product.getPreviewPictures()!=null&&product.getPreviewPictures().size()==0){
            throw new MyWebException("产品保存失败：必须上传预览图");
        }else if(product.getPreviewPictures().size()>Constant.MAX_PREVIEWPICTURE_UPLOAD_NUMBER){
            throw new MyWebException("产品保存失败：预览图数量不能超过"+Constant.MAX_PREVIEWPICTURE_UPLOAD_NUMBER+"个");
        }else if(product.getOriginalPrice()!=null&&product.getOriginalPrice().compareTo(BigDecimal.ZERO)==0){
            throw new MyWebException("产品保存失败：原价不能为0");
        }else if(product.getPrice()!=null&&product.getPrice().compareTo(BigDecimal.ZERO)==0){
            throw new MyWebException("产品保存失败：当前价格不能为0");
        }else if(product.getOriginalPrice()!=null&&product.getPrice()!=null&&product.getPrice().compareTo(product.getOriginalPrice())>0){//如果现价比原价搞
            throw new MyWebException("产品保存失败：现价不能高于原价");
        }
        //如果都验证通过
        product.setFinalEditor(admin);
        product.setUpdateTime(Calendar.getInstance().getTime());
        productDao.update(product);
        if(product.getPreviewPictures()!=null){//如果预览图集合不为0，说明要对预览图进行处理
            List<String> previewPicturesOfSave=new ArrayList<String>();//定义最保存到数据库的预览图（原数据库有的这里不再保存）
            List<String> previewPicturesOfDelete=new ArrayList<String>();//定义要从数据库的删除的预览图（原数据库有的，本次没有选择则删除）
            List<String> previewPictures=productDao.getPreviewPicturePicUrlsOfProduct(product.getId());//获取产品数据库中原有的预览图集合
            for(String picUrl:product.getPreviewPictures()){//遍历本次要插入的预览图
                if(!previewPictures.contains(picUrl)){//如果原数据库中有该图片
                    previewPicturesOfSave.add(picUrl);//添加图片到数据库中
                }
            }
            for(String picUrl:previewPictures){//遍历原有的预览图
                if(!product.getPreviewPictures().contains(picUrl)){//如果原数据库图片在本次插入的图片集合中不存在
                    previewPicturesOfDelete.add(picUrl);//则将该图片移除
                }
            }
            productDao.deletePeviewPictures(previewPicturesOfDelete,product.getId());//移除原有的图片（本次插入没有）
            productDao.savePeviewPictures(previewPicturesOfSave,product.getId());//保存新插入的图片
        }
    }

    @Override
    public void updateForClickProduct(@NotNull Integer productId) throws MyWebException {
        productDao.updateForClickProduct(productId);
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

    @Override
    public void updateProductRepositoryByIncreasement(Integer minNumber, Integer maxNumber) {
        productDao.updateProductRepositoryByIncreasement(minNumber,maxNumber);//为所有产品随机增加相应的数量
    }

    @Override
    public void saveProductCollect(Integer customerId, Integer productId) {
        if(productDao.findProdcutCollectByCustomerIdAndProductId(customerId,productId)==0){
            Product product=productDao.getSimple(productId);
            if(product==null){
                throw new MyServiceException("操作失败：该商品不存在");
            }else if(!product.getOnSale()){
                throw new MyServiceException("操作失败：该商品已下架，无法收藏");
            }else{
                productDao.saveProductCollectByCustomerIdAndProductId(customerId,productId);
            }
        }
    }

    @Override
    public void removeProductCollect(Integer customerId, Integer productId) {
        productDao.deleteProductCollectByCustomerIdAndProductId(customerId,productId);
    }

    @Override
    public boolean existsProductCollect(Integer customerId, Integer productId) {
        if(productDao.findProdcutCollectByCustomerIdAndProductId(customerId,productId)>0){
            return true;
        }
        return false;
    }

    @Override
    public List<Product> getProductCollectByCustomer(Integer customerId) {
        return productDao.findProdcutCollectsByCustomerId(customerId);
    }

    @Override
    public void removeProductCollectByCustomerAndProductIds(Integer customerId, Integer[] productIds) {
        productDao.deleteProductCollectByCustomerIdAndProductIds(customerId,productIds);
    }
}
