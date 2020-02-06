package com.lcvc.ebuy_springboot.service;

import com.lcvc.ebuy_springboot.model.Admin;
import com.lcvc.ebuy_springboot.model.Customer;
import com.lcvc.ebuy_springboot.model.ProductOrder;
import com.lcvc.ebuy_springboot.model.ShoppingCart;
import com.lcvc.ebuy_springboot.model.base.PageObject;
import com.lcvc.ebuy_springboot.model.query.ProductOrderQuery;

import javax.validation.Valid;
import javax.validation.constraints.NotNull;

public interface ProductOrderService {

    /**
     * 获取订单的总记录数
     * @return
     */
    Integer total();
    /**
     * 分页查询产品订单
     * @param page 当前页面
     * @param limit  每页最多显示的记录数
     * @param productOrderQuery 查询条件类
     * @return
     */
    PageObject search(Integer page, Integer limit, ProductOrderQuery productOrderQuery);



    /**
     * 根据OrderNo读取对象
     * @param orderNo
     * @return
     */
    ProductOrder get(@NotNull String orderNo);

    /**
     * 保存订单
     * 说明：
     * 1.如果是网上支付，订单状态为待支付
     * 2.如果是货到付款，订单状态为待发货
     * @param shoppingCart 购物车类
     * @param productOrder
     * @param customer 操作的客户
     */
    void save(@NotNull ShoppingCart shoppingCart,@Valid @NotNull ProductOrder productOrder, @NotNull Customer customer);

    /**
     * 编辑订单，用于管理员操作.
     * 说明：
     * 1.如果是网上支付状态，则必须是未付款状态才可以修改
     * 2.如果是货到付款，必须是发货以前才能修改
     * 3.只能修改成交价，收获信息等（不包括已付款的订单）。订单状态不能在这里修改
     * @param productOrder
     */
    void update(@Valid @NotNull ProductOrder productOrder,@NotNull Admin admin);


    /**
     * 编辑订单，用于客户操作
     * 说明：
     * 1.如果是网上支付状态，则必须是未付款状态才可以修改
     * 2.如果是货到付款，必须是发货以前才能修改
     * 3.只能收获信息等,不能修改成交价，也不能修改其他信息
     * @param productOrder
     */
    void update(@Valid @NotNull ProductOrder productOrder,@NotNull Customer customer);


    /**
     * 将订单付款方式修改为已付款。适用于网上支付
     * 说明：
     * 1.订单只有处于待付款状态才能更改为付款状态，由客户操作
     * 2.必须是网上支付的订单才允许修改
     * 3.付款后：付款状态变为已付款；订单状态变为待发货
     * @param OrderNo 订单编号，不能为空
     * @param customer 操作的客户
     */
    void updatePaymentStatusForPay(@Valid @NotNull String OrderNo,@NotNull Customer customer);

    /**
     * 将订单付款方式修改为已付款。适用于货到付款。本方法模拟商家收到钱后进行操作
     * 说明：
     * 1.订单只有处于待付款状态才能更改为付款状态，由商家操作
     * 2.必须是货到付款的订单才允许修改
     * 3.付款后：付款状态变为已付款。
     * 4.如果成交款设置为0，则在数据库将成交款设置为NULL
     * @param OrderNo 订单编号，不能为空
     * @param admin 操作的管理员
     */
    void updatePaymentStatusForPay(@Valid @NotNull String OrderNo,@NotNull Admin admin);


    /**
     * 将订单状态修改为已发货状态
     * 说明：
     * 1.订单只有处于待发货状态才能更改为付款状态，由管理员操作
     * @param OrderNo 订单编号，不能为空
     * @param admin 操作的管理员
     */
    void updateTagForMerchantShipped(@Valid @NotNull String OrderNo,@NotNull Admin admin);

    /**
     * 将订单状态修改为已收货
     * 说明：
     * 1.订单只有处于已发货状态才能更改为已收货，由客户操作
     * @param OrderNo 订单编号，不能为空
     * @param customer 操作的客户
     */
    void updateTagForReception(@Valid @NotNull String OrderNo,@NotNull Customer customer);

    /**
     * 将订单状态修改为已完成——建议操作由系统根据设定自动调度，如收货7天后自动改为已完成
     * 说明：
     * 1.订单只有处于已收货状态并且已付款才能更改为完成，建议由系统自动操作
     * @param OrderNo 订单编号，不能为空
     */
    void updateTagForComplete(@Valid @NotNull String OrderNo);


    /**
     * 更改订单状态,由管理员直接强行操作，该方法在订单出现异常时使用
     * 说明：
     * 1.订单只有处于待付款状态才能更改为付款状态，非特殊状态下建议由客户操作
     * 2.订单只有付款后才能更改为发货状态，非特殊状态下建议由商家操作
     * 3.订单只有发货后才能更改为已收货状态，非特殊状态下建议由客户操作
     * 4.订单只有
     * @param OrderNo 订单编号，不能为空
     * @param tag 订单状态
     */
    /*void updateProductOrderTag(@Valid @NotNull String OrderNo,@Valid @NotNull Integer tag);*/
}
