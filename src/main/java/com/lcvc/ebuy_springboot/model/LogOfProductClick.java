package com.lcvc.ebuy_springboot.model;
// default package

import java.util.Date;


/**
 * 产品点击日志
 * 说明：客户字段不要求一定存在
 * @author ljy
 */

public class LogOfProductClick implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	private Integer id;
	private Product product;//产品
	private Customer customer;//登陆客户
	private String ip;//登陆ip
	private Date clickTime;//点击时间

	public LogOfProductClick() {
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Product getProduct() {
		return product;
	}

	public void setProduct(Product product) {
		this.product = product;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

	public Date getClickTime() {
		return clickTime;
	}

	public void setClickTime(Date clickTime) {
		this.clickTime = clickTime;
	}
}