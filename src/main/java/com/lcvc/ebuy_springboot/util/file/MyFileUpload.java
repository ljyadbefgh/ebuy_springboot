package com.lcvc.ebuy_springboot.util.file;

import com.lcvc.ebuy_springboot.model.base.Constant;

import java.util.Collection;
import java.util.HashMap;

public class MyFileUpload {



	/**获取允许上传的文件类型，根据kindEditor方法设计
	 * 也可用于其它上传组件
	 * 现在为本站所用的上传模式，目前该处提供给前台layui框架进行格式验证
	 * @return 返回形式gif|jpg|jpeg|png|bmp|doc|docx|xls|xlsx|ppt|htm|html|txt|zip|rar|gz|bz2|chm|swf|flv|mp3|mp4|wav|wma|wmv|mid|avi|mpg|asf|rm|rmvb|swf|flv
	 */
	public static String getExtStringForLayui(){
		HashMap<String, String> extMap = Constant.EXT_MAP;//获取网站后缀名
		// 获取上传文件对应的允许后缀名集合
		Collection extsOfCollection=extMap.values();
		String extsOfString=extsOfCollection.toString();
		//去除Collection转换为字符串生成的【】号
		extsOfString=extsOfString.replace("[", "");
		extsOfString=extsOfString.replace("]", "");
		//去掉字符串中的所有空格
		extsOfString=extsOfString.replace(" ", "");
		//将默认的“,”改为“|”
		extsOfString=extsOfString.replace(",", "|");
		return extsOfString;
	}






	/*public static void main(String[] args) {
		FileUpload f = new FileUpload();
		// System.out.println(f.getFileSize("C:\\WINDOWS\\Web\\Wallpaper\\chibi.jpg"));
		// System.out.println(f.getFileSize("C:\\WINS\\Web\\Wallpaper\\chijpg"));
		// f.upLoad("e:/sstext/",
		// "C:\\WINDOWS\\Web\\Wallpaper\\1920CHINA_2011.jpg", "aaaa");
		f.upLoad("E:/sstext/", "C:\\WINDOWS\\Web\\Wallpaper\\chibi.jpg",
				"texst", 50, true);
	}*/
}
