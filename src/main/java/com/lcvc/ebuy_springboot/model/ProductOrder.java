package com.lcvc.ebuy_springboot.model;

import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.Range;

import javax.validation.constraints.Digits;
import javax.validation.constraints.Pattern;
import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Objects;


/**
 * 订单类
 */

public class ProductOrder implements java.io.Serializable {
	private String orderNo;//订单编号（由业务层生成），主键
	private Customer customer;//客户类
	@Length(min = 1, max = 10, message = "姓名长度必须在 {min} - {max} 之间")
	private String sendName;//收货人姓名
	@Length(min = 1, max = 100, message = "地址长度必须在 {min} - {max} 之间")
	private String sendAddress;//收货人地址
	@Pattern(regexp = "\\d{6}",message = "客户邮编格式错误")//限制必须符合指定的正则表达式，注意是0也可以
	private String sendZip;//收货人邮编
	@Pattern(regexp = "^$|^1(3|4|5|7|8)\\d{9}$",message = "手机号码格式错误")//正则表达式设定：可以为空，如果不为空则必须符合手机格式要求。^$表示空字符串，|表示或者
	private String sendTel;//收货人电话
	private Integer paymentStatus;//付款状态（0、未付款；1、已付款；2.已退款）
	private Integer paymentType;//付款方式（1、网上支付；2、货到付款）
	@Digits(integer=11, fraction=2,message = "订单金额的小数位数不能超过{fraction}位")
	@Range(min=0,message="订单金额不能为负数")
	//strikePrice：如果是0则将成交价设置为NULL，如果是大于0则设置为相关价格，如果是NULL则不作修改
	private BigDecimal strikePrice;//成交价，应付款，实际要付款的金额。该字段的设定是两个考虑：一是记录付款金额，二是到商家直接在后台通过修改未付款订单的价格，也就是优惠后的价格。
	private String meno;//订单备注
	private java.util.Date createTime;//订单创建时间
	private java.util.Date dealTime;//付款时间
	private java.util.Date sendTime;//发货时间
	private java.util.Date receiveTime;//收货时间
	private Integer tag;//订单处理状态（-9异常，-4已退货，-3 申请退货，-2已取消，-1申请取消，0待付款、1.待发货，2已发货，3已收货、4已完成）,只有待付款的情况下可以更改订单信息（不包括修改tag）
	
	//非数据库字段
	private List<ProductOrderDetail> productOrderDetails = new ArrayList<ProductOrderDetail>();
	private BigDecimal totalPrice=new BigDecimal("0.00");//该订单的总交易额，作为原价总和。从扩展性说，总价可以放入数据库，本项目暂时不放
	//private Integer totalNumberOfOrder;//该订单的订单数量

	public ProductOrder() {
	}

	public ProductOrder(String orderNo) {
		this.orderNo = orderNo;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public String getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(String orderNo) {
		this.orderNo = orderNo;
	}

	public String getSendName() {
		return sendName;
	}

	public void setSendName(String sendName) {
		this.sendName = sendName;
	}

	public String getSendAddress() {
		return sendAddress;
	}

	public void setSendAddress(String sendAddress) {
		this.sendAddress = sendAddress;
	}

	public String getSendZip() {
		return sendZip;
	}

	public void setSendZip(String sendZip) {
		this.sendZip = sendZip;
	}

	public String getSendTel() {
		return sendTel;
	}

	public void setSendTel(String sendTel) {
		this.sendTel = sendTel;
	}

	public Integer getPaymentStatus() {
		return paymentStatus;
	}

	public void setPaymentStatus(Integer paymentStatus) {
		this.paymentStatus = paymentStatus;
	}

	public Integer getPaymentType() {
		return paymentType;
	}

	public void setPaymentType(Integer paymentType) {
		this.paymentType = paymentType;
	}

	public String getMeno() {
		return meno;
	}

	public void setMeno(String meno) {
		this.meno = meno;
	}

	public java.util.Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(java.util.Date createTime) {
		this.createTime = createTime;
	}

	public java.util.Date getDealTime() {
		return dealTime;
	}

	public void setDealTime(java.util.Date dealTime) {
		this.dealTime = dealTime;
	}

	public Integer getTag() {
		return tag;
	}

	public void setTag(Integer tag) {
		this.tag = tag;
	}

	public List<ProductOrderDetail> getProductOrderDetails() {
		return productOrderDetails;
	}

	public void setProductOrderDetails(List<ProductOrderDetail> productOrderDetails) {
		this.productOrderDetails = productOrderDetails;
	}

	public BigDecimal getTotalPrice() {
		return totalPrice;
	}

	public void setTotalPrice(BigDecimal totalPrice) {
		this.totalPrice = totalPrice;
	}

	public BigDecimal getStrikePrice() {
		return strikePrice;
	}

	public void setStrikePrice(BigDecimal strikePrice) {
		this.strikePrice = strikePrice;
	}


	public Date getSendTime() {
		return sendTime;
	}

	public void setSendTime(Date sendTime) {
		this.sendTime = sendTime;
	}

	public Date getReceiveTime() {
		return receiveTime;
	}

	public void setReceiveTime(Date receiveTime) {
		this.receiveTime = receiveTime;
	}

	/**
	 * 判断该订单是否允许更改
	 * 说明：
	 * 订单的状态和付款方式不受该方法限制——另行判断
	 * 1.如果是网上支付类型，则必须是未付款状态才可以修改
	 * 2.如果是货到付款，必须是发货以前才能修改
	 * 3.
	 * @return
	 */
	public Boolean allowUpdate(){
		boolean result=false;//默认不允许更改
		if(this.getPaymentType()==1&&this.getPaymentStatus()==0&&this.getTag()==0){//如果是网上支付类型，则必须是未付款状态才可以修改
			result=true;
		}else if(this.getPaymentType()==2&&(this.getTag()==0||this.getTag()==1)){//如果是货到付款，必须是发货以前才能修改
			result=true;
		}
		return result;
	}

	@Override
	public boolean equals(Object o) {
		if (this == o) return true;
		if (o == null || getClass() != o.getClass()) return false;
		ProductOrder productOrder = (ProductOrder) o;
		return Objects.equals(orderNo, productOrder.orderNo);
	}

	@Override
	public int hashCode() {
		return Objects.hash(orderNo);
	}
}