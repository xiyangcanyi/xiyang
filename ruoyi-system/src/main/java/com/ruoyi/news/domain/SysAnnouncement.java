package com.ruoyi.news.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 系统通告对象 sys_announcement
 * 
 * @author ruoyi
 * @date 2023-04-06
 */
public class SysAnnouncement extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Integer id;

    /** 标题 */
    @Excel(name = "标题")
    private String titile;

    /** 内容 */
    @Excel(name = "内容")
    private String msgContent;

    /** 开始时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "开始时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date startTime;

    /** 结束时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "结束时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date endTime;

    /** 发布人 */
    @Excel(name = "发布人")
    private String sender;

    /** 优先级（L低，M中，H高） */
    @Excel(name = "优先级", readConverterExp = "L=低，M中，H高")
    private String priority;

    /** 消息类型1:通知公告2:系统消息 */
    @Excel(name = "消息类型1:通知公告2:系统消息")
    private String msgCategory;

    /** 通告对象类型（USER:指定用户，ALL:全体用户） */
    @Excel(name = "通告对象类型", readConverterExp = "U=SER:指定用户，ALL:全体用户")
    private String msgType;

    /** 发布状态（0未发布，1已发布，2已撤销） */
    @Excel(name = "发布状态", readConverterExp = "0=未发布，1已发布，2已撤销")
    private String sendStatus;

    /** 发布时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "发布时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date sendTime;

    /** 指定用户 */
    @Excel(name = "指定用户")
    private String userIds;

    /** 摘要 */
    @Excel(name = "摘要")
    private String msgAbstract;

    public void setId(Integer id) 
    {
        this.id = id;
    }

    public Integer getId() 
    {
        return id;
    }
    public void setTitile(String titile) 
    {
        this.titile = titile;
    }

    public String getTitile() 
    {
        return titile;
    }
    public void setMsgContent(String msgContent) 
    {
        this.msgContent = msgContent;
    }

    public String getMsgContent() 
    {
        return msgContent;
    }
    public void setStartTime(Date startTime) 
    {
        this.startTime = startTime;
    }

    public Date getStartTime() 
    {
        return startTime;
    }
    public void setEndTime(Date endTime) 
    {
        this.endTime = endTime;
    }

    public Date getEndTime() 
    {
        return endTime;
    }
    public void setSender(String sender) 
    {
        this.sender = sender;
    }

    public String getSender() 
    {
        return sender;
    }
    public void setPriority(String priority) 
    {
        this.priority = priority;
    }

    public String getPriority() 
    {
        return priority;
    }
    public void setMsgCategory(String msgCategory) 
    {
        this.msgCategory = msgCategory;
    }

    public String getMsgCategory() 
    {
        return msgCategory;
    }
    public void setMsgType(String msgType) 
    {
        this.msgType = msgType;
    }

    public String getMsgType() 
    {
        return msgType;
    }
    public void setSendStatus(String sendStatus) 
    {
        this.sendStatus = sendStatus;
    }

    public String getSendStatus() 
    {
        return sendStatus;
    }
    public void setSendTime(Date sendTime) 
    {
        this.sendTime = sendTime;
    }

    public Date getSendTime() 
    {
        return sendTime;
    }
    public void setUserIds(String userIds) 
    {
        this.userIds = userIds;
    }

    public String getUserIds() 
    {
        return userIds;
    }
    public void setMsgAbstract(String msgAbstract) 
    {
        this.msgAbstract = msgAbstract;
    }

    public String getMsgAbstract() 
    {
        return msgAbstract;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("titile", getTitile())
            .append("msgContent", getMsgContent())
            .append("startTime", getStartTime())
            .append("endTime", getEndTime())
            .append("sender", getSender())
            .append("priority", getPriority())
            .append("msgCategory", getMsgCategory())
            .append("msgType", getMsgType())
            .append("sendStatus", getSendStatus())
            .append("sendTime", getSendTime())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("userIds", getUserIds())
            .append("msgAbstract", getMsgAbstract())
            .toString();
    }
}
