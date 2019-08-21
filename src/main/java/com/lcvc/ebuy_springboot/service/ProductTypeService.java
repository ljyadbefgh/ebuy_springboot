package com.lcvc.ebuy_springboot.service;

import com.lcvc.ebuy_springboot.model.ProductType;
import com.lcvc.ebuy_springboot.model.exception.MyFormException;
import org.springframework.stereotype.Service;

import javax.validation.Valid;
import java.util.List;

@Service
public interface ProductTypeService {

    /**
     * 获取所有产品分类列表
     *@param basePath 项目根目录网址，用于配合LOGO地址生成完整网址后传给前端
     * @return
     */
    List<ProductType> getProductTypes(String basePath);

    /**
     * 删除指定的产品分类
     * @param id 产品分类的主键
     * @return true表示删除成功，false表示删除失败
     */
    boolean deleteProductType(Integer id);

    /**
     * 保存产品分类
     *
     * @param productType
     * @return true表示保存成功
     */
    boolean saveProductType(ProductType productType);

    /**
     * 根据id获取产品分类对象
     *
     * @param id
     * @return null表示没有找到
     */
    ProductType getProductType(Integer id);

    /**
     * 执行指定产品分类的编辑
     *
     * @param productType
     */
    void updateProductType(@Valid ProductType productType) throws MyFormException;
}
