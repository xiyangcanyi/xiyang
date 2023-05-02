package com.ruoyi.news.mapper;

import java.util.List;
import com.ruoyi.news.domain.SysAnnouncement;

/**
 * 系统通告Mapper接口
 * 
 * @author ruoyi
 * @date 2023-04-06
 */
public interface SysAnnouncementMapper 
{
    /**
     * 查询系统通告
     * 
     * @param id 系统通告主键
     * @return 系统通告
     */
    public SysAnnouncement selectSysAnnouncementById(Integer id);

    /**
     * 查询系统通告列表
     * 
     * @param sysAnnouncement 系统通告
     * @return 系统通告集合
     */
    public List<SysAnnouncement> selectSysAnnouncementList(SysAnnouncement sysAnnouncement);

    /**
     * 新增系统通告
     * 
     * @param sysAnnouncement 系统通告
     * @return 结果
     */
    public int insertSysAnnouncement(SysAnnouncement sysAnnouncement);

    /**
     * 修改系统通告
     * 
     * @param sysAnnouncement 系统通告
     * @return 结果
     */
    public int updateSysAnnouncement(SysAnnouncement sysAnnouncement);

    /**
     * 删除系统通告
     * 
     * @param id 系统通告主键
     * @return 结果
     */
    public int deleteSysAnnouncementById(Integer id);

    /**
     * 批量删除系统通告
     * 
     * @param ids 需要删除的数据主键集合
     * @return 结果
     */
    public int deleteSysAnnouncementByIds(Integer[] ids);
}
