package com.lcvc.ebuy_springboot.web.action.plugins.ueditor;

import com.lcvc.ebuy_springboot.model.base.Constant;
import com.lcvc.ebuy_springboot.model.base.JsonCode;
import com.lcvc.ebuy_springboot.util.file.MyFileOperator;
import org.springframework.util.ClassUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.multipart.MultipartFile;
import springfox.documentation.annotations.ApiIgnore;

import java.io.File;
import java.io.IOException;
import java.util.HashMap;
import java.util.Map;

@ApiIgnore
//该类暂时废弃不用
//@Controller
//@RequestMapping(value="/api")
public class UEditorUpload {
    @RequestMapping(value="/uploadFile")
    public Map<String, Object> uploadFile(MultipartFile upFile) {
        Map<String, Object> map=new HashMap<String, Object>();
        if(!upFile.isEmpty()){
            String basepath= ClassUtils.getDefaultClassLoader().getResource("").getPath();//获取项目的根目录，注意不能用JSP那套获取根目录，因为spring boot的tomcat为内置，每次都变
            String filePath=basepath+Constant.PRODUCTTYPE_PICTURE_UPLOAD_URL;//获取图片上传后保存的物理路径
            MyFileOperator.createDir(filePath);//创建存储目录
            String fileName=upFile.getOriginalFilename();//获取文件名
            String extensionName=MyFileOperator.getExtensionName(fileName);//获取文件扩展名
            //fileName=id+"."+extensionName;//根据id重新生成文件名
            try {
                upFile.transferTo(new File(filePath+fileName));
                map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
                map.put(Constant.JSON_MESSAGE, "上传成功");
            } catch (IOException e) {
                map.put(Constant.JSON_MESSAGE, "上传失败："+e.getMessage());
            }
        }else{
            map.put(Constant.JSON_MESSAGE, "上传失败：请先选择文件");
        }
        return map;
    }
}
