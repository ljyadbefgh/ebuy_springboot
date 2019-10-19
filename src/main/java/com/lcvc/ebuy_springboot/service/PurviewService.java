package com.lcvc.ebuy_springboot.service;


import com.lcvc.ebuy_springboot.model.Purview;
import com.lcvc.ebuy_springboot.model.base.PageObject;
import com.lcvc.ebuy_springboot.model.exception.MyWebException;
import com.lcvc.ebuy_springboot.model.query.PurviewQuery;

import javax.validation.Valid;
import javax.validation.constraints.NotNull;
import java.util.List;

public interface PurviewService {

    /**
     * 获取所有可用的权限
     * 说明：
     * 不包含未启用的权限
     * @return
     */
    List<Purview> getAllEnabledPurviews();

    /**
     * 分页查询权限
     * @param page 当前页面
     * @param limit  每页最多显示的记录数
     * @param purviewQuery 查询条件类
     * @return
     */
    PageObject searchPurviews(Integer page, Integer limit, PurviewQuery purviewQuery);


    /**
     * 添加信息
     * @param purview
     */
    void addPurview(@Valid @NotNull Purview purview);


    /**
     * 批量删除指定权限集合
     * 说明：
     * 1.如果权限已经有角色使用则不允许删除
     * @param ids 多个权限的主键集合
     */
    void deletePurviews(Integer[] ids);




    /**
     * 根据id读取对象
     * @param id
     * @return
     */
    Purview getPurview(Integer id);


    /**
     * 编辑信息
     * 说明：
     * @param purview
     */
    void updatePurview(@Valid @NotNull Purview purview) throws MyWebException;
}
