package com.lcvc.ebuy_springboot.model;
// default package

import java.util.Date;


/**
 * 管理员登录日志
 * 说明：只记录系统存在账户登陆成功或失败的情况，如锁定等情况不考虑在内
 * @author ljy
 */

public class LogOfAdminLogin implements java.io.Serializable {

	private static final long serialVersionUID = 1L;
	private Integer id;
	private Admin admin;//登陆管理员
	private String ip;//登陆ip
	private Boolean loginResult;//表示登录是否成功,true表示登录成功，false表示登录失败
	private Date loginTime;//登陆时间

	public LogOfAdminLogin() {
	}

	public static long getSerialVersionUID() {
		return serialVersionUID;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getIp() {
		return ip;
	}

	public void setIp(String ip) {
		this.ip = ip;
	}

	public Boolean getLoginResult() {
		return loginResult;
	}

	public void setLoginResult(Boolean loginResult) {
		this.loginResult = loginResult;
	}

	public Date getLoginTime() {
		return loginTime;
	}

	public void setLoginTime(Date loginTime) {
		this.loginTime = loginTime;
	}

	public Admin getAdmin() {
		return admin;
	}

	public void setAdmin(Admin admin) {
		this.admin = admin;
	}
}