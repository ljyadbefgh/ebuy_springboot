package com.lcvc.ebuy_springboot.model;


import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.Range;

import javax.validation.constraints.Pattern;

/**
 * 客户
 * 
 */

public class Customer implements java.io.Serializable {

	private Integer id;
	@Length(min = 3, max = 20, message = "账户名长度必须在 {min} - {max} 之间")
	private String username;//账户名
	@Length(min = 6, max = 12, message = "密码长度必须在 {min} - {max} 之间")
	private String password;//账户密码
	@Length(max = 10, message = "姓名长度不能超过{max} 个字符")
	private String name;//客户名称
	@Range(min = 0, max = 2, message = "性别数值必须在 {min} - {max} 之间")
	private Integer sex;//性别
	@Length(max = 255, message = "产品的图片地址不能超过{max}个字符")
	private String picUrl;//头像路径
	@Pattern(regexp = "^$|^1(3|4|5|7|8)\\d{9}$",message = "手机号码格式错误")//正则表达式设定：可以为空，如果不为空则必须符合手机格式要求。^$表示空字符串，|表示或者
	private String tel;//电话号码
	@Length(max = 100, message = "地址信息不能超过{max}个字符")
	private String address;//客户地址
	@Pattern(regexp = "\\d{6}",message = "客户邮编格式错误")//限制必须符合指定的正则表达式，注意是0也可以
	private String zip;//客户邮编
	//@Email(message ="电子邮箱格式错误")
	private String email;//客户电子邮箱
	@Length(max = 255, message = "个人简介不能超过{max}个字符")
	private String intro;//客户简介，备注等
	private java.util.Date createTime;//创建时间、注册时间

	//非数据库字段
	private Boolean initialPasswordStatus;//是否为初始密码，true表示是初始密码。一般默认123456为初始密码，具体由业务层根据加密规则判断
	private Integer productOrderNumber;//该客户的订单数量
	private Integer payTagOrderNumber;//待付款的订单数
	private Integer sendTagOrderNumber;//待发款的订单数
	private Integer receiveTagOrderNumber;//待收货的订单数




//private List<LiangDianOrder> listOfLiangDianOrder = new ArrayList<LiangDianOrder>(0);//客户的订单集合
	//private List<ProductOrder> listOfProductOrder = new ArrayList<ProductOrder>(0);//客户的订单集合
	//private Integer numberOfliangDianOrder=0;//客户的订单数
	//private Float priceOfTotal;//在网站购买商品花费的总金额

	public Customer() {
	}
	
	public Customer(Integer id) {
		this.id=id.intValue();
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getUsername() {
		return username;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	public String getPassword() {
		return password;
	}

	public void setPassword(String password) {
		this.password = password;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	
	public String getTel() {
		return tel;
	}

	public void setTel(String tel) {
		this.tel = tel;
	}

	public String getAddress() {
		return address;
	}

	public void setAddress(String address) {
		this.address = address;
	}

	public String getZip() {
		return zip;
	}

	public void setZip(String zip) {
		this.zip = zip;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getPicUrl() {
		return picUrl;
	}

	public void setPicUrl(String picUrl) {
		this.picUrl = picUrl;
	}

	public String getIntro() {
		return intro;
	}

	public void setIntro(String intro) {
		this.intro = intro;
	}

	public java.util.Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(java.util.Date createTime) {
		this.createTime = createTime;
	}

	public Integer getSex() {
		return sex;
	}

	public void setSex(Integer sex) {
		this.sex = sex;
	}

	public Boolean getInitialPasswordStatus() {
		return initialPasswordStatus;
	}

	public Integer getProductOrderNumber() {
		return productOrderNumber;
	}

	public void setProductOrderNumber(Integer productOrderNumber) {
		this.productOrderNumber = productOrderNumber;
	}

	public void setInitialPasswordStatus(Boolean initialPasswordStatus) {
		this.initialPasswordStatus = initialPasswordStatus;
	}

	public Integer getPayTagOrderNumber() {
		return payTagOrderNumber;
	}

	public void setPayTagOrderNumber(Integer payTagOrderNumber) {
		this.payTagOrderNumber = payTagOrderNumber;
	}

	public Integer getSendTagOrderNumber() {
		return sendTagOrderNumber;
	}

	public void setSendTagOrderNumber(Integer sendTagOrderNumber) {
		this.sendTagOrderNumber = sendTagOrderNumber;
	}

	public Integer getReceiveTagOrderNumber() {
		return receiveTagOrderNumber;
	}

	public void setReceiveTagOrderNumber(Integer receiveTagOrderNumber) {
		this.receiveTagOrderNumber = receiveTagOrderNumber;
	}
}