package com.lcvc.ebuy_springboot.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;
import io.swagger.annotations.ApiModelProperty;
import org.hibernate.validator.constraints.Length;
import org.hibernate.validator.constraints.Range;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Date;
import java.util.List;

/**
 * 管理账户
 * 说明：UserDetails为spring security的专属方法
 */
public class Admin implements UserDetails {
	private static final long serialVersionUID = 5952689219411916553L;

	private Integer id;

	@Length(min = 3, max = 10, message = "用户名长度必须在 {min} - {max} 之间")
	private String username;//用户名

	//@JsonIgnore//如本字段：如果只向在传值到前端的时候忽略JSON,则在在相应的getter方法上加上@JsonIgnore，但是需要接收前端传递过来的值，则在相应的setter方法上加上@JsonProperty注解即可
	@Length(min = 6, max = 12, message = "密码长度必须在 {min} - {max} 之间")
	private String password;//用户密码

	@Length(min = 1,max = 8, message = "网名长度不能超过{min} - {max}个字符")
	private String name;//网名

	@Range(min = 0, max = 2, message = "性别数值必须在 {min} - {max} 之间")
	private Integer sex;//性别

	private Boolean unLocked;//账户是否没有锁定，true表示没有锁定，false表示锁定。配合spring security的isAccountNonLocked()方法

	//@JsonFormat(pattern = "yyyy-MM-dd HH:mm")
	private Date createTime;//创建时间，由系统自动生成

	//非数据库字段
	@ApiModelProperty(hidden = true)
	private Integer saveProductNumber;//发布过的产品数量，用于传递给业务层其他对象或web层
	@ApiModelProperty(hidden = true)
	private List<Role> roles;//账户拥有的角色集合
	@ApiModelProperty(hidden = true)
	private Integer roleNumber;//角色数量

	private Integer[] roleIds;//用于接收前端传递过来的角色集合id。说明：接收“1,3,5”这样的类型（如果是js数组可以用tostring转换为这个类型），否则spring mvc数组参数无法接受




	public Admin() {
	}
	
	public Admin(Integer id){
		super();
		this.id=id;
		
	}

	public Integer[] getRoleIds() {
		return roleIds;
	}

	public void setRoleIds(Integer[] roleIds) {
		this.roleIds = roleIds;
	}

	public List<Role> getRoles() {
		return roles;
	}

	public void setRoles(List<Role> roles) {
		this.roles = roles;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public Boolean getUnLocked() {
		return unLocked;
	}

	public void setUnLocked(Boolean unLocked) {
		this.unLocked = unLocked;
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

	public Integer getRoleNumber() {
		return roleNumber;
	}

	public void setRoleNumber(Integer roleNumber) {
		this.roleNumber = roleNumber;
	}

	@JsonProperty
	public void setPassword(String password) {
		this.password = password;
	}

	public void setUsername(String username) {
		this.username = username;
	}

	//获取当前用户对象的用户名
	@Override
	public String getUsername() {
		return username;
	}

	//获取当前账户的密码
	@JsonIgnore
	@Override
	public String getPassword() {
		return password;
	}

	//当前账户是否过期
	@Override
	public boolean isAccountNonExpired() {
		return false;
	}

	//当前账户是否未锁定
	@Override
	public boolean isAccountNonLocked() {
		return unLocked;
	}

	//当前账户密码是否过期
	@Override
	public boolean isCredentialsNonExpired() {
		return false;
	}

	//当前账户是否可用
	@Override
	public boolean isEnabled() {
		return false;
	}

	//获取当前用户对象所具有的角色信息
	@JsonIgnore
	@Override
	public Collection<? extends GrantedAuthority> getAuthorities() {
		List<SimpleGrantedAuthority> authorities=new ArrayList<SimpleGrantedAuthority>();
		for(Role role:roles){
			authorities.add(new SimpleGrantedAuthority(role.getName()));
		}
		return authorities;
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