package com.ruoyi.project.system.yuanyingqingkuan.controller;

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
import com.ruoyi.project.system.yuanyingqingkuan.domain.MockWykjYunyingbaobiao1Yuanyingqingkuan;
import com.ruoyi.project.system.yuanyingqingkuan.service.IMockWykjYunyingbaobiao1YuanyingqingkuanService;
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
@RequestMapping("/system/yuanyingqingkuan")
public class MockWykjYunyingbaobiao1YuanyingqingkuanController extends BaseController
{
    private String prefix = "system/yuanyingqingkuan";

    @Autowired
    private IMockWykjYunyingbaobiao1YuanyingqingkuanService mockWykjYunyingbaobiao1YuanyingqingkuanService;

    @RequiresPermissions("system:yuanyingqingkuan:view")
    @GetMapping()
    public String yuanyingqingkuan()
    {
        return prefix + "/yuanyingqingkuan";
    }

    /**
     * 查询【请填写功能名称】列表
     */
    @RequiresPermissions("system:yuanyingqingkuan:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(MockWykjYunyingbaobiao1Yuanyingqingkuan mockWykjYunyingbaobiao1Yuanyingqingkuan)
    {
        startPage();
        List<MockWykjYunyingbaobiao1Yuanyingqingkuan> list = mockWykjYunyingbaobiao1YuanyingqingkuanService.selectMockWykjYunyingbaobiao1YuanyingqingkuanList(mockWykjYunyingbaobiao1Yuanyingqingkuan);
        return getDataTable(list);
    }

    /**
     * 导出【请填写功能名称】列表
     */
    @RequiresPermissions("system:yuanyingqingkuan:export")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(MockWykjYunyingbaobiao1Yuanyingqingkuan mockWykjYunyingbaobiao1Yuanyingqingkuan)
    {
        List<MockWykjYunyingbaobiao1Yuanyingqingkuan> list = mockWykjYunyingbaobiao1YuanyingqingkuanService.selectMockWykjYunyingbaobiao1YuanyingqingkuanList(mockWykjYunyingbaobiao1Yuanyingqingkuan);
        ExcelUtil<MockWykjYunyingbaobiao1Yuanyingqingkuan> util = new ExcelUtil<MockWykjYunyingbaobiao1Yuanyingqingkuan>(MockWykjYunyingbaobiao1Yuanyingqingkuan.class);
        return util.exportExcel(list, "yuanyingqingkuan");
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
    @RequiresPermissions("system:yuanyingqingkuan:add")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(MockWykjYunyingbaobiao1Yuanyingqingkuan mockWykjYunyingbaobiao1Yuanyingqingkuan)
    {
        return toAjax(mockWykjYunyingbaobiao1YuanyingqingkuanService.insertMockWykjYunyingbaobiao1Yuanyingqingkuan(mockWykjYunyingbaobiao1Yuanyingqingkuan));
    }

    /**
     * 修改【请填写功能名称】
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        MockWykjYunyingbaobiao1Yuanyingqingkuan mockWykjYunyingbaobiao1Yuanyingqingkuan = mockWykjYunyingbaobiao1YuanyingqingkuanService.selectMockWykjYunyingbaobiao1YuanyingqingkuanById(id);
        mmap.put("mockWykjYunyingbaobiao1Yuanyingqingkuan", mockWykjYunyingbaobiao1Yuanyingqingkuan);
        return prefix + "/edit";
    }

    /**
     * 修改保存【请填写功能名称】
     */
    @RequiresPermissions("system:yuanyingqingkuan:edit")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(MockWykjYunyingbaobiao1Yuanyingqingkuan mockWykjYunyingbaobiao1Yuanyingqingkuan)
    {
        return toAjax(mockWykjYunyingbaobiao1YuanyingqingkuanService.updateMockWykjYunyingbaobiao1Yuanyingqingkuan(mockWykjYunyingbaobiao1Yuanyingqingkuan));
    }

    /**
     * 删除【请填写功能名称】
     */
    @RequiresPermissions("system:yuanyingqingkuan:remove")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(mockWykjYunyingbaobiao1YuanyingqingkuanService.deleteMockWykjYunyingbaobiao1YuanyingqingkuanByIds(ids));
    }
}
