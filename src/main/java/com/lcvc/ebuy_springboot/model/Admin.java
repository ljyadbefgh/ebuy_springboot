package com.lcvc.ebuy_springboot.model;

import org.hibernate.validator.constraints.Length;

import java.util.Date;

/**
 * 管理账户
 */

public class Admin implements java.io.Serializable{

	private Integer id;
	@Length(min = 3, max = 10, message = "用户名长度必须在 {min} - {max} 之间")
	private String username;//用户名
	//@JsonIgnore
	@Length(min = 6, max = 12, message = "密码长度必须在 {min} - {max} 之间")
	private String password;//用户密码
	@Length(max = 8, message = "网名长度不能超过{max} 个字符")
	private String name;//网名
	private Integer sex;//性别
	private Date createTime;//创建时间

	//非数据库字段
	private Integer saveProductNumber;//发布过的产品数量

	public Admin() {
	}
	
	public Admin(Integer id){
		super();
		this.id=id;
		
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

	public Date getCreateTime() {
		return createTime;
	}

	public void setCreateTime(Date createTime) {
		this.createTime = createTime;
	}

	public Integer getSex() {
		return sex;
	}

	public void setSex(Integer sex) {
		this.sex = sex;
	}

	public Integer getSaveProductNumber() {
		return saveProductNumber;
	}

	public void setSaveProductNumber(Integer saveProductNumber) {
		this.saveProductNumber = saveProductNumber;
	}

	/*重写hashCode方法，当通过集合判断对象是否相等时，必须重写该方法*/
	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((id == null) ? 0 : id.hashCode());
		return result;
	}

	/*重写equals方法，让对象能通过该方法直接判断是否相等
	 * 以对象标识符判断是否相等
	 */
	@Override
	public boolean equals(Object object) {
		if(this==object){//如果两个对象地址相等，则直接相等。
			return true;
		}
		if(object==null){//如果该对象为Null，则直接不相等
			return false;
		}
		if(object.getClass() == Admin.class){//如果该对象是属于这个类
			Admin userEquals = (Admin)object;     
			if(userEquals.getId()==null){
				return false;
			}
			if(this.getId()==null){
				return false;
			}
            return userEquals.getId()==this.getId().intValue();//判断该对象是否与本对象的某属性相等
        }
		return false;     
	}
	
	
	
}