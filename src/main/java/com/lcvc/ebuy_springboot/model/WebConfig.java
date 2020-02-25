package com.lcvc.ebuy_springboot.model;

/**
 * 网站配置类
 */
public class WebConfig implements java.io.Serializable{
    private Integer id;
    private String inviteCodeOfCustomer;//邀请码，必须有邀请码才能注册客户信息
    private Boolean closeRegOfCustomer;//是否关闭客户的注册功能
    private Boolean closeLoginOfCustomer;//是否关闭客户的登陆功能

    public WebConfig() {
    }

    public WebConfig(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getInviteCodeOfCustomer() {
        return inviteCodeOfCustomer;
    }

    public void setInviteCodeOfCustomer(String inviteCodeOfCustomer) {
        this.inviteCodeOfCustomer = inviteCodeOfCustomer;
    }

    public Boolean getCloseRegOfCustomer() {
        return closeRegOfCustomer;
    }

    public void setCloseRegOfCustomer(Boolean closeRegOfCustomer) {
        this.closeRegOfCustomer = closeRegOfCustomer;
    }

    public Boolean getCloseLoginOfCustomer() {
        return closeLoginOfCustomer;
    }

    public void setCloseLoginOfCustomer(Boolean closeLoginOfCustomer) {
        this.closeLoginOfCustomer = closeLoginOfCustomer;
    }
}
