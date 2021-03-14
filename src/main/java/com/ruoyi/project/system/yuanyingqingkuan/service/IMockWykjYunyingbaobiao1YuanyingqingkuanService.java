package com.ruoyi.project.system.yuanyingqingkuan.service;

import java.util.List;
import com.ruoyi.project.system.yuanyingqingkuan.domain.MockWykjYunyingbaobiao1Yuanyingqingkuan;

/**
 * 【请填写功能名称】Service接口
 * 
 * @author ruoyi
 * @date 2021-01-15
 */
public interface IMockWykjYunyingbaobiao1YuanyingqingkuanService 
{
    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    public MockWykjYunyingbaobiao1Yuanyingqingkuan selectMockWykjYunyingbaobiao1YuanyingqingkuanById(Long id);

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param mockWykjYunyingbaobiao1Yuanyingqingkuan 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<MockWykjYunyingbaobiao1Yuanyingqingkuan> selectMockWykjYunyingbaobiao1YuanyingqingkuanList(MockWykjYunyingbaobiao1Yuanyingqingkuan mockWykjYunyingbaobiao1Yuanyingqingkuan);

    /**
     * 新增【请填写功能名称】
     * 
     * @param mockWykjYunyingbaobiao1Yuanyingqingkuan 【请填写功能名称】
     * @return 结果
     */
    public int insertMockWykjYunyingbaobiao1Yuanyingqingkuan(MockWykjYunyingbaobiao1Yuanyingqingkuan mockWykjYunyingbaobiao1Yuanyingqingkuan);

    /**
     * 修改【请填写功能名称】
     * 
     * @param mockWykjYunyingbaobiao1Yuanyingqingkuan 【请填写功能名称】
     * @return 结果
     */
    public int updateMockWykjYunyingbaobiao1Yuanyingqingkuan(MockWykjYunyingbaobiao1Yuanyingqingkuan mockWykjYunyingbaobiao1Yuanyingqingkuan);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteMockWykjYunyingbaobiao1YuanyingqingkuanByIds(String ids);

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param id 【请填写功能名称】ID
     * @return 结果
     */
    public int deleteMockWykjYunyingbaobiao1YuanyingqingkuanById(Long id);
}
