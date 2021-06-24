package com.lcvc.ebuy_springboot.util.jwt;



import com.auth0.jwt.JWT;
import com.auth0.jwt.JWTCreator;
import com.auth0.jwt.JWTVerifier;
import com.auth0.jwt.algorithms.Algorithm;
import com.auth0.jwt.exceptions.JWTDecodeException;
import com.auth0.jwt.interfaces.Claim;
import com.auth0.jwt.interfaces.DecodedJWT;
import com.lcvc.ebuy_springboot.model.exception.MyOAuthException;
import com.lcvc.ebuy_springboot.model.exception.MyTokenException;

import java.util.Calendar;
import java.util.Date;
import java.util.Map;

/**
 * @author ljy
 * @create: 2021-06-22
 */
public class JwtUtils {
    /**
     * 签发对象：这个用户的id
     * @param audience 签发对象，不能为空
     * @param claims 要额外携带的信息，用map集合的方式传入。目前本函数只支持字符串、整数类型
     * @param secret 加密字段
     * @param minutes 有效期，单位为分钟
     * @return 返回加密后的token
     */
    protected String creatToken(String audience, Map<String,Object> claims, String secret,Integer minutes) {
        //设置有效期为指定?分钟之后
        Calendar nowTime = Calendar.getInstance();
        nowTime.add(Calendar.MINUTE,minutes);
        Date expiresDate = nowTime.getTime();
        JWTCreator.Builder builder=JWT.create().withAudience(audience)
                .withIssuedAt(new Date())    //发行时间当前
                .withExpiresAt(expiresDate);  //有效时间有多长
        claims.forEach((key, value) -> {
            if(value instanceof String){//如果是字符串
                builder.withClaim(key, value.toString());
            }else if(value instanceof Integer){//如果是整数
                builder.withClaim(key, Integer.valueOf(value.toString()));
            }
        });
        //加密后的token
        return builder.sign(Algorithm.HMAC256(secret));
    }

    /**
     * 检验合法性，其中secret参数就应该传入的是用户的id
     * @param token
     * @param secret 传过来的是&&ebuy_^^customer_userId
     * @throws MyOAuthException 权限异常
     */
    protected void verifyToken(String token, String secret) {
        DecodedJWT jwt = null;
        try {
            JWTVerifier verifier = JWT.require(Algorithm.HMAC256(secret)).build();
            jwt = verifier.verify(token);
        } catch (Exception e) {
            //效验失败
            throw new MyTokenException("token验证失败");
        }
    }

    /**
     * 从token中获取签发对象
     * @param token
     * @return 签发对象
     */
    public  String getAudience(String token){
        String audience = null;
        try {
            audience = JWT.decode(token).getAudience().get(0);
        } catch (JWTDecodeException j) {
            //这里是token解析失败
            throw new MyTokenException("无法获取token中的签发对象");
        }
        return audience;
    }


    /**
     * 从token中获取对应的携带信息
     * @param token
     * @param key 携带信息的键
     * @return 返回key对应的值
     */
    public  Claim getClaimByName(String token, String key){
        return JWT.decode(token).getClaim(key);
    }
}


