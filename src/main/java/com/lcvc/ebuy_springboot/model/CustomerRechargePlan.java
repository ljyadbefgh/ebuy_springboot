package com.lcvc.ebuy_springboot.model;
// default package

import java.math.BigDecimal;
import java.util.Date;


/**
 * @充值方案
 * @author ljy
 */

public class CustomerRechargePlan implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	private Integer id;
	private String title;//标题
	private BigDecimal cost;//充值金额
	private BigDecimal worth;//价值，实际获得的金额。例如充100得120，这里就是120
	private Boolean deleteStatus;//删除状态

	public CustomerRechargePlan() {
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
	}

	public BigDecimal getCost() {
		return cost;
	}

	public void setCost(BigDecimal cost) {
		this.cost = cost;
	}

	public BigDecimal getWorth() {
		return worth;
	}

	public void setWorth(BigDecimal worth) {
		this.worth = worth;
	}

	public Boolean getDeleteStatus() {
		return deleteStatus;
	}

	public void setDeleteStatus(Boolean deleteStatus) {
		this.deleteStatus = deleteStatus;
	}
}