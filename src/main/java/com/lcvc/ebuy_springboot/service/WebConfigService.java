package com.lcvc.ebuy_springboot.service;

import com.lcvc.ebuy_springboot.model.WebConfig;

import javax.validation.Valid;
import javax.validation.constraints.NotNull;

/**
 * 网站配置的数据层
 */
public interface WebConfigService {
    /**
     *读取网站的配置信息
     * @return null表示读取失败
     */
    WebConfig get();

    /**
     * 编辑网站配置
     * @param webConfig
     */
    void update(@Valid @NotNull WebConfig webConfig);

}
