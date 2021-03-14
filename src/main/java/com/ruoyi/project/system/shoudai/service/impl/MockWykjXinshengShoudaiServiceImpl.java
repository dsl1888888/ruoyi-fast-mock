package com.ruoyi.project.system.shoudai.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.project.system.shoudai.mapper.MockWykjXinshengShoudaiMapper;
import com.ruoyi.project.system.shoudai.domain.MockWykjXinshengShoudai;
import com.ruoyi.project.system.shoudai.service.IMockWykjXinshengShoudaiService;
import com.ruoyi.common.utils.text.Convert;

/**
 * 【请填写功能名称】Service业务层处理
 * 
 * @author ruoyi
 * @date 2021-01-14
 */
@Service
public class MockWykjXinshengShoudaiServiceImpl implements IMockWykjXinshengShoudaiService 
{
    @Autowired
    private MockWykjXinshengShoudaiMapper mockWykjXinshengShoudaiMapper;

    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    @Override
    public MockWykjXinshengShoudai selectMockWykjXinshengShoudaiById(Long id)
    {
        return mockWykjXinshengShoudaiMapper.selectMockWykjXinshengShoudaiById(id);
    }

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param mockWykjXinshengShoudai 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<MockWykjXinshengShoudai> selectMockWykjXinshengShoudaiList(MockWykjXinshengShoudai mockWykjXinshengShoudai)
    {
        return mockWykjXinshengShoudaiMapper.selectMockWykjXinshengShoudaiList(mockWykjXinshengShoudai);
    }

    /**
     * 新增【请填写功能名称】
     * 
     * @param mockWykjXinshengShoudai 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertMockWykjXinshengShoudai(MockWykjXinshengShoudai mockWykjXinshengShoudai)
    {
        return mockWykjXinshengShoudaiMapper.insertMockWykjXinshengShoudai(mockWykjXinshengShoudai);
    }

    /**
     * 修改【请填写功能名称】
     * 
     * @param mockWykjXinshengShoudai 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateMockWykjXinshengShoudai(MockWykjXinshengShoudai mockWykjXinshengShoudai)
    {
        return mockWykjXinshengShoudaiMapper.updateMockWykjXinshengShoudai(mockWykjXinshengShoudai);
    }

    /**
     * 删除【请填写功能名称】对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteMockWykjXinshengShoudaiByIds(String ids)
    {
        return mockWykjXinshengShoudaiMapper.deleteMockWykjXinshengShoudaiByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param id 【请填写功能名称】ID
     * @return 结果
     */
    @Override
    public int deleteMockWykjXinshengShoudaiById(Long id)
    {
        return mockWykjXinshengShoudaiMapper.deleteMockWykjXinshengShoudaiById(id);
    }
}
