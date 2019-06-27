package com.lcvc.ebuy_springboot.model.exception;

/*定义web层传递过来的值异常；（如值不符合条件）*/
public class MyFormException extends RuntimeException {

    public MyFormException() {
        super();
    }

    public MyFormException(String message) {
        super(message);
    }

    public MyFormException(String message, Throwable cause) {
        super(message, cause);
    }



    public MyFormException(Throwable cause) {
        super(cause);
    }

}

