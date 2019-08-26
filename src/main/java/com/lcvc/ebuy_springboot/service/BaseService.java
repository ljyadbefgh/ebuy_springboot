package com.lcvc.ebuy_springboot.service;

import com.lcvc.ebuy_springboot.model.exception.MyWebException;

public interface BaseService<T> {

    /**
     * 根据id读取对象
     * @param id
     * @return
     */
    T get(java.io.Serializable id) throws MyWebException;

    /**
     * 添加对象
     * 说明：
     * @param t 部分字段必须有值，详见文档
     * @throws MyWebException
     */
    void save(T t) throws MyWebException;

    /**
     * 编辑对象信息
     * 说明：
     * @param t 部分字段必须有值，详见文档
     * @throws MyWebException
     */
    void update(T t) throws MyWebException;

    /**
     * 批量删除指定对象
     * @param ids 多个对象的主键集合
     * @throws MyWebException
     */
    void delete(java.io.Serializable[] ids) throws MyWebException;

}
