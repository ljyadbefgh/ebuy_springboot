package com.lcvc.ebuy_springboot.model.exception;

/**
 * 自定义异常：登录异常
 * 说明：
 * 专门用于抛出登录异常
 */
public class MyCustomerLoginException extends RuntimeException {

    public MyCustomerLoginException() {
        super();
    }

    public MyCustomerLoginException(String message) {
        super(message);
    }

    public MyCustomerLoginException(String message, Throwable cause) {
        super(message, cause);
    }



    public MyCustomerLoginException(Throwable cause) {
        super(cause);
    }

}

