package com.lcvc.ebuy_springboot.web.action.plugins.ueditor;

public class Ueditor {
    private  String state;//ueditor的操作状态信息，SUCCESS表示成功，其他信息表示失败
    private  String url;//图片回显路径，上传后的图片地址
    private  String title;//现在文件名称
    private  String original;//文件原名称
    private Long size;//文件大小
    private String type;//文件后缀名

    public String getState() {
        return state;
    }

    public void setState(String state) {
        this.state = state;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getOriginal() {
        return original;
    }

    public void setOriginal(String original) {
        this.original = original;
    }

    public Long getSize() {
        return size;
    }

    public void setSize(Long size) {
        this.size = size;
    }

    public String getType() {
        return type;
    }

    public void setType(String type) {
        this.type = type;
    }
}
