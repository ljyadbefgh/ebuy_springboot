package com.lcvc.ebuy_springboot.model;


import com.fasterxml.jackson.annotation.JsonIgnore;
import org.hibernate.validator.constraints.Length;

/**
 * 产品类别
 * 
 */

public class ProductType implements java.io.Serializable {
	private Integer id;

	@Length(min = 2, max = 20, message = "产品类别的名称长度必须在 {min} - {max} 之间")
	private String name;//产品类别名称

	@Length(max = 255, message = "产品类别的外部链接地址不能超过{max}个字符")
	private String linkUrl;//转向链接地址（如果存在则直接转向链接地址，否则打开本网站栏目）

	@Length(max = 200, message = "产品的图片地址不能超过{max}个字符")
	private String imageUrl;//栏目的标题图片地址
	private String summary;//栏目简介（纯文本）,从intro提取纯文本内容作为摘要
	@JsonIgnore
	private String intro;//栏目简介（富文本）

	private Integer orderNum;//排序（默认0，规则由前台决定，一般排序为最大）
	
	//非数据库字段
	//private List<Product> productList = new ArrayList<Product>();//该栏目下的产品集合
	private Integer productNumber;//该栏目下的产品数量
	//private Float totalPriceOfTrade;//该栏目的总交易额
	//private Integer totalNumberOfOrder;//该栏目的订单成交数
	
	
	public ProductType() {
	}
	
	public ProductType(int id) {
		this.id=id;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLinkUrl() {
		return linkUrl;
	}

	public void setLinkUrl(String linkUrl) {
		this.linkUrl = linkUrl;
	}

	public String getImageUrl() {
		return imageUrl;
	}

	public void setImageUrl(String imageUrl) {
		this.imageUrl = imageUrl;
	}

	public String getIntro() {
		return intro;
	}

	public void setIntro(String intro) {
		this.intro = intro;
	}

	public Integer getOrderNum() {
		return orderNum;
	}

	public void setOrderNum(Integer orderNum) {
		this.orderNum = orderNum;
	}

	public Integer getProductNumber() {
		return productNumber;
	}

	public void setProductNumber(Integer productNumber) {
		this.productNumber = productNumber;
	}

	public String getSummary() {
		return summary;
	}

	public void setSummary(String summary) {
		this.summary = summary;
	}
}