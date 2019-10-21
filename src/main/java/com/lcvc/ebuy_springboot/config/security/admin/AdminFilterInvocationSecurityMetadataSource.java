package com.lcvc.ebuy_springboot.config.security.admin;

import com.lcvc.ebuy_springboot.model.Purview;
import com.lcvc.ebuy_springboot.model.Role;
import com.lcvc.ebuy_springboot.service.PurviewService;
import com.lcvc.ebuy_springboot.service.RolePurviewService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.ConfigAttribute;
import org.springframework.security.access.SecurityConfig;
import org.springframework.security.web.FilterInvocation;
import org.springframework.security.web.access.intercept.FilterInvocationSecurityMetadataSource;
import org.springframework.stereotype.Component;
import org.springframework.util.AntPathMatcher;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;

/**
 * 权限资源 SecurityMetadataSource
 * 说明：
 * 1.spring sccurity权限验证的第一步：SecurityMetadataSource。
 * 2.spring sccurity权限验证的第二步：AccessDecisionManager
 */
@Component
public class AdminFilterInvocationSecurityMetadataSource implements FilterInvocationSecurityMetadataSource {

    @Autowired
    private PurviewService purviewService;
    @Autowired
    private RolePurviewService rolePurviewService;

    private List<String> ignoreUrls = new ArrayList<String>() {{//可以忽略的url的地址，即不要进行权限验证
       //add("/api/upload/**");
        //add("/api/shop/**");
        //add(" /api/backstage/ueditor");

    }};

    /**
     * 根据请求的资源（url），判断该资源对应的角色集合
     * 此方法是为了判定用户请求的url 是否在权限表中，如果在权限表中，则返回给 decide 方法，用来判定用户是否有此权限;如果不在权限表中则放行。
     * 说明：本项目不仅对资源进行判断，也对访问方法进行验证，例如：GET、POST、PUT、PATCH、DELETE
     * @param object 即FilterInvocation对象，可以得到request等web资源。
     * @return 获取拥有访问该url资源的角色集合。null表示没有配置权限的url都直接允许
     */
    @Override
    public Collection<ConfigAttribute> getAttributes(Object object) throws IllegalArgumentException {
        Collection<ConfigAttribute> result=null;//最终的返回值，获取拥有访问该url资源的角色集合
        FilterInvocation filterInvocation = (FilterInvocation) object;
        //String requestUrl=filterInvocation.getRequestUrl();//获取前端访问的接口地址，例如：/api/backstage/adminmanage?page=1&limit=10&_=1571329473477
        String httpMethod =filterInvocation.getRequest().getMethod();//获取访问方法，例如：GET、POST、PUT、PATCH、DELETE
        String servletPath=filterInvocation.getRequest().getServletPath();//获取控制器地址，例如：/api/backstage/adminmanage
        AntPathMatcher antPathMatcher=new AntPathMatcher();//创建ant风格的匹配器，准备用来对比访问的url是否符合权限路径
        List<Purview> purviews=purviewService.getAllEnabledPurviews();//所有在启用的权限列表
        for(Purview purview:purviews){//遍历权限列表
            if(antPathMatcher.match(purview.getUrl(),servletPath)){//如果访问的url符合权限规定的路径
                boolean judge=false;//路径符合，还要判断请求该路径的方法是否符合。默认为false，不符合
                //String[] methods=permissionService.getPermissionMethods("1234");
                List<Role> roleList=rolePurviewService.getEnabledRolesByPurview(purview.getId());//获取拥有该权限的所有角色集合
                Iterator it=roleList.iterator();
                while (it.hasNext()){
                    Role role=(Role)it.next();
                    List<String> methods=rolePurviewService.getRolePurviewPermissionMethods(role.getId(),purview.getId());//获取该关系允许的路径访问method
                    if(!methods.contains(httpMethod)){//如果请求方法与权限的方法不相符
                        it.remove();//移除该角色
                    }
                }
                String[] roleNameArray=new String[roleList.size()];//定义一个数组，用于获取拥有该权限的角色名集合
                for(int i=0;i<roleList.size();i++){
                    roleNameArray[i]=roleList.get(i).getName();//获取角色的名称
                }
                result=SecurityConfig.createList(roleNameArray);//将角色名传递回spring
            }
        }
        if(result==null||result.size()==0){//如果没有任何角色拥有访问该url的资格
            boolean judge=true;//表示该资源是否需要验证，默认需要验证
            for(String ignoreUrl:ignoreUrls){//遍历不需要验证权限的地址
                if(antPathMatcher.match(ignoreUrl,servletPath)) {//如果访问的url不需要权限验证
                    judge=false;
                    result=null;//null表示没有配置权限的url都直接允许，一般不这样做
                    break;
                }
            }
            if(judge==true){//如果需要验证
                result=SecurityConfig.createList("ROLE_LOGIN");//自定义ROLE_LOGIN（交给后续处理），表示未登录，用于给后续的AdminAccessDecisionManager进行相应处理
            }
        }
        return result;
    }

    //返回了所有定义的权限资源，Spring Security会在启动时校验每个ConfigAttribute是否配置正确，不需要校验直接返回null。
    @Override
    public Collection<ConfigAttribute> getAllConfigAttributes() {
        return null;
    }

    //返回类对象是否支持校验，web项目一般使用FilterInvocation来判断，或者直接返回true。
    @Override
    public boolean supports(Class<?> aClass) {
        return FilterInvocation.class.isAssignableFrom(aClass);//判断两个类的之间的关联关系，也可以说是一个类是否可以被强制转换为另外一个实例对象
    }
}
