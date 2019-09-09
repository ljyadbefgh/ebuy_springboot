package com.lcvc.ebuy_springboot.web.action.backstage.customer;


import com.lcvc.ebuy_springboot.model.Customer;
import com.lcvc.ebuy_springboot.model.base.Constant;
import com.lcvc.ebuy_springboot.model.base.JsonCode;
import com.lcvc.ebuy_springboot.model.base.PageObject;
import com.lcvc.ebuy_springboot.model.query.CustomerQuery;
import com.lcvc.ebuy_springboot.service.CustomerService;
import com.lcvc.ebuy_springboot.util.file.MyFileOperator;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@Api(tags = "后台客户管理模块")
@RestController
@RequestMapping(value = "/api/backstage/customermanage")
public class CustomerManageController {

	public static final Log log= LogFactory.getLog(CustomerManageController.class);

	@Resource
	private CustomerService customerService;
	@Value("${myFile.uploadFolder}")
	private String uploadFolder;//上传路径


	@ApiOperation(value = "分页读取客户信息", notes = "如果page为空则默认是第一页;如果limit为空则采用服务器的默认数值")
	@ApiImplicitParams({
			@ApiImplicitParam(name = "page", value = "当前页码", required = false, dataType = "int",example="1"),
			@ApiImplicitParam(name = "limit", value = "每页最多展示的记录数", required = false, dataType = "int",example="1"),
			@ApiImplicitParam(name = "customerQuery", value = "查询条件，以对象方式上传，如果为Null表示没有条件", required = false, dataType = "CustomerQuery")
	})
	@GetMapping
	public Map<String, Object> toManageCustomer(Integer page, Integer limit, CustomerQuery customerQuery, HttpServletRequest request){
        Map<String, Object> map=new HashMap<String, Object>();
		String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";//获取项目根目录网址
		PageObject pageObject =customerService.searchCustomers(page,limit,customerQuery,basePath);
		map.put(Constant.JSON_TOTAL,pageObject.getTotalRecords());
        map.put(Constant.JSON_DATA,pageObject.getList());
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		return map;
	}

	@ApiOperation(value = "添加客户信息", notes = "id、createTime不传值，由服务端赋值")
	@PostMapping
	public Map<String, Object> doAddCustomer(@RequestBody Customer customer){
		Map<String, Object> map=new HashMap<String, Object>();
		customerService.addCustomer(customer);
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		map.put(Constant.JSON_MESSAGE, "账户添加成功");
		return map;
	}

	@ApiOperation(value = "读取指定客户信息", notes = "根据id的值读取指定客户信息")
	@ApiImplicitParam(name = "id", value = "要读取的账户id", paramType = "path", required = true,example="1")
	@GetMapping("/{id}")
	public Map<String, Object>  getCustomer(@PathVariable Integer id){
		Map<String, Object> map=new HashMap<String, Object>();
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		map.put(Constant.JSON_DATA,customerService.getCustomer(id));
		return map;
	}

	@ApiOperation(value = "编辑客户信息", notes = "根据传入的值（必须要有id）进行修改（没有传入的字段则保持原值）-password、createTime不传值")
	@PutMapping
	public Map<String, Object> updateCustomer(@RequestBody Customer customer){
		Map<String, Object> map=new HashMap<String, Object>();
		customerService.updateCustomer(customer);
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		map.put(Constant.JSON_MESSAGE, "账户信息修改成功");
		return map;
	}

	@ApiOperation(value = "批量移除客户头像", notes = "根据id的值删除客户头像")
	@ApiImplicitParam(name = "ids", value = "要移除头像的客户id集合", required = true,paramType = "path",example ="15,25,74" )
	@PatchMapping("/removeCustomersProfilePicture/{ids}")
	public Map<String, Object> removeCustomersProfilePicture(@PathVariable("ids")Integer[] ids){
		Map<String, Object> map=new HashMap<String, Object>();
		String basePath=uploadFolder;
		customerService.removeCustomersProfilePicture(ids,basePath);
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());//默认失败
		return map;
	}

	@ApiOperation(value = "批量删除客户信息", notes = "根据id的值删除客户信息")
	@ApiImplicitParam(name = "ids", value = "要删除的客户id集合", required = true,paramType = "path",example ="15,25,74" )
	@DeleteMapping("/{ids}")
	public Map<String, Object> deleteCustomers(@PathVariable("ids")Integer[] ids){
		Map<String, Object> map=new HashMap<String, Object>();
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		customerService.deleteCustomers(ids);
		return map;
	}

	@ApiOperation(value = "重置指定客户密码", notes = "根据id的值重置指定客户密码")
	@ApiImplicitParam(name = "id", value = "指定账户id", paramType = "path", required = true,example="1")
	@PatchMapping("/resetPassword/{id}")
	public Map<String, Object> resetPassword(@PathVariable Integer id){
		Map<String, Object> map=new HashMap<String, Object>();
		customerService.resetPassword(id);
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		map.put(Constant.JSON_MESSAGE, "密码重置成功");
		return map;
	}

	@ApiOperation(value = "上传指定客户的头像", notes = "根据id的值上传指定客户的头像")
	@ApiImplicitParams({
			@ApiImplicitParam(name = "id", value = "指定账户id", paramType = "path", required = true),
			@ApiImplicitParam(name = "file", value = "要上传的头像", paramType = "form", dataType="__file",required = true)
	})
	@PostMapping("/uploadPhoto/{id}")
	public Map<String, Object> uploadPhoto(@PathVariable Integer id,MultipartFile file) throws FileNotFoundException {
		Map<String, Object> map=new HashMap<String, Object>();
		map.put(Constant.JSON_CODE, JsonCode.ERROR.getValue());//默认失败
		if(!file.isEmpty()){
			Customer customer=customerService.getCustomer(id);//获取账户对象
			if(customer!=null){//如果该账户存在，则执行上传
				//String basepath=ClassUtils.getDefaultClassLoader().getResource("").getPath();//获取项目的根目录(物理路径)，注意不能用JSP那套获取根目录，因为spring boot的tomcat为内置，每次都变
				String basepath=uploadFolder;
				String filePath=basepath+Constant.CUSTOMER_PROFILE_PICTURE_UPLOAD_URL;//获取图片上传后保存的物理路径
				MyFileOperator.createDir(filePath);//创建存储目录
				String fileName=file.getOriginalFilename();//获取文件名
				String extensionName=MyFileOperator.getExtensionName(fileName);//获取文件扩展名
				fileName=id+"."+extensionName;//根据id重新生成文件名
				try {
					file.transferTo(new File(filePath+fileName));
					if(!fileName.equals(customer.getPicUrl())){//如果新上传的文件名和原来的不一样，则需要删除原来的文件；如果一样则直接覆盖，不需要处理
						MyFileOperator.deleteFile(filePath+customer.getPicUrl());//删除原文件
					}
					customer=new Customer(id);
					customer.setPicUrl(fileName);
					customerService.updateCustomer(customer);//将新的图片信息存入数据库
					map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
					map.put(Constant.JSON_MESSAGE, "上传成功");
				} catch (IOException e) {
					map.put(Constant.JSON_MESSAGE, "头像上传失败："+e.getMessage());
				}
			}
		}else{
			map.put(Constant.JSON_MESSAGE, "上传失败：请先选择文件");
		}
		return map;
	}

}
