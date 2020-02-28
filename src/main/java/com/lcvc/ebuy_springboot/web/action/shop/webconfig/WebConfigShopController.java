package com.lcvc.ebuy_springboot.web.action.shop.webconfig;

import com.lcvc.ebuy_springboot.model.WebConfig;
import com.lcvc.ebuy_springboot.model.base.Constant;
import com.lcvc.ebuy_springboot.model.base.JsonCode;
import com.lcvc.ebuy_springboot.model.form.webconfig.WebConfigReturn;
import com.lcvc.ebuy_springboot.service.WebConfigService;
import io.swagger.annotations.Api;
import io.swagger.annotations.ApiOperation;
import org.apache.commons.lang.StringUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.Map;

@Api(tags = "前台网站配置模块")
@RestController
@RequestMapping(value = "/api/shop/webconfig")
public class WebConfigShopController {
    @Autowired
    private WebConfigService webConfigService;


    @ApiOperation(value = "读取是否需要验证码")
    @GetMapping
    public Map<String, Object> getWebConfig(HttpSession session){
        Map<String, Object> map=new HashMap<String, Object>();
        map.put(Constant.JSON_CODE, JsonCode.SUCCESS.getValue());
        WebConfig webConfig=(WebConfig)session.getAttribute("webConfig");
        //必须要将数据包装后才能返回前台
        WebConfigReturn webConfigReturn=new WebConfigReturn();
        if(StringUtils.isEmpty(webConfig.getInviteCodeOfCustomer())){ // 如果邀请码为空
            webConfigReturn.setInviteCodeNeedOfCustomer(false);//表示不需要验证码
        }else{
            webConfigReturn.setInviteCodeNeedOfCustomer(true);//表示需要验证码
        }
        map.put(Constant.JSON_DATA,webConfigReturn);
        return map;
    }
}
