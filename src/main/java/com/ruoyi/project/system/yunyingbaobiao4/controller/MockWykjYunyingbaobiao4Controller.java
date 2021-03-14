package com.ruoyi.project.system.yunyingbaobiao4.controller;

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
import com.ruoyi.project.system.yunyingbaobiao4.domain.MockWykjYunyingbaobiao4;
import com.ruoyi.project.system.yunyingbaobiao4.service.IMockWykjYunyingbaobiao4Service;
import com.ruoyi.framework.web.controller.BaseController;
import com.ruoyi.framework.web.domain.AjaxResult;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.framework.web.page.TableDataInfo;

/**
 * 【请填写功能名称】Controller
 * 
 * @author ruoyi
 * @date 2021-01-14
 */
@Controller
@RequestMapping("/system/yunyingbaobiao4")
public class MockWykjYunyingbaobiao4Controller extends BaseController
{
    private String prefix = "system/yunyingbaobiao4";

    @Autowired
    private IMockWykjYunyingbaobiao4Service mockWykjYunyingbaobiao4Service;

//    @RequiresPermissions("system:yunyingbaobiao4:view")
    @GetMapping()
    public String yunyingbaobiao4()
    {
        return prefix + "/yunyingbaobiao4";
    }

    /**
     * 查询【请填写功能名称】列表
     */
//    @RequiresPermissions("system:yunyingbaobiao4:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(MockWykjYunyingbaobiao4 mockWykjYunyingbaobiao4)
    {
        startPage();
        List<MockWykjYunyingbaobiao4> list = mockWykjYunyingbaobiao4Service.selectMockWykjYunyingbaobiao4List(mockWykjYunyingbaobiao4);
        return getDataTable(list);
    }

    /**
     * 导出【请填写功能名称】列表
     */
//    @RequiresPermissions("system:yunyingbaobiao4:export")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(MockWykjYunyingbaobiao4 mockWykjYunyingbaobiao4)
    {
        List<MockWykjYunyingbaobiao4> list = mockWykjYunyingbaobiao4Service.selectMockWykjYunyingbaobiao4List(mockWykjYunyingbaobiao4);
        ExcelUtil<MockWykjYunyingbaobiao4> util = new ExcelUtil<MockWykjYunyingbaobiao4>(MockWykjYunyingbaobiao4.class);
        return util.exportExcel(list, "yunyingbaobiao4");
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
//    @RequiresPermissions("system:yunyingbaobiao4:add")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(MockWykjYunyingbaobiao4 mockWykjYunyingbaobiao4)
    {
        return toAjax(mockWykjYunyingbaobiao4Service.insertMockWykjYunyingbaobiao4(mockWykjYunyingbaobiao4));
    }

    /**
     * 修改【请填写功能名称】
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        MockWykjYunyingbaobiao4 mockWykjYunyingbaobiao4 = mockWykjYunyingbaobiao4Service.selectMockWykjYunyingbaobiao4ById(id);
        mmap.put("mockWykjYunyingbaobiao4", mockWykjYunyingbaobiao4);
        return prefix + "/edit";
    }

    /**
     * 修改保存【请填写功能名称】
     */
//    @RequiresPermissions("system:yunyingbaobiao4:edit")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(MockWykjYunyingbaobiao4 mockWykjYunyingbaobiao4)
    {
        return toAjax(mockWykjYunyingbaobiao4Service.updateMockWykjYunyingbaobiao4(mockWykjYunyingbaobiao4));
    }

    /**
     * 删除【请填写功能名称】
     */
//    @RequiresPermissions("system:yunyingbaobiao4:remove")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(mockWykjYunyingbaobiao4Service.deleteMockWykjYunyingbaobiao4ByIds(ids));
    }
}
