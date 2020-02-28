package com.lcvc.ebuy_springboot.model.form.webconfig;

/**
 * 网站配置类
 */
public class WebConfigReturn implements java.io.Serializable{
    private Integer id;
    private Boolean inviteCodeNeedOfCustomer;//供前台调用，表示是否需要邀请码,避免暴露邀请码
    private Boolean closeRegOfCustomer;//是否关闭客户的注册功能
    private Boolean closeLoginOfCustomer;//是否关闭客户的登陆功能

    public WebConfigReturn() {
    }

    public WebConfigReturn(Integer id) {
        this.id = id;
    }

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public Boolean getInviteCodeNeedOfCustomer() {
        return inviteCodeNeedOfCustomer;
    }

    public void setInviteCodeNeedOfCustomer(Boolean inviteCodeNeedOfCustomer) {
        this.inviteCodeNeedOfCustomer = inviteCodeNeedOfCustomer;
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
