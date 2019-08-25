package com.lcvc.ebuy_springboot.model.exception;

/**
 * 自定义异常：业务异常
 * 说明：
 * 一般用于数据操作时，因为不满足业务操作权限的异常
 */
public class MyServiceException extends RuntimeException {

    public MyServiceException() {
        super();
    }

    public MyServiceException(String message) {
        super(message);
    }

    public MyServiceException(String message, Throwable cause) {
        super(message, cause);
    }



    public MyServiceException(Throwable cause) {
        super(cause);
    }

}

