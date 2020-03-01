package com.lcvc.ebuy_springboot.aop.service;


import com.lcvc.ebuy_springboot.model.WebConfig;
import com.lcvc.ebuy_springboot.model.exception.MyServiceException;
import com.lcvc.ebuy_springboot.service.WebConfigService;
import org.apache.commons.logging.Log;
import org.apache.commons.logging.LogFactory;
import org.aspectj.lang.JoinPoint;
import org.aspectj.lang.annotation.Aspect;
import org.aspectj.lang.annotation.Before;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.web.context.request.RequestAttributes;
import org.springframework.web.context.request.RequestContextHolder;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

/**
 * 用于根据网站配置拦截信息
 */
@Aspect
@Component
public class WebConfigAspect {

    public static final Log log= LogFactory.getLog(WebConfigAspect.class);

    @Autowired
    private WebConfigService webConfigService;

    /**
     * 读取网站配置信息
     * 说明
     * 1.首先从session读取
     * 2.如果session没有（一般是在业务层测试中），则直接从数据库读取
     */
    private WebConfig getWebConfig(){
        WebConfig webConfig=null;
        if(RequestContextHolder.getRequestAttributes()!=null){//如果是不通过web调用本aop（例如定时程序或是业务层调用，不会获得web对象）
            RequestAttributes requestAttributes = RequestContextHolder.getRequestAttributes();
            HttpServletRequest request = (HttpServletRequest) requestAttributes.resolveReference(RequestAttributes.REFERENCE_REQUEST);
            HttpSession session=request.getSession();
            webConfig=(WebConfig)session.getAttribute("webConfig");//更新客户的登陆信息
        }
        if(webConfig==null){
            webConfig=webConfigService.get();//从数据库读取
        }
        return webConfig;
    }

    /**
     * 对登陆请求进行拦截
     * @param jp
     * @throws Exception
     */
    @Before("execution(*  com.lcvc.ebuy_springboot.service.CustomerService.login(..))")
    public void beforeLogin(JoinPoint jp) throws Exception {
        WebConfig webConfig=this.getWebConfig();
        //前面已经经过spring验证框架的验证
        if(webConfig.getCloseLoginOfCustomer()){
            throw new MyServiceException("登陆失败：系统当前禁止客户登陆");
        }
    }


    /**
     * 20200229撤销改方法：因为在这里判断和在购物车中添加商品判断时业务重合，不如在那里直接判断更合适
     * 对购物车进行拦截，不允许购物车中不同商品的数量超过指定数量
     * @param jp
     * @throws Exception
     */
   /* @Before("execution(*  com.lcvc.ebuy_springboot.service.ShoppingCartService.addShoppingCart(..))")
    public void beforeAddShoppingCart(JoinPoint jp) throws Exception {
        Integer maxProductNumberInCart=this.getWebConfig().getMaxProductNumberInCart();//获取配置中的购物车最大商品数量
        if(maxProductNumberInCart>0){//只有当数量大于0时，才进行验证。0表示不限制
            //遍历拦截方法的参数名
            Object[] args=jp.getArgs();
            for (int i = 0; i < args.length; i++) {
                if(args[i] instanceof ShoppingCart){//如果参数是购物车类。反之，如果是第一次购物，则为NULL，本条件不会触发。
                    ShoppingCart shoppingCart=(ShoppingCart)args[i];

                    if(shoppingCart.getList()!=null && shoppingCart.getList().size()>=maxProductNumberInCart){
                        throw new MyServiceException("操作失败：购物车中不同的商品最多只能有"+maxProductNumberInCart+"个");
                    }
                }
            }
        }
    }*/

    /*@Around("execution(* com.lcvc.ebuy_springboot.service..*.*(..)) && args(..,result)")
    public Object doAround(ProceedingJoinPoint pjp, BindingResult result) {
        result.getFieldErrors();
        return null;
    }
*/
}
