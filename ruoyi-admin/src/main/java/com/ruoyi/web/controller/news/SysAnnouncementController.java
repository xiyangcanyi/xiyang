package com.ruoyi.web.controller.news;

import java.util.List;
import javax.servlet.http.HttpServletResponse;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.PutMapping;
import org.springframework.web.bind.annotation.DeleteMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;
import com.ruoyi.common.annotation.Log;
import com.ruoyi.common.core.controller.BaseController;
import com.ruoyi.common.core.domain.AjaxResult;
import com.ruoyi.common.enums.BusinessType;
import com.ruoyi.news.domain.SysAnnouncement;
import com.ruoyi.news.service.ISysAnnouncementService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 系统通告Controller
 * 
 * @author ruoyi
 * @date 2023-04-06
 */
@RestController
@RequestMapping("/news/announcement")
public class SysAnnouncementController extends BaseController
{
    @Autowired
    private ISysAnnouncementService sysAnnouncementService;

    /**
     * 查询系统通告列表
     */
    @PreAuthorize("@ss.hasPermi('news:announcement:list')")
    @GetMapping("/list")
    public TableDataInfo list(SysAnnouncement sysAnnouncement)
    {
        startPage();
        List<SysAnnouncement> list = sysAnnouncementService.selectSysAnnouncementList(sysAnnouncement);
        return getDataTable(list);
    }

    /**
     * 导出系统通告列表
     */
    @PreAuthorize("@ss.hasPermi('news:announcement:export')")
    @Log(title = "系统通告", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, SysAnnouncement sysAnnouncement)
    {
        List<SysAnnouncement> list = sysAnnouncementService.selectSysAnnouncementList(sysAnnouncement);
        ExcelUtil<SysAnnouncement> util = new ExcelUtil<SysAnnouncement>(SysAnnouncement.class);
        util.exportExcel(response, list, "系统通告数据");
    }

    /**
     * 获取系统通告详细信息
     */
    @PreAuthorize("@ss.hasPermi('news:announcement:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Integer id)
    {
        return success(sysAnnouncementService.selectSysAnnouncementById(id));
    }

    /**
     * 新增系统通告
     */
    @PreAuthorize("@ss.hasPermi('news:announcement:add')")
    @Log(title = "系统通告", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@Validated @RequestBody SysAnnouncement sysAnnouncement)
    {
        return toAjax(sysAnnouncementService.insertSysAnnouncement(sysAnnouncement));
    }

    /**
     * 修改系统通告
     */
    @PreAuthorize("@ss.hasPermi('news:announcement:edit')")
    @Log(title = "系统通告", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@Validated @RequestBody SysAnnouncement sysAnnouncement)
    {
        return toAjax(sysAnnouncementService.updateSysAnnouncement(sysAnnouncement));
    }

    /**
     * 删除系统通告
     */
    @PreAuthorize("@ss.hasPermi('news:announcement:remove')")
    @Log(title = "系统通告", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Integer[] ids)
    {
        return toAjax(sysAnnouncementService.deleteSysAnnouncementByIds(ids));
    }
}
