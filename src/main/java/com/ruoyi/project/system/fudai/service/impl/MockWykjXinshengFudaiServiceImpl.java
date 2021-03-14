package com.ruoyi.project.system.fudai.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.project.system.fudai.mapper.MockWykjXinshengFudaiMapper;
import com.ruoyi.project.system.fudai.domain.MockWykjXinshengFudai;
import com.ruoyi.project.system.fudai.service.IMockWykjXinshengFudaiService;
import com.ruoyi.common.utils.text.Convert;

/**
 * 【请填写功能名称】Service业务层处理
 * 
 * @author ruoyi
 * @date 2021-01-14
 */
@Service
public class MockWykjXinshengFudaiServiceImpl implements IMockWykjXinshengFudaiService 
{
    @Autowired
    private MockWykjXinshengFudaiMapper mockWykjXinshengFudaiMapper;

    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    @Override
    public MockWykjXinshengFudai selectMockWykjXinshengFudaiById(Long id)
    {
        return mockWykjXinshengFudaiMapper.selectMockWykjXinshengFudaiById(id);
    }

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param mockWykjXinshengFudai 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<MockWykjXinshengFudai> selectMockWykjXinshengFudaiList(MockWykjXinshengFudai mockWykjXinshengFudai)
    {
        return mockWykjXinshengFudaiMapper.selectMockWykjXinshengFudaiList(mockWykjXinshengFudai);
    }

    /**
     * 新增【请填写功能名称】
     * 
     * @param mockWykjXinshengFudai 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertMockWykjXinshengFudai(MockWykjXinshengFudai mockWykjXinshengFudai)
    {
        return mockWykjXinshengFudaiMapper.insertMockWykjXinshengFudai(mockWykjXinshengFudai);
    }

    /**
     * 修改【请填写功能名称】
     * 
     * @param mockWykjXinshengFudai 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateMockWykjXinshengFudai(MockWykjXinshengFudai mockWykjXinshengFudai)
    {
        return mockWykjXinshengFudaiMapper.updateMockWykjXinshengFudai(mockWykjXinshengFudai);
    }

    /**
     * 删除【请填写功能名称】对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteMockWykjXinshengFudaiByIds(String ids)
    {
        return mockWykjXinshengFudaiMapper.deleteMockWykjXinshengFudaiByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param id 【请填写功能名称】ID
     * @return 结果
     */
    @Override
    public int deleteMockWykjXinshengFudaiById(Long id)
    {
        return mockWykjXinshengFudaiMapper.deleteMockWykjXinshengFudaiById(id);
    }
}
