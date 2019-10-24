package com.lcvc.ebuy_springboot.model.exception;

import org.springframework.security.oauth2.common.exceptions.OAuth2Exception;

public class MyOAuthException extends OAuth2Exception {
    public MyOAuthException(String msg, Throwable t) {
        super(msg, t);
    }

    public MyOAuthException(String msg) {
        super(msg);
    }
}
