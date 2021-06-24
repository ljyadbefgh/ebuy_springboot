package com.lcvc.ebuy_springboot.model.exception;

/**
 * 自定义异常：token异常
 * 说明：
 * 用于jwt验证错误的自定义异常
 */
public class MyTokenException extends RuntimeException {

    public MyTokenException() {
        super();
    }

    public MyTokenException(String message) {
        super(message);
    }

    public MyTokenException(String message, Throwable cause) {
        super(message, cause);
    }



    public MyTokenException(Throwable cause) {
        super(cause);
    }

}

