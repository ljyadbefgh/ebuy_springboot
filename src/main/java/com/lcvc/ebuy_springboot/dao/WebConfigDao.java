package com.lcvc.ebuy_springboot.dao;

import com.lcvc.ebuy_springboot.model.WebConfig;
import org.springframework.stereotype.Repository;

/**
 * 网站配置的数据层
 */
@Repository//为了不让idea报错加上
public interface WebConfigDao{
    /**
     *读取指定的配置信息
     * @return null表示读取失败
     */
    WebConfig get();

    /**
     * 编辑指定记录
     * @param webConfig 主键不能为空
     * @return 1表示成功，0表示失败，>1表示数据库存在异常
     */
    int update(WebConfig webConfig);


}
