package com.lcvc.ebuy_springboot.model.exception;

/**
 * 自定义异常：用于可以忽略的异常，配合特定业务，必须跳出递归使用
 * 说明：
 * 一般用于数据库发生异常时（包括数据约束性异常）抛出
 */
public class MyIgnorableException extends RuntimeException {

    public MyIgnorableException() {
        super();
    }

    public MyIgnorableException(String message) {
        super(message);
    }

    public MyIgnorableException(String message, Throwable cause) {
        super(message, cause);
    }



    public MyIgnorableException(Throwable cause) {
        super(cause);
    }

}

