package com.ruoyi.project.system.shoudai.controller;

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
import com.ruoyi.project.system.shoudai.domain.MockWykjXinshengShoudai;
import com.ruoyi.project.system.shoudai.service.IMockWykjXinshengShoudaiService;
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
@RequestMapping("/system/shoudai")
public class MockWykjXinshengShoudaiController extends BaseController
{
    private String prefix = "system/shoudai";

    @Autowired
    private IMockWykjXinshengShoudaiService mockWykjXinshengShoudaiService;

    @RequiresPermissions("system:shoudai:view")
    @GetMapping()
    public String shoudai()
    {
        return prefix + "/shoudai";
    }

    /**
     * 查询【请填写功能名称】列表
     */
//    @RequiresPermissions("system:shoudai:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(MockWykjXinshengShoudai mockWykjXinshengShoudai)
    {
        startPage();
        List<MockWykjXinshengShoudai> list = mockWykjXinshengShoudaiService.selectMockWykjXinshengShoudaiList(mockWykjXinshengShoudai);
        return getDataTable(list);
    }

    /**
     * 导出【请填写功能名称】列表
     */
//    @RequiresPermissions("system:shoudai:export")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(MockWykjXinshengShoudai mockWykjXinshengShoudai)
    {
        List<MockWykjXinshengShoudai> list = mockWykjXinshengShoudaiService.selectMockWykjXinshengShoudaiList(mockWykjXinshengShoudai);
        ExcelUtil<MockWykjXinshengShoudai> util = new ExcelUtil<MockWykjXinshengShoudai>(MockWykjXinshengShoudai.class);
        return util.exportExcel(list, "shoudai");
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
//    @RequiresPermissions("system:shoudai:add")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(MockWykjXinshengShoudai mockWykjXinshengShoudai)
    {
        return toAjax(mockWykjXinshengShoudaiService.insertMockWykjXinshengShoudai(mockWykjXinshengShoudai));
    }

    /**
     * 修改【请填写功能名称】
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        MockWykjXinshengShoudai mockWykjXinshengShoudai = mockWykjXinshengShoudaiService.selectMockWykjXinshengShoudaiById(id);
        mmap.put("mockWykjXinshengShoudai", mockWykjXinshengShoudai);
        return prefix + "/edit";
    }

    /**
     * 修改保存【请填写功能名称】
     */
//    @RequiresPermissions("system:shoudai:edit")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(MockWykjXinshengShoudai mockWykjXinshengShoudai)
    {
        return toAjax(mockWykjXinshengShoudaiService.updateMockWykjXinshengShoudai(mockWykjXinshengShoudai));
    }

    /**
     * 删除【请填写功能名称】
     */
//    @RequiresPermissions("system:shoudai:remove")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(mockWykjXinshengShoudaiService.deleteMockWykjXinshengShoudaiByIds(ids));
    }
}
