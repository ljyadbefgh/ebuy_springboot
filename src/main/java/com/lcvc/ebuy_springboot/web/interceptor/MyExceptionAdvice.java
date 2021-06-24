package com.lcvc.ebuy_springboot.web.interceptor;


import com.lcvc.ebuy_springboot.model.base.Constant;
import com.lcvc.ebuy_springboot.model.base.JsonCode;
import com.lcvc.ebuy_springboot.model.exception.MyCustomerLoginException;
import com.lcvc.ebuy_springboot.model.exception.MyServiceException;
import com.lcvc.ebuy_springboot.model.exception.MyWebException;
import lombok.extern.slf4j.Slf4j;
import org.springframework.core.annotation.Order;
import org.springframework.http.converter.HttpMessageNotReadableException;
import org.springframework.validation.BindingResult;
import org.springframework.validation.ObjectError;
import org.springframework.web.HttpRequestMethodNotSupportedException;
import org.springframework.web.bind.MethodArgumentNotValidException;
import org.springframework.web.bind.MissingServletRequestParameterException;
import org.springframework.web.bind.annotation.ControllerAdvice;
import org.springframework.web.bind.annotation.ExceptionHandler;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.method.annotation.MethodArgumentTypeMismatchException;
import org.springframework.web.multipart.MultipartException;

import javax.validation.ConstraintViolation;
import javax.validation.ConstraintViolationException;
import java.io.IOException;
import java.util.*;

/**
 * @author ljy
 * 20190819
 * 用于处理本服务端所有控制层的异常信息并返回前端
 * 说明：使用此异常类，应按照把业务层异常往控制层抛，并且在控制层不轻易做异常处理，都交由此类处理
 */
@Slf4j
@ControllerAdvice
@ResponseBody
@Order(100)
public class MyExceptionAdvice {
    private ConstraintViolationException violationException;
    private ObjectError error;

    /**
     * 处理表单异常
     */
    @ExceptionHandler
    public Map<String, Object> myFormException(MyWebException e) {
        Map<String, Object> map=new HashMap<String, Object>();
        map.put(Constant.JSON_MESSAGE, e.getMessage());
        map.put(Constant.JSON_CODE, JsonCode.ERROR.getValue());//返回错误信息
        log.info("前端异常", e.getMessage());
        return map;
    }

    /**
     * 处理业务异常
     */
    @ExceptionHandler
    public Map<String, Object> myServiceException(MyServiceException e) {
        Map<String, Object> map=new HashMap<String, Object>();
        map.put(Constant.JSON_MESSAGE, e.getMessage());
        map.put(Constant.JSON_CODE, JsonCode.ERROR.getValue());//返回错误信息
        log.info("业务异常", e.getMessage());
        return map;
    }

    /**
     * 处理登录失败
     */
    @ExceptionHandler
    public Map<String, Object> MyLoginException(MyCustomerLoginException e) {
        Map<String, Object> map=new HashMap<String, Object>();
        StringBuilder strBuilder = new StringBuilder();
        strBuilder.append("操作失败:");
        strBuilder.append(e.getMessage());
        map.put(Constant.JSON_MESSAGE, strBuilder.toString());
        map.put(Constant.JSON_CODE, JsonCode.LOGIN.getValue());//返回错误信息
        log.info("未登录", e.getMessage());
        return map;
    }


    //处理spring 校验框架validation抛出的异常(二种异常之一)：ConstraintViolationException（官方定义），在配置了业务层验证后（或者说使用了@Validated后），基本在此处捕获spring验证异常
    @ExceptionHandler(ConstraintViolationException.class)
    public Map<String, Object> constraintViolationException(ConstraintViolationException e) {
        Set<ConstraintViolation<?>> violations = new LinkedHashSet(e.getConstraintViolations());
        StringBuilder strBuilder = new StringBuilder();
        strBuilder.append("操作失败：");
        for (ConstraintViolation<?> violation : violations) {//在配置hibernate验证（fail_fast）后，这里就只会出现一个异常了，不过暂时保留此处
            //violation.getInvalidValue();表示出错的属性的值
            strBuilder.append(violation.getMessage());
            break;//因为所有验证在前端显示，格式需要假如html和css进行控制，如果前端包括android等不好控制，所以只显示一条
        }
        String result = strBuilder.toString();
        Map<String, Object> map=new HashMap<String, Object>();
        map.put(Constant.JSON_MESSAGE, result);
        map.put(Constant.JSON_CODE, JsonCode.ERROR.getValue());//返回错误信息
        log.info("spring业务层验证异常", result);
        return map;
    }

