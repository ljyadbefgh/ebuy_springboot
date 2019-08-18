package com.lcvc.ebuy_springboot.web.action.backstage.customer;


import com.lcvc.ebuy_springboot.model.Customer;
import com.lcvc.ebuy_springboot.model.base.Constant;
import com.lcvc.ebuy_springboot.model.base.JsonCode;
import com.lcvc.ebuy_springboot.model.base.PageObject;
import com.lcvc.ebuy_springboot.model.exception.MyFormException;
import com.lcvc.ebuy_springboot.model.query.CustomerQuery;
import com.lcvc.ebuy_springboot.service.CustomerService;
import com.lcvc.ebuy_springboot.util.file.MyFileOperator;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.util.ClassUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@RestController
@RequestMapping(value = "/api/backstage/customermanage")
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
	@PatchMapping
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

	/**
	 * 重置密码
	 * @param id 客户的id
	 * @return
	 */
	@PatchMapping("/resetPassword/{id}")
	public Map<String, Object> resetPassword(@PathVariable Integer id){
		Map<String, Object> map=new HashMap<String, Object>();
		customerService.resetPassword(id);
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		map.put(Constant.JSON_MESSAGE, "密码重置成功");
		return map;
	}

	/**
	 * 上传客户头像
	 * @param id 客户的Id
	 * @param file 要上传的头像
	 * @return
	 */
	@PostMapping("/uploadPhoto/{id}")
	public Map<String, Object> uploadPhoto(@PathVariable Integer id,MultipartFile file){
		Map<String, Object> map=new HashMap<String, Object>();
		map.put(Constant.JSON_CODE, JsonCode.ERROR.getValue());//默认失败
		if(!file.isEmpty()){
			Customer customer=customerService.getCustomer(id);//获取账户对象
			if(customer!=null){//如果该账户存在，则执行上传
				String basepath=ClassUtils.getDefaultClassLoader().getResource("").getPath();//获取项目的根目录，注意不能用JSP那套获取根目录，因为spring boot的tomcat为内置，每次都变
				String filePath=basepath+Constant.CUSTOMER_PROFILE_PICTURE;//获取图片保存的物理路径
				MyFileOperator.createDir(filePath);//创建存储目录
				String fileName=file.getOriginalFilename();//获取文件名
				String extensionName=MyFileOperator.getExtensionName(fileName);//获取文件扩展名
				fileName=id+"."+extensionName;//根据id重新生成文件名
				try {
					file.transferTo(new File(filePath+fileName));
					if(!fileName.equals(customer.getPicUrl())){//如果新上传的文件名和原来的不一样，则需要删除原来的文件；如果一样则直接覆盖，不需要处理
						MyFileOperator.deleteFile(filePath+customer.getPicUrl());//删除原文件
					}
					customer.setPicUrl(fileName);
					customerService.updateCustomer(customer);//将新的图片信息存入数据库
					map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
					map.put(Constant.JSON_MESSAGE, "上传成功");
				} catch (IOException e) {
					map.put(Constant.JSON_MESSAGE, e.getMessage());
				}
			}
		}else{
			map.put(Constant.JSON_MESSAGE, "上传失败：请先选择文件");
		}
		return map;
	}

}
