package com.lcvc.ebuy_springboot.model.form.customer;

import com.lcvc.ebuy_springboot.model.Customer;

public class CustomerForm {
    private Customer customer;
    private String inviteCode;//邀请码

    public Customer getCustomer() {
        return customer;
    }

    public void setCustomer(Customer customer) {
        this.customer = customer;
    }

    public String getInviteCode() {
        return inviteCode;
    }

    public void setInviteCode(String inviteCode) {
        this.inviteCode = inviteCode;
    }
}
