package com.lcvc.ebuy_springboot.model.query;

import com.lcvc.ebuy_springboot.model.LogOfProductClick;

import java.time.LocalDateTime;

public class LogOfProductClickQuery extends LogOfProductClick {
    private LocalDateTime clickTimeQueryOfCurrentDay;//查询指定日期的点击记录
    private LocalDateTime clickTimeQueryOfBegin;//点击时间——开始日期
    private LocalDateTime clickTimeQueryOfEnd;//点击时间——结束日期

    public LocalDateTime getClickTimeQueryOfCurrentDay() {
        return clickTimeQueryOfCurrentDay;
    }

    public void setClickTimeQueryOfCurrentDay(LocalDateTime clickTimeQueryOfCurrentDay) {
        this.clickTimeQueryOfCurrentDay = clickTimeQueryOfCurrentDay;
    }

    public LocalDateTime getClickTimeQueryOfBegin() {
        return clickTimeQueryOfBegin;
    }

    public void setClickTimeQueryOfBegin(LocalDateTime clickTimeQueryOfBegin) {
        this.clickTimeQueryOfBegin = clickTimeQueryOfBegin;
    }

    public LocalDateTime getClickTimeQueryOfEnd() {
        return clickTimeQueryOfEnd;
    }

    public void setClickTimeQueryOfEnd(LocalDateTime clickTimeQueryOfEnd) {
        this.clickTimeQueryOfEnd = clickTimeQueryOfEnd;
    }
}
