package com.lcvc.ebuy_springboot.model.base;

/**
 * @author ljy
 * 20190819
 * 用来作为统一的返回信息
 * 但是为了更好的和前端交互，并且更加自由（比如可以根据前端框架的不同，将code的变量名改为status），故暂时启用，改用map集合来处理控制器层信息
 *
 */
public class ResultInfo {
    private Integer code;//用于网站的JSON交互的代码状态名称，0表示成功
    private String msg;//用于网站的JSON交互的错误信息提示
    private Object data;//用于网站的JSON交互的数据信息
    private Integer count;//用于分页，记录总数

    public Integer getCode() {
        return code;
    }

    public void setCode(Integer code) {
        this.code = code;
    }

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }

    public Object getData() {
        return data;
    }

    public void setData(Object data) {
        this.data = data;
    }

    public Integer getCount() {
        return count;
    }

    public void setCount(Integer count) {
        this.count = count;
    }
}
