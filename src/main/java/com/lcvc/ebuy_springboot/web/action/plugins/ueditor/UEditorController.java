package com.lcvc.ebuy_springboot.web.action.plugins.ueditor;

import com.baidu.ueditor.ActionEnter;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Controller;
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
 * 一、20190821改进
 * 说明：经过三天的不间断尝试，最终决定采用ueditor的源码略加修改（建立与config.json的链接，修改上传方式以适应spring boot）
 * 1.删除controller.jsp页面，重写UEditorController类
 * 2.修改ConfigManager类的getConfigPath方法，重新指向config.json
 * 3.修改BinaryUploader类，因为SpringMVC框架对含字节流的request进行了处理，此处传的是处理过的request，故获取不到字节流。此时采用SpringMVC框架的解析器multipartResolver。
 * 4.在实际操作中，出现回显路径问题（如果按实际项目需求存储在E盘或D盘下则不会出现此类问题）
 * 在UEditorController类处理结果的返回值中（String exec = new ActionEnter(request, rootPath).exec();）进行如下处理
 * （1）图片上传后的回显路径会包括spring boot的static，但是spring boot中直接访问是不需要static的，故在最后的回显地址中将static/替换掉
 * （2）在ueditor查看文件或图片目录时，图片会按照物理路径显示，导致图片无法显示。故将物理路径替换掉，改为相对路径
 *
 * 二、20190903改进
 * 说明：
 * 1.将项目打包为war上传服务器后，如果将文件上传项目中会出现tomcat%208.5的路径（实际应为tomcat），经过调试仍无法找到原因，初步猜想应该是
 * spring boot的内置tomcat没有处理干净。但是鉴于将文件上传到项目路径中本就不合适，因此将文件统一上传到C盘（非项目路径），并在config.json做
 * 相应修改，同时针对上述一步骤的4问题，根据实际情况，重新处理了回显路径
 * 2.在config.json中配置图片访问路径前缀，需要连续配置多个，比较麻烦；为了方便处理，统一在项目中用代码进行处理
 * 原理：
 * （1）文件上传成功后的返回路径为：
 * {"state": "SUCCESS","original": "20170907203401_181.jpg","size": "26486","title": "1568039752848055527.jpg","type": ".jpg","url": "/website/image/20190909/1568039752848055527.jpg"}
 * 为返回的图片地址加上项目地址，通过对"url": "进行替换为"url": "http://127.0.0.1:8088/ebuy_springboot/upload/即可完成操作。
 * 替换后的字符串为
 * {"state": "SUCCESS","original": "20170907203401_181.jpg","size": "26486","title": "1568039752848055527.jpg","type": ".jpg","url": "http://127.0.0.1:8088/ebuy_springboot/upload/website/image/20190909/1568039752848055527.jpg"}
 *（2）通过在线管理访问的图片默认返回路径为（比文件上传要多处理一步）：
 * bd__editor__y8hbec({"state": "SUCCESS","total": 10,"start": 0, list: [{"state": "SUCCESS","url": "c:/ebuy_springboot/upload/website/image/20190905/1567664587253073312.jpg"},{"state": "SUCCESS","url": "c:/ebuy_springboot/upload/website/image/20190905/1567666750056017461.png"},{"state": "SUCCESS","url": "c:/ebuy_springboot/upload/website/image/20190905/1567666889912086346.jpg"},{"state": "SUCCESS","url": "c:/ebuy_springboot/upload/website/image/20190905/1567667076502008493.jpg"},{"state": "SUCCESS","url": "c:/ebuy_springboot/upload/website/image/20190905/1567667695175015075.png"},{"state": "SUCCESS","url": "c:/ebuy_springboot/upload/website/image/20190905/1567673268751024763.jpg"},{"state": "SUCCESS","url": "c:/ebuy_springboot/upload/website/image/20190905/1567673268751099129.jpg"},{"state": "SUCCESS","url": "c:/ebuy_springboot/upload/website/image/20190909/1568039752848055527.jpg"},{"state": "SUCCESS","url": "c:/ebuy_springboot/upload/website/image/20190909/1568040001608045013.jpg"},{"state": "SUCCESS","url": "c:/ebuy_springboot/upload/website/image/20190909/1568040077000074215.jpg"} ]});
 *首先将物理路径改为逻辑路径，即将路径的c:/ebuy_springboot/upload/删除，第一次处理后的返回路径为：
 *bd__editor__aay75n({"state": "SUCCESS","total": 10,"start": 0, list: [{"state": "SUCCESS","url": "/website/image/20190905/1567664587253073312.jpg"},{"state": "SUCCESS","url": "/website/image/20190905/1567666750056017461.png"},{"state": "SUCCESS","url": "/website/image/20190905/1567666889912086346.jpg"},{"state": "SUCCESS","url": "/website/image/20190905/1567667076502008493.jpg"},{"state": "SUCCESS","url": "/website/image/20190905/1567667695175015075.png"},{"state": "SUCCESS","url": "/website/image/20190905/1567673268751024763.jpg"},{"state": "SUCCESS","url": "/website/image/20190905/1567673268751099129.jpg"},{"state": "SUCCESS","url": "/website/image/20190909/1568039752848055527.jpg"},{"state": "SUCCESS","url": "/website/image/20190909/1568040001608045013.jpg"},{"state": "SUCCESS","url": "/website/image/20190909/1568040077000074215.jpg"} ]});
 *其次为返回的图片地址加上项目地址，通过对List集合中的每个"url": "进行替换为"url": "http://127.0.0.1:8088/ebuy_springboot/upload/即可完成操作。
 *替换后的字符串为
 * bd__editor__jpm9v4({"state": "SUCCESS","total": 10,"start": 0, list: [{"state": "SUCCESS","url": "http://127.0.0.1:8088/ebuy_springboot/upload/website/image/20190905/1567664587253073312.jpg"},{"state": "SUCCESS","url": "http://127.0.0.1:8088/ebuy_springboot/upload/website/image/20190905/1567666750056017461.png"},{"state": "SUCCESS","url": "http://127.0.0.1:8088/ebuy_springboot/upload/website/image/20190905/1567666889912086346.jpg"},{"state": "SUCCESS","url": "http://127.0.0.1:8088/ebuy_springboot/upload/website/image/20190905/1567667076502008493.jpg"},{"state": "SUCCESS","url": "http://127.0.0.1:8088/ebuy_springboot/upload/website/image/20190905/1567667695175015075.png"},{"state": "SUCCESS","url": "http://127.0.0.1:8088/ebuy_springboot/upload/website/image/20190905/1567673268751024763.jpg"},{"state": "SUCCESS","url": "http://127.0.0.1:8088/ebuy_springboot/upload/website/image/20190905/1567673268751099129.jpg"},{"state": "SUCCESS","url": "http://127.0.0.1:8088/ebuy_springboot/upload/website/image/20190909/1568039752848055527.jpg"},{"state": "SUCCESS","url": "http://127.0.0.1:8088/ebuy_springboot/upload/website/image/20190909/1568040001608045013.jpg"},{"state": "SUCCESS","url": "http://127.0.0.1:8088/ebuy_springboot/upload/website/image/20190909/1568040077000074215.jpg"} ]});
 */
