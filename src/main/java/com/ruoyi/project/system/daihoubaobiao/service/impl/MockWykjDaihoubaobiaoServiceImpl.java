package com.ruoyi.project.system.daihoubaobiao.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.project.system.daihoubaobiao.mapper.MockWykjDaihoubaobiaoMapper;
import com.ruoyi.project.system.daihoubaobiao.domain.MockWykjDaihoubaobiao;
import com.ruoyi.project.system.daihoubaobiao.service.IMockWykjDaihoubaobiaoService;
import com.ruoyi.common.utils.text.Convert;

/**
 * 【请填写功能名称】Service业务层处理
 * 
 * @author ruoyi
 * @date 2021-01-15
 */
@Service
public class MockWykjDaihoubaobiaoServiceImpl implements IMockWykjDaihoubaobiaoService 
{
    @Autowired
    private MockWykjDaihoubaobiaoMapper mockWykjDaihoubaobiaoMapper;

    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    @Override
    public MockWykjDaihoubaobiao selectMockWykjDaihoubaobiaoById(Long id)
    {
        return mockWykjDaihoubaobiaoMapper.selectMockWykjDaihoubaobiaoById(id);
    }

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param mockWykjDaihoubaobiao 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<MockWykjDaihoubaobiao> selectMockWykjDaihoubaobiaoList(MockWykjDaihoubaobiao mockWykjDaihoubaobiao)
    {
        return mockWykjDaihoubaobiaoMapper.selectMockWykjDaihoubaobiaoList(mockWykjDaihoubaobiao);
    }

    /**
     * 新增【请填写功能名称】
     * 
     * @param mockWykjDaihoubaobiao 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertMockWykjDaihoubaobiao(MockWykjDaihoubaobiao mockWykjDaihoubaobiao)
    {
        return mockWykjDaihoubaobiaoMapper.insertMockWykjDaihoubaobiao(mockWykjDaihoubaobiao);
    }

    /**
     * 修改【请填写功能名称】
     * 
     * @param mockWykjDaihoubaobiao 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateMockWykjDaihoubaobiao(MockWykjDaihoubaobiao mockWykjDaihoubaobiao)
    {
        return mockWykjDaihoubaobiaoMapper.updateMockWykjDaihoubaobiao(mockWykjDaihoubaobiao);
    }

    /**
     * 删除【请填写功能名称】对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteMockWykjDaihoubaobiaoByIds(String ids)
    {
        return mockWykjDaihoubaobiaoMapper.deleteMockWykjDaihoubaobiaoByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param id 【请填写功能名称】ID
     * @return 结果
     */
    @Override
    public int deleteMockWykjDaihoubaobiaoById(Long id)
    {
        return mockWykjDaihoubaobiaoMapper.deleteMockWykjDaihoubaobiaoById(id);
    }
}
