package com.lcvc.ebuy_springboot.model.query;

import com.lcvc.ebuy_springboot.model.ProductOrder;

import java.util.Date;

/**
 * 订单类
 */

public class ProductOrderQuery extends ProductOrder implements java.io.Serializable {
    private Date createTimeQueryOfBegin;//下单时间——开始日期
    private Date createTimeQueryOfEnd;//下单时间——结束日期
    private Date dealTimeQueryOfBegin;//交易时间——开始日期
    private Date dealTimeQueryOfEnd;//交易时间——结束日期
    private Date sendTimeQueryOfBegin;//发货时间——开始日期
    private Date sendTimeQueryOfEnd;//发货时间——结束日期
    private Date receiveTimeQueryOfBegin;//收货时间——开始日期
    private Date receiveTimeQueryOfEnd;//收货时间——结束日期

    private Date createTimeQueryOfCurrentDay;//查询指定日期的订单

    public Date getCreateTimeQueryOfCurrentDay() {
        return createTimeQueryOfCurrentDay;
    }

    public void setCreateTimeQueryOfCurrentDay(Date createTimeQueryOfCurrentDay) {
        this.createTimeQueryOfCurrentDay = createTimeQueryOfCurrentDay;
    }

    public Date getCreateTimeQueryOfBegin() {
        return createTimeQueryOfBegin;
    }

    public void setCreateTimeQueryOfBegin(Date createTimeQueryOfBegin) {
        this.createTimeQueryOfBegin = createTimeQueryOfBegin;
    }

    public Date getCreateTimeQueryOfEnd() {
        return createTimeQueryOfEnd;
    }

    public void setCreateTimeQueryOfEnd(Date createTimeQueryOfEnd) {
        this.createTimeQueryOfEnd = createTimeQueryOfEnd;
    }

    public Date getDealTimeQueryOfBegin() {
        return dealTimeQueryOfBegin;
    }

    public void setDealTimeQueryOfBegin(Date dealTimeQueryOfBegin) {
        this.dealTimeQueryOfBegin = dealTimeQueryOfBegin;
    }

    public Date getDealTimeQueryOfEnd() {
        return dealTimeQueryOfEnd;
    }

    public void setDealTimeQueryOfEnd(Date dealTimeQueryOfEnd) {
        this.dealTimeQueryOfEnd = dealTimeQueryOfEnd;
    }

    public Date getSendTimeQueryOfBegin() {
        return sendTimeQueryOfBegin;
    }

    public void setSendTimeQueryOfBegin(Date sendTimeQueryOfBegin) {
        this.sendTimeQueryOfBegin = sendTimeQueryOfBegin;
    }

    public Date getSendTimeQueryOfEnd() {
        return sendTimeQueryOfEnd;
    }

    public void setSendTimeQueryOfEnd(Date sendTimeQueryOfEnd) {
        this.sendTimeQueryOfEnd = sendTimeQueryOfEnd;
    }

    public Date getReceiveTimeQueryOfBegin() {
        return receiveTimeQueryOfBegin;
    }

    public void setReceiveTimeQueryOfBegin(Date receiveTimeQueryOfBegin) {
        this.receiveTimeQueryOfBegin = receiveTimeQueryOfBegin;
    }

    public Date getReceiveTimeQueryOfEnd() {
        return receiveTimeQueryOfEnd;
    }

    public void setReceiveTimeQueryOfEnd(Date receiveTimeQueryOfEnd) {
        this.receiveTimeQueryOfEnd = receiveTimeQueryOfEnd;
    }
}