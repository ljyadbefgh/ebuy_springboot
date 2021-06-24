package com.lcvc.ebuy_springboot.web.interceptor.shop;

import com.lcvc.ebuy_springboot.model.Customer;
import com.lcvc.ebuy_springboot.model.base.Constant;
import com.lcvc.ebuy_springboot.model.base.JsonCode;
import com.lcvc.ebuy_springboot.service.CustomerService;
import net.sf.json.JSONObject;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.PrintWriter;
import java.util.HashMap;
import java.util.Map;

public class LoginForCustomerInterceptor extends HandlerInterceptorAdapter {

    @Resource
    private CustomerService customerService;

    //private static final String[] IGNORE_URI = {};//定义不拦截的资源

    /**
     * 在请求处理之前进行调用（Controller方法调用之前）
     * 基于URL实现的拦截器
     * 在执行action里面的处理逻辑之前执行，它返回的是boolean，这里如果我们返回true在接着执行postHandle和afterCompletion，如果我们返回false则中断执行。
     */
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        String url = request.getRequestURL().toString();//获取被读取的接口路径,如http://127.0.0.1:8088/ebuy_springboot/backstage/logout
        boolean flag = false;//默认验证失败，即拦截请求
        String path = request.getServletPath();
        HttpSession session=request.getSession();
        if (flag) {//对要拦截的路径进行判断（当前不需要）
            //不需要的拦截直接过
            flag=true;
        } else {
            //对账户是否登陆进行验证
            //返回错误信息
            Object customerObject=session.getAttribute("customer");
           if(customerObject==null){ // 如果没有登陆
                Map<String, Object> map = new HashMap<String, Object>();
                map.put(Constant.JSON_CODE, JsonCode.LOGIN.getValue());
                map.put(Constant.JSON_MESSAGE, "请先登录");
                map.put("state", "请先登录");//专门为ueditor写的返回信息，如果不需要可以去掉该行
                JSONObject jsonObject= JSONObject.fromObject(map);
                //注意，必须加上这个，才能让前端JS认为是JSON格式来进行相应处理
                response.setContentType("application/json;charset=UTF-8");
                PrintWriter out = response.getWriter();
                out.print(jsonObject.toString());
                out.flush();
                out.close();
                flag=false;
            }else{//如果已经登录
               //更新账户信息，后期要改为redis，减少数据库交互次数
               String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+request.getContextPath()+"/";//获取项目根目录网址
               Customer customer=customerService.getCustomer(((Customer)customerObject).getId(),basePath);
               session.setAttribute("customer",customer);//更新客户的登陆信息
               flag=true;
           }
        }
        return flag;
    }
}
