package com.ruoyi.project.system.yinghuanqieshijihuanqing.mapper;

import java.util.List;
import com.ruoyi.project.system.yinghuanqieshijihuanqing.domain.MockWykjYunyingbaobiao2Yinghuanqieshijihuanqing;

/**
 * 【请填写功能名称】Mapper接口
 * 
 * @author ruoyi
 * @date 2021-01-15
 */
public interface MockWykjYunyingbaobiao2YinghuanqieshijihuanqingMapper 
{
    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    public MockWykjYunyingbaobiao2Yinghuanqieshijihuanqing selectMockWykjYunyingbaobiao2YinghuanqieshijihuanqingById(Long id);

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param mockWykjYunyingbaobiao2Yinghuanqieshijihuanqing 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<MockWykjYunyingbaobiao2Yinghuanqieshijihuanqing> selectMockWykjYunyingbaobiao2YinghuanqieshijihuanqingList(MockWykjYunyingbaobiao2Yinghuanqieshijihuanqing mockWykjYunyingbaobiao2Yinghuanqieshijihuanqing);

    /**
     * 新增【请填写功能名称】
     * 
     * @param mockWykjYunyingbaobiao2Yinghuanqieshijihuanqing 【请填写功能名称】
     * @return 结果
     */
    public int insertMockWykjYunyingbaobiao2Yinghuanqieshijihuanqing(MockWykjYunyingbaobiao2Yinghuanqieshijihuanqing mockWykjYunyingbaobiao2Yinghuanqieshijihuanqing);

    /**
     * 修改【请填写功能名称】
     * 
     * @param mockWykjYunyingbaobiao2Yinghuanqieshijihuanqing 【请填写功能名称】
     * @return 结果
     */
    public int updateMockWykjYunyingbaobiao2Yinghuanqieshijihuanqing(MockWykjYunyingbaobiao2Yinghuanqieshijihuanqing mockWykjYunyingbaobiao2Yinghuanqieshijihuanqing);

    /**
     * 删除【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 结果
     */
    public int deleteMockWykjYunyingbaobiao2YinghuanqieshijihuanqingById(Long id);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteMockWykjYunyingbaobiao2YinghuanqieshijihuanqingByIds(String[] ids);
}