    //处理spring 校验框架validation抛出的异常(二种异常之一)：MethodArgumentNotValidException（官方定义），该异常在控制器验证时出现
    @ExceptionHandler(MethodArgumentNotValidException .class)
    public Map<String, Object> methodArgumentNotValidException (MethodArgumentNotValidException e) {
        // 同样是获取BindingResult对象，然后获取其中的错误信息
        // //在配置hibernate验证（fail_fast）后，这里就只会出现一个异常了
        //如果没有，则可能又多个
        BindingResult bindingResult=e.getBindingResult();//如果配置在spring mvc的验证，会出现这个异常信息
        List<ObjectError> errorList=bindingResult.getAllErrors();//获取异常集合
        Map<String, Object> map=new HashMap<String, Object>();
        ObjectError error=errorList.get(0);//由于配置了只有一个异常，所以直接取第一个
        String message=error.getDefaultMessage();//验证失败的错误信息
        map.put(Constant.JSON_MESSAGE, "验证失败：message"
                .replace("message",message));
        map.put(Constant.JSON_CODE, JsonCode.ERROR.getValue());//返回错误信息
        log.info("spring的web验证异常", message);
        return map;
    }

    //spring mvc在接收参数时，如果无法接收到值出现此异常（如该值是必须的，或是不符合传输要求，导致无法接收到值）
    @ExceptionHandler
    public Map<String, Object> missingServletRequestParameterException(MissingServletRequestParameterException e) {
        Map<String, Object> map=new HashMap<String, Object>();
        String fieldName=e.getParameterName();//出错的字段名
        String type=e.getParameterType();//出错字段的类型
        String error="参数类型不匹配：参数fieldName类型应该为type"
                .replace("fieldName",fieldName)
                .replace("type",type);
       map.put(Constant.JSON_MESSAGE, error);
        map.put(Constant.JSON_CODE, JsonCode.ERROR.getValue());//返回错误信息
        //未知异常一般是计划外的，需要重点处理，比如记录下日志，或是自动发送错误信息邮件给技术部
        log.info("spring的request参数接收不到", error);
        return map;
    }

    //spring mvc在接收参数时，如果类型转换错误则会弹出此异常
    @ExceptionHandler
    public Map<String, Object> methodArgumentTypeMismatchException(MethodArgumentTypeMismatchException e) {
        Map<String, Object> map=new HashMap<String, Object>();
        String fieldName=e.getName();//出错的字段名
        Object fieldValue=e.getValue();//出错字段的值
        Class type=e.getRequiredType();//出错字段的类型
        String error="类型转换错误：fieldName的值为fieldValue，无法转换为type类型"
                .replace("fieldName",fieldName)
                .replace("fieldValue",fieldValue.toString())
                .replace("type",type.getName());
        map.put(Constant.JSON_MESSAGE,error);
        map.put(Constant.JSON_CODE, JsonCode.ERROR.getValue());//返回错误信息
        //未知异常一般是计划外的，需要重点处理，比如记录下日志，或是自动发送错误信息邮件给技术部
        log.info("spring mvc参数类型转换异常", error);
        return map;
    }

    //json转换异常时出现
    @ExceptionHandler
    public Map<String, Object> httpMessageNotReadableException(HttpMessageNotReadableException e) {
        Map<String, Object> map=new HashMap<String, Object>();
        map.put(Constant.JSON_MESSAGE, "类型转换异常："+ e.getMessage());
        map.put(Constant.JSON_CODE, JsonCode.ERROR.getValue());//返回错误信息
        //未知异常一般是计划外的，需要重点处理，比如记录下日志，或是自动发送错误信息邮件给技术部
        log.info("json转换异常", e.getMessage());
        return map;
    }

