package com.lcvc.ebuy_springboot.junit.util.file;

import com.lcvc.ebuy_springboot.model.base.Constant;
import com.lcvc.ebuy_springboot.model.exception.MyWebException;

import java.util.*;

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

	/*
	 * 检查dirName是否是允许的格式，如果为null则默认为image
	 * 根据dirName，判断后缀名是否是dirName允许的格式
	 * @param ext 后缀名 如jpg，txt
	 * @param dirName 目录名  如image,file。
	 * @return true表示允许
	 * @Throws MyFormPropertyException 检查从web层传递过来的值是否合法
	 */
	public static boolean validateExtByDir(String ext,String dirName) throws MyWebException {
		boolean judge=false;
		if(dirName==null||dirName==""){
			dirName="image";
		}
		Map<String, String> extMap = Constant.EXT_MAP;//获取项目中设置的上传规则
		if(extMap.keySet().contains(dirName)){//如果dirName属于网站的对应目录
			// 获取上传文件对应的允许后缀名集合
			String[] exts = extMap.get(dirName).split(",");
			List<String> extList = Arrays.<String> asList(exts);// 将数组转换为list
			if (!extList.contains(ext)) {// 如果允许扩展名中不包含上传文件的扩展名
				throw new MyWebException("上传文件扩展名是不允许的扩展名。\n只允许" + extMap.get(dirName) + "格式。");
			}else{//如果后缀名符合网站要求
				judge=true;
			}
		}else{//如果dirName不属于网站的对应目录
			throw new MyWebException("上传文件dirName参数错误，属于程序错误");
		}

		return judge;
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
