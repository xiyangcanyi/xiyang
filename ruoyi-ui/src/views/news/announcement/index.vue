<template>
  <div class="app-container">
    <el-form :model="queryParams" ref="queryForm" size="small" :inline="true" v-show="showSearch">
      <el-form-item label="标题" prop="titile">
        <el-input
          v-model="queryParams.titile"
          placeholder="请输入标题"
          clearable
          style="width: 200px"
          @keyup.enter="handleQuery"
        />
      </el-form-item>
<!--      <el-form-item label="开始时间" prop="startTime">-->
<!--        <el-date-picker clearable-->
<!--          v-model="queryParams.startTime"-->
<!--          type="date"-->
<!--          value-format="yyyy-MM-dd"-->
<!--          placeholder="请选择开始时间">-->
<!--        </el-date-picker>-->
<!--      </el-form-item>-->
<!--      <el-form-item label="结束时间" prop="endTime">-->
<!--        <el-date-picker clearable-->
<!--          v-model="queryParams.endTime"-->
<!--          type="date"-->
<!--          value-format="yyyy-MM-dd"-->
<!--          placeholder="请选择结束时间">-->
<!--        </el-date-picker>-->
<!--      </el-form-item>-->
      <el-form-item label="发布人" prop="sender">
        <el-input
          v-model="queryParams.sender"
          placeholder="请输入发布人"
          clearable
          @keyup.enter.native="handleQuery"
        />
      </el-form-item>
<!--      <el-form-item label="优先级" prop="priority">-->
<!--        <el-input-->
<!--          v-model="queryParams.priority"-->
<!--          placeholder="请输入优先级"-->
<!--          clearable-->
<!--          @keyup.enter.native="handleQuery"-->
<!--        />-->
<!--      </el-form-item>-->
<!--      <el-form-item label="消息类型" prop="msgCategory">-->
<!--        <el-input-->
<!--          v-model="queryParams.msgCategory"-->
<!--          placeholder="请输入消息类型1:通知公告2:系统消息"-->
<!--          clearable-->
<!--          @keyup.enter.native="handleQuery"-->
<!--        />-->
<!--      </el-form-item>-->
      <el-form-item label="发布时间" prop="sendTime">
        <el-date-picker clearable
          v-model="queryParams.sendTime"
          type="date"
          value-format="yyyy-MM-dd"
          placeholder="请选择发布时间">
        </el-date-picker>
      </el-form-item>
      <el-form-item>
        <el-button type="primary" icon="el-icon-search" size="mini" @click="handleQuery">搜索</el-button>
        <el-button icon="el-icon-refresh" size="mini" @click="resetQuery">重置</el-button>
      </el-form-item>
    </el-form>

    <el-row :gutter="10" class="mb8">
      <el-col :span="1.5">
        <el-button
          type="primary"
          plain
          icon="el-icon-plus"
          size="mini"
          @click="handleAdd"
          v-hasPermi="['news:announcement:add']"
        >新增</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="success"
          plain
          icon="el-icon-edit"
          size="mini"
          :disabled="single"
          @click="handleUpdate"
          v-hasPermi="['news:announcement:edit']"
        >修改</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="danger"
          plain
          icon="el-icon-delete"
          size="mini"
          :disabled="multiple"
          @click="handleDelete"
          v-hasPermi="['news:announcement:remove']"
        >删除</el-button>
      </el-col>
      <el-col :span="1.5">
        <el-button
          type="warning"
          plain
          icon="el-icon-download"
          size="mini"
          @click="handleExport"
          v-hasPermi="['news:announcement:export']"
        >导出</el-button>
      </el-col>
      <right-toolbar :showSearch.sync="showSearch" @queryTable="getList"></right-toolbar>
    </el-row>

    <el-table v-loading="loading" :data="announcementList" @selection-change="handleSelectionChange">
      <el-table-column type="selection" width="50" align="center" />
      <el-table-column label="序号" align="center" prop="id" />
      <el-table-column label="标题" align="center" prop="titile" />
