package com.ruoyi.news.domain;

import java.util.Date;
import com.fasterxml.jackson.annotation.JsonFormat;
import org.apache.commons.lang3.builder.ToStringBuilder;
import org.apache.commons.lang3.builder.ToStringStyle;
import com.ruoyi.common.annotation.Excel;
import com.ruoyi.common.core.domain.BaseEntity;

/**
 * 用户通告阅读标记对象 sys_announcement_send
 * 
 * @author ruoyi
 * @date 2023-04-06
 */
public class SysAnnouncementSend extends BaseEntity
{
    private static final long serialVersionUID = 1L;

    /** $column.columnComment */
    private Integer id;

    /** 通告ID */
    @Excel(name = "通告ID")
    private String anntId;

    /** 用户id */
    @Excel(name = "用户id")
    private String userId;

    /** 阅读状态（0未读，1已读） */
    @Excel(name = "阅读状态", readConverterExp = "0=未读，1已读")
    private String readFlag;

    /** 阅读时间 */
    @JsonFormat(pattern = "yyyy-MM-dd")
    @Excel(name = "阅读时间", width = 30, dateFormat = "yyyy-MM-dd")
    private Date readTime;

    /** 标星状态( 1为标星 空/0没有标星) */
    @Excel(name = "标星状态( 1为标星 空/0没有标星)")
    private String starFlag;

    public void setId(Integer id) 
    {
        this.id = id;
    }

    public Integer getId() 
    {
        return id;
    }
    public void setAnntId(String anntId) 
    {
        this.anntId = anntId;
    }

    public String getAnntId() 
    {
        return anntId;
    }
    public void setUserId(String userId) 
    {
        this.userId = userId;
    }

    public String getUserId() 
    {
        return userId;
    }
    public void setReadFlag(String readFlag) 
    {
        this.readFlag = readFlag;
    }

    public String getReadFlag() 
    {
        return readFlag;
    }
    public void setReadTime(Date readTime) 
    {
        this.readTime = readTime;
    }

    public Date getReadTime() 
    {
        return readTime;
    }
    public void setStarFlag(String starFlag) 
    {
        this.starFlag = starFlag;
    }

    public String getStarFlag() 
    {
        return starFlag;
    }

    @Override
    public String toString() {
        return new ToStringBuilder(this,ToStringStyle.MULTI_LINE_STYLE)
            .append("id", getId())
            .append("anntId", getAnntId())
            .append("userId", getUserId())
            .append("readFlag", getReadFlag())
            .append("readTime", getReadTime())
            .append("createBy", getCreateBy())
            .append("createTime", getCreateTime())
            .append("updateBy", getUpdateBy())
            .append("updateTime", getUpdateTime())
            .append("starFlag", getStarFlag())
            .toString();
    }
}
