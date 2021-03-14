package com.ruoyi.project.system.yinghuanqieshijihuanqing.domain;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.framework.aspectj.lang.annotation.Excel;
import com.ruoyi.framework.web.domain.BaseEntity;

import lombok.Data;

/**
 * 【请填写功能名称】对象 mock_wykj_yunyingbaobiao2_yinghuanqieshijihuanqing
 * 
 * @author ruoyi
 * @date 2021-01-15
 */
@Data
public class MockWykjYunyingbaobiao2Yinghuanqieshijihuanqing extends BaseEntity
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
    private Long id;
    
    public String getA0EndTimeReq()
    {

        if (null == a0EndTimeReq || "".equals(a0EndTimeReq))
        {
            // SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd
            // HH:mm:ss");//设置日期格式
            SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");// 设置日期格式
            System.out.println(df.format(new Date()));// new Date()为获取当前系统时间

            return df.format(new Date());
        }

        try
        {
            SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");// 设置日期格式
            System.out.println(df.parse(a0EndTimeReq));// new Date()为获取当前系统时间

            // SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");//设置日期格式
            System.out.println(df.format(new Date()));// new Date()为获取当前系统时间

            if (df.parse(df.format(new Date())).before(df.parse(a0EndTimeReq)))
            {
                // SimpleDateFormat df = new
                // SimpleDateFormat("yyyy-MM-dd");//设置日期格式
                System.out.println(df.format(new Date()));// new Date()为获取当前系统时间

                return df.format(new Date());
            }

        }
        catch (Exception e)
        {
            SimpleDateFormat df = new SimpleDateFormat("yyyy-MM-dd");// 设置日期格式
            System.out.println(df.format(new Date()));// new Date()为获取当前系统时间

            return df.format(new Date());
        }

        return a0EndTimeReq;
    }
}
