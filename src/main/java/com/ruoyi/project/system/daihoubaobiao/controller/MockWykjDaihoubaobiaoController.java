package com.ruoyi.project.system.daihoubaobiao.controller;

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
import com.ruoyi.project.system.daihoubaobiao.domain.MockWykjDaihoubaobiao;
import com.ruoyi.project.system.daihoubaobiao.service.IMockWykjDaihoubaobiaoService;
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
@RequestMapping("/system/daihoubaobiao")
public class MockWykjDaihoubaobiaoController extends BaseController
{
    private String prefix = "system/daihoubaobiao";

    @Autowired
    private IMockWykjDaihoubaobiaoService mockWykjDaihoubaobiaoService;

    @RequiresPermissions("system:daihoubaobiao:view")
    @GetMapping()
    public String daihoubaobiao()
    {
        return prefix + "/daihoubaobiao";
    }

    /**
     * 查询【请填写功能名称】列表
     */
    @RequiresPermissions("system:daihoubaobiao:list")
    @PostMapping("/list")
    @ResponseBody
    public TableDataInfo list(MockWykjDaihoubaobiao mockWykjDaihoubaobiao)
    {
        startPage();
        List<MockWykjDaihoubaobiao> list = mockWykjDaihoubaobiaoService.selectMockWykjDaihoubaobiaoList(mockWykjDaihoubaobiao);
        return getDataTable(list);
    }

    /**
     * 导出【请填写功能名称】列表
     */
    @RequiresPermissions("system:daihoubaobiao:export")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    @ResponseBody
    public AjaxResult export(MockWykjDaihoubaobiao mockWykjDaihoubaobiao)
    {
        List<MockWykjDaihoubaobiao> list = mockWykjDaihoubaobiaoService.selectMockWykjDaihoubaobiaoList(mockWykjDaihoubaobiao);
        ExcelUtil<MockWykjDaihoubaobiao> util = new ExcelUtil<MockWykjDaihoubaobiao>(MockWykjDaihoubaobiao.class);
        return util.exportExcel(list, "daihoubaobiao");
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
    @RequiresPermissions("system:daihoubaobiao:add")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.INSERT)
    @PostMapping("/add")
    @ResponseBody
    public AjaxResult addSave(MockWykjDaihoubaobiao mockWykjDaihoubaobiao)
    {
        return toAjax(mockWykjDaihoubaobiaoService.insertMockWykjDaihoubaobiao(mockWykjDaihoubaobiao));
    }

    /**
     * 修改【请填写功能名称】
     */
    @GetMapping("/edit/{id}")
    public String edit(@PathVariable("id") Long id, ModelMap mmap)
    {
        MockWykjDaihoubaobiao mockWykjDaihoubaobiao = mockWykjDaihoubaobiaoService.selectMockWykjDaihoubaobiaoById(id);
        mmap.put("mockWykjDaihoubaobiao", mockWykjDaihoubaobiao);
        return prefix + "/edit";
    }

    /**
     * 修改保存【请填写功能名称】
     */
    @RequiresPermissions("system:daihoubaobiao:edit")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.UPDATE)
    @PostMapping("/edit")
    @ResponseBody
    public AjaxResult editSave(MockWykjDaihoubaobiao mockWykjDaihoubaobiao)
    {
        return toAjax(mockWykjDaihoubaobiaoService.updateMockWykjDaihoubaobiao(mockWykjDaihoubaobiao));
    }

    /**
     * 删除【请填写功能名称】
     */
    @RequiresPermissions("system:daihoubaobiao:remove")
    @Log(title = "【请填写功能名称】", businessType = BusinessType.DELETE)
    @PostMapping( "/remove")
    @ResponseBody
    public AjaxResult remove(String ids)
    {
        return toAjax(mockWykjDaihoubaobiaoService.deleteMockWykjDaihoubaobiaoByIds(ids));
    }
}
