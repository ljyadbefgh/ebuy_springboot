package com.lcvc.ebuy_springboot.service;

import com.lcvc.ebuy_springboot.model.ShoppingCart;

/*
 * 购物车操作类
 */
public interface ShoppingCartService {

	/**
	 * 获取购物车信息
	 * 说明：
	 * 1.将对购物车的商品信息进行更新
	 * 2.对购物车中的商品总价进行重新计算
	 * @param shoppingCart 购物车类
	 * @return 购物车类。特别说明：如果shoppingCart不为Null，则不需要获取返回值来保存购物车类
	 */
	ShoppingCart getShoppingCart(ShoppingCart shoppingCart);


	/**
	 * 将商品放入购物车内
	 * 说明：
	 * 1.同类商品数量相加
	 * 2.如果商品已经下架，则不能购买
	 * 3.购买时会判断商品库存是否足够（包括多次购买同类商品的数量累加判断）
	 * 4..购物车的购买同时也受网站配置的限制
	 * （1）购物车中的每个商品数量不能超过，每次下单时单个商品的最大购买数量
	 * （2）其他：详见aop
	 * @param shoppingCart 购物车类
	 * @param productId 产品标识符，不能为Null
	 * @param numberOfSale 要购买的产品数量，不能为Null
	 * @return 购物车类。特别说明：如果shoppingCart不为Null，则不需要获取返回值来保存购物车类
	 */
	ShoppingCart addShoppingCart(ShoppingCart shoppingCart,Integer productId, Integer numberOfSale);
	
	/**
	 * 修改购物车,根据传入的产品和数量信息，将购物车的指定产品改为相关数量
	 * 说明：
	 * 1.如果购物车没有指定商品，则不进行任何操作
	 * 2.购物车的购买同时也受网站配置的限制
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
