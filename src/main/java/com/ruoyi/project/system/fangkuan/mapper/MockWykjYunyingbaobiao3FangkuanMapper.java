package com.ruoyi.project.system.fangkuan.mapper;

import java.util.List;
import com.ruoyi.project.system.fangkuan.domain.MockWykjYunyingbaobiao3Fangkuan;

/**
 * 【请填写功能名称】Mapper接口
 * 
 * @author ruoyi
 * @date 2021-01-14
 */
public interface MockWykjYunyingbaobiao3FangkuanMapper 
{
    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    public MockWykjYunyingbaobiao3Fangkuan selectMockWykjYunyingbaobiao3FangkuanById(Long id);

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param mockWykjYunyingbaobiao3Fangkuan 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<MockWykjYunyingbaobiao3Fangkuan> selectMockWykjYunyingbaobiao3FangkuanList(MockWykjYunyingbaobiao3Fangkuan mockWykjYunyingbaobiao3Fangkuan);

    /**
     * 新增【请填写功能名称】
     * 
     * @param mockWykjYunyingbaobiao3Fangkuan 【请填写功能名称】
     * @return 结果
     */
    public int insertMockWykjYunyingbaobiao3Fangkuan(MockWykjYunyingbaobiao3Fangkuan mockWykjYunyingbaobiao3Fangkuan);

    /**
     * 修改【请填写功能名称】
     * 
     * @param mockWykjYunyingbaobiao3Fangkuan 【请填写功能名称】
     * @return 结果
     */
    public int updateMockWykjYunyingbaobiao3Fangkuan(MockWykjYunyingbaobiao3Fangkuan mockWykjYunyingbaobiao3Fangkuan);

    /**
     * 删除【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 结果
     */
    public int deleteMockWykjYunyingbaobiao3FangkuanById(Long id);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteMockWykjYunyingbaobiao3FangkuanByIds(String[] ids);
}
