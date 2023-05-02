package com.ruoyi.news.service;

import java.util.List;
import com.ruoyi.news.domain.SysAnnouncementSend;

/**
 * 用户通告阅读标记Service接口
 * 
 * @author ruoyi
 * @date 2023-04-06
 */
public interface ISysAnnouncementSendService 
{
    /**
     * 查询用户通告阅读标记
     * 
     * @param id 用户通告阅读标记主键
     * @return 用户通告阅读标记
     */
    public SysAnnouncementSend selectSysAnnouncementSendById(Integer id);

    /**
     * 查询用户通告阅读标记列表
     * 
     * @param sysAnnouncementSend 用户通告阅读标记
     * @return 用户通告阅读标记集合
     */
    public List<SysAnnouncementSend> selectSysAnnouncementSendList(SysAnnouncementSend sysAnnouncementSend);

    /**
     * 新增用户通告阅读标记
     * 
     * @param sysAnnouncementSend 用户通告阅读标记
     * @return 结果
     */
    public int insertSysAnnouncementSend(SysAnnouncementSend sysAnnouncementSend);

    /**
     * 修改用户通告阅读标记
     * 
     * @param sysAnnouncementSend 用户通告阅读标记
     * @return 结果
     */
    public int updateSysAnnouncementSend(SysAnnouncementSend sysAnnouncementSend);

    /**
     * 批量删除用户通告阅读标记
     * 
     * @param ids 需要删除的用户通告阅读标记主键集合
     * @return 结果
     */
    public int deleteSysAnnouncementSendByIds(Integer[] ids);

    /**
     * 删除用户通告阅读标记信息
     * 
     * @param id 用户通告阅读标记主键
     * @return 结果
     */
    public int deleteSysAnnouncementSendById(Integer id);
}
