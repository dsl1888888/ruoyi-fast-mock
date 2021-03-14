package com.ruoyi.project.system.daihoubaobiao.domain;

import java.text.SimpleDateFormat;
import java.util.Calendar;
import java.util.Date;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;

import lombok.Data;
import lombok.extern.slf4j.Slf4j;

/**
 * 【请填写功能名称】对象 mock_wykj_daihoubaobiao
 * 
 * @author ruoyi
 * @date 2021-01-15
 */
@Slf4j
@Data
public class MockWykjDaihoubaobiao extends BaseEntity
{
    private static final long serialVersionUID = 1L;
    
    private String a0StartTimeReq;
    private String a0EndTimeReq;
    

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String a0;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String a1;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String a2;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String a3;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String a4;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String a5;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String a6;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String a7;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String a8;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String a9;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String a10;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String a11;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String a12;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String a13;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String a14;

    /** $column.columnComment */
    @Excel(name = "${comment}", readConverterExp = "$column.readConverterExp()")
    private String a15;

    /** $column.columnComment */
    private Long id;
    
    //贷后报表特殊只能查看前一天的数据..
    public String getA0EndTimeReq()
    {

        
       Calendar calendar = Calendar.getInstance(); //创建Calendar 的实例
//      calendar.add(Calendar.YEAR, -1);//当前时间减去一年，即一年前的时间
//      calendar.add(Calendar.MONTH, -1);//当前时间减去一个月，即一个月前的时间
       calendar.add(Calendar.DAY_OF_MONTH,-1); //当前时间减去一天，即一天前的时间

       SimpleDateFormat dftoday = new SimpleDateFormat("yyyy-MM-dd");// 设置日期格式
       String datetoday = dftoday.format(calendar.getTime());
       
       log.info("datetoday="+datetoday);
        
        if (null == a0EndTimeReq || "".equals(a0EndTimeReq))
        {
            return datetoday;
        }

        try
        {

            SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");// 设置日期格式 

            if (df.parse(datetoday).before(df.parse(a0EndTimeReq)))
            { 
                return datetoday;
            }

        }
        catch (Exception e)
        { 
            return datetoday;
        }

        return a0EndTimeReq;
    }
    
    public String getA1()
    {
        if (null == a1 || "".equals(a1))
        {
            return "全部";
        }
        return a1;
    }
    
    public static void main(String[] args)
    {
        Calendar calendar = Calendar.getInstance(); //创建Calendar 的实例
//      calendar.add(Calendar.YEAR, -1);//当前时间减去一年，即一年前的时间
//      calendar.add(Calendar.MONTH, -1);//当前时间减去一个月，即一个月前的时间
       calendar.add(Calendar.DAY_OF_MONTH,-1); //当前时间减去一天，即一天前的时间

       SimpleDateFormat dftoday = new SimpleDateFormat("yyyy-MM-dd");// 设置日期格式
       String datetoday = dftoday.format(calendar.getTime());
       
       System.out.println(datetoday);
    }
}
