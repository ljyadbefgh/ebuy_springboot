package com.lcvc.ebuy_springboot.model.base;

import java.util.HashMap;
import java.util.LinkedHashMap;

/**
 * 保留网站的常规设置
 */
public class Constant {
    /**
     * JSON配置
     */
    public static final String JSON_CODE="code";//用于网站的JSON交互的代码状态名称
    public static final String JSON_MESSAGE="msg";//用于网站的JSON交互的错误信息名称
    public static final String JSON_DATA="data";//用于网站的JSON交互的数据信息名称
    public static final String JSON_TOTAL="count";//用于分页，记录总数

    /**
     * 文件上传配置
     */

    //获取允许上传的文件类型，根据kindEditor方法设计，需要考虑大小写。也可用于其它上传组件，现在为本站所用的上传模式
    public final static HashMap<String, String> EXT_MAP = new HashMap<String, String>(){
        {
            put("image", "gif,jpg,jpeg,png,bmp");
            put("flash", "swf,flv");
            put("media", "swf,flv,mp3,mp4,wav,wma,wmv,mid,avi,mpg,asf,rm,rmvb");
            put("file", "doc,docx,xls,xlsx,ppt,htm,html,txt,zip,rar,gz,bz2,chm");
        }
    };
    //客户头像上传配置
    public static final String CUSTOMER_PROFILE_PICTURE_UPLOAD_URL= "static/server/upload/customer_profile_picture/";//保存客户个人头像的目录，用于上传的时候，必须指明static下的绝对路径
    public static final String CUSTOMER_PROFILE_PICTURE_URL="server/upload/customer_profile_picture/";//保存客户个人头像的目录,用于展示的时候，不需要加上static
    //产品类别图片上传配置
    public static final String PRODUCTTYPE_PICTURE_UPLOAD_URL= "static/server/upload/producttype/";//保存产品栏目的目录，用于上传和删除的时候，必须指明static下的绝对路径
    public static final String PRODUCTTYPE_PICTURE_URL= "server/upload/producttype/";//保存产品栏目的目录,用于展示的时候，不需要加上static

    //产品优先级
    public final static HashMap<Integer,String> orderNumMapOfProduct = new LinkedHashMap<Integer,String>(){//产品优先级别
        {
            put(100,"普通");
            put(50,"精品");
            put(20,"vip2");
            put(10,"vip1");
            put(0,"置顶");
        }
    };
}
