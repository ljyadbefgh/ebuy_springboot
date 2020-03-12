package com.lcvc.ebuy_springboot.service;

import com.lcvc.ebuy_springboot.model.Admin;
import com.lcvc.ebuy_springboot.model.Customer;
import com.lcvc.ebuy_springboot.model.ProductOrder;
import com.lcvc.ebuy_springboot.model.ShoppingCart;
import com.lcvc.ebuy_springboot.model.base.PageObject;
import com.lcvc.ebuy_springboot.model.query.ProductOrderQuery;

import javax.validation.Valid;
import javax.validation.constraints.NotNull;
import java.util.List;

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
     * 查询产品订单
     * @param productOrderQuery 查询条件类
     * @return
     */
    List<ProductOrder> search(ProductOrderQuery productOrderQuery);



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
     * 3.成功保存订单后，将清空购物车信息
     * @param shoppingCart 购物车类
     * @param productOrder
     * @param customer 操作的客户
     * @return 返回订单号。如果是null则表示保存失败
     */
    String save(@NotNull ShoppingCart shoppingCart,@Valid @NotNull ProductOrder productOrder, @NotNull Customer customer);

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
     *  4.必须购买者本人才能修改
     * @param productOrder
     */
    void update(@Valid @NotNull ProductOrder productOrder,@NotNull Customer customer);


    /**
     * 将订单付款方式修改为已付款。适用于网上支付
     * 说明：
     * 1.订单只有处于待付款状态才能更改为付款状态，由客户操作
     * 2.必须是网上支付的订单才允许修改
     * 3.付款后：付款状态变为已付款；订单状态变为待发货
     * 4.必须购买者本人才能修改
     * @param OrderNo 订单编号，不能为空
     * @param customer 操作的客户
     */
    void updatePaymentStatusForPay(@Valid @NotNull String OrderNo,@NotNull Customer customer);

    /**
     * 20200225废弃该方法，因为货到付款的必须要交钱后才能从快递员处收货，故废弃。
     * 将订单付款方式修改为已付款。适用于货到付款。本方法模拟商家收到钱后进行操作
     * 说明：
     * 1.订单只有处于待付款状态才能更改为付款状态，由商家操作
     * 2.必须是货到付款的订单才允许修改
     * 3.付款后：付款状态变为已付款。
     * 4.如果成交款设置为0，则在数据库将成交款设置为NULL
     * @param OrderNo 订单编号，不能为空
     * @param admin 操作的管理员
     */
    //void updatePaymentStatusForPay(@Valid @NotNull String OrderNo,@NotNull Admin admin);


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
     * 2.必须购买者本人才能修改
     * 3.当收货后，货到付款的支付方式也变为已支付
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
     * 将订单状态修改为作废/无效——建议操作由系统根据设定自动调度，如系统未付款订单超过时长，长时间没有收货等
     * 说明：
     * 1.网上支付的订单，未付款超过规定时间，可以作废
     * 2.货到付款的订单，长时间没有收获的
     * 3.订单作废后，购买的所有商品库存会得到还原（即该订单购买的商品将全部回到库存中）
     * @param OrderNo 订单编号，不能为空
     */
    void updateTagForVoided(@Valid @NotNull String OrderNo);

    /**
     * 申请取消订单（客户）
     * 说明：
     * 1.如果是网上支付的订单且未付款，客户可以直接取消
     * 2.如果是网上支付的订单且已经付款，变为申请取消状态
     * 3.如果是货到付款订单，变为申请取消状态
     * @param OrderNo
     * @param customer 操作的客户
     */
    void updateTagForCancel(@NotNull String OrderNo, @NotNull Customer customer);

    /**
     * 申请取消订单（管理员）
     * 说明：
     * 1.如果是网上支付的订单且未付款，客户可以直接取消
     * 2.如果是网上支付的订单且已经付款，变为申请取消状态
     * 3.如果是货到付款订单，变为申请取消状态
     * @param OrderNo
     * @param admin 操作的管理员
     */
    void updateTagForCancel(@NotNull String OrderNo,@NotNull Admin admin);

    /**
     * 拒绝客户申请取消的订单
     * 说明：
     * 1.按照订单当前的状态（物流和恢复）恢复原来的tag
     * @param OrderNo
     * @param admin 操作的管理员
     */
    void updateTagForRejectCancel(@NotNull String OrderNo,@NotNull Admin admin);

    //----------------------------------退货业务（下面）--------------------------------------------------//

    /**
     * 申请退货（客户）
     * 说明：
     * 1.只有已经收到货物，才能够申请退货
     * @param OrderNo
     * @param customer 操作的客户
     */
    void updateTagForApplyReturn(@NotNull String OrderNo, @NotNull Customer customer);

    /**
     * 同意退货（管理员）
     * 说明：
     * 1.只有申请退货后，才能执行同意退货
     * 2.同意退货之后，订单将进入退货中
     * @param OrderNo
     *@param admin 操作的管理员
     */
    void updateTagForAgreeReturn(@NotNull String OrderNo,@NotNull Admin admin);

    /**
     * 确认退货（管理员）
     * 说明：
     * 1.只有处于退货中的商品，管理员在收到退货后，才能确认退货
     * 2.退货之后，将同时退款
     * @param OrderNo
     *@param admin 操作的管理员
     */
    void updateTagForConfirmReturn(@NotNull String OrderNo,@NotNull Admin admin);

    /**
     * 拒绝退货（管理员）
     * 说明：
     * 1.申请退货的时候，如果拒绝退货，将变为拒绝退货状态
     * 2.处于退货中的商品，如果管理员收到货物后，拒绝退货，将变为拒绝退货状态
     * @param OrderNo
     *@param admin 操作的管理员
     */
    void updateTagForRejectReturn(@NotNull String OrderNo,@NotNull Admin admin);


    //----------------------------------退货业务（上面）--------------------------------------------------//

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