@Api(tags = "百度编辑器ueditor服务端")
@Controller
@RequestMapping(value="/api/backstage")
public class UEditorController {
    @Value("${myFile.uploadFolder}")
    private String uploadFolder;//上传路径（物理路径）

    /**
     *
     * @param action
     * @param upfile
     * @param request
     * @param response
     */
    @ApiOperation(value = "ueditor默认访问接口", notes = "未更改名字")
    @RequestMapping(value="/ueditor")
    public void config(@RequestParam("action") String action, MultipartFile upfile, HttpServletRequest request, HttpServletResponse response) {
        //response.addHeader("X-Content-Type-Options", "nosniff");


        //response.setHeader("Content-Type", "text/javascript");

        response.setContentType("application/json;charset=UTF-8");//上传文件用这个
        String rootPath=uploadFolder;
        try {
            String exec = new ActionEnter(request, rootPath).exec();
            if(action!= null) {
                String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";//获取项目根目录网址
                basePath=basePath+"upload";//访问上传文件路径，专门替换config.json中图片前缀网址的步骤
                if(action.equals("config")){//如果是第一次访问，则不作任何改变、
                    /**
                     *  特别说明：由于假如spring security后，使用response.setContentType("application/json;charset=UTF-8");会出现nosniff，即无法识别服务端类型-这点很奇怪，无法处理
                     *  故手动指定Content-Type为Javascript类型（"application/ecmascript"，"application/javascript"，"application/x-javascript"，"text/ecmascript"，"text/javascript"，"text/jscript"，"text/x-javascript"，"text/vbs"，"text/vbscript"）的一种即可
                     *  建议后期：跨域的数据请求转到本站服务器（用Node.js），由本站服务器去做跨域请求，即跳过浏览器同源策略的限制
                     */
                    response.setContentType("text/javascript;charset=UTF-8");//必须用
                }else if(action.startsWith("list")){
                    response.setContentType("text/javascript;charset=UTF-8");//加载图片列表用这个
                    String root=new String(rootPath);
                    //如果请求的方法是listfile和listimage，就把文件路径替换一下，绝对路径替换成相对路径，否则返回的图片和文件地址是错误的，将无法访问。
                    root=root.substring(0,root.length()-1);//c:/ebuy_springboot/upload/，最后的“/”不要
                    exec= exec.replaceAll(root,"");
                    exec= exec.replaceAll("\"url\": \"","\"url\": \""+basePath);//专门替换config.json中图片前缀网址的步骤
                }else{
                    //exec= exec.replace("/static","");
                    exec= exec.replaceAll("\"url\": \"","\"url\": \""+basePath);//专门替换config.json中图片前缀网址的步骤
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