package com.lcvc.ebuy_springboot.service;

import com.lcvc.ebuy_springboot.model.ShoppingCart;

/*
 * 购物车操作类
 */
public interface ShoppingCartService {


	/**
	 * 将商品放入购物车内
	 * @param shoppingCart 购物车类
	 * @param productId 产品标识符，不能为Null
	 * @param numberOfSale 要购买的产品数量，不能为Null
	 * @return 购物车类。特别说明：如果shoppingCart不为Null，则不需要获取返回值来保存购物车类
	 */
	ShoppingCart addShoppingCart(ShoppingCart shoppingCart,Integer productId,Integer numberOfSale);
	
	/**
	 * 修改购物车,根据传入的产品和数量信息，将购物车的指定产品改为相关数量
	 * 说明：如果购物车没有指定商品，则不进行任何操作
	 * @param shoppingCart 购物车类
	 * @param productId 产品标识符，不能为Null
	 * @param numberOfSale 要购买的产品数量，不能为Null
	 * @Throws MyFormPropertyException 检查从web层传递过来的值是否合法
	 */
	void updateShoppingCart(ShoppingCart shoppingCart,Integer productId,Integer numberOfSale);
	
	/**
	 * 将商品从购物车内删除
	 * @param shoppingCart 购物车类
	 * @param productId 产品标识符，不能为Null
	 */
	void removeShoppingCart(ShoppingCart shoppingCart,Integer productId);
}
