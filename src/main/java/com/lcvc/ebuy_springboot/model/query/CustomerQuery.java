package com.lcvc.ebuy_springboot.model.query;

import com.lcvc.ebuy_springboot.model.Customer;

public class CustomerQuery extends Customer {
    private Boolean changeInitialPassword;//初始密码是否修改,用于查询条件
    private Boolean uploadPhoto;//是否上传了头像

    public Boolean getChangeInitialPassword() {
        return changeInitialPassword;
    }

    public void setChangeInitialPassword(Boolean changeInitialPassword) {
        this.changeInitialPassword = changeInitialPassword;
    }

    public Boolean getUploadPhoto() {
        return uploadPhoto;
    }

    public void setUploadPhoto(Boolean uploadPhoto) {
        this.uploadPhoto = uploadPhoto;
    }
}
