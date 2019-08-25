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
     * 批量删除指定的产品分类
     * 说明：
     * 1.如果产品栏目下有图片，将一并删除
     * 2.如果产品栏目下有产品，将不允许删除
     * @param ids 产品分类的主键
     * @param basePath 项目根目录网址，用于配合LOGO地址生成完整网址后传给前端
     * @return true表示删除成功，false表示删除失败
     */
    void deleteProductTypes(Integer[] ids, String basePath);

    /**
     * 保存产品分类
     * @param productType
     */
    void saveProductType(@Valid ProductType productType) throws MyFormException;

    /**
     * 根据id获取产品分类对象
     *
     * @param id
     * @return null表示没有找到
     */
    ProductType getProductType(Integer id);

    /**
     * 执行指定产品分类的编辑     *
     * @param productType
     */
    void updateProductType(@Valid ProductType productType) throws MyFormException;
}
