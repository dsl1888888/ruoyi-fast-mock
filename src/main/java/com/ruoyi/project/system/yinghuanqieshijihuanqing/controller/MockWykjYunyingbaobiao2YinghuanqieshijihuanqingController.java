package com.ruoyi.project.system.yinghuanqieshijihuanqing.controller;

import java.util.List;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.ruoyi.framework.aspectj.lang.annotation.Log;
import com.ruoyi.framework.aspectj.lang.enums.BusinessType;
import com.ruoyi.project.system.yinghuanqieshijihuanqing.domain.MockWykjYunyingbaobiao2Yinghuanqieshijihuanqing;
import com.ruoyi.project.system.yinghuanqieshijihuanqing.service.IMockWykjYunyingbaobiao2YinghuanqieshijihuanqingService;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;

/**
 * 【请填写功能名称】Controller
 * 
 * @author ruoyi
 * @date 2021-01-15
 */
@Controller
@RequestMapping("/system/yinghuanqieshijihuanqing")
public class MockWykjYunyingbaobiao2YinghuanqieshijihuanqingController extends BaseController
{
    private String prefix = "system/yinghuanqieshijihuanqing";

    @Autowired
    private IMockWykjYunyingbaobiao2YinghuanqieshijihuanqingService mockWykjYunyingbaobiao2YinghuanqieshijihuanqingService;

    @RequiresPermissions("system:yinghuanqieshijihuanqing:view")
    @GetMapping()
    public String yinghuanqieshijihuanqing()
    {
        return prefix + "/yinghuanqieshijihuanqing";
    }

    /**
     * 查询【请填写功能名称】列表
     */
//    @RequiresPermissions("system:yinghuanqieshijihuanqing:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(MockWykjYunyingbaobiao2Yinghuanqieshijihuanqing mockWykjYunyingbaobiao2Yinghuanqieshijihuanqing)
    {
        startPage();
        List<MockWykjYunyingbaobiao2Yinghuanqieshijihuanqing> list = mockWykjYunyingbaobiao2YinghuanqieshijihuanqingService.selectMockWykjYunyingbaobiao2YinghuanqieshijihuanqingList(mockWykjYunyingbaobiao2Yinghuanqieshijihuanqing);
        return getDataTable(list);
    }

    /**
     * 导出【请填写功能名称】列表
     */
//    @RequiresPermissions("system:yinghuanqieshijihuanqing:export")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(MockWykjYunyingbaobiao2Yinghuanqieshijihuanqing mockWykjYunyingbaobiao2Yinghuanqieshijihuanqing)
    {
        List<MockWykjYunyingbaobiao2Yinghuanqieshijihuanqing> list = mockWykjYunyingbaobiao2YinghuanqieshijihuanqingService.selectMockWykjYunyingbaobiao2YinghuanqieshijihuanqingList(mockWykjYunyingbaobiao2Yinghuanqieshijihuanqing);
        ExcelUtil<MockWykjYunyingbaobiao2Yinghuanqieshijihuanqing> util = new ExcelUtil<MockWykjYunyingbaobiao2Yinghuanqieshijihuanqing>(MockWykjYunyingbaobiao2Yinghuanqieshijihuanqing.class);
        return util.exportExcel(list, "yinghuanqieshijihuanqing");
    }

    /**
     * 新增【请填写功能名称】
     */
    @GetMapping("/add")
    public String add()
    {
        return prefix + "/add";
    }

    /**
     * 新增保存【请填写功能名称】
     */
//    @RequiresPermissions("system:yinghuanqieshijihuanqing:add")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(MockWykjYunyingbaobiao2Yinghuanqieshijihuanqing mockWykjYunyingbaobiao2Yinghuanqieshijihuanqing)
    {
        return toAjax(mockWykjYunyingbaobiao2YinghuanqieshijihuanqingService.insertMockWykjYunyingbaobiao2Yinghuanqieshijihuanqing(mockWykjYunyingbaobiao2Yinghuanqieshijihuanqing));
    }

    /**
     * 修改【请填写功能名称】
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        MockWykjYunyingbaobiao2Yinghuanqieshijihuanqing mockWykjYunyingbaobiao2Yinghuanqieshijihuanqing = mockWykjYunyingbaobiao2YinghuanqieshijihuanqingService.selectMockWykjYunyingbaobiao2YinghuanqieshijihuanqingById(id);
        mmap.put("mockWykjYunyingbaobiao2Yinghuanqieshijihuanqing", mockWykjYunyingbaobiao2Yinghuanqieshijihuanqing);
        return prefix + "/edit";
    }

    /**
     * 修改保存【请填写功能名称】
     */
//    @RequiresPermissions("system:yinghuanqieshijihuanqing:edit")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(MockWykjYunyingbaobiao2Yinghuanqieshijihuanqing mockWykjYunyingbaobiao2Yinghuanqieshijihuanqing)
    {
        return toAjax(mockWykjYunyingbaobiao2YinghuanqieshijihuanqingService.updateMockWykjYunyingbaobiao2Yinghuanqieshijihuanqing(mockWykjYunyingbaobiao2Yinghuanqieshijihuanqing));
    }

    /**
     * 删除【请填写功能名称】
     */
//    @RequiresPermissions("system:yinghuanqieshijihuanqing:remove")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(mockWykjYunyingbaobiao2YinghuanqieshijihuanqingService.deleteMockWykjYunyingbaobiao2YinghuanqieshijihuanqingByIds(ids));
    }
}
