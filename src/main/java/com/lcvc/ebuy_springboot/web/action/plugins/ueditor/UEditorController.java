package com.lcvc.ebuy_springboot.web.action.plugins.ueditor;

import com.baidu.ueditor.ActionEnter;
import org.springframework.stereotype.Controller;
import org.springframework.util.ClassUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;


/**
 * 用于处理ueditor的文件上传（代替原controller.jsp的功能）
 * 必须要后台管理员才可以操作，因此设定在backstage目录下
 * ueditor原生客户端只有一个服务端接口（原controller.jsp），这个接口会根据客户端的动作（上传图片、文件或是显示文件列表）来决定调用剩余的类。
 * @author ljy
 * 说明：经过三天的不间断尝试，最终决定采用ueditor的源码略加修改（建立与config.json的链接，修改上传方式以适应spring boot）
 * 1.删除controller.jsp页面，重写UEditorController类
 * 2.修改ConfigManager类的getConfigPath方法，重新指向config.json
 * 3.修改BinaryUploader类，因为SpringMVC框架对含字节流的request进行了处理，此处传的是处理过的request，故获取不到字节流。此时采用SpringMVC框架的解析器multipartResolver。
 * 4.在实际操作中，出现回显路径问题（如果按实际项目需求存储在E盘或D盘下则不会出现此类问题）
 * 在UEditorController类处理结果的返回值中（String exec = new ActionEnter(request, rootPath).exec();）进行如下处理
 * （1）图片上传后的回显路径会包括spring boot的static，但是spring boot中直接访问是不需要static的，故在最后的回显地址中将static/替换掉
 * （2）在ueditor查看文件或图片目录时，图片会按照物理路径显示，导致图片无法显示。故将物理路径替换掉，改为相对路径
 *
 */
@Controller
@RequestMapping(value="/api/backstage")
public class UEditorController {

    /**
     *
     * @param action
     * @param upfile
     * @param request
     * @param response
     */
    @RequestMapping(value="/ueditor")
    public void config(@RequestParam("action") String action, MultipartFile upfile, HttpServletRequest request, HttpServletResponse response) {
        response.setContentType("application/json");
        String rootPath = ClassUtils.getDefaultClassLoader().getResource("").getPath();//获取项目的根目录，注意不能用JSP那套获取根目录，因为spring boot的tomcat为内置，每次都变
        //String rootPath = request.getSession().getServletContext().getRealPath("/");
        try {
            String exec = new ActionEnter(request, rootPath).exec();
            if(action!= null) {
                if(action.startsWith("list")){
                    //如果请求的方法是listfile和listimage，就把文件路径替换一下，绝对路径替换成相对路径，否则返回的图片和文件地址是错误的，将无法访问。
                    rootPath=rootPath.substring(1,rootPath.length()-1)+"/static";//去掉roootpath的第一个斜杠"/"
                    exec= exec.replaceAll(rootPath,"");
                }else{
                    exec= exec.replace("/static","");
                }
            }
            //
            PrintWriter writer = response.getWriter();
            writer.write(exec);
            writer.flush();
            writer.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }


    /**
     * 此方法为自己设定上传规则时使用
     * ueditor访问的入口，在ueditor处先配置这个
     * 说明：
     * （1）action的动作与ueditor的值一致
     * uploadimage：//执行上传图片或截图的action名称
     * uploadscrawl：//执行上传涂鸦的action名称
     * uploadvideo：//执行上传视频的action名称
     * uploadfile：//controller里,执行上传视频的action名称
     * catchimage：//执行抓取远程图片的action名称
     * listimage：//执行列出图片的action名称
     * listfile：//执行列出文件的action名称
     * @param action 前台传递过来的处理动作（注意要和ueditor的要求一致）     *
     * @param request
     * @param response
     */
    /*@RequestMapping(value="/ueditor")
    public void config(@RequestParam("action") String action, MultipartFile upfile, HttpServletRequest request, HttpServletResponse response) {
        String exec=null;//最终要返回的信息，JSON格式
        response.setContentType("application/json");
        String rootPath = ClassUtils.getDefaultClassLoader().getResource("").getPath();//获取项目的根目录，注意不能用JSP那套获取根目录，因为spring boot的tomcat为内置，每次都变
        ConfigManager configManager=ConfigManager.getInstance(rootPath,request.getContextPath(),request.getRequestURI());
        org.json.JSONObject jsonConfig=configManager.getAllConfig();//读取ueditor的config.json配置信息
        //System.out.println(jsonConfig.get("videoMaxSize"));//读取ueditor的指定键值
        //String rootPath = request.getSession().getServletContext().getRealPath("/");
        try {
            if(action!=null){
                if(action.equals("config")){
                    exec = new ActionEnter(request, rootPath).exec();//调用ueditor原生的处理方法，返回config.json配置信息
                }else if(action.equals("uploadimage")){
                    exec=this.uploadimage(upfile,rootPath);
                }
            }
            PrintWriter writer = response.getWriter();
            writer.write(exec);
            writer.flush();
            writer.close();
        } catch (IOException e) {
            e.printStackTrace();
        }
    }

    private String uploadimage(MultipartFile upfile,String rootPath) throws IOException {
        Ueditor ueditor = new Ueditor();
        String filePath=rootPath+ "static/upload/ueditor/image/";//获取图片上传后保存的物理路径
        MyFileOperator.createDir(filePath);//创建存储目录
        String fileName=upfile.getOriginalFilename();//获取文件名
        try {
            upfile.transferTo(new File(filePath+fileName));
            ueditor.setState("SUCCESS");
            ueditor.setTitle(fileName);
            ueditor.setOriginal(fileName);
            ueditor.setUrl("/upload/ueditor/image/"+fileName);
            ueditor.setSize(upfile.getSize());
        } catch (IOException e) {
            ueditor.setState("上传失败");
        }
        return  JSONObject.fromObject(ueditor).toString();
    }*/



}