package com.lcvc.ebuy_springboot.config.upload;

import org.springframework.beans.factory.annotation.Value;
import org.springframework.boot.web.servlet.MultipartConfigFactory;
import org.springframework.context.annotation.Bean;

import javax.servlet.MultipartConfigElement;

/**
 * 可以在这里对spring上传进行代码配置，这样就无需通过yml配置
 */
//@Configuration
public class UploadFileConfig {

    @Value("${myFile.uploadFolder}")
    private String uploadFolder;//上传的路径

    @Bean
    MultipartConfigElement multipartConfigElement() {
        MultipartConfigFactory factory = new MultipartConfigFactory();
        factory.setLocation(uploadFolder);
        //文件最大
        factory.setMaxFileSize("5MB");
        // 设置总上传数据总大小
        factory.setMaxRequestSize("10MB");
        return factory.createMultipartConfig();
    }
}