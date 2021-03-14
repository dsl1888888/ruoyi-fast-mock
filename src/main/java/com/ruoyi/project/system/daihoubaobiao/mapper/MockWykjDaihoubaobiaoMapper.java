package com.ruoyi.project.system.daihoubaobiao.mapper;

import java.util.List;
import com.ruoyi.project.system.daihoubaobiao.domain.MockWykjDaihoubaobiao;

/**
 * 【请填写功能名称】Mapper接口
 * 
 * @author ruoyi
 * @date 2021-01-15
 */
public interface MockWykjDaihoubaobiaoMapper 
{
    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    public MockWykjDaihoubaobiao selectMockWykjDaihoubaobiaoById(Long id);

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param mockWykjDaihoubaobiao 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<MockWykjDaihoubaobiao> selectMockWykjDaihoubaobiaoList(MockWykjDaihoubaobiao mockWykjDaihoubaobiao);

    /**
     * 新增【请填写功能名称】
     * 
     * @param mockWykjDaihoubaobiao 【请填写功能名称】
     * @return 结果
     */
    public int insertMockWykjDaihoubaobiao(MockWykjDaihoubaobiao mockWykjDaihoubaobiao);

    /**
     * 修改【请填写功能名称】
     * 
     * @param mockWykjDaihoubaobiao 【请填写功能名称】
     * @return 结果
     */
    public int updateMockWykjDaihoubaobiao(MockWykjDaihoubaobiao mockWykjDaihoubaobiao);

    /**
     * 删除【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 结果
     */
    public int deleteMockWykjDaihoubaobiaoById(Long id);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteMockWykjDaihoubaobiaoByIds(String[] ids);
}
