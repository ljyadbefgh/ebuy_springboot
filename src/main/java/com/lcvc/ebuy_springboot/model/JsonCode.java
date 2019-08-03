package com.lcvc.ebuy_springboot.model;

/**
 * 用于返回json的状态码
 */
public enum JsonCode {
    SUCCESS(0),
    ERROR(1);

    private Integer value;

    //枚举类型的构造函数默认为private，因为枚举类型的初始化要在当前枚举类中完成。
    JsonCode (Integer value){
        this.value= value;
    }

    public Integer getValue() {
        return value;
    }
}
