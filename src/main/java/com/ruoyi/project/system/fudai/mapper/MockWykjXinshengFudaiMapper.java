package com.ruoyi.project.system.fudai.mapper;

import java.util.List;
import com.ruoyi.project.system.fudai.domain.MockWykjXinshengFudai;

/**
 * 【请填写功能名称】Mapper接口
 * 
 * @author ruoyi
 * @date 2021-01-14
 */
public interface MockWykjXinshengFudaiMapper 
{
    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    public MockWykjXinshengFudai selectMockWykjXinshengFudaiById(Long id);

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param mockWykjXinshengFudai 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<MockWykjXinshengFudai> selectMockWykjXinshengFudaiList(MockWykjXinshengFudai mockWykjXinshengFudai);

    /**
     * 新增【请填写功能名称】
     * 
     * @param mockWykjXinshengFudai 【请填写功能名称】
     * @return 结果
     */
    public int insertMockWykjXinshengFudai(MockWykjXinshengFudai mockWykjXinshengFudai);

    /**
     * 修改【请填写功能名称】
     * 
     * @param mockWykjXinshengFudai 【请填写功能名称】
     * @return 结果
     */
    public int updateMockWykjXinshengFudai(MockWykjXinshengFudai mockWykjXinshengFudai);

    /**
     * 删除【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 结果
     */
    public int deleteMockWykjXinshengFudaiById(Long id);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteMockWykjXinshengFudaiByIds(String[] ids);
}
