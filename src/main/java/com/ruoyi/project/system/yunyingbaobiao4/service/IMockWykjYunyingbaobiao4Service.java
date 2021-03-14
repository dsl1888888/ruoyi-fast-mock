package com.ruoyi.project.system.yunyingbaobiao4.service;

import java.util.List;
import com.ruoyi.project.system.yunyingbaobiao4.domain.MockWykjYunyingbaobiao4;

/**
 * 【请填写功能名称】Service接口
 * 
 * @author ruoyi
 * @date 2021-01-14
 */
public interface IMockWykjYunyingbaobiao4Service 
{
    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    public MockWykjYunyingbaobiao4 selectMockWykjYunyingbaobiao4ById(Long id);

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param mockWykjYunyingbaobiao4 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<MockWykjYunyingbaobiao4> selectMockWykjYunyingbaobiao4List(MockWykjYunyingbaobiao4 mockWykjYunyingbaobiao4);

    /**
     * 新增【请填写功能名称】
     * 
     * @param mockWykjYunyingbaobiao4 【请填写功能名称】
     * @return 结果
     */
    public int insertMockWykjYunyingbaobiao4(MockWykjYunyingbaobiao4 mockWykjYunyingbaobiao4);

    /**
     * 修改【请填写功能名称】
     * 
     * @param mockWykjYunyingbaobiao4 【请填写功能名称】
     * @return 结果
     */
    public int updateMockWykjYunyingbaobiao4(MockWykjYunyingbaobiao4 mockWykjYunyingbaobiao4);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteMockWykjYunyingbaobiao4ByIds(String ids);

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param id 【请填写功能名称】ID
     * @return 结果
     */
    public int deleteMockWykjYunyingbaobiao4ById(Long id);
}
