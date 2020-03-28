package com.lcvc.ebuy_springboot.model;

import org.hibernate.validator.constraints.Range;

/**
 * 网站配置类
 */
public class WebConfig implements java.io.Serializable{
    private Integer id;
    private Boolean maintenance;//表明该网站是否在维护中，如果是维护中，则整站不允许访问。说明：指定管理账户可以访问
    private String maintenanceContent;//维护时的提示信息
    //管理员模块
    @Range(min=0,message="当天允许管理员连续登陆错误的次数的最大购买数量不能为负数")
    private Integer maxLoginErrorNumberOfAdmin;//当天允许某管理账户连续登陆错误的次数
    //客户模块
    private String inviteCodeOfCustomer;//邀请码，必须有邀请码才能注册客户信息，如果为空则不需要邀请码。如果关闭客户的注册功能，则邀请码无效
    private Boolean closeRegOfCustomer;//是否关闭客户的注册功能
    private Boolean closeLoginOfCustomer;//是否关闭客户的登陆功能
    @Range(min=0,message="当天允许客户连续登陆错误的次数不能为负数")
    private Integer maxLoginErrorNumberOfCustomer;//当天允许某客户连续登陆错误的次数
    //购物车模块
    @Range(min=0,message="单个商品的最大购买数量不能为负数")
    private Integer maxSingleProductNumberByBuy;//表示每次下单时单个商品的最大购买数量(包含)。0表示不限制
    @Range(min=0,message="购物车中可以存放的最大商品数量的最不能为负数")
    private Integer maxProductNumberInCart;//购物车中可以存放的最大商品（种类）数量（包含）。0表示不限制
    @Range(min=0,message="您当天的购买次数不能为负数")
    private Integer maxProductOrderNumberInToday;//当天一个客户可以下单的最大次数。0表示不限制
    //产品模块
    @Range(min=0,message="产品点击间隔时间不能为负数")
    private Integer productClickInterval;//产品点击有效规则：同IP间隔（秒）才进行记录。0或NULL表示不限制

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

    public Integer getMaxSingleProductNumberByBuy() {
        return maxSingleProductNumberByBuy;
    }

    public void setMaxSingleProductNumberByBuy(Integer maxSingleProductNumberByBuy) {
        this.maxSingleProductNumberByBuy = maxSingleProductNumberByBuy;
    }

    public Integer getMaxProductNumberInCart() {
        return maxProductNumberInCart;
    }

    public void setMaxProductNumberInCart(Integer maxProductNumberInCart) {
        this.maxProductNumberInCart = maxProductNumberInCart;
    }

    public Integer getMaxProductOrderNumberInToday() {
        return maxProductOrderNumberInToday;
    }

    public void setMaxProductOrderNumberInToday(Integer maxProductOrderNumberInToday) {
        this.maxProductOrderNumberInToday = maxProductOrderNumberInToday;
    }

    public Integer getMaxLoginErrorNumberOfCustomer() {
        return maxLoginErrorNumberOfCustomer;
    }

    public void setMaxLoginErrorNumberOfCustomer(Integer maxLoginErrorNumberOfCustomer) {
        this.maxLoginErrorNumberOfCustomer = maxLoginErrorNumberOfCustomer;
    }

    public Integer getMaxLoginErrorNumberOfAdmin() {
        return maxLoginErrorNumberOfAdmin;
    }

    public void setMaxLoginErrorNumberOfAdmin(Integer maxLoginErrorNumberOfAdmin) {
        this.maxLoginErrorNumberOfAdmin = maxLoginErrorNumberOfAdmin;
    }

    public Boolean getMaintenance() {
        return maintenance;
    }

    public void setMaintenance(Boolean maintenance) {
        this.maintenance = maintenance;
    }

    public String getMaintenanceContent() {
        return maintenanceContent;
    }

    public void setMaintenanceContent(String maintenanceContent) {
        this.maintenanceContent = maintenanceContent;
    }

    public Integer getProductClickInterval() {
        return productClickInterval;
    }

    public void setProductClickInterval(Integer productClickInterval) {
        this.productClickInterval = productClickInterval;
    }
}
