package com.lcvc.ebuy_springboot.web.action.backstage.producttype;


import com.lcvc.ebuy_springboot.model.ProductType;
import com.lcvc.ebuy_springboot.model.base.Constant;
import com.lcvc.ebuy_springboot.model.base.JsonCode;
import com.lcvc.ebuy_springboot.service.ProductTypeService;
import com.lcvc.ebuy_springboot.util.file.MyFileOperator;
import org.springframework.util.ClassUtils;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@RestController
@RequestMapping(value = "/api/backstage/producttype")
public class ProductTypeController {
    @Resource
    private ProductTypeService productTypeService;

    @GetMapping
    public Map<String, Object>  toManageProductType(HttpServletRequest request){
        Map<String, Object> map=new HashMap<String, Object>();
        String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";//获取项目根目录网址
        List<ProductType> list=productTypeService.getProductTypes(basePath);
        map.put(Constant.JSON_TOTAL,list.size());
        map.put(Constant.JSON_DATA,list);
        map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
        return map;
    }

    @PatchMapping
    public Map<String, Object> updateProductType(@RequestBody ProductType productType){
        Map<String, Object> map=new HashMap<String, Object>();
        productType.setImageUrl(null);//更新不能更改上传图片，只能用上传图片方式更改
        productTypeService.updateProductType(productType);
        map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
        map.put(Constant.JSON_MESSAGE, "修改成功");
        return map;
    }

    @PostMapping
    public  Map<String, Object> addProductType(@RequestBody ProductType productType){
        Map<String, Object> map=new HashMap<String, Object>();
        productTypeService.saveProductType(productType);
        map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
        map.put(Constant.JSON_MESSAGE, "产品类别创建成功");
        return map;
    }

    /**
     * 上传产品类别头像
     * @param id 客户的Id
     * @param file 要上传的头像
     * @return
     */
    @PostMapping("/uploadPhoto/{id}")
    public Map<String, Object> uploadPhoto(@PathVariable Integer id, MultipartFile file){
        Map<String, Object> map=new HashMap<String, Object>();
        map.put(Constant.JSON_CODE, JsonCode.ERROR.getValue());//默认失败
        if(!file.isEmpty()){
            ProductType productType=productTypeService.getProductType(id);//获取对象
            if(productType!=null){//如果该对象存在，则执行上传
                String basepath= ClassUtils.getDefaultClassLoader().getResource("").getPath();//获取项目的根目录，注意不能用JSP那套获取根目录，因为spring boot的tomcat为内置，每次都变
                String filePath=basepath+Constant.PRODUCTTYPE_PICTURE_UPLOAD_URL;//获取图片上传后保存的物理路径
                MyFileOperator.createDir(filePath);//创建存储目录
                String fileName=file.getOriginalFilename();//获取文件名
                String extensionName=MyFileOperator.getExtensionName(fileName);//获取文件扩展名
                fileName=id+"."+extensionName;//根据id重新生成文件名
                try {
                    file.transferTo(new File(filePath+fileName));
                    if(!fileName.equals(productType.getImageUrl())){//如果新上传的文件名和原来的不一样，则需要删除原来的文件；如果一样则直接覆盖，不需要处理
                        MyFileOperator.deleteFile(filePath+productType.getImageUrl());//删除原文件
                    }
                    productType.setImageUrl(fileName);
                    productTypeService.updateProductType(productType);//将新的图片信息存入数据库
                    map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
                    map.put(Constant.JSON_MESSAGE, "上传成功");
                } catch (IOException e) {
                    map.put(Constant.JSON_MESSAGE, "上传失败："+e.getMessage());
                }
            }
        }else{
            map.put(Constant.JSON_MESSAGE, "上传失败：请先选择文件");
        }
        return map;
    }

    @DeleteMapping("/{ids}")
    public  Map<String, Object> doDeleteProductTypes(@PathVariable("ids")Integer[] ids){
        Map<String, Object> map=new HashMap<String, Object>();
        String basepath= ClassUtils.getDefaultClassLoader().getResource("").getPath();//获取项目的根目录，注意不能用JSP那套获取根目录，因为spring boot的tomcat为内置，每次都变
        productTypeService.deleteProductTypes(ids,basepath);
        map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
        return map;
    }

    /**
     * 读取指定产品分类
     * @param id 指定产品分类的主键
     * @return
     */
    @GetMapping("/{id}")
    public Map<String, Object>  getProductType(@PathVariable Integer id){
        Map<String, Object> map=new HashMap<String, Object>();
        map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
        map.put(Constant.JSON_DATA,productTypeService.getProductType(id));
        return map;
    }

}
