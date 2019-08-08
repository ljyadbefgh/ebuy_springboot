package com.lcvc.ebuy_springboot.web.filter;

import com.lcvc.ebuy_springboot.model.Constant;
import com.lcvc.ebuy_springboot.model.JsonCode;
import com.lcvc.ebuy_springboot.service.AdminService;
import net.sf.json.JSONObject;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

public class LoginForAdminInterceptor extends HandlerInterceptorAdapter {

    @Resource
    private AdminService adminService;
    //private static final String[] IGNORE_URI = {};//定义不拦截的资源

    /**
     * 在请求处理之前进行调用（Controller方法调用之前）
     * 基于URL实现的拦截器
     * 在执行action里面的处理逻辑之前执行，它返回的是boolean，这里如果我们返回true在接着执行postHandle和afterCompletion，如果我们返回false则中断执行。
     */
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        // 这是要放行通过的域名 如果不限制用一个 * 也可以，就是不安全
        //response.addHeader("Access-Control-Allow-Origin", "http://bz.tczmh.club");
        response.addHeader("Access-Control-Allow-Origin", "http://127.0.0.1:8020");
        // 允许的方法 例如GET POST PUT DELETE，只要放行用过的
        response.setHeader("Access-Control-Allow-Methods", "OPTIONS,GET,POST,DELETE,PUT,PATCH");
        // 这个对应的是ajax里设置了header，例如存了token 或者 ontentType: "application/json"
        response.setHeader("Access-Control-Allow-Headers", "accept,content-type,application/json");
        // 指示的请求的响应是否可以暴露于该页面。当true值返回时它可以被暴露
        response.setHeader("Access-Control-Allow-Credentials","true");



        String url = request.getRequestURL().toString();//获取被读取的接口路径,如http://127.0.0.1:8088/ebuy_springboot/backstage/logout
        boolean flag = false;//默认验证失败，即拦截请求
        String path = request.getServletPath();
        HttpSession session=request.getSession();
        if (false) {//对要拦截的路径进行判断（当前不需要）
            //不需要的拦截直接过
            flag=true;
        } else {
            //对账户是否登陆进行验证
            //返回错误信息
           if(session.getAttribute("admin")==null){
                Map<String, Object> map = new HashMap<String, Object>();
                map.put(Constant.JSON_CODE, JsonCode.ERROR.getValue());
                map.put(Constant.JSON_MESSAGE, "请先登录");
                JSONObject jsonObject= JSONObject.fromObject(map);
                //注意，必须加上这个，才能让前端JS认为是JSON格式来进行相应处理
                response.setContentType("application/json;charset=UTF-8");
                PrintWriter out = response.getWriter();
                out.print(jsonObject.toString());
                out.flush();
                out.close();
               flag=false;
            }else{//如果已经登录
               flag=true;
           }
        }
        return flag;
    }
}
