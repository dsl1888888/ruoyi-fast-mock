package com.ruoyi.project.system.yunyingbaobiao4.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.project.system.yunyingbaobiao4.mapper.MockWykjYunyingbaobiao4Mapper;
import com.ruoyi.project.system.yunyingbaobiao4.domain.MockWykjYunyingbaobiao4;
import com.ruoyi.project.system.yunyingbaobiao4.service.IMockWykjYunyingbaobiao4Service;
import com.ruoyi.common.utils.text.Convert;

/**
 * 【请填写功能名称】Service业务层处理
 * 
 * @author ruoyi
 * @date 2021-01-14
 */
@Service
public class MockWykjYunyingbaobiao4ServiceImpl implements IMockWykjYunyingbaobiao4Service 
{
    @Autowired
    private MockWykjYunyingbaobiao4Mapper mockWykjYunyingbaobiao4Mapper;

    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    @Override
    public MockWykjYunyingbaobiao4 selectMockWykjYunyingbaobiao4ById(Long id)
    {
        return mockWykjYunyingbaobiao4Mapper.selectMockWykjYunyingbaobiao4ById(id);
    }

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param mockWykjYunyingbaobiao4 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<MockWykjYunyingbaobiao4> selectMockWykjYunyingbaobiao4List(MockWykjYunyingbaobiao4 mockWykjYunyingbaobiao4)
    {
        return mockWykjYunyingbaobiao4Mapper.selectMockWykjYunyingbaobiao4List(mockWykjYunyingbaobiao4);
    }

    /**
     * 新增【请填写功能名称】
     * 
     * @param mockWykjYunyingbaobiao4 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertMockWykjYunyingbaobiao4(MockWykjYunyingbaobiao4 mockWykjYunyingbaobiao4)
    {
        return mockWykjYunyingbaobiao4Mapper.insertMockWykjYunyingbaobiao4(mockWykjYunyingbaobiao4);
    }

    /**
     * 修改【请填写功能名称】
     * 
     * @param mockWykjYunyingbaobiao4 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateMockWykjYunyingbaobiao4(MockWykjYunyingbaobiao4 mockWykjYunyingbaobiao4)
    {
        return mockWykjYunyingbaobiao4Mapper.updateMockWykjYunyingbaobiao4(mockWykjYunyingbaobiao4);
    }

    /**
     * 删除【请填写功能名称】对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteMockWykjYunyingbaobiao4ByIds(String ids)
    {
        return mockWykjYunyingbaobiao4Mapper.deleteMockWykjYunyingbaobiao4ByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param id 【请填写功能名称】ID
     * @return 结果
     */
    @Override
    public int deleteMockWykjYunyingbaobiao4ById(Long id)
    {
        return mockWykjYunyingbaobiao4Mapper.deleteMockWykjYunyingbaobiao4ById(id);
    }
}
