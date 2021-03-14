package com.ruoyi.project.system.yinghuanqieshijihuanqing.service.impl;

import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.project.system.yinghuanqieshijihuanqing.mapper.MockWykjYunyingbaobiao2YinghuanqieshijihuanqingMapper;
import com.ruoyi.project.system.yinghuanqieshijihuanqing.domain.MockWykjYunyingbaobiao2Yinghuanqieshijihuanqing;
import com.ruoyi.project.system.yinghuanqieshijihuanqing.service.IMockWykjYunyingbaobiao2YinghuanqieshijihuanqingService;
import com.ruoyi.common.utils.text.Convert;

/**
 * 【请填写功能名称】Service业务层处理
 * 
 * @author ruoyi
 * @date 2021-01-15
 */
@Service
public class MockWykjYunyingbaobiao2YinghuanqieshijihuanqingServiceImpl implements IMockWykjYunyingbaobiao2YinghuanqieshijihuanqingService 
{
    @Autowired
    private MockWykjYunyingbaobiao2YinghuanqieshijihuanqingMapper mockWykjYunyingbaobiao2YinghuanqieshijihuanqingMapper;

    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    @Override
    public MockWykjYunyingbaobiao2Yinghuanqieshijihuanqing selectMockWykjYunyingbaobiao2YinghuanqieshijihuanqingById(Long id)
    {
        return mockWykjYunyingbaobiao2YinghuanqieshijihuanqingMapper.selectMockWykjYunyingbaobiao2YinghuanqieshijihuanqingById(id);
    }

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param mockWykjYunyingbaobiao2Yinghuanqieshijihuanqing 【请填写功能名称】
     * @return 【请填写功能名称】
     */
    @Override
    public List<MockWykjYunyingbaobiao2Yinghuanqieshijihuanqing> selectMockWykjYunyingbaobiao2YinghuanqieshijihuanqingList(MockWykjYunyingbaobiao2Yinghuanqieshijihuanqing mockWykjYunyingbaobiao2Yinghuanqieshijihuanqing)
    {
        return mockWykjYunyingbaobiao2YinghuanqieshijihuanqingMapper.selectMockWykjYunyingbaobiao2YinghuanqieshijihuanqingList(mockWykjYunyingbaobiao2Yinghuanqieshijihuanqing);
    }

    /**
     * 新增【请填写功能名称】
     * 
     * @param mockWykjYunyingbaobiao2Yinghuanqieshijihuanqing 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int insertMockWykjYunyingbaobiao2Yinghuanqieshijihuanqing(MockWykjYunyingbaobiao2Yinghuanqieshijihuanqing mockWykjYunyingbaobiao2Yinghuanqieshijihuanqing)
    {
        return mockWykjYunyingbaobiao2YinghuanqieshijihuanqingMapper.insertMockWykjYunyingbaobiao2Yinghuanqieshijihuanqing(mockWykjYunyingbaobiao2Yinghuanqieshijihuanqing);
    }

    /**
     * 修改【请填写功能名称】
     * 
     * @param mockWykjYunyingbaobiao2Yinghuanqieshijihuanqing 【请填写功能名称】
     * @return 结果
     */
    @Override
    public int updateMockWykjYunyingbaobiao2Yinghuanqieshijihuanqing(MockWykjYunyingbaobiao2Yinghuanqieshijihuanqing mockWykjYunyingbaobiao2Yinghuanqieshijihuanqing)
    {
        return mockWykjYunyingbaobiao2YinghuanqieshijihuanqingMapper.updateMockWykjYunyingbaobiao2Yinghuanqieshijihuanqing(mockWykjYunyingbaobiao2Yinghuanqieshijihuanqing);
    }

    /**
     * 删除【请填写功能名称】对象
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    @Override
    public int deleteMockWykjYunyingbaobiao2YinghuanqieshijihuanqingByIds(String ids)
    {
        return mockWykjYunyingbaobiao2YinghuanqieshijihuanqingMapper.deleteMockWykjYunyingbaobiao2YinghuanqieshijihuanqingByIds(Convert.toStrArray(ids));
    }

    /**
     * 删除【请填写功能名称】信息
     * 
     * @param id 【请填写功能名称】ID
     * @return 结果
     */
    @Override
    public int deleteMockWykjYunyingbaobiao2YinghuanqieshijihuanqingById(Long id)
    {
        return mockWykjYunyingbaobiao2YinghuanqieshijihuanqingMapper.deleteMockWykjYunyingbaobiao2YinghuanqieshijihuanqingById(id);
    }
}
