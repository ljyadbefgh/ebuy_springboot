package com.lcvc.ebuy_springboot.service;

import javax.validation.constraints.NotNull;

/**
 * 专门用于自动化调度任务
 * 该任务建立在所有业务层之上
 * 说明：该业务类可以调用其他其业务类的方法，但是不能让其他业务类调用本类的方法
 *
 */
public interface AutomationService {
    /**
     * 每隔一段时间，自动执行购买一次
     * 说明：
     * 1.随机客户
     * 2.随机购买次数（买几次商品）
     * 3.随机产品
     * 4.随机购买产品数量
     * 5.随机支付方式
     * @param number 下订单的次数
     * @param millisecond 单位：毫秒。表示间隔多少毫秒下一次单
     */
    void autoBuy(@NotNull Integer number,@NotNull Long millisecond);
}