    //spring的文件上传大小异常
    @ExceptionHandler(MultipartException.class)
    public Map<String, Object> multipartException(MultipartException e) {
        Map<String, Object> map=new HashMap<String, Object>();
        map.put("state", "上传文件超出大小");  //专门为ueditor写的返回信息，如果不需要可以去掉该行
        map.put(Constant.JSON_MESSAGE, "上传文件超出大小");
        map.put(Constant.JSON_CODE, JsonCode.ERROR.getValue());//返回错误信息
        //未知异常一般是计划外的，需要重点处理，比如记录下日志，或是自动发送错误信息邮件给技术部
        log.info("spring上传组件异常", "上传文件超出大小");
        return map;
    }


    //数字转换异常
    @ExceptionHandler(NumberFormatException.class)
    public Map<String, Object> numberFormatException(NumberFormatException e) {
        Map<String, Object> map=new HashMap<String, Object>();
        map.put(Constant.JSON_MESSAGE, "类型转换错误：无法将指定字符串转化为数字");
        map.put(Constant.JSON_CODE, JsonCode.ERROR.getValue());//返回错误信息
        //未知异常一般是计划外的，需要重点处理，比如记录下日志，或是自动发送错误信息邮件给技术部
        log.info("字符串无法转换为数字的异常", "类型转换错误：无法将指定字符串转化为数字");
        return map;
    }

    //web的restful相应异常
    @ExceptionHandler(HttpRequestMethodNotSupportedException.class)
    public Map<String, Object> requestMethodNotSupportedException(HttpRequestMethodNotSupportedException e) {
        Map<String, Object> map=new HashMap<String, Object>();
        String methord=e.getMethod();//前端请求的restful类型，如put、post等
        String[] supportedMethods=e.getSupportedMethods();//获取服务端支持的restful类型，如put、post等
        StringBuilder stringBuilder=new StringBuilder();
        stringBuilder.append("服务端支持的接口类型是");
        for (int i = 0; i < supportedMethods.length; i++) {
            String supportedMethod=supportedMethods[i];
            stringBuilder.append(supportedMethod);
            if(i<supportedMethods.length-1){
                stringBuilder.append("|");
            }
        }
        stringBuilder.append("但传递的类型是"+methord);
        for (String supportedMethod : supportedMethods) {
            stringBuilder.append(supportedMethod);
        }
        String error=stringBuilder.toString();
        map.put(Constant.JSON_MESSAGE, "restful请求不符合接口规范："+ error);
        map.put(Constant.JSON_CODE, JsonCode.ERROR.getValue());//返回错误信息
        //未知异常一般是计划外的，需要重点处理，比如记录下日志，或是自动发送错误信息邮件给技术部
        log.info("restful请求不符合接口规范", error);
        return map;
    }

    //hbase的远程主机没有运行的异常
    @ExceptionHandler(IOException.class)
    public Map<String, Object> iOException(IOException e) {
        Map<String, Object> map=new HashMap<String, Object>();
        map.put(Constant.JSON_MESSAGE, "错误：io流出错");
        map.put(Constant.JSON_CODE, JsonCode.ERROR.getValue());//返回错误信息
        //未知异常一般是计划外的，需要重点处理，比如记录下日志，或是自动发送错误信息邮件给技术部
        log.error("错误：io流出错"+e.getMessage());
        return map;
    }

    @ExceptionHandler
    public Map<String, Object> unknownException(Exception e) {
        Map<String, Object> map=new HashMap<String, Object>();
        map.put(Constant.JSON_MESSAGE, "未知异常:"+ e.getMessage());
        map.put(Constant.JSON_CODE, JsonCode.ERROR.getValue());//返回错误信息
        //未知异常一般是计划外的，需要重点处理，比如记录下日志，或是自动发送错误信息邮件给技术部
        log.error("未知异常", e.getMessage());
        return map;
    }
}
