package com.lcvc.ebuy_springboot.web.action.shop.customer;


import com.lcvc.ebuy_springboot.model.Customer;
import com.lcvc.ebuy_springboot.model.base.Constant;
import com.lcvc.ebuy_springboot.model.base.JsonCode;
import com.lcvc.ebuy_springboot.model.form.PasswordEditForm;
import com.lcvc.ebuy_springboot.service.CustomerService;
import com.lcvc.ebuy_springboot.util.file.MyFileOperator;
import com.lcvc.ebuy_springboot.util.file.MyFileUpload;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;


@Api(tags = "前台客户登陆注销模块")
@RestController
@RequestMapping(value = "/api/shop/customer")
public class CustomerShopController {

	@Autowired
	private CustomerService customerService;
	@Value("${myFile.uploadFolder}")
	private String uploadFolder;//上传路径

	@ApiOperation(value = "前台客户注册", notes = "id、createTime不传值，由服务端赋值")
	@ApiImplicitParam(name = "customer", value = "客户信息，id、createTime不传值，由服务端赋值", paramType = "body", dataType="Customer",required = true)
	@PostMapping("/reg")
	public Map<String, Object> regCustomer(@RequestBody Customer customer,String inviteCode,HttpSession session){
		Map<String, Object> map=new HashMap<String, Object>();
		customerService.regCustomer(customer,inviteCode);
		customer=customerService.getCustomer(customer.getUsername());//获取注册的账户信息
		session.setAttribute("customer",customer);
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		return map;
	}


	@ApiOperation(value = "前台客户登陆", notes = "根据账户名和密码进行登陆")
	@ApiImplicitParams({
			@ApiImplicitParam(name = "username", value = "账户名", required = true, dataType = "string",example="user"),
			@ApiImplicitParam(name = "password", value = "密码", required = true, dataType = "string",example="111111")
	})
	@GetMapping("/login")
	public Map<String, Object> login(String username, String password, HttpSession session){
		Map<String, Object> map=new HashMap<String, Object>();
		map.put(Constant.JSON_CODE, JsonCode.ERROR.getValue());
		if(customerService.login(username, password)){//如果登录成功
			Customer customer=customerService.getCustomer(username);
			session.setAttribute("customer",customer);
			map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
			//map.put(Constant.JSON_DATA,admin.getUsername());//将账户名值传递到前端先存储，供后端交互
		}else{
			map.put(Constant.JSON_MESSAGE, "登录失败：用户名和密码错误");
		}
		return map;
	}


	@ApiOperation(value = "前台客户注销")
	@GetMapping("/logout")
	public Map<String, Object> logout(HttpSession session){
		Map<String, Object> map=new HashMap<String, Object>();
		session.removeAttribute("customer");
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		map.put(Constant.JSON_MESSAGE, "成功注销用户");
		return map;
	}


	@ApiOperation(value = "获取登陆账户的信息")
	@GetMapping
	public Map<String, Object> getCustomer(HttpSession session){
		Map<String, Object> map=new HashMap<String, Object>();
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		map.put(Constant.JSON_DATA,session.getAttribute("customer"));
		return map;
	}

	@ApiOperation(value = "修改密码", notes = "修改密码")
	@PatchMapping("/password")
	public Map<String, Object> updatePassword(@RequestBody @Validated PasswordEditForm passwordEditForm, HttpSession session) {
		String username = ((Customer) session.getAttribute("customer")).getUsername();
		Map<String, Object> map = new HashMap<String, Object>();
		customerService.updatePassword(username, passwordEditForm.getPassword(), passwordEditForm.getNewPass(), passwordEditForm.getRePass());
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		map.put(Constant.JSON_MESSAGE, "密码修改成功");
		return map;
	}

	@ApiOperation(value = "编辑当前登陆账户的客户信息", notes = "根据传入的值进行修改（没有传入的字段则保持原值）-username,id,password、createTime不传值")
	@ApiImplicitParam(name = "customer", value = "客户信息，根据传入的值进行修改（没有传入的字段则保持原值）-username,id,password、createTime不传值", paramType = "body", dataType="Customer",required = true)
	@PutMapping
	public Map<String, Object> updateCustomer(@RequestBody Customer customer, HttpSession session){
		Map<String, Object> map=new HashMap<String, Object>();
		Customer customerSession=(Customer) session.getAttribute("customer");// 获取登陆账户的信息
		customer.setId(customerSession.getId());//获取当前登陆账户的id
		customer.setUsername(null);//不修改账户名
		customer.setPassword(null);//将密码字段去除，不修改密码，也不加入验证
		customer.setPicUrl(null);//更新不能更改上传图片，只能用上传图片方式更改
		customerService.updateCustomer(customer);
		map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
		map.put(Constant.JSON_MESSAGE, "账户信息修改成功");
		return map;
	}


	@ApiOperation(value = "上传指定客户的头像", notes = "根据id的值上传指定客户的头像")
	@ApiImplicitParams({
			@ApiImplicitParam(name = "file", value = "要上传的头像", paramType = "form", dataType="__file",required = true)
	})
	@PostMapping("/uploadPhoto")
	public Map<String, Object> uploadPhoto( MultipartFile file, HttpServletRequest request, HttpSession session) throws FileNotFoundException {
		Map<String, Object> map=new HashMap<String, Object>();
		map.put(Constant.JSON_CODE, JsonCode.ERROR.getValue());//默认失败
		if(!file.isEmpty()){
			String baseWebPath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";//获取项目根目录网址
			Customer customerSession=(Customer) session.getAttribute("customer");// 获取登陆账户的信息
			Integer id=customerSession.getId();
			Customer customer=customerService.getCustomer(id,baseWebPath);//获取账户对象
			if(customer!=null){//如果该账户存在，则执行上传
				//String basepath=ClassUtils.getDefaultClassLoader().getResource("").getPath();//获取项目的根目录(物理路径)，注意不能用JSP那套获取根目录，因为spring boot的tomcat为内置，每次都变
				String basepath=uploadFolder;
				String filePath=basepath+Constant.CUSTOMER_PROFILE_PICTURE_UPLOAD_URL;//获取图片上传后保存的物理路径
				MyFileOperator.createDir(filePath);//创建存储目录
				String fileName=file.getOriginalFilename();//获取文件名
				String extensionName= MyFileOperator.getExtensionName(fileName);//获取文件扩展名
				MyFileUpload.validateExtByDir(extensionName,null);// 验证上传图片后缀名是否符合网站要求
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
