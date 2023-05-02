package com.ruoyi.web.controller.news;

import java.util.List;
import javax.servlet.http.HttpServletResponse;
import org.springframework.security.access.prepost.PreAuthorize;
import org.springframework.beans.factory.annotation.Autowired;
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
import com.ruoyi.news.domain.SysAnnouncementSend;
import com.ruoyi.news.service.ISysAnnouncementSendService;
import com.ruoyi.common.utils.poi.ExcelUtil;
import com.ruoyi.common.core.page.TableDataInfo;

/**
 * 用户通告阅读标记Controller
 * 
 * @author ruoyi
 * @date 2023-04-06
 */
@RestController
@RequestMapping("/news/send")
public class SysAnnouncementSendController extends BaseController
{
    @Autowired
    private ISysAnnouncementSendService sysAnnouncementSendService;

    /**
     * 查询用户通告阅读标记列表
     */
    @PreAuthorize("@ss.hasPermi('news:send:list')")
    @GetMapping("/list")
    public TableDataInfo list(SysAnnouncementSend sysAnnouncementSend)
    {
        startPage();
        List<SysAnnouncementSend> list = sysAnnouncementSendService.selectSysAnnouncementSendList(sysAnnouncementSend);
        return getDataTable(list);
    }

    /**
     * 导出用户通告阅读标记列表
     */
    @PreAuthorize("@ss.hasPermi('news:send:export')")
    @Log(title = "用户通告阅读标记", businessType = BusinessType.EXPORT)
    @PostMapping("/export")
    public void export(HttpServletResponse response, SysAnnouncementSend sysAnnouncementSend)
    {
        List<SysAnnouncementSend> list = sysAnnouncementSendService.selectSysAnnouncementSendList(sysAnnouncementSend);
        ExcelUtil<SysAnnouncementSend> util = new ExcelUtil<SysAnnouncementSend>(SysAnnouncementSend.class);
        util.exportExcel(response, list, "用户通告阅读标记数据");
    }

    /**
     * 获取用户通告阅读标记详细信息
     */
    @PreAuthorize("@ss.hasPermi('news:send:query')")
    @GetMapping(value = "/{id}")
    public AjaxResult getInfo(@PathVariable("id") Integer id)
    {
        return success(sysAnnouncementSendService.selectSysAnnouncementSendById(id));
    }

    /**
     * 新增用户通告阅读标记
     */
    @PreAuthorize("@ss.hasPermi('news:send:add')")
    @Log(title = "用户通告阅读标记", businessType = BusinessType.INSERT)
    @PostMapping
    public AjaxResult add(@RequestBody SysAnnouncementSend sysAnnouncementSend)
    {
        return toAjax(sysAnnouncementSendService.insertSysAnnouncementSend(sysAnnouncementSend));
    }

    /**
     * 修改用户通告阅读标记
     */
    @PreAuthorize("@ss.hasPermi('news:send:edit')")
    @Log(title = "用户通告阅读标记", businessType = BusinessType.UPDATE)
    @PutMapping
    public AjaxResult edit(@RequestBody SysAnnouncementSend sysAnnouncementSend)
    {
        return toAjax(sysAnnouncementSendService.updateSysAnnouncementSend(sysAnnouncementSend));
    }

    /**
     * 删除用户通告阅读标记
     */
    @PreAuthorize("@ss.hasPermi('news:send:remove')")
    @Log(title = "用户通告阅读标记", businessType = BusinessType.DELETE)
	@DeleteMapping("/{ids}")
    public AjaxResult remove(@PathVariable Integer[] ids)
    {
        return toAjax(sysAnnouncementSendService.deleteSysAnnouncementSendByIds(ids));
    }
}
