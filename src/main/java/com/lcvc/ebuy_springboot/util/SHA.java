package com.lcvc.ebuy_springboot.util;

import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import java.math.BigInteger;
import java.security.MessageDigest;

/**
SHA(Secure Hash Algorithm，安全散列算法），数字签名等密码学应用中重要的工具，
被广泛地应用于电子商务等信息安全领域。虽然，SHA与MD5通过碰撞法都被破解了，
但是SHA仍然是公认的安全加密算法，较之MD5更为安全
*/
public class SHA {
    public static final String KEY_SHA = "SHA";

    /**
     * 将数据进行加密，并将结果返回
     * @param inputStr
     * @return 加密后的数据
     */
    public static String getResult(String inputStr) {
        BigInteger sha = null;
        byte[] inputData = inputStr.getBytes();
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(KEY_SHA);
            messageDigest.update(inputData);
            sha = new BigInteger(messageDigest.digest());
        } catch (Exception e) {
            e.printStackTrace();
        }
        return sha.toString(32);
    }

    public static void main(String args[]) {
       /* try {
            System.out.println("SHA加密后:" + getResult("123456"));
        } catch (Exception e) {
            e.printStackTrace();
        }*/
        BCryptPasswordEncoder encoder=new BCryptPasswordEncoder();
        System.out.println("加密后:" + encoder.encode("123456"));

    }
}
