//本文件用于放置站点需要的基础js变量或函数
//设置远程访问的服务器路径
var webUrl = "http://127.0.0.1:8088/ebuy_springboot/";
$(function() {
    //设置ajax默认的设置，即每次访问时都会为header设置token
    $.ajaxSetup({
        timeout: 500000, //超时时间设置，单位毫秒
        cache:false, //是否进行数据缓存
        xhrFields: {
            withCredentials: true
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
jQuery.each( [ "getResful", "putResful","postResful","deleteResful"], function( i, method ) {
    jQuery[ method ] = function( url, data, callback, type ) {
    	if(method=="getResful"){
    		method="get";
    	}else if(method=="putResful"){
    		method="put";
    	}else if(method=="postResful"){
    		method="post";
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

//jquery的get和Post源码
//jQuery.each( [ "get", "post" ], function( i, method ) {
//  jQuery[ method ] = function( url, data, callback, type ) {
//
//      // Shift arguments if data argument was omitted
//      if ( jQuery.isFunction( data ) ) {
//          type = type || callback;
//          callback = data;
//          data = undefined;
//      }
//
//      // The url can be an options object (which then must have .url)
//      return jQuery.ajax( jQuery.extend( {
//          url: url,
//          type: method,
//          dataType: type,
//          data: data,
//          success: callback
//      }, jQuery.isPlainObject( url ) && url ) );
//  };
//} );

///**
//   * 获取数据ajax-get请求
//   * @author laixm
//   */
//  $.sanjiGetJSON = function (url,data,callback){
//      $.ajax({
//          url:url,
//          type:"get",
//          contentType:"application/json",
//          dataType:"json",
//          timeout:10000,
//          data:data,
//          success:function(data){
//              callback(data);
//          }
//      });
//  };
//
//  /**
//   * 提交json数据的post请求
//   * @author laixm
//   */
//  $.postJSON = function(url,data,callback){
//      $.ajax({
//          url:url,
//          type:"post",
//          contentType:"application/json",
//          dataType:"json",
//          data:data,
//          timeout:60000,
//          success:function(msg){
//              callback(msg);
//          },
//          error:function(xhr,textstatus,thrown){
//
//          }
//      });
//  };
//
//  /**
//   * 修改数据的ajax-put请求
//   * @author laixm
//   */
//  $.putJSON = function(url,data,callback){
//      $.ajax({
//          url:url,
//          type:"put",
//          contentType:"application/json",
//          dataType:"json",
//          data:data,
//          timeout:20000,
//          success:function(msg){
//              callback(msg);
//          },
//          error:function(xhr,textstatus,thrown){
//
//          }
//      });
//  };
//  /**
//   * 删除数据的ajax-delete请求
//   * @author laixm
//   */
//   $.deleteJSON= function(url,data,callback){
//   	if ( $.isFunction( data ) ) {//如果date是函数，说明没有传date参数进来，而是直接传函数
//          type = type || callback;
//          callback = data;
//          data = undefined;
//      }
//      $.ajax({
//          url:url,
//          type:"delete",
//          contentType:"application/json",
//          dataType:"json",
//          data:data,
//          success:function(msg){
//              callback(msg);
//          },
//          error:function(xhr,textstatus,thrown){
//
//          }
//      });
//  };