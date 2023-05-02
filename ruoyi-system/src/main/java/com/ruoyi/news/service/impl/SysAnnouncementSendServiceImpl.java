package com.ruoyi.news.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.news.mapper.SysAnnouncementSendMapper;
import com.ruoyi.news.domain.SysAnnouncementSend;
import com.ruoyi.news.service.ISysAnnouncementSendService;

/**
 * 用户通告阅读标记Service业务层处理
 * 
 * @author ruoyi
 * @date 2023-04-06
 */
@Service
public class SysAnnouncementSendServiceImpl implements ISysAnnouncementSendService 
{
    @Autowired
    private SysAnnouncementSendMapper sysAnnouncementSendMapper;

    /**
     * 查询用户通告阅读标记
     * 
     * @param id 用户通告阅读标记主键
     * @return 用户通告阅读标记
     */
    @Override
    public SysAnnouncementSend selectSysAnnouncementSendById(Integer id)
    {
        return sysAnnouncementSendMapper.selectSysAnnouncementSendById(id);
    }

    /**
     * 查询用户通告阅读标记列表
     * 
     * @param sysAnnouncementSend 用户通告阅读标记
     * @return 用户通告阅读标记
     */
    @Override
    public List<SysAnnouncementSend> selectSysAnnouncementSendList(SysAnnouncementSend sysAnnouncementSend)
    {
        return sysAnnouncementSendMapper.selectSysAnnouncementSendList(sysAnnouncementSend);
    }

    /**
     * 新增用户通告阅读标记
     * 
     * @param sysAnnouncementSend 用户通告阅读标记
     * @return 结果
     */
    @Override
    public int insertSysAnnouncementSend(SysAnnouncementSend sysAnnouncementSend)
    {
        sysAnnouncementSend.setCreateTime(DateUtils.getNowDate());
        return sysAnnouncementSendMapper.insertSysAnnouncementSend(sysAnnouncementSend);
    }

    /**
     * 修改用户通告阅读标记
     * 
     * @param sysAnnouncementSend 用户通告阅读标记
     * @return 结果
     */
    @Override
    public int updateSysAnnouncementSend(SysAnnouncementSend sysAnnouncementSend)
    {
        sysAnnouncementSend.setUpdateTime(DateUtils.getNowDate());
        return sysAnnouncementSendMapper.updateSysAnnouncementSend(sysAnnouncementSend);
    }

    /**
     * 批量删除用户通告阅读标记
     * 
     * @param ids 需要删除的用户通告阅读标记主键
     * @return 结果
     */
    @Override
    public int deleteSysAnnouncementSendByIds(Integer[] ids)
    {
        return sysAnnouncementSendMapper.deleteSysAnnouncementSendByIds(ids);
    }

    /**
     * 删除用户通告阅读标记信息
     * 
     * @param id 用户通告阅读标记主键
     * @return 结果
     */
    @Override
    public int deleteSysAnnouncementSendById(Integer id)
    {
        return sysAnnouncementSendMapper.deleteSysAnnouncementSendById(id);
    }
}
