package com.lcvc.ebuy_springboot.model;

public class Role {
    private Integer id;
    private String name;//角色名称，采用spring security的命名规则
    private String nameZH;//角色中文名称
    private Integer level;//角色级别

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getNameZH() {
        return nameZH;
    }

    public void setNameZH(String nameZH) {
        this.nameZH = nameZH;
    }

    public Integer getLevel() {
        return level;
    }

    public void setLevel(Integer level) {
        this.level = level;
    }
}
