package com.lyh.itstudy.utils;

import java.text.SimpleDateFormat;
import java.util.Date;

/**
 * @author shkstart
 * @date 2020/1/30 -15:45
 */
public class GetTimeUtil {

    public  static String getDate(){
        Date date=new Date();
        SimpleDateFormat sdf=new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
        String time = sdf.format(date);
        return time;
    }
}