<!--      <el-table-column label="内容" align="center" prop="msgContent" />-->
<!--      <el-table-column label="开始时间" align="center" prop="startTime" width="180">-->
<!--        <template slot-scope="scope">-->
<!--          <span>{{ parseTime(scope.row.startTime, '{y}-{m}-{d}') }}</span>-->
<!--        </template>-->
<!--      </el-table-column>-->
<!--      <el-table-column label="结束时间" align="center" prop="endTime" width="180">-->
<!--        <template slot-scope="scope">-->
<!--          <span>{{ parseTime(scope.row.endTime, '{y}-{m}-{d}') }}</span>-->
<!--        </template>-->
<!--      </el-table-column>-->
      <el-table-column label="发布人" align="center" prop="sender" />
      <el-table-column label="优先级" align="center" prop="priority" />
      <el-table-column label="消息类型" align="center" prop="msgCategory" />
      <el-table-column label="通告类型" align="center" prop="msgType" />
<!--      <el-table-column label="发布状态" align="center" prop="sendStatus" />-->
<!--      <el-table-column label="发布时间" align="center" prop="sendTime" width="180">-->
<!--        <template slot-scope="scope">-->
<!--          <span>{{ parseTime(scope.row.sendTime, '{y}-{m}-{d}') }}</span>-->
<!--        </template>-->
<!--      </el-table-column>-->
<!--      <el-table-column label="指定用户" align="center" prop="userIds" />-->
<!--      <el-table-column label="摘要" align="center" prop="msgAbstract" />-->
      <el-table-column label="操作" align="center" class-name="small-padding fixed-width">
        <template #default="scope">
          <el-button  type="text" plain icon="el-icon-edit" size="mini" @click="handleUpdate(scope.row)" v-hasPermi="['news:announcement:edit']">修改</el-button>
          <el-button  type="text" plain icon="el-icon-delete" size="mini" @click="handleDelete(scope.row)" v-hasPermi="['news:announcement:remove']">删除</el-button>
        </template>
      </el-table-column>
    </el-table>

    <pagination
      v-show="total>0"
      :total="total"
      :page.sync="queryParams.pageNum"
      :limit.sync="queryParams.pageSize"
      @pagination="getList"
    />

    <!-- 添加或修改系统通告对话框 -->
    <el-dialog :title="title" :visible.sync="open" width="600px" append-to-body>
      <el-form ref="announcementRef" :model="form" :rules="rules" label-width="80px">
        <el-form-item label="标题" prop="titile">
          <el-input v-model="form.titile" placeholder="请输入标题" />
        </el-form-item>
        <el-form-item label="内容">
          <editor v-model="form.msgContent" :min-height="192"/>
        </el-form-item>
<!--        <el-form-item label="开始时间" prop="startTime">-->
<!--          <el-date-picker clearable-->
<!--            v-model="form.startTime"-->
<!--            type="date"-->
<!--            value-format="yyyy-MM-dd"-->
<!--            placeholder="请选择开始时间">-->
<!--          </el-date-picker>-->
<!--        </el-form-item>-->
<!--        <el-form-item label="结束时间" prop="endTime">-->
<!--          <el-date-picker clearable-->
<!--            v-model="form.endTime"-->
<!--            type="date"-->
<!--            value-format="yyyy-MM-dd"-->
<!--            placeholder="请选择结束时间">-->
<!--          </el-date-picker>-->
<!--        </el-form-item>-->
<!--        <el-form-item label="发布人" prop="sender">-->
<!--          <el-input v-model="form.sender" placeholder="请输入发布人" />-->
<!--        </el-form-item>-->
        <el-form-item label="优先级" prop="priority">
          <el-input v-model="form.priority" placeholder="请输入优先级" />
        </el-form-item>
<!--        <el-form-item label="消息类型" prop="msgCategory">-->
<!--          <el-input v-model="form.msgCategory" placeholder="请输入消息类型1:通知公告2:系统消息" />-->
<!--        </el-form-item>-->
<!--        <el-form-item label="发布时间" prop="sendTime">-->
<!--          <el-date-picker clearable-->
<!--            v-model="form.sendTime"-->
<!--            type="date"-->
<!--            value-format="yyyy-MM-dd"-->
<!--            placeholder="请选择发布时间">-->
<!--          </el-date-picker>-->
<!--        </el-form-item>-->
<!--        <el-form-item label="指定用户" prop="userIds">-->
<!--          <el-input v-model="form.userIds" type="textarea" placeholder="请输入内容" />-->
<!--        </el-form-item>-->
        <el-form-item label="摘要" prop="msgAbstract">
          <el-input v-model="form.msgAbstract" type="textarea" placeholder="请输入内容" />
        </el-form-item>
      </el-form>
      <div slot="footer" class="dialog-footer">
        <el-button type="primary" @click="submitForm">确 定</el-button>
        <el-button @click="cancel">取 消</el-button>
      </div>
    </el-dialog>
  </div>
