package com.example.main.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class utils {

    /**
     * 生成时间格式
     *
     * @return
     */
    public static String getTimes() {
        Date date = new Date();
        SimpleDateFormat dateF = new SimpleDateFormat("yyyy-MM-dd-HH:mm");
        String timeF = dateF.format(date);
        return timeF;
    }



}
