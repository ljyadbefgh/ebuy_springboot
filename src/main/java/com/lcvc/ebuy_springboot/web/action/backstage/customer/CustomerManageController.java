package com.lcvc.ebuy_springboot.web.action.backstage.customer;


import com.lcvc.ebuy_springboot.model.Constant;
import com.lcvc.ebuy_springboot.model.Customer;
import com.lcvc.ebuy_springboot.model.JsonCode;
import com.lcvc.ebuy_springboot.model.base.PageObject;
import com.lcvc.ebuy_springboot.model.exception.MyFormException;
import com.lcvc.ebuy_springboot.model.query.CustomerQuery;
import com.lcvc.ebuy_springboot.service.CustomerService;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.web.bind.annotation.*;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping(value = "/backstage/customermanage")
public class CustomerManageController {

	public static final Log log= LogFactory.getLog(CustomerManageController.class);

	@Resource
	private CustomerService customerService;


	/**
     * 分页读取所有客户信息
	 * @param page 当前页码
	 * @param limit 每页最多展示的记录数
	 * @param customerQuery 查询条件
	 * @return
	 */
	@GetMapping
	public Map<String, Object> toManageCustomer(Integer page, Integer limit, CustomerQuery customerQuery){
        Map<String, Object> map=new HashMap<String, Object>();
        map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		PageObject pageObject =customerService.searchCustomers(page,limit,customerQuery);
		map.put(Constant.JSON_TOTAL,pageObject.getTotalRecords());
        map.put(Constant.JSON_DATA,pageObject.getList());
		return map;
	}


	/**
	 * 添加账户
	 * @param customer
	 * @return
	 */
	@PostMapping
	public Map<String, Object> doAddCustomer(@RequestBody Customer customer){
		Map<String, Object> map=new HashMap<String, Object>();
		try {
			customerService.addCustomer(customer);
			map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
			map.put(Constant.JSON_MESSAGE, "账户添加成功");
		} catch (MyFormException e) {
			map.put(Constant.JSON_CODE, JsonCode.ERROR.getValue());
			map.put(Constant.JSON_MESSAGE, e.getMessage());
		}
		return map;
	}

	/**
	 * 读取指定账户
	 * @param id 指定账户的主键
	 * @return
	 */
	@GetMapping("/{id}")
	public Map<String, Object>  getCustomer(@PathVariable Integer id){
		Map<String, Object> map=new HashMap<String, Object>();
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		map.put(Constant.JSON_DATA,customerService.getCustomer(id));
		return map;
	}

	/**
	 * 修改账户信息
	 * @param customer
	 * @return
	 */
	@PutMapping
	public Map<String, Object> updateCustomer(@RequestBody Customer customer){
		Map<String, Object> map=new HashMap<String, Object>();
		map.put(Constant.JSON_CODE, JsonCode.ERROR.getValue());
		try {
			customerService.updateCustomer(customer);
			map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
			map.put(Constant.JSON_MESSAGE, "账户信息修改成功");
		} catch (MyFormException e) {
			map.put(Constant.JSON_MESSAGE, "账户信息编辑失败："+e.getMessage());
		}
		return map;
	}

	/**
	 * 批量删除指定的多个账户
	 * @param ids 账户id集合，前端必须以“15,25,74”这样的方式传回
	 * @return
	 */
	@DeleteMapping("/{ids}")
	public Map<String, Object> deleteCustomers(@PathVariable("ids")Integer[] ids){
		Map<String, Object> map=new HashMap<String, Object>();
		customerService.deleteCustomers(ids);
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		return map;
	}


	@PutMapping("/resetPassword/{id}")
	public Map<String, Object> resetPassword(@PathVariable Integer id){
		Map<String, Object> map=new HashMap<String, Object>();
		customerService.resetPassword(id);
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		map.put(Constant.JSON_MESSAGE, "密码重置成功");
		return map;
	}

}
