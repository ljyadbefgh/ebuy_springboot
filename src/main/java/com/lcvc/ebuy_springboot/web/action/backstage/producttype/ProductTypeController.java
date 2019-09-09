package com.lcvc.ebuy_springboot.web.action.backstage.producttype;


import com.lcvc.ebuy_springboot.model.ProductType;
import com.lcvc.ebuy_springboot.model.base.Constant;
import com.lcvc.ebuy_springboot.model.base.JsonCode;
import com.lcvc.ebuy_springboot.service.ProductTypeService;
import com.lcvc.ebuy_springboot.util.file.MyFileOperator;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiImplicitParam;
import io.swagger.annotations.ApiImplicitParams;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

@Api(tags = "后台产品栏目管理模块")
@RestController
@RequestMapping(value = "/api/backstage/producttype")
public class ProductTypeController {
    @Resource
    private ProductTypeService productTypeService;
    @Value("${myFile.uploadFolder}")
    private String uploadFolder;//上传路径

    @ApiOperation(value = "读取产品栏目信息", notes = "读取产品栏目所有信息，不分页")
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

    @ApiOperation(value = "编辑产品栏目信息", notes = "根据传入的值（必须要有id）进行修改（没有传入的字段则保持原值）")
    @ApiImplicitParam(name = "productType", value = "产品栏目信息，id不能为空", paramType = "body", dataType="ProductType",required = true)
    @PutMapping
    public Map<String, Object> updateProductType(@RequestBody ProductType productType){
        Map<String, Object> map=new HashMap<String, Object>();
        productType.setImageUrl(null);//更新不能更改上传图片，只能用上传图片方式更改
        productTypeService.updateProductType(productType);
        map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
        map.put(Constant.JSON_MESSAGE, "修改成功");
        return map;
    }

    @ApiOperation(value = "添加产品栏目信息", notes = "id不传值，由服务器赋值")
    @ApiImplicitParam(name = "productType", value = "产品栏目信息，id不传值", paramType = "body", dataType="ProductType",required = true)
    @PostMapping
    public  Map<String, Object> addProductType(@RequestBody ProductType productType){
        Map<String, Object> map=new HashMap<String, Object>();
        productTypeService.saveProductType(productType);
        map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
        map.put(Constant.JSON_MESSAGE, "产品类别创建成功");
        return map;
    }

    @ApiOperation(value = "上传指定产品栏目的图片", notes = "上传指定产品栏目的图片")
    @ApiImplicitParams({
            @ApiImplicitParam(name = "id", value = "指定产品栏目的id", paramType = "path", required = true,example="1"),
            @ApiImplicitParam(name = "file", value = "要上传的图片", paramType = "form", dataType="__file",required = true)
    })
    @PostMapping("/uploadPhoto/{id}")
    public Map<String, Object> uploadPhoto(@PathVariable Integer id, MultipartFile file){
        Map<String, Object> map=new HashMap<String, Object>();
        map.put(Constant.JSON_CODE, JsonCode.ERROR.getValue());//默认失败
        if(!file.isEmpty()){
            ProductType productType=productTypeService.getProductType(id);//获取对象
            if(productType!=null){//如果该对象存在，则执行上传
                //String basepath= ClassUtils.getDefaultClassLoader().getResource("").getPath();//获取项目的根目录，注意不能用JSP那套获取根目录，因为spring boot的tomcat为内置，每次都变
                String basepath=uploadFolder;
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
                    productType=new ProductType(id);
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

    @ApiOperation(value = "批量删除产品栏目信息", notes = "根据id的值删除产品栏目信息")
    @ApiImplicitParam(name = "ids", value = "要删除的产品栏目id集合", required = true,paramType = "path",example ="15,25,74" )
    @DeleteMapping("/{ids}")
    public  Map<String, Object> doDeleteProductTypes(@PathVariable("ids")Integer[] ids){
        Map<String, Object> map=new HashMap<String, Object>();
        String basePath=uploadFolder;
        productTypeService.deleteProductTypes(ids,basePath);
        map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
        return map;
    }

    /**
     * 读取指定产品栏目
     * @param id 指定产品分类的主键
     * @return
     */
    @ApiOperation(value = "读取指定产品栏目信息", notes = "根据id的值读取指定产品栏目信息")
    @ApiImplicitParam(name = "id", value = "要读取的账户id", paramType = "path",dataType="int", required = true,example="1")
    @GetMapping("/{id}")
    public Map<String, Object>  getProductType(@PathVariable Integer id){
        Map<String, Object> map=new HashMap<String, Object>();
        map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
        map.put(Constant.JSON_DATA,productTypeService.getProductType(id));
        return map;
    }

}
