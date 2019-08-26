package com.lcvc.ebuy_springboot.web.interceptor;

import com.lcvc.ebuy_springboot.model.base.Constant;
import com.lcvc.ebuy_springboot.model.base.JsonCode;
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
        String url = request.getRequestURL().toString();//获取被读取的接口路径,如http://127.0.0.1:8088/ebuy_springboot/backstage/logout
        boolean flag = false;//默认验证失败，即拦截请求
        String path = request.getServletPath();
        HttpSession session=request.getSession();
        //因为ueditor每次调用上传组件前会先访问服务端配置，如果访问不了服务端配置无法调用相关组件，所以这里只要拦截了服务端配置就可以（暂行办法）
        if(path.equals("/api/backstage/ueditor")){//专门针对ueditor进行拦截，因为ueditor的多图上传无法传递登陆状态（待解决问题，ueditor多图列表等可以传递），故不拦截多图请求
            String method=request.getParameter("action");
            if(!method.equals("config")){
                flag=true;//直接通过验证
            }
        }
        if (flag) {//对要拦截的路径进行判断（当前不需要）
            //不需要的拦截直接过
            flag=true;
        } else {
            //对账户是否登陆进行验证
            //返回错误信息
           if(session.getAttribute("admin")==null){
                Map<String, Object> map = new HashMap<String, Object>();
                map.put(Constant.JSON_CODE, JsonCode.ERROR.getValue());
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
               flag=true;
           }
        }
        return flag;
    }
}
