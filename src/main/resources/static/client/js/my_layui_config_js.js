//layui的全局配置，必须在导入layui的基本配置后导入
//全局定义一次, 加载formSelects
layui.config({
    base: '/plugins/layui-formSelects-master/src/' //调用layui-formSelects-master插件的路径。此处路径请自行处理, 可以使用绝对路径
}).extend({//设定模块别名
    formSelects: 'formSelects-v4'//相对于上述 base 目录的子目录
});