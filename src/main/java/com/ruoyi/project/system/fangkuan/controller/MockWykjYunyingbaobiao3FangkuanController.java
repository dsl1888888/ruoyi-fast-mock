package com.ruoyi.project.system.fangkuan.controller;

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
import com.ruoyi.project.system.fangkuan.domain.MockWykjYunyingbaobiao3Fangkuan;
import com.ruoyi.project.system.fangkuan.service.IMockWykjYunyingbaobiao3FangkuanService;
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
@RequestMapping("/system/fangkuan")
public class MockWykjYunyingbaobiao3FangkuanController extends BaseController
{
    private String prefix = "system/fangkuan";

    @Autowired
    private IMockWykjYunyingbaobiao3FangkuanService mockWykjYunyingbaobiao3FangkuanService;

//    @RequiresPermissions("system:fangkuan:view")
    @GetMapping()
    public String fangkuan()
    {
        return prefix + "/fangkuan";
    }

    /**
     * 查询【请填写功能名称】列表
     */
//    @RequiresPermissions("system:fangkuan:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(MockWykjYunyingbaobiao3Fangkuan mockWykjYunyingbaobiao3Fangkuan)
    {
        startPage();
        List<MockWykjYunyingbaobiao3Fangkuan> list = mockWykjYunyingbaobiao3FangkuanService.selectMockWykjYunyingbaobiao3FangkuanList(mockWykjYunyingbaobiao3Fangkuan);
        return getDataTable(list);
    }

    /**
     * 导出【请填写功能名称】列表
     */
//    @RequiresPermissions("system:fangkuan:export")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(MockWykjYunyingbaobiao3Fangkuan mockWykjYunyingbaobiao3Fangkuan)
    {
        List<MockWykjYunyingbaobiao3Fangkuan> list = mockWykjYunyingbaobiao3FangkuanService.selectMockWykjYunyingbaobiao3FangkuanList(mockWykjYunyingbaobiao3Fangkuan);
        ExcelUtil<MockWykjYunyingbaobiao3Fangkuan> util = new ExcelUtil<MockWykjYunyingbaobiao3Fangkuan>(MockWykjYunyingbaobiao3Fangkuan.class);
        return util.exportExcel(list, "fangkuan");
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
//    @RequiresPermissions("system:fangkuan:add")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(MockWykjYunyingbaobiao3Fangkuan mockWykjYunyingbaobiao3Fangkuan)
    {
        return toAjax(mockWykjYunyingbaobiao3FangkuanService.insertMockWykjYunyingbaobiao3Fangkuan(mockWykjYunyingbaobiao3Fangkuan));
    }

    /**
     * 修改【请填写功能名称】
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        MockWykjYunyingbaobiao3Fangkuan mockWykjYunyingbaobiao3Fangkuan = mockWykjYunyingbaobiao3FangkuanService.selectMockWykjYunyingbaobiao3FangkuanById(id);
        mmap.put("mockWykjYunyingbaobiao3Fangkuan", mockWykjYunyingbaobiao3Fangkuan);
        return prefix + "/edit";
    }

    /**
     * 修改保存【请填写功能名称】
     */
//    @RequiresPermissions("system:fangkuan:edit")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(MockWykjYunyingbaobiao3Fangkuan mockWykjYunyingbaobiao3Fangkuan)
    {
        return toAjax(mockWykjYunyingbaobiao3FangkuanService.updateMockWykjYunyingbaobiao3Fangkuan(mockWykjYunyingbaobiao3Fangkuan));
    }

    /**
     * 删除【请填写功能名称】
     */
//    @RequiresPermissions("system:fangkuan:remove")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(mockWykjYunyingbaobiao3FangkuanService.deleteMockWykjYunyingbaobiao3FangkuanByIds(ids));
    }
}
