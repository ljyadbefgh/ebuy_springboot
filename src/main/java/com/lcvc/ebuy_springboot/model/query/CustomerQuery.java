package com.lcvc.ebuy_springboot.model.query;

import com.lcvc.ebuy_springboot.model.Customer;

public class CustomerQuery extends Customer {
    private Boolean changeInitialPassword;//初始密码是否修改,用于查询条件

    public Boolean getChangeInitialPassword() {
        return changeInitialPassword;
    }

    public void setChangeInitialPassword(Boolean changeInitialPassword) {
        this.changeInitialPassword = changeInitialPassword;
    }
}
