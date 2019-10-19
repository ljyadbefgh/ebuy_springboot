package com.lcvc.ebuy_springboot.model.form.role_purview;

public class RolePurviewForm {
    private Integer id;//主键id
    private Integer methodId;//方法Id

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Integer getMethodId() {
        return methodId;
    }

    public void setMethodId(Integer methodId) {
        this.methodId = methodId;
    }
}
