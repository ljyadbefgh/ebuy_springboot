package com.lcvc.ebuy_springboot.model;

import java.math.BigDecimal;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;

/*
 * 购物车实体类
 * 说明：与数据库无关
 */
public class ShoppingCart {
	private List<ShoppingCartItem> list=new ArrayList<ShoppingCartItem>();//购物车子类集合
	//private Customer customer;//客户实体类
	
	//非关键字段，用于根据上面的字段计算得出
	private Integer productNumber;//商品总数
	private BigDecimal originalPriceTotal;//购物车里面的原价格总和
	private BigDecimal priceTotal;//购物车里面的现价总和
	private BigDecimal priceTotalRuduce;//总共节省的金额,原价-现价

	private Date createTime;//购物车创建时间
	
	public ShoppingCart(){
		
	}

	public List<ShoppingCartItem> getList() {
		return list;
	}

	public void setList(List<ShoppingCartItem> list) {
		this.list = list;
	}

	public Integer getProductNumber() {
		return productNumber;
	}

	public void setProductNumber(Integer productNumber) {
		this.productNumber = productNumber;
	}

	public BigDecimal getOriginalPriceTotal() {
		return originalPriceTotal;
	}

	public void setOriginalPriceTotal(BigDecimal originalPriceTotal) {
		this.originalPriceTotal = originalPriceTotal;
	}

	public BigDecimal getPriceTotal() {
		return priceTotal;
	}

	public void setPriceTotal(BigDecimal priceTotal) {
		this.priceTotal = priceTotal;
	}

	public BigDecimal getPriceTotalRuduce() {
		return priceTotalRuduce;
	}

	public void setPriceTotalRuduce(BigDecimal priceTotalRuduce) {
		this.priceTotalRuduce = priceTotalRuduce;
	}

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}
}
