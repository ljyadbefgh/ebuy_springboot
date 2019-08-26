package com.lcvc.ebuy_springboot.model.exception;

/*定义web层传递过来的值异常；（如值不符合条件）*/
public class MyWebException extends RuntimeException {

    public MyWebException() {
        super();
    }

    public MyWebException(String message) {
        super(message);
    }

    public MyWebException(String message, Throwable cause) {
        super(message, cause);
    }



    public MyWebException(Throwable cause) {
        super(cause);
    }

}

