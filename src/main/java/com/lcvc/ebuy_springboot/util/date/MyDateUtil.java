package com.lcvc.ebuy_springboot.util.date;

import java.util.Calendar;
import java.util.Date;

public class MyDateUtil {

    /**
     * 得到指定日期的若干天前的时间
     * @param currentDate 指定日期
     * @param dayNumber 表示天数，如果是指定日期当天当天用0表示
     * @return
     */
    public static Date getDateBefore(Date currentDate,int dayNumber){
        Calendar calendar =Calendar.getInstance();
        calendar.setTime(currentDate);
        calendar.set(Calendar.DATE,calendar.get(Calendar.DATE)-dayNumber);
        return calendar.getTime();
    }

    /**
     * 得到指定日期几天后的时间
     * @param currentDate 指定日期
     * @param dayNumber 表示天数，如果是指定日期当天当天用0表示
     * @return
     */
    public static Date getDateAfter(Date currentDate, int dayNumber){
        Calendar now =Calendar.getInstance();
        now.setTime(currentDate);
        now.set(Calendar.DATE,now.get(Calendar.DATE)+dayNumber);
        return now.getTime();
    }
}
