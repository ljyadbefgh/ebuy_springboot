package com.lcvc.ebuy_springboot.model.exception;

/**
 * 自定义异常：数据异常
 * 说明：
 * 一般用于数据库发生异常时（包括数据约束性异常）抛出
 */
public class MyDataException extends RuntimeException {

    public MyDataException() {
        super();
    }

    public MyDataException(String message) {
        super(message);
    }

    public MyDataException(String message, Throwable cause) {
        super(message, cause);
    }



    public MyDataException(Throwable cause) {
        super(cause);
    }

}

