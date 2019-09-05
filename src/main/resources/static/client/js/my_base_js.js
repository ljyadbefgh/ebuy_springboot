//本文件用于放置站点需要的基础js变量或函数
//设置远程访问的服务器路径
//const WEBURL = "http://127.0.0.1:8088/ebuy_springboot/";
const WEBURL = "http://120.76.118.101:8080/ebuy_springboot/";
const WEBURL_API = WEBURL+"api/";//专门访问api接口
//设置状态码
const code_success=0;//设置状态码，表示成功，应与服务端保持一致
const code_error=-1;//设置状态码，表示失败，应与服务端保持一致
//设置本地存储变量
var storage = window.localStorage;

$(function() {
    //设置ajax默认的设置，即每次访问时都会为header设置token
    $.ajaxSetup({
        timeout: 5000, //超时时间设置，单位毫秒。要后端调试的时候，这里可以设置长些
        cache:false, //是否进行数据缓存
        //contentType:"application/json",这里不能随意加，否则会导致表单（$myForm.serialize()方式）传值时，服务端可能接收不到
        xhrFields: {
            withCredentials: true//要进行跨域必须设置，但在服务端也必须允许。这样可以保持登录状态
        },
        complete: function(XMLHttpRequest, status) { //请求完成后最终执行参数
            if(status == 'timeout') { //超时,status还有success,error等值的情况
                alert("请求超时");
            }
        }
    });
   
});




/**
 * 根据jquery源码重写的get、put、post、delete请求，针对resful风格
 * 作者：Ljy
 */
jQuery.each( [ "getResful", "postResful","putResful","patchResful","deleteResful"], function( i, method ) {
    jQuery[ method ] = function( url, data, callback, type ) {
    	if(method=="getResful"){
    		method="get";
    	}else if(method=="postResful"){
    		method="post";
    	}else if(method=="putResful"){
    		method="put";
    	}else if(method=="patchResful"){
    		method="patch";
    	}else if(method=="deleteResful"){
    		method="delete";
    	}
        // Shift arguments if data argument was omitted
        if ( jQuery.isFunction( data ) ) {
            type = type || callback;
            callback = data;
            data = undefined;
        }        

        // The url can be an options object (which then must have .url)
        return jQuery.ajax( jQuery.extend( {
            url: url,
            type: method,
            contentType:"application/json",
            dataType: type,
            data: data,
            success: callback
        }, jQuery.isPlainObject( url ) && url ) );
    };
} );

function getSessionId(){  
    var c_name = 'JSESSIONID';  
    if(document.cookie.length>0){  
       c_start=document.cookie.indexOf(c_name + "=")  
       if(c_start!=-1){   
         c_start=c_start + c_name.length+1   
         c_end=document.cookie.indexOf(";",c_start)  
         if(c_end==-1) c_end=document.cookie.length  
         return unescape(document.cookie.substring(c_start,c_end));  
       }  
    }  
}  