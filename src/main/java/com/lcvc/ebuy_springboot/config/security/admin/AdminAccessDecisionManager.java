package com.lcvc.ebuy_springboot.config.security.admin;

import com.lcvc.ebuy_springboot.model.Admin;
import com.lcvc.ebuy_springboot.service.AdminRoleService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.access.AccessDecisionManager;
import org.springframework.security.access.AccessDeniedException;
import org.springframework.security.access.ConfigAttribute;
import org.springframework.security.authentication.AnonymousAuthenticationToken;
import org.springframework.security.authentication.InsufficientAuthenticationException;
import org.springframework.security.authentication.LockedException;
import org.springframework.security.core.Authentication;
import org.springframework.security.core.GrantedAuthority;
import org.springframework.security.web.FilterInvocation;
import org.springframework.stereotype.Component;

import java.util.Collection;

/**
 * 权限决策 AccessDecisionManager
 * 说明：
 * 1.spring sccurity权限验证的第一步：SecurityMetadataSource。
 * 2.spring sccurity权限验证的第二步：AccessDecisionManager
 */
@Component
public class AdminAccessDecisionManager implements AccessDecisionManager {

    @Autowired
    private AdminRoleService adminRoleService;

    /**
     *  决策方法：权限判断
     *  在该方法中判断当前登陆的用户是否具备当前请求URL所需要的角色信息，如果不具备，就主动抛出AccessDeniedException异常，否则不做任何事就可以
      *@param authentication 包含了当前的用户信息，包括拥有的权限（本项目为角色）。这里的权限来源就是前面登录时UserDetailsService中设置的authorities。
     * @param object 即FilterInvocation对象，可以得到request等web资源。
     * @param collection 本次访问需要的权限。即FilterInvocationSecurityMetadataSource中getAttributes方法的返回值，保存当前URL所需要的角色
     * @throws AccessDeniedException
     * @throws InsufficientAuthenticationException
     */
    @Override
    public void decide(Authentication authentication, Object object, Collection<ConfigAttribute> collection) throws AccessDeniedException, InsufficientAuthenticationException {
        if(!authentication.getPrincipal().equals("anonymousUser")) {//如果不是匿名用户，表示已经登录
            Admin admin=(Admin)authentication.getPrincipal();//获取当前用户的账户信息
            if(admin.isAccountNonLocked()==false){//如果账户没有被锁定
                throw new LockedException("账户已经锁定");
            }
        }
        for(ConfigAttribute configAttribute:collection){//遍历访问该URL所需要的角色集合，由AdminFilterInvocationSecurityMetadataSource提供
            if("ROLE_LOGIN".equals(configAttribute.getAttribute())){//如果前面过滤器的资源过滤有传递这个角色，则表示访问地址没有角色有权限访问
                if(authentication instanceof AnonymousAuthenticationToken){//AnonymousAuthenticationToken表示匿名用户
                    throw new InsufficientAuthenticationException("未登录");
                }
            }
            //遍历，判断当前用户拥有的角色是否有符合要求的
            FilterInvocation filterInvocation = (FilterInvocation) object;
            Collection<? extends GrantedAuthority> auths=authentication.getAuthorities();//从缓存获取当前用户拥有的角色名称（如ROLE_admin、Role_user……）
            for(GrantedAuthority authority:auths){//遍历当前用户的角色信息集合
                if(authority.getAuthority().equals(configAttribute.getAttribute())){//如果拥有的角色和要访问的url要求的角色一致
                    return;
                }
            }
        }
        throw new AccessDeniedException("权限不足，请联系管理员");
    }

    @Override
    public boolean supports(ConfigAttribute configAttribute) {
        return true;
    }

    @Override
    public boolean supports(Class<?> aClass) {
        return true;
    }
}
