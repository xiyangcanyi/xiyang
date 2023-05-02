package com.ruoyi.news.service.impl;

import java.util.List;
import com.ruoyi.common.utils.DateUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.ruoyi.news.mapper.SysAnnouncementMapper;
import com.ruoyi.news.domain.SysAnnouncement;
import com.ruoyi.news.service.ISysAnnouncementService;

/**
 * 系统通告Service业务层处理
 * 
 * @author ruoyi
 * @date 2023-04-06
 */
@Service
public class SysAnnouncementServiceImpl implements ISysAnnouncementService 
{
    @Autowired
    private SysAnnouncementMapper sysAnnouncementMapper;

    /**
     * 查询系统通告
     * 
     * @param id 系统通告主键
     * @return 系统通告
     */
    @Override
    public SysAnnouncement selectSysAnnouncementById(Integer id)
    {
        return sysAnnouncementMapper.selectSysAnnouncementById(id);
    }

    /**
     * 查询系统通告列表
     * 
     * @param sysAnnouncement 系统通告
     * @return 系统通告
     */
    @Override
    public List<SysAnnouncement> selectSysAnnouncementList(SysAnnouncement sysAnnouncement)
    {
        return sysAnnouncementMapper.selectSysAnnouncementList(sysAnnouncement);
    }

    /**
     * 新增系统通告
     * 
     * @param sysAnnouncement 系统通告
     * @return 结果
     */
    @Override
    public int insertSysAnnouncement(SysAnnouncement sysAnnouncement)
    {
        sysAnnouncement.setCreateTime(DateUtils.getNowDate());
        return sysAnnouncementMapper.insertSysAnnouncement(sysAnnouncement);
    }

    /**
     * 修改系统通告
     * 
     * @param sysAnnouncement 系统通告
     * @return 结果
     */
    @Override
    public int updateSysAnnouncement(SysAnnouncement sysAnnouncement)
    {
        sysAnnouncement.setUpdateTime(DateUtils.getNowDate());
        return sysAnnouncementMapper.updateSysAnnouncement(sysAnnouncement);
    }

    /**
     * 批量删除系统通告
     * 
     * @param ids 需要删除的系统通告主键
     * @return 结果
     */
    @Override
    public int deleteSysAnnouncementByIds(Integer[] ids)
    {
        return sysAnnouncementMapper.deleteSysAnnouncementByIds(ids);
    }

    /**
     * 删除系统通告信息
     * 
     * @param id 系统通告主键
     * @return 结果
     */
    @Override
    public int deleteSysAnnouncementById(Integer id)
    {
        return sysAnnouncementMapper.deleteSysAnnouncementById(id);
    }
}
