package com.ruoyi.project.system.shoudai.mapper;

import java.util.List;
import com.ruoyi.project.system.shoudai.domain.MockWykjXinshengShoudai;

/**
 * 【请填写功能名称】Mapper接口
 * 
 * @author ruoyi
 * @date 2021-01-14
 */
public interface MockWykjXinshengShoudaiMapper 
{
    /**
     * 查询【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 【请填写功能名称】
     */
    public MockWykjXinshengShoudai selectMockWykjXinshengShoudaiById(Long id);

    /**
     * 查询【请填写功能名称】列表
     * 
     * @param mockWykjXinshengShoudai 【请填写功能名称】
     * @return 【请填写功能名称】集合
     */
    public List<MockWykjXinshengShoudai> selectMockWykjXinshengShoudaiList(MockWykjXinshengShoudai mockWykjXinshengShoudai);

    /**
     * 新增【请填写功能名称】
     * 
     * @param mockWykjXinshengShoudai 【请填写功能名称】
     * @return 结果
     */
    public int insertMockWykjXinshengShoudai(MockWykjXinshengShoudai mockWykjXinshengShoudai);

    /**
     * 修改【请填写功能名称】
     * 
     * @param mockWykjXinshengShoudai 【请填写功能名称】
     * @return 结果
     */
    public int updateMockWykjXinshengShoudai(MockWykjXinshengShoudai mockWykjXinshengShoudai);

    /**
     * 删除【请填写功能名称】
     * 
     * @param id 【请填写功能名称】ID
     * @return 结果
     */
    public int deleteMockWykjXinshengShoudaiById(Long id);

    /**
     * 批量删除【请填写功能名称】
     * 
     * @param ids 需要删除的数据ID
     * @return 结果
     */
    public int deleteMockWykjXinshengShoudaiByIds(String[] ids);
}
