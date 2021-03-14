package com.ruoyi.project.system.fudai.controller;

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
import com.ruoyi.project.system.fudai.domain.MockWykjXinshengFudai;
import com.ruoyi.project.system.fudai.service.IMockWykjXinshengFudaiService;
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
@RequestMapping("/system/fudai")
public class MockWykjXinshengFudaiController extends BaseController
{
    private String prefix = "system/fudai";

    @Autowired
    private IMockWykjXinshengFudaiService mockWykjXinshengFudaiService;

//    @RequiresPermissions("system:fudai:view")
    @GetMapping()
    public String fudai()
    {
        return prefix + "/fudai";
    }

    /**
     * 查询【请填写功能名称】列表
     */
//    @RequiresPermissions("system:fudai:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(MockWykjXinshengFudai mockWykjXinshengFudai)
    {
        startPage();
        List<MockWykjXinshengFudai> list = mockWykjXinshengFudaiService.selectMockWykjXinshengFudaiList(mockWykjXinshengFudai);
        return getDataTable(list);
    }

    /**
     * 导出【请填写功能名称】列表
     */
//    @RequiresPermissions("system:fudai:export")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(MockWykjXinshengFudai mockWykjXinshengFudai)
    {
        List<MockWykjXinshengFudai> list = mockWykjXinshengFudaiService.selectMockWykjXinshengFudaiList(mockWykjXinshengFudai);
        ExcelUtil<MockWykjXinshengFudai> util = new ExcelUtil<MockWykjXinshengFudai>(MockWykjXinshengFudai.class);
        return util.exportExcel(list, "fudai");
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
//    @RequiresPermissions("system:fudai:add")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(MockWykjXinshengFudai mockWykjXinshengFudai)
    {
        return toAjax(mockWykjXinshengFudaiService.insertMockWykjXinshengFudai(mockWykjXinshengFudai));
    }

    /**
     * 修改【请填写功能名称】
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        MockWykjXinshengFudai mockWykjXinshengFudai = mockWykjXinshengFudaiService.selectMockWykjXinshengFudaiById(id);
        mmap.put("mockWykjXinshengFudai", mockWykjXinshengFudai);
        return prefix + "/edit";
    }

    /**
     * 修改保存【请填写功能名称】
     */
//    @RequiresPermissions("system:fudai:edit")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(MockWykjXinshengFudai mockWykjXinshengFudai)
    {
        return toAjax(mockWykjXinshengFudaiService.updateMockWykjXinshengFudai(mockWykjXinshengFudai));
    }

    /**
     * 删除【请填写功能名称】
     */
//    @RequiresPermissions("system:fudai:remove")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(mockWykjXinshengFudaiService.deleteMockWykjXinshengFudaiByIds(ids));
    }
}
