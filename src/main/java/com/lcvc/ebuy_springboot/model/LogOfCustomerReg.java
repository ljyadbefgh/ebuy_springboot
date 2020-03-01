package com.lcvc.ebuy_springboot.model;
// default package

import java.util.Date;


/**
 * 客户注册日志
 * @author ljy
 */

public class LogOfCustomerReg implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	private Integer id;
	private Customer customer;
	private String ipO;//注册IP
	private Date regTime;//注册时间

	public LogOfCustomerReg() {
	}

	public LogOfCustomerReg(Integer id) {
		super();
		this.id = id;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}


	public static long getSerialVersionUID() {
		return serialVersionUID;
	}

	public Customer getCustomer() {
		return customer;
	}

	public void setCustomer(Customer customer) {
		this.customer = customer;
	}

	public String getIpO() {
		return ipO;
	}

	public void setIpO(String ipO) {
		this.ipO = ipO;
	}

	public Date getRegTime() {
		return regTime;
	}

	public void setRegTime(Date regTime) {
		this.regTime = regTime;
	}
}