</template>

<script>
import { listAnnouncement, getAnnouncement, delAnnouncement, addAnnouncement, updateAnnouncement } from "@/api/news/announcement";

export default {
  name: "Announcement",
  data() {
    return {
      // 遮罩层
      loading: true,
      // 选中数组
      ids: [],
      // 非单个禁用
      single: true,
      // 非多个禁用
      multiple: true,
      // 显示搜索条件
      showSearch: true,
      // 总条数
      total: 0,
      // 系统通告表格数据
      announcementList: [],
      // 弹出层标题
      title: "",
      // 是否显示弹出层
      open: false,


      // 查询参数
      queryParams: {
        pageNum: 1,
        pageSize: 10,
        titile: null,
        msgContent: null,
        startTime: null,
        endTime: null,
        sender: null,
        priority: null,
        msgCategory: null,
        msgType: null,
        sendStatus: null,
        sendTime: null,
        userIds: null,
        msgAbstract: null
      },
      // 表单参数
      form: {},
      // 表单校验
      rules: {

      }
    };
  },
  created() {
    this.getList();
  },
  methods: {
    /** 查询系统通告列表 */
    getList() {
      this.loading = true;
      listAnnouncement(this.queryParams).then(response => {
        this.announcementList = response.rows;
        this.total = response.total;
        this.loading = false;
      });
    },
    // 取消按钮
    cancel() {
      this.open = false;
      this.reset();
    },
    // 表单重置
    reset() {
      this.form = {
        annoId: null,
        titile: null,
        msgContent: null,
        startTime: null,
        endTime: null,
        sender: null,
        priority: null,
        msgCategory: null,
        msgType: null,
        sendStatus: null,
        sendTime: null,
        createBy: null,
        createTime: null,
        updateBy: null,
        updateTime: null,
        userIds: null,
        msgAbstract: null
      };
      this.resetForm("form");
    },
    /** 搜索按钮操作 */
    handleQuery() {
      this.queryParams.pageNum = 1;
      this.getList();
    },
    /** 重置按钮操作 */
    resetQuery() {
      this.resetForm("queryForm");
      this.handleQuery();
    },
    // 多选框选中数据
    handleSelectionChange(selection) {
      this.ids = selection.map(item => item.id)
      this.single = selection.length!==1
      this.multiple = !selection.length
    },
    /** 新增按钮操作 */
    handleAdd() {
     this.reset();
     this.open = true;
     this.title = "添加系统通告";
    },
    /** 修改按钮操作 */
    handleUpdate(row) {
      this.reset();
      const id = row.id || this.ids
      getAnnouncement(id).then(response => {
        this.form = response.data;
        this.open = true;
        this.title = "修改系统通告";
      });
    },
    /** 提交按钮 */
    submitForm() {
      this.$refs["announcementRef"].validate(valid => {
        if (valid) {
          if (this.form.annoId != null) {
            updateAnnouncement(this.form).then(response => {
              this.$modal.msgSuccess("修改成功");
              this.open = false;
              this.getList();
            });
          } else {
            addAnnouncement(this.form).then(response => {
              this.$modal.msgSuccess("新增成功");
              this.open = false;
              this.getList();
            });
          }
        }
      });
    },
    /** 删除按钮操作 */
    handleDelete(row) {
      const ids = row.id || this.ids;
      this.$modal.confirm('是否确认删除系统通告编号为"' + ids + '"的数据？').then(function() {
        return delAnnouncement(ids);
      }).then(() => {
        this.getList();
        this.$modal.msgSuccess("删除成功");
      }).catch(() => {});
    },
    /** 导出按钮操作 */
    handleExport() {
      this.download('news/announcement/export', {
        ...this.queryParams
      }, `announcement_${new Date().getTime()}.xlsx`)
    }
  }
};
</script>
