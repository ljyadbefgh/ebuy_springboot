package com.lcvc.ebuy_springboot.model.form.count;

import java.math.BigDecimal;

/**
 * 用于返回给前端
 * 专门返回键值对，并且键值属性分别为name,value
 */
public class NameAndValueMap {
    private String name;//名称
    private BigDecimal value;//对应的值

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public BigDecimal getValue() {
        return value;
    }

    public void setValue(BigDecimal value) {
        this.value = value;
    }
}
