package com.lcvc.ebuy_springboot.config.upload;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.context.annotation.Configuration;
import org.springframework.web.servlet.config.annotation.ResourceHandlerRegistry;
import org.springframework.web.servlet.config.annotation.WebMvcConfigurer;

/**
 * 上传文件配置，用于将文件上传到绝对路径，如C盘
 * 其中，路径在application.yml里面配置，也可以把路径写在类里面
 * 说明:
 * 1. uploadFolder: c://ebuy_springboot/upload/
 * 表示将文件上传到C盘相应的目录下
 * 2.staticAccessPath: /upload/**
 * 表示静态资源的访问路径，例如在上面文件保存在c://ebuy_springboot/upload/目录下，即不在项目文件夹中，要通过网址访问这些资源是做不到的
 * ，所以要配置上面路径，这样网址上就可以通过“项目域名/upload/”路径访问到这些上传的资源
 */
@Configuration
public class UploadFilePathConfig  implements WebMvcConfigurer {

    @Value("${myFile.staticAccessPath}")
    private String staticAccessPath;//访问路径
    @Value("${myFile.uploadFolder}")
    private String uploadFolder;//上传路径

    @Override
    public void addResourceHandlers(ResourceHandlerRegistry registry) {
        registry.addResourceHandler(staticAccessPath).addResourceLocations("file:" + uploadFolder);
    }
}
