package com.ruoyi.project.system.fangkuan.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.project.system.fangkuan.mapper.MockWykjYunyingbaobiao3FangkuanMapper;
import com.ruoyi.project.system.fangkuan.domain.MockWykjYunyingbaobiao3Fangkuan;
import com.ruoyi.project.system.fangkuan.service.IMockWykjYunyingbaobiao3FangkuanService;
import com.ruoyi.common.utils.text.Convert;

/**
 * 【请填写功能名称】Service业务层处理
 * 
 * @author ruoyi
 * @date 2021-01-14
 */
@Service
public class MockWykjYunyingbaobiao3FangkuanServiceImpl implements IMockWykjYunyingbaobiao3FangkuanService 
{
    @Autowired
    private MockWykjYunyingbaobiao3FangkuanMapper mockWykjYunyingbaobiao3FangkuanMapper;

    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    @Override
    public MockWykjYunyingbaobiao3Fangkuan selectMockWykjYunyingbaobiao3FangkuanById(Long id)
    {
        return mockWykjYunyingbaobiao3FangkuanMapper.selectMockWykjYunyingbaobiao3FangkuanById(id);
    }

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param mockWykjYunyingbaobiao3Fangkuan 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<MockWykjYunyingbaobiao3Fangkuan> selectMockWykjYunyingbaobiao3FangkuanList(MockWykjYunyingbaobiao3Fangkuan mockWykjYunyingbaobiao3Fangkuan)
    {
        return mockWykjYunyingbaobiao3FangkuanMapper.selectMockWykjYunyingbaobiao3FangkuanList(mockWykjYunyingbaobiao3Fangkuan);
    }

    /**
     * 新增【请填写功能名称】
     * 
     * @param mockWykjYunyingbaobiao3Fangkuan 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertMockWykjYunyingbaobiao3Fangkuan(MockWykjYunyingbaobiao3Fangkuan mockWykjYunyingbaobiao3Fangkuan)
    {
        return mockWykjYunyingbaobiao3FangkuanMapper.insertMockWykjYunyingbaobiao3Fangkuan(mockWykjYunyingbaobiao3Fangkuan);
    }

    /**
     * 修改【请填写功能名称】
     * 
     * @param mockWykjYunyingbaobiao3Fangkuan 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateMockWykjYunyingbaobiao3Fangkuan(MockWykjYunyingbaobiao3Fangkuan mockWykjYunyingbaobiao3Fangkuan)
    {
        return mockWykjYunyingbaobiao3FangkuanMapper.updateMockWykjYunyingbaobiao3Fangkuan(mockWykjYunyingbaobiao3Fangkuan);
    }

    /**
     * 删除【请填写功能名称】对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteMockWykjYunyingbaobiao3FangkuanByIds(String ids)
    {
        return mockWykjYunyingbaobiao3FangkuanMapper.deleteMockWykjYunyingbaobiao3FangkuanByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param id 【请填写功能名称】ID
     * @return 结果
     */
    @Override
    public int deleteMockWykjYunyingbaobiao3FangkuanById(Long id)
    {
        return mockWykjYunyingbaobiao3FangkuanMapper.deleteMockWykjYunyingbaobiao3FangkuanById(id);
    }
}
