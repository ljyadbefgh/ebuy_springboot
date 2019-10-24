package com.lcvc.ebuy_springboot.config.security.admin;

import org.springframework.security.authentication.AuthenticationManager;
import org.springframework.security.web.authentication.UsernamePasswordAuthenticationFilter;

public class AdminAuthenticationTokenFilter extends UsernamePasswordAuthenticationFilter {
    private AuthenticationManager authenticationManager;

    public AdminAuthenticationTokenFilter(AuthenticationManager authenticationManager) {
        this.authenticationManager = authenticationManager;
        super.setFilterProcessesUrl("/auth/login");
    }

   /* @Override
    public Authentication attemptAuthentication(HttpServletRequest request, HttpServletResponse response) throws AuthenticationException, IOException, ServletException {
        String username = request.getParameter("username");
        String password = request.getParameter("password");
        if (username == null) {
            throw new InternalAuthenticationServiceException("请输入账户名");
        }
        if (password == null) {
            throw new InternalAuthenticationServiceException("请输入密码");
        }
        // 根据用户提供的用户名/密码信息构建一个认证token
        UsernamePasswordAuthenticationToken authRequest = new UsernamePasswordAuthenticationToken(username, password);
        authRequest.setDetails(authenticationDetailsSource.buildDetails(request));
        // 交给 authenticationManager执行真正的用户身份认证
        return this.getAuthenticationManager().authenticate(authRequest);
    }*/
}
