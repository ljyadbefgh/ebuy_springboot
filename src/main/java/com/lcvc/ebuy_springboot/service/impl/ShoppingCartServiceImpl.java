package com.lcvc.ebuy_springboot.service.impl;

import com.lcvc.ebuy_springboot.dao.ProductDao;
import com.lcvc.ebuy_springboot.model.Product;
import com.lcvc.ebuy_springboot.model.ShoppingCart;
import com.lcvc.ebuy_springboot.model.ShoppingCartItem;
import com.lcvc.ebuy_springboot.model.exception.MyServiceException;
import com.lcvc.ebuy_springboot.model.exception.MyWebException;
import com.lcvc.ebuy_springboot.service.ShoppingCartService;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Isolation;
import org.springframework.transaction.annotation.Propagation;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.validation.annotation.Validated;

import javax.annotation.Resource;
import java.math.BigDecimal;
import java.util.List;

/*
 * 购物车操作类
 */
@Transactional(propagation = Propagation.REQUIRED,isolation = Isolation.DEFAULT,timeout=36000,rollbackFor=Exception.class)
@Service
@Validated//表示开启sprint的校检框架，会自动扫描方法里的@Valid（@Valid注解一般写在接口即可）
public class ShoppingCartServiceImpl implements ShoppingCartService {

	@Resource
	private ProductDao productDao;

	/**
	 * 对购物车里的数据进行计算
	 * @param shoppingCart 需要核算的购物车对象，不能为Null
	 */
	private void countShoppingCart(ShoppingCart shoppingCart){
		if(shoppingCart!=null){
			Integer productNumber=0;//商品总数
			BigDecimal originalPriceTotal=new BigDecimal("0.00");//购物车里面的原价格总和
			BigDecimal priceTotal=new BigDecimal("0.00");//购物车里面的现价总和
			BigDecimal priceTotalRuduce=new BigDecimal("0.00");;//总共节省的金额
			//获取购物车里的商品集合
			List<ShoppingCartItem> list=shoppingCart.getList();
			for(ShoppingCartItem item:list){
				Product product=item.getProduct();
				productNumber+=item.getNumber();
				//计算该商品项的原价总和
				BigDecimal originalPrice=product.getOriginalPrice().multiply(BigDecimal.valueOf(item.getNumber())).setScale(2,BigDecimal.ROUND_HALF_UP);
				//计算该商品项的当前价格总和
				BigDecimal price=product.getPrice().multiply(BigDecimal.valueOf(item.getNumber())).setScale(2,BigDecimal.ROUND_HALF_UP);
				//计算该商品项共优惠了多少金额
				BigDecimal reducePrice=originalPrice.subtract(price);
				item.setOriginalPriceTotal(originalPrice);
				item.setPriceTotal(price);
				item.setPriceTotalRuduce(reducePrice);
				//计算购物车所有商品的原价总和
				originalPriceTotal=originalPriceTotal.add(originalPrice);
				//计算购物车所有商品的当前价格总和
				priceTotal=priceTotal.add(price);
				//计算购物车所有商品共优惠了多少金额
				priceTotalRuduce=priceTotalRuduce.add(reducePrice);
			}
			shoppingCart.setProductNumber(productNumber);
			shoppingCart.setOriginalPriceTotal(originalPriceTotal);
			shoppingCart.setPriceTotal(priceTotal);
			shoppingCart.setPriceTotalRuduce(priceTotalRuduce);
		}
	}

