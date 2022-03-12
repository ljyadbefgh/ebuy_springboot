package com.lcvc.ebuy_springboot.util.jwt;



import com.auth0.jwt.JWT;
import com.auth0.jwt.JWTVerifier;
import com.auth0.jwt.algorithms.Algorithm;
import com.auth0.jwt.interfaces.DecodedJWT;
import com.lcvc.ebuy_springboot.model.Customer;
import com.lcvc.ebuy_springboot.model.exception.MyCustomerLoginException;
import com.lcvc.ebuy_springboot.model.exception.MyTokenException;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Component;
import org.thymeleaf.util.StringUtils;

import java.util.HashMap;
import java.util.Map;

/**
 * @author ljy
 * @create: 2021-06-22
 */
@Component
public class JwtUtilsForCustomer extends JwtUtils{

    @Value("${myJwt.accessTokenExpiresOfCustomer}")
    private Integer accessTokenExpiresOfCustomer;//客户登录token的有效时间，单位为分钟
    @Value("${myJwt.refreshTokenExpiresOfCustomer}")
    private Integer refreshTokenExpiresOfCustomer;//客户登录刷新token（根据刷新token重新获取token）的有效时间，单位为分钟

    /**
     * 获取客户加密的token
     * @param customerId 客户对象的 id
     * @return
     */
    private String getCustomerTokenSecret(Integer customerId){
        return "&&ebuy_^^customer_"+customerId;
    }

    /**
     *获取客户的token，用于刷新令牌
     * @param customer id,name,usernamme,password应该都不为空
     * @return 返回加密后的token
     */
    public String createAccressCustomerToken(Customer customer) {
        return this.creatCustomerToken(customer,accessTokenExpiresOfCustomer);
    }

    /**
     * 获取客户的刷新token，用于重新获取客户令牌
     * @param customer id,name,usernamme,password应该都不为空
     * @return 返回加密后的token
     */
    public  String createRefreshCustomerToken(Customer customer) {
        return this.creatCustomerToken(customer,refreshTokenExpiresOfCustomer);
    }

    /**
     * 根据token获取客户信息，
     * 说明：使用该方法时，token应已经经过验证有效。如在拦截器中验证，在控制器中调用本方法获取id
     * @param customerAccressToken 验证令牌
     * @return 返回customerId
     */
    public Integer getCustomerIdByAccressToken(String customerAccressToken){
        Integer customerId=null;
        String customerIdString= null;//获取账户id
        try {
            customerIdString = this.getAudience(customerAccressToken);
            customerId=Integer.valueOf(customerIdString);
        } catch (MyTokenException e) {
//            throw new MyCustomerLoginException(e.getMessage());
        }
        return customerId;
    }

    /**
     * 根据客户的当前令牌和刷新令牌检测是否有效，如果有效返回客户id
     * 说明：只要当前令牌和刷新令牌有一个有效，就认定为token有效
     * @param customerAccressToken 验证令牌
     * @param customerRefreshToken 刷新令牌
     * @return 如果验证通过，返回customerId
     */
    public Integer verifyAndGetCustomerIdByToken(String customerAccressToken,String customerRefreshToken){
        Integer customerId=null;
        if(StringUtils.isEmpty(customerAccressToken)||StringUtils.isEmpty(customerRefreshToken)){
            throw new MyCustomerLoginException("请先登录");
        }else{
            String customerIdString= null;//获取账户id
            try {
                customerIdString = this.getAudience(customerAccressToken);
            } catch (MyTokenException e) {
                throw new MyCustomerLoginException(e.getMessage());
            }
            if(customerIdString==null){//如果获取不到
                throw new MyCustomerLoginException("token异常，无法获取的客户信息");
            }
            customerId=Integer.valueOf(customerIdString);
            try {
                //验证是否过期
                this.verifyCustomerToken(customerAccressToken,customerId);
            } catch (MyCustomerLoginException e) {//如果令牌过期了，则验证刷新令牌
                //验证customer_refresh_token刷新令牌是否过期
                try {
                    this.verifyCustomerToken(customerRefreshToken,customerId);
                } catch (MyCustomerLoginException ee) {//如果刷新令牌也过期了
                    throw new MyCustomerLoginException("请重新登录");
                }
            }
        }
        return customerId;
    }

    /**
     * 对客户的token进行验证
     * @param token
     * @param customerId
     */
    public void verifyCustomerToken(String token, Integer customerId) {
        DecodedJWT jwt = null;
        try {
            String secret=getCustomerTokenSecret(customerId);//加密后的暗号
            JWTVerifier verifier = JWT.require(Algorithm.HMAC256(secret)).build();
            jwt = verifier.verify(token);
        } catch (Exception e) {
            //效验失败
            throw new MyCustomerLoginException("token验证失败");
        }
    }

    /**
     * 签发对象：这个用户的id
     * @param customer id,name,usernamme,password应该都不为空
     * @param minutes 有效期，单位为分钟
     * @return 返回加密后的token
     */
    private String creatCustomerToken(Customer customer, Integer minutes) {
        //设置要携带的信息
        Map<String,Object> claims=new HashMap<>();
        claims.put("username", customer.getUsername());
        claims.put("name", customer.getName());
        //返回token
        return this.creatToken(customer.getId().toString(),claims,"&&ebuy_^^customer_"+customer.getId(),minutes);
    }
}


