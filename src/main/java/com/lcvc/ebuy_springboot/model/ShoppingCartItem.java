package com.lcvc.ebuy_springboot.model;

import java.math.BigDecimal;

/*
 * 购物车中的某个商品及其对应的数量
 * 本类重写equals和hash方法，让其通过产品来判断是否相等
 */
public class ShoppingCartItem {
	private Product product;//购物车对应的商品
	private int number;//购物车中的该商品的数量
	
	//非关键字段，用于根据上面的字段计算得出
	private BigDecimal originalPriceTotal;//购物车里面的原价格总和
	private BigDecimal priceTotal;//购物车里面的当前价格总和
	private BigDecimal priceTotalRuduce;//总共节省的金额,原价-现价
	
	public ShoppingCartItem(Product product) {
		super();
		this.product = product;
	}
	public ShoppingCartItem(Product product, int number) {
		super();
		this.product = product;
		this.number = number;
	}
	public Product getProduct() {
		return product;
	}
	public void setProduct(Product product) {
		this.product = product;
	}
	public int getNumber() {
		return number;
	}
	public void setNumber(int number) {
		this.number = number;
	}

	public BigDecimal getOriginalPriceTotal() {
		return originalPriceTotal;
	}

	public void setOriginalPriceTotal(BigDecimal originalPriceTotal) {
		this.originalPriceTotal = originalPriceTotal;
	}

	public BigDecimal getPriceTotal() {
		return priceTotal;
	}

	public void setPriceTotal(BigDecimal priceTotal) {
		this.priceTotal = priceTotal;
	}

	public BigDecimal getPriceTotalRuduce() {
		return priceTotalRuduce;
	}

	public void setPriceTotalRuduce(BigDecimal priceTotalRuduce) {
		this.priceTotalRuduce = priceTotalRuduce;
	}


	@Override
	public int hashCode() {
		final int prime = 31;
		int result = 1;
		result = prime * result + ((product.getId() == null) ? 0 : product.getId().hashCode());
		return result;
	}
	@Override
	public boolean equals(Object obj) {
		if (this == obj)
			return true;
		if (obj == null)
			return false;
		if (getClass() != obj.getClass())
			return false;
		ShoppingCartItem other = (ShoppingCartItem) obj;
		if (product.getId() == null) {
			if (other.product.getId() != null)
				return false;
		} else if (!product.getId().equals(other.product.getId()))
			return false;
		return true;
	}
	
	
	/*public static void main(String[] args) {
		ShoppingCartItem shoppingCartItem1=new ShoppingCartItem(new Product(2),5);
		ShoppingCartItem shoppingCartItem2=new ShoppingCartItem(new Product(2),15);
		System.out.println(shoppingCartItem1.equals(shoppingCartItem2));
	}
	*/
	
}
