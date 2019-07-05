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