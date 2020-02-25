package com.lcvc.ebuy_springboot.web.action.backstage.webconfig;

import com.lcvc.ebuy_springboot.model.WebConfig;
import com.lcvc.ebuy_springboot.model.base.Constant;
import com.lcvc.ebuy_springboot.model.base.JsonCode;
import com.lcvc.ebuy_springboot.service.WebConfigService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@Api(tags = "前台购物车模块")
@RestController
@RequestMapping(value = "/api/backstage/webconfig")
public class WebConfigController {
    @Autowired
    private WebConfigService webConfigService;


    @ApiOperation(value = "读取网站配置")
    @GetMapping
    public Map<String, Object> getWebConfig(HttpSession session){
        Map<String, Object> map=new HashMap<String, Object>();
        map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
        map.put(Constant.JSON_DATA,(WebConfig)session.getAttribute("webConfig"));
        return map;
    }

    @ApiOperation(value = "读取网站配置")
    @PutMapping
    public Map<String, Object> getWebConfig(@RequestBody WebConfig webConfig, HttpSession session){
        Map<String, Object> map=new HashMap<String, Object>();
        webConfigService.update(webConfig);
        map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
        return map;
    }
}
