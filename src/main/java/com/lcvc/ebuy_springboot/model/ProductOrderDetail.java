package com.lcvc.ebuy_springboot.model;

import org.hibernate.validator.constraints.Range;

import javax.validation.constraints.Digits;
import java.math.BigDecimal;

/**
 * 详细订单
 * 
 */

public class ProductOrderDetail implements java.io.Serializable {
	private Integer id;
	private ProductOrder productOrder;// 订单编号（外键）
	private Product product;// 产品编号（外键）
	@Digits(integer=11, fraction=2,message = "产品当前价格的小数位数不能超过{fraction}位")
	@Range(min=0,message="产品的当前价格不能为负数")
	private BigDecimal price;// 交易价格（下订单时的产品价格）
	@Digits(integer=11, fraction=2,message = "产品原价的小数位数不能超过{fraction}位")
	@Range(min=0,message="产品原价不能为负数")
	private BigDecimal originalPrice;//原价
	@Range(min=1,message="产品数量必须是正整数")
	private Integer productNumber;// 购买产品数量
	
	//非数据库字段
	//private Float originalPriceTotal;//该订单的原价格总和
	private BigDecimal priceTotal;//该订单的现价总和
	//private Float priceTotalByRuduce;//总共节省的金额

	public ProductOrderDetail() {
	}
	
	public ProductOrderDetail(int id) {
		this.id=id;
	}


	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public ProductOrder getProductOrder() {
		return productOrder;
	}

	public void setProductOrder(ProductOrder productOrder) {
		this.productOrder = productOrder;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public BigDecimal getPrice() {
		return price;
	}

	public void setPrice(BigDecimal price) {
		this.price = price;
	}

	public BigDecimal getOriginalPrice() {
		return originalPrice;
	}

	public void setOriginalPrice(BigDecimal originalPrice) {
		this.originalPrice = originalPrice;
	}

	public Integer getProductNumber() {
		return productNumber;
	}

	public void setProductNumber(Integer productNumber) {
		this.productNumber = productNumber;
	}

	public BigDecimal getPriceTotal() {
		return priceTotal;
	}

	public void setPriceTotal(BigDecimal priceTotal) {
		this.priceTotal = priceTotal;
	}
}