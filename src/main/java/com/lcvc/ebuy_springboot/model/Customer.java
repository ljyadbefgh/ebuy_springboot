package com.lcvc.ebuy_springboot.model;


/**
 * 客户
 * 
 */

public class Customer implements java.io.Serializable {

	private Integer id;
	private String username;//账户名
	private String password;//账户密码
	private String name;//客户名称
	private Integer sex;//性别
	private String picUrl;//头像路径
	private String tel;//电话号码
	private String address;//客户地址
	private String zip;//客户邮编
	private String email;//客户电子邮箱
	private String intro;//客户简介，备注等
	private java.util.Date createTime;//创建时间、注册时间

	//非数据库字段
	private Boolean initialPasswordStatus;//是否为初始密码，true表示是初始密码。一般默认123456为初始密码，具体由业务层根据加密规则判断


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

	public void setInitialPasswordStatus(Boolean initialPasswordStatus) {
		this.initialPasswordStatus = initialPasswordStatus;
	}
}