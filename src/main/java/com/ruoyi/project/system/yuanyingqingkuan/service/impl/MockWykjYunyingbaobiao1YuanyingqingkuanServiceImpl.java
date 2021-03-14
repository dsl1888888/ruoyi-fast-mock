package com.ruoyi.project.system.yuanyingqingkuan.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.project.system.yuanyingqingkuan.mapper.MockWykjYunyingbaobiao1YuanyingqingkuanMapper;
import com.ruoyi.project.system.yuanyingqingkuan.domain.MockWykjYunyingbaobiao1Yuanyingqingkuan;
import com.ruoyi.project.system.yuanyingqingkuan.service.IMockWykjYunyingbaobiao1YuanyingqingkuanService;
import com.ruoyi.common.utils.text.Convert;

/**
 * 【请填写功能名称】Service业务层处理
 * 
 * @author ruoyi
 * @date 2021-01-15
 */
@Service
public class MockWykjYunyingbaobiao1YuanyingqingkuanServiceImpl implements IMockWykjYunyingbaobiao1YuanyingqingkuanService 
{
    @Autowired
    private MockWykjYunyingbaobiao1YuanyingqingkuanMapper mockWykjYunyingbaobiao1YuanyingqingkuanMapper;

    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    @Override
    public MockWykjYunyingbaobiao1Yuanyingqingkuan selectMockWykjYunyingbaobiao1YuanyingqingkuanById(Long id)
    {
        return mockWykjYunyingbaobiao1YuanyingqingkuanMapper.selectMockWykjYunyingbaobiao1YuanyingqingkuanById(id);
    }

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param mockWykjYunyingbaobiao1Yuanyingqingkuan 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<MockWykjYunyingbaobiao1Yuanyingqingkuan> selectMockWykjYunyingbaobiao1YuanyingqingkuanList(MockWykjYunyingbaobiao1Yuanyingqingkuan mockWykjYunyingbaobiao1Yuanyingqingkuan)
    {
        return mockWykjYunyingbaobiao1YuanyingqingkuanMapper.selectMockWykjYunyingbaobiao1YuanyingqingkuanList(mockWykjYunyingbaobiao1Yuanyingqingkuan);
    }

    /**
     * 新增【请填写功能名称】
     * 
     * @param mockWykjYunyingbaobiao1Yuanyingqingkuan 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertMockWykjYunyingbaobiao1Yuanyingqingkuan(MockWykjYunyingbaobiao1Yuanyingqingkuan mockWykjYunyingbaobiao1Yuanyingqingkuan)
    {
        return mockWykjYunyingbaobiao1YuanyingqingkuanMapper.insertMockWykjYunyingbaobiao1Yuanyingqingkuan(mockWykjYunyingbaobiao1Yuanyingqingkuan);
    }

    /**
     * 修改【请填写功能名称】
     * 
     * @param mockWykjYunyingbaobiao1Yuanyingqingkuan 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateMockWykjYunyingbaobiao1Yuanyingqingkuan(MockWykjYunyingbaobiao1Yuanyingqingkuan mockWykjYunyingbaobiao1Yuanyingqingkuan)
    {
        return mockWykjYunyingbaobiao1YuanyingqingkuanMapper.updateMockWykjYunyingbaobiao1Yuanyingqingkuan(mockWykjYunyingbaobiao1Yuanyingqingkuan);
    }

    /**
     * 删除【请填写功能名称】对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteMockWykjYunyingbaobiao1YuanyingqingkuanByIds(String ids)
    {
        return mockWykjYunyingbaobiao1YuanyingqingkuanMapper.deleteMockWykjYunyingbaobiao1YuanyingqingkuanByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param id 【请填写功能名称】ID
     * @return 结果
     */
    @Override
    public int deleteMockWykjYunyingbaobiao1YuanyingqingkuanById(Long id)
    {
        return mockWykjYunyingbaobiao1YuanyingqingkuanMapper.deleteMockWykjYunyingbaobiao1YuanyingqingkuanById(id);
    }
}
