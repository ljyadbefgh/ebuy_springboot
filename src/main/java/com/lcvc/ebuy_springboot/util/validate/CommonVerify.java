package com.lcvc.ebuy_springboot.util.validate;

import com.lcvc.ebuy_springboot.model.exception.MyWebException;

import java.util.Calendar;
import java.util.Date;
import java.util.regex.Matcher;
import java.util.regex.Pattern;



/*
 * 常用的一些验证方法
 */
public class CommonVerify {
	
	/*
	 * 验证邮箱格式是否正确
	 * @param email 表示要验证的邮箱字符串
	 * @return true表示格式正确，false表示错误
	 */
	public static boolean judgeEmail(String email){
		Pattern pattern = Pattern.compile("^([a-zA-Z0-9_\\-\\.]+)@((\\[[0-9]{1,3}\\.[0-9]{1,3}\\.[0-9]{1,3}\\.)|(([a-zA-Z0-9\\-]+\\.)+))([a-zA-Z]{2,4}|[0-9]{1,3})(\\]?)$");
		Matcher matcher = pattern.matcher(email);
		return matcher.matches();
	}
	
	/*
	 * 验证IP地址格式是否正确
	 * @param ip 表示要验证的Ip地址字符串
	 * @return true表示格式正确，false表示错误
	 */
	public static boolean judgeIP(String ip){
		Pattern pattern = Pattern.compile("\\b((?!\\d\\d\\d)\\d+|1\\d\\d|2[0-4]\\d|25[0-5])\\.((?!\\d\\d\\d)\\d+|1\\d\\d|2[0-4]\\d|25[0-5])\\.((?!\\d\\d\\d)\\d+|1\\d\\d|2[0-4]\\d|25[0-5])\\.((?!\\d\\d\\d)\\d+|1\\d\\d|2[0-4]\\d|25[0-5])\\b");
		Matcher matcher = pattern.matcher(ip); 
		return matcher.matches();
	}
	
	/*
	 * 验证是否是英文或数字
	 * @param name 表示要验证的字符串
	 * @return true表示格式正确，false表示错误
	 */
	public static boolean judgeEnglishOrNumber(String name){
		Pattern pattern = Pattern.compile("^[A-Za-z0-9]+$");
		Matcher matcher = pattern.matcher(name);
		return matcher.matches();
	}

	/*
	 * 验证身份证是否正确
	 * @param name 表示要验证的身份证
	 * @return true表示格式正确，false表示错误
	 */
	public static String validateIDCard(String IDStr){
		return IDCardValidate.IDCardValidate(IDStr);
	}
	
	
	/*
	 * 判断当前日期是否在两个日期之间
	 * @param beginTime 开始日期
	 * @param endTime 结束日期
	 * @return true表示在两个日期之间，false表示不在
	 */
	public static boolean judgeBetweenData(Date beginTime,Date endTime) throws MyWebException {
		boolean judge=false;
		Calendar c=Calendar.getInstance();
		Date d=c.getTime();//获取当前日期
		//如果两个日期为null
		if(beginTime==null&&endTime==null){
			judge=true;
		}else if(beginTime!=null&&endTime==null){//如果没有设置结束日期
			if(!d.before(beginTime)){//如果当前日期大于等于开始日期
				judge=true;
			}
		}else if(beginTime==null&&endTime!=null){//如果没有设置结束日期
			if(!d.after(endTime)){//如果当前日期小于等于结束日期
				judge=true;
			}
		}else if(beginTime!=null&&endTime!=null){
			if(!endTime.after(beginTime)){
				throw new MyWebException("操作错误：请保持传递参数正确，endTime必须大于等于beginTime");
			}
			if((!d.before(beginTime))&&(!d.after(endTime))){
				judge=true;
			}
		}
		return judge;
	}
	
	


}