	@Override
	public ShoppingCart addShoppingCart(ShoppingCart shoppingCart,Integer productId,Integer numberOfSale){
		if(numberOfSale==null){
			throw new MyWebException("操作错误：产品数量不能为空");
		}else{
			if(numberOfSale<=0){
				throw new MyWebException("操作错误：产品数量必须为大于0的整数");
			}
		}
		if(productId==null){
			throw new MyWebException("操作错误：产品id不能为空");
		}
		Product product=productDao.getSimple(productId);
		if(product!=null){
			if(!product.getOnSale()){
				throw new MyServiceException("操作错误：商品"+product.getName()+"已经下架，请移除该商品");
			}
			//检查库存是否足够
			if(numberOfSale>product.getRepository()){
				throw new MyServiceException("操作错误：商品"+product.getName()+"库存不足");
			}
		}else{
			throw new MyWebException("操作错误：商品不存在");
		}
		if(shoppingCart==null){//如果购物车不存在则初始化
			shoppingCart=new ShoppingCart();
		}
		//将本次添加的商品转换为购物车条目
		ShoppingCartItem shoppingCartItem=new ShoppingCartItem(product,numberOfSale);
		//获取购物车里的商品集合
		List<ShoppingCartItem> list=shoppingCart.getList();
		if(list.contains(shoppingCartItem)){//如果包含该商品条目，已经重写该类的equals方法
			//获取购物车对应的购物细节
			ShoppingCartItem shoppingCartItemOfOriginal=list.get(list.indexOf(shoppingCartItem));
			//获取原来购物车内该商品的数量
			Integer numberOfCart=shoppingCartItemOfOriginal.getNumber();
			//将购物车原有商品数量和新购买的商品数量相加
			int number=numberOfSale+numberOfCart;
			//检查库存是否足够
			if(number<=product.getRepository().intValue()){
				shoppingCartItemOfOriginal.setNumber(number);
			}else{
				throw new MyWebException("操作错误：商品"+product.getName()+"库存不足");
			}
		}else{//如果不包含则该商品则直接添加
			list.add(shoppingCartItem);
		}
		//最后对购物车中数据进行计算
		countShoppingCart(shoppingCart);
		return shoppingCart;
	}

	@Override
	public void updateShoppingCart(ShoppingCart shoppingCart,Integer productId,Integer numberOfSale){
		int number;//要购买的产品数量
		if(shoppingCart==null){//如果购物车不存在
			throw new MyWebException("非法操作：请先添加商品进购物车");
		}
		if(numberOfSale==null){
			throw new MyWebException("操作错误：产品数量不能为空");
		}else{
			if(numberOfSale<=0){
				throw new MyWebException("操作错误：产品数量必须为大于0的整数");
			}
		}
		if(productId==null){
			throw new MyWebException("操作错误：产品id不能为空");
		}
		Product product=productDao.getSimple(productId);
		if(product!=null){
			if(!product.getOnSale()){
				throw new MyServiceException("操作错误：商品"+product.getName()+"已经下架，请移除该商品");
			}
			//检查库存是否足够
			if(numberOfSale>product.getRepository().intValue()){
				throw new MyServiceException("操作错误：商品"+product.getName()+"库存不足");
			}
		}else{
			throw new MyWebException("操作错误：该商品不存在");
		}
		//将本次添加的商品转换为购物车条目
		ShoppingCartItem shoppingCartItem=new ShoppingCartItem(product,numberOfSale);
		//获取购物车里的商品集合
		List<ShoppingCartItem> list=shoppingCart.getList();
		if(list.contains(shoppingCartItem)){//如果包含该商品条目，已经重写该类的equals方法
			//获取购物车对应的子类
			ShoppingCartItem shoppingCartItemOfOriginal=list.get(list.indexOf(shoppingCartItem));
			//将新的商品数量放入
			shoppingCartItemOfOriginal.setNumber(numberOfSale);
		}
		//最后对购物车中数据进行计算
		countShoppingCart(shoppingCart);
	}

	public void removeShoppingCart(ShoppingCart shoppingCart,Integer productId){
		if(productId==null){
			throw new MyWebException("操作错误：产品id不能为空");
		}
		if(shoppingCart!=null){
			List<ShoppingCartItem> list=shoppingCart.getList();
			if(list.size()>0){
				//将本次删除的商品转换为购物车条目
				Product product=new Product(productId);
				ShoppingCartItem shoppingCartItem=new ShoppingCartItem(product);
				list.remove(shoppingCartItem);		
			}
		}
		//最后对购物车中数据进行计算
		countShoppingCart(shoppingCart);
	}
}
