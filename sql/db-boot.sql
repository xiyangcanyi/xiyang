/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 8.0.16 : Database - db-boot
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`db-boot` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;

USE `db-boot`;

/*Table structure for table `gen_table` */

DROP TABLE IF EXISTS `gen_table`;

CREATE TABLE `gen_table` (
  `table_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_name` varchar(200) DEFAULT '' COMMENT '表名称',
  `table_comment` varchar(500) DEFAULT '' COMMENT '表描述',
  `sub_table_name` varchar(64) DEFAULT NULL COMMENT '关联子表的表名',
  `sub_table_fk_name` varchar(64) DEFAULT NULL COMMENT '子表关联的外键名',
  `class_name` varchar(100) DEFAULT '' COMMENT '实体类名称',
  `tpl_category` varchar(200) DEFAULT 'crud' COMMENT '使用的模板（crud单表操作 tree树表操作）',
  `package_name` varchar(100) DEFAULT NULL COMMENT '生成包路径',
  `module_name` varchar(30) DEFAULT NULL COMMENT '生成模块名',
  `business_name` varchar(30) DEFAULT NULL COMMENT '生成业务名',
  `function_name` varchar(50) DEFAULT NULL COMMENT '生成功能名',
  `function_author` varchar(50) DEFAULT NULL COMMENT '生成功能作者',
  `gen_type` char(1) DEFAULT '0' COMMENT '生成代码方式（0zip压缩包 1自定义路径）',
  `gen_path` varchar(200) DEFAULT '/' COMMENT '生成路径（不填默认项目路径）',
  `options` varchar(1000) DEFAULT NULL COMMENT '其它生成选项',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`table_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='代码生成业务表';

/*Data for the table `gen_table` */

insert  into `gen_table`(`table_id`,`table_name`,`table_comment`,`sub_table_name`,`sub_table_fk_name`,`class_name`,`tpl_category`,`package_name`,`module_name`,`business_name`,`function_name`,`function_author`,`gen_type`,`gen_path`,`options`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values 
(4,'sys_announcement','系统通告表',NULL,NULL,'SysAnnouncement','crud','com.ruoyi.news','news','announcement','系统通告','ruoyi','0','/','{\"parentMenuId\":2001}','admin','2023-04-06 14:23:09','','2023-05-02 16:13:17',NULL),
(5,'sys_announcement_send','用户通告阅读标记表',NULL,NULL,'SysAnnouncementSend','crud','com.ruoyi.news','news','send','用户通告阅读标记','ruoyi','0','/',NULL,'admin','2023-04-06 14:23:10','',NULL,NULL),
(6,'sys_user_post','用户与岗位关联表',NULL,NULL,'SysUserPost','crud','com.ruoyi.news','news','post','用户与岗位关联','ruoyi','0','/','{}','admin','2023-05-02 18:03:39','','2023-05-02 18:03:53',NULL);

/*Table structure for table `gen_table_column` */

DROP TABLE IF EXISTS `gen_table_column`;

CREATE TABLE `gen_table_column` (
  `column_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '编号',
  `table_id` varchar(64) DEFAULT NULL COMMENT '归属表编号',
  `column_name` varchar(200) DEFAULT NULL COMMENT '列名称',
  `column_comment` varchar(500) DEFAULT NULL COMMENT '列描述',
  `column_type` varchar(100) DEFAULT NULL COMMENT '列类型',
  `java_type` varchar(500) DEFAULT NULL COMMENT 'JAVA类型',
  `java_field` varchar(200) DEFAULT NULL COMMENT 'JAVA字段名',
  `is_pk` char(1) DEFAULT NULL COMMENT '是否主键（1是）',
  `is_increment` char(1) DEFAULT NULL COMMENT '是否自增（1是）',
  `is_required` char(1) DEFAULT NULL COMMENT '是否必填（1是）',
  `is_insert` char(1) DEFAULT NULL COMMENT '是否为插入字段（1是）',
  `is_edit` char(1) DEFAULT NULL COMMENT '是否编辑字段（1是）',
  `is_list` char(1) DEFAULT NULL COMMENT '是否列表字段（1是）',
  `is_query` char(1) DEFAULT NULL COMMENT '是否查询字段（1是）',
  `query_type` varchar(200) DEFAULT 'EQ' COMMENT '查询方式（等于、不等于、大于、小于、范围）',
  `html_type` varchar(200) DEFAULT NULL COMMENT '显示类型（文本框、文本域、下拉框、复选框、单选框、日期控件）',
  `dict_type` varchar(200) DEFAULT '' COMMENT '字典类型',
  `sort` int(11) DEFAULT NULL COMMENT '排序',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`column_id`)
) ENGINE=InnoDB AUTO_INCREMENT=66 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='代码生成业务表字段';

/*Data for the table `gen_table_column` */

insert  into `gen_table_column`(`column_id`,`table_id`,`column_name`,`column_comment`,`column_type`,`java_type`,`java_field`,`is_pk`,`is_increment`,`is_required`,`is_insert`,`is_edit`,`is_list`,`is_query`,`query_type`,`html_type`,`dict_type`,`sort`,`create_by`,`create_time`,`update_by`,`update_time`) values 
(37,'4','id',NULL,'int(4)','Integer','id','1','1',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2023-04-06 14:23:10','','2023-05-02 16:13:17'),
(38,'4','titile','标题','varchar(100)','String','titile','0','0',NULL,'1','1','1','1','EQ','input','',2,'admin','2023-04-06 14:23:10','','2023-05-02 16:13:17'),
(39,'4','msg_content','内容','text','String','msgContent','0','0',NULL,'1','1','1','1','EQ','editor','',3,'admin','2023-04-06 14:23:10','','2023-05-02 16:13:17'),
(40,'4','start_time','开始时间','datetime','Date','startTime','0','0',NULL,'1','1','1','1','EQ','datetime','',4,'admin','2023-04-06 14:23:10','','2023-05-02 16:13:17'),
(41,'4','end_time','结束时间','datetime','Date','endTime','0','0',NULL,'1','1','1','1','EQ','datetime','',5,'admin','2023-04-06 14:23:10','','2023-05-02 16:13:17'),
(42,'4','sender','发布人','varchar(100)','String','sender','0','0',NULL,'1','1','1','1','EQ','input','',6,'admin','2023-04-06 14:23:10','','2023-05-02 16:13:17'),
(43,'4','priority','优先级（L低，M中，H高）','varchar(255)','String','priority','0','0',NULL,'1','1','1','1','EQ','input','',7,'admin','2023-04-06 14:23:10','','2023-05-02 16:13:17'),
(44,'4','msg_category','消息类型1:通知公告2:系统消息','varchar(10)','String','msgCategory','0','0',NULL,'1','1','1','1','EQ','input','',8,'admin','2023-04-06 14:23:10','','2023-05-02 16:13:17'),
(45,'4','msg_type','通告对象类型（USER:指定用户，ALL:全体用户）','varchar(10)','String','msgType','0','0',NULL,'1','1','1','1','EQ','select','',9,'admin','2023-04-06 14:23:10','','2023-05-02 16:13:17'),
(46,'4','send_status','发布状态（0未发布，1已发布，2已撤销）','varchar(10)','String','sendStatus','0','0',NULL,'1','1','1','1','EQ','radio','',10,'admin','2023-04-06 14:23:10','','2023-05-02 16:13:17'),
(47,'4','send_time','发布时间','datetime','Date','sendTime','0','0',NULL,'1','1','1','1','EQ','datetime','',11,'admin','2023-04-06 14:23:10','','2023-05-02 16:13:17'),
(48,'4','create_by','创建人','varchar(32)','String','createBy','0','0',NULL,'1',NULL,NULL,NULL,'EQ','input','',12,'admin','2023-04-06 14:23:10','','2023-05-02 16:13:17'),
(49,'4','create_time','创建时间','datetime','Date','createTime','0','0',NULL,'1',NULL,NULL,NULL,'EQ','datetime','',13,'admin','2023-04-06 14:23:10','','2023-05-02 16:13:17'),
(50,'4','update_by','更新人','varchar(32)','String','updateBy','0','0',NULL,'1','1',NULL,NULL,'EQ','input','',14,'admin','2023-04-06 14:23:10','','2023-05-02 16:13:17'),
(51,'4','update_time','更新时间','datetime','Date','updateTime','0','0',NULL,'1','1',NULL,NULL,'EQ','datetime','',15,'admin','2023-04-06 14:23:10','','2023-05-02 16:13:17'),
(52,'4','user_ids','指定用户','text','String','userIds','0','0',NULL,'1','1','1','1','EQ','textarea','',16,'admin','2023-04-06 14:23:10','','2023-05-02 16:13:17'),
(53,'4','msg_abstract','摘要','text','String','msgAbstract','0','0',NULL,'1','1','1','1','EQ','textarea','',17,'admin','2023-04-06 14:23:10','','2023-05-02 16:13:17'),
(54,'5','id',NULL,'int(4)','Integer','id','1','1',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2023-04-06 14:23:10','',NULL),
(55,'5','annt_id','通告ID','varchar(32)','String','anntId','0','0',NULL,'1','1','1','1','EQ','input','',2,'admin','2023-04-06 14:23:10','',NULL),
(56,'5','user_id','用户id','varchar(32)','String','userId','0','0',NULL,'1','1','1','1','EQ','input','',3,'admin','2023-04-06 14:23:10','',NULL),
(57,'5','read_flag','阅读状态（0未读，1已读）','varchar(10)','String','readFlag','0','0',NULL,'1','1','1','1','EQ','input','',4,'admin','2023-04-06 14:23:10','',NULL),
(58,'5','read_time','阅读时间','datetime','Date','readTime','0','0',NULL,'1','1','1','1','EQ','datetime','',5,'admin','2023-04-06 14:23:10','',NULL),
(59,'5','create_by','创建人','varchar(32)','String','createBy','0','0',NULL,'1',NULL,NULL,NULL,'EQ','input','',6,'admin','2023-04-06 14:23:10','',NULL),
(60,'5','create_time','创建时间','datetime','Date','createTime','0','0',NULL,'1',NULL,NULL,NULL,'EQ','datetime','',7,'admin','2023-04-06 14:23:10','',NULL),
(61,'5','update_by','更新人','varchar(32)','String','updateBy','0','0',NULL,'1','1',NULL,NULL,'EQ','input','',8,'admin','2023-04-06 14:23:10','',NULL),
(62,'5','update_time','更新时间','datetime','Date','updateTime','0','0',NULL,'1','1',NULL,NULL,'EQ','datetime','',9,'admin','2023-04-06 14:23:10','',NULL),
(63,'5','star_flag','标星状态( 1为标星 空/0没有标星)','varchar(10)','String','starFlag','0','0',NULL,'1','1','1','1','EQ','input','',10,'admin','2023-04-06 14:23:10','',NULL),
(64,'6','user_id','用户ID','bigint(20)','Long','userId','1','0',NULL,'1',NULL,NULL,NULL,'EQ','input','',1,'admin','2023-05-02 18:03:40','','2023-05-02 18:04:00'),
(65,'6','post_id','岗位ID','bigint(20)','Long','postId','1','0',NULL,'1',NULL,NULL,NULL,'EQ','input','',2,'admin','2023-05-02 18:03:40','','2023-05-02 18:04:00');

/*Table structure for table `qrtz_blob_triggers` */

DROP TABLE IF EXISTS `qrtz_blob_triggers`;

CREATE TABLE `qrtz_blob_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `blob_data` blob COMMENT '存放持久化Trigger对象',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_blob_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Blob类型的触发器表';

/*Data for the table `qrtz_blob_triggers` */

/*Table structure for table `qrtz_calendars` */

DROP TABLE IF EXISTS `qrtz_calendars`;

CREATE TABLE `qrtz_calendars` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `calendar_name` varchar(200) NOT NULL COMMENT '日历名称',
  `calendar` blob NOT NULL COMMENT '存放持久化calendar对象',
  PRIMARY KEY (`sched_name`,`calendar_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='日历信息表';

/*Data for the table `qrtz_calendars` */

/*Table structure for table `qrtz_cron_triggers` */

DROP TABLE IF EXISTS `qrtz_cron_triggers`;

CREATE TABLE `qrtz_cron_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `cron_expression` varchar(200) NOT NULL COMMENT 'cron表达式',
  `time_zone_id` varchar(80) DEFAULT NULL COMMENT '时区',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_cron_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='Cron类型的触发器表';

/*Data for the table `qrtz_cron_triggers` */

/*Table structure for table `qrtz_fired_triggers` */

DROP TABLE IF EXISTS `qrtz_fired_triggers`;

CREATE TABLE `qrtz_fired_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `entry_id` varchar(95) NOT NULL COMMENT '调度器实例id',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `instance_name` varchar(200) NOT NULL COMMENT '调度器实例名',
  `fired_time` bigint(13) NOT NULL COMMENT '触发的时间',
  `sched_time` bigint(13) NOT NULL COMMENT '定时器制定的时间',
  `priority` int(11) NOT NULL COMMENT '优先级',
  `state` varchar(16) NOT NULL COMMENT '状态',
  `job_name` varchar(200) DEFAULT NULL COMMENT '任务名称',
  `job_group` varchar(200) DEFAULT NULL COMMENT '任务组名',
  `is_nonconcurrent` varchar(1) DEFAULT NULL COMMENT '是否并发',
  `requests_recovery` varchar(1) DEFAULT NULL COMMENT '是否接受恢复执行',
  PRIMARY KEY (`sched_name`,`entry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='已触发的触发器表';

/*Data for the table `qrtz_fired_triggers` */

/*Table structure for table `qrtz_job_details` */

DROP TABLE IF EXISTS `qrtz_job_details`;

CREATE TABLE `qrtz_job_details` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `job_name` varchar(200) NOT NULL COMMENT '任务名称',
  `job_group` varchar(200) NOT NULL COMMENT '任务组名',
  `description` varchar(250) DEFAULT NULL COMMENT '相关介绍',
  `job_class_name` varchar(250) NOT NULL COMMENT '执行任务类名称',
  `is_durable` varchar(1) NOT NULL COMMENT '是否持久化',
  `is_nonconcurrent` varchar(1) NOT NULL COMMENT '是否并发',
  `is_update_data` varchar(1) NOT NULL COMMENT '是否更新数据',
  `requests_recovery` varchar(1) NOT NULL COMMENT '是否接受恢复执行',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`,`job_name`,`job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='任务详细信息表';

/*Data for the table `qrtz_job_details` */

/*Table structure for table `qrtz_locks` */

DROP TABLE IF EXISTS `qrtz_locks`;

CREATE TABLE `qrtz_locks` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `lock_name` varchar(40) NOT NULL COMMENT '悲观锁名称',
  PRIMARY KEY (`sched_name`,`lock_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='存储的悲观锁信息表';

/*Data for the table `qrtz_locks` */

/*Table structure for table `qrtz_paused_trigger_grps` */

DROP TABLE IF EXISTS `qrtz_paused_trigger_grps`;

CREATE TABLE `qrtz_paused_trigger_grps` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  PRIMARY KEY (`sched_name`,`trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='暂停的触发器表';

/*Data for the table `qrtz_paused_trigger_grps` */

/*Table structure for table `qrtz_scheduler_state` */

DROP TABLE IF EXISTS `qrtz_scheduler_state`;

CREATE TABLE `qrtz_scheduler_state` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `instance_name` varchar(200) NOT NULL COMMENT '实例名称',
  `last_checkin_time` bigint(13) NOT NULL COMMENT '上次检查时间',
  `checkin_interval` bigint(13) NOT NULL COMMENT '检查间隔时间',
  PRIMARY KEY (`sched_name`,`instance_name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='调度器状态表';

/*Data for the table `qrtz_scheduler_state` */

/*Table structure for table `qrtz_simple_triggers` */

DROP TABLE IF EXISTS `qrtz_simple_triggers`;

CREATE TABLE `qrtz_simple_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `repeat_count` bigint(7) NOT NULL COMMENT '重复的次数统计',
  `repeat_interval` bigint(12) NOT NULL COMMENT '重复的间隔时间',
  `times_triggered` bigint(10) NOT NULL COMMENT '已经触发的次数',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simple_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='简单触发器的信息表';

/*Data for the table `qrtz_simple_triggers` */

/*Table structure for table `qrtz_simprop_triggers` */

DROP TABLE IF EXISTS `qrtz_simprop_triggers`;

CREATE TABLE `qrtz_simprop_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_name的外键',
  `trigger_group` varchar(200) NOT NULL COMMENT 'qrtz_triggers表trigger_group的外键',
  `str_prop_1` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第一个参数',
  `str_prop_2` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第二个参数',
  `str_prop_3` varchar(512) DEFAULT NULL COMMENT 'String类型的trigger的第三个参数',
  `int_prop_1` int(11) DEFAULT NULL COMMENT 'int类型的trigger的第一个参数',
  `int_prop_2` int(11) DEFAULT NULL COMMENT 'int类型的trigger的第二个参数',
  `long_prop_1` bigint(20) DEFAULT NULL COMMENT 'long类型的trigger的第一个参数',
  `long_prop_2` bigint(20) DEFAULT NULL COMMENT 'long类型的trigger的第二个参数',
  `dec_prop_1` decimal(13,4) DEFAULT NULL COMMENT 'decimal类型的trigger的第一个参数',
  `dec_prop_2` decimal(13,4) DEFAULT NULL COMMENT 'decimal类型的trigger的第二个参数',
  `bool_prop_1` varchar(1) DEFAULT NULL COMMENT 'Boolean类型的trigger的第一个参数',
  `bool_prop_2` varchar(1) DEFAULT NULL COMMENT 'Boolean类型的trigger的第二个参数',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  CONSTRAINT `qrtz_simprop_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `trigger_name`, `trigger_group`) REFERENCES `qrtz_triggers` (`sched_name`, `trigger_name`, `trigger_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='同步机制的行锁表';

/*Data for the table `qrtz_simprop_triggers` */

/*Table structure for table `qrtz_triggers` */

DROP TABLE IF EXISTS `qrtz_triggers`;

CREATE TABLE `qrtz_triggers` (
  `sched_name` varchar(120) NOT NULL COMMENT '调度名称',
  `trigger_name` varchar(200) NOT NULL COMMENT '触发器的名字',
  `trigger_group` varchar(200) NOT NULL COMMENT '触发器所属组的名字',
  `job_name` varchar(200) NOT NULL COMMENT 'qrtz_job_details表job_name的外键',
  `job_group` varchar(200) NOT NULL COMMENT 'qrtz_job_details表job_group的外键',
  `description` varchar(250) DEFAULT NULL COMMENT '相关介绍',
  `next_fire_time` bigint(13) DEFAULT NULL COMMENT '上一次触发时间（毫秒）',
  `prev_fire_time` bigint(13) DEFAULT NULL COMMENT '下一次触发时间（默认为-1表示不触发）',
  `priority` int(11) DEFAULT NULL COMMENT '优先级',
  `trigger_state` varchar(16) NOT NULL COMMENT '触发器状态',
  `trigger_type` varchar(8) NOT NULL COMMENT '触发器的类型',
  `start_time` bigint(13) NOT NULL COMMENT '开始时间',
  `end_time` bigint(13) DEFAULT NULL COMMENT '结束时间',
  `calendar_name` varchar(200) DEFAULT NULL COMMENT '日程表名称',
  `misfire_instr` smallint(2) DEFAULT NULL COMMENT '补偿执行的策略',
  `job_data` blob COMMENT '存放持久化job对象',
  PRIMARY KEY (`sched_name`,`trigger_name`,`trigger_group`),
  KEY `sched_name` (`sched_name`,`job_name`,`job_group`),
  CONSTRAINT `qrtz_triggers_ibfk_1` FOREIGN KEY (`sched_name`, `job_name`, `job_group`) REFERENCES `qrtz_job_details` (`sched_name`, `job_name`, `job_group`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='触发器详细信息表';

/*Data for the table `qrtz_triggers` */

/*Table structure for table `sys_announcement` */

DROP TABLE IF EXISTS `sys_announcement`;

CREATE TABLE `sys_announcement` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `titile` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '标题',
  `msg_content` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '内容',
  `start_time` datetime DEFAULT NULL COMMENT '开始时间',
  `end_time` datetime DEFAULT NULL COMMENT '结束时间',
  `sender` varchar(100) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '发布人',
  `priority` varchar(255) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '优先级（L低，M中，H高）',
  `msg_category` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL DEFAULT '2' COMMENT '消息类型1:通知公告2:系统消息',
  `msg_type` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '通告对象类型（USER:指定用户，ALL:全体用户）',
  `send_status` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '发布状态（0未发布，1已发布，2已撤销）',
  `send_time` datetime DEFAULT NULL COMMENT '发布时间',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `user_ids` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '指定用户',
  `msg_abstract` text CHARACTER SET utf8 COLLATE utf8_general_ci COMMENT '摘要',
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=39 DEFAULT CHARSET=utf8 ROW_FORMAT=DYNAMIC COMMENT='系统通告表';

/*Data for the table `sys_announcement` */

insert  into `sys_announcement`(`id`,`titile`,`msg_content`,`start_time`,`end_time`,`sender`,`priority`,`msg_category`,`msg_type`,`send_status`,`send_time`,`create_by`,`create_time`,`update_by`,`update_time`,`user_ids`,`msg_abstract`) values 
(2,'放假通知','<p>放假通知</p>','2020-05-02 15:32:38','2020-05-30 15:32:40','admin','M','1','USER','1','2020-05-02 15:32:59','admin','2020-05-02 15:32:56','admin','2020-05-02 15:32:59','e9ca23d68d884d4ebb19d07889727dae,a75d45a015c44384a04449ee80dc3503,','放假通知'),
(3,'1','<p>22</p>','2020-05-02 18:21:41','2020-05-30 18:21:44','admin','M','1','ALL','2','2020-05-02 18:21:57','admin','2020-05-02 18:21:54','admin','2023-03-27 16:51:41',NULL,'22'),
(5,'123123','<p>111</p>',NULL,'2022-05-12 14:04:24','admin','H','1','ALL','1','2022-05-11 14:04:37','admin','2022-05-11 14:04:35','admin','2022-05-11 14:04:37','undefined,','123123'),
(6,'流程待办通知','流程待办通知<a href=http://localhost:9888/flowable/task/record/index?procInsId=5c0faf1b-80de-11ed-91e9-00d0f8000001&deployId=4bc46387-80de-11ed-91e9-00d0f8000001&taskId=5ce0e1e3-80de-11ed-91e9-00d0f8000001&businessKey&category=&finished=true>点击这个进行处理</a>',NULL,NULL,'admin','M','3','USER','1','2022-12-21 11:20:05','admin','2022-12-21 11:20:05',NULL,NULL,NULL,NULL),
(7,'流程待办通知','流程待办通知<a href=http://localhost:9888/flowable/task/record/index?procInsId=cbe83117-80de-11ed-91e9-00d0f8000001&deployId=4bc46387-80de-11ed-91e9-00d0f8000001&taskId=ccace0bf-80de-11ed-91e9-00d0f8000001&businessKey&category=&finished=true>点击这个进行处理</a>',NULL,NULL,'admin','M','3','USER','1','2022-12-21 11:23:12','admin','2022-12-21 11:23:12',NULL,NULL,NULL,NULL),
(8,'流程待办通知','流程待办通知<a href=http://localhost:9888/flowable/task/record/index?procInsId=cbe83117-80de-11ed-91e9-00d0f8000001&deployId=4bc46387-80de-11ed-91e9-00d0f8000001&taskId=9da96598-80df-11ed-91e9-00d0f8000001&businessKey&category=&finished=true>点击这个进行处理</a>',NULL,NULL,'zhagnxiao','M','3','USER','1','2022-12-21 11:29:03','zhagnxiao','2022-12-21 11:29:03',NULL,NULL,NULL,NULL),
(9,'流程待办通知','流程待办通知<a href=http://localhost:9888/flowable/task/record/index?procInsId=cbe83117-80de-11ed-91e9-00d0f8000001&deployId=4bc46387-80de-11ed-91e9-00d0f8000001&taskId=ea4312c0-80df-11ed-91e9-00d0f8000001&businessKey&category=&finished=true>点击这个进行处理</a>',NULL,NULL,'admin','M','3','USER','1','2022-12-21 11:31:12','admin','2022-12-21 11:31:12',NULL,NULL,NULL,NULL),
(10,'流程任务结束通知','流程任务结束通知<a href=http://localhost:9888/flowable/task/record/index?procInsId=a2348ab6-80e2-11ed-bcd5-00d0f8000001&deployId=03ecce4f-7aba-11ed-bb85-00d0f8000001&taskId=a2d75a79-80e2-11ed-bcd5-00d0f8000001&businessKey=1256629093740425218&category=online&finished=false>点击这个进行查看</a>',NULL,NULL,'admin','M','1','USER','1','2022-12-21 11:52:08','admin','2022-12-21 11:52:08',NULL,NULL,NULL,NULL),
(11,'流程任务结束通知','流程任务结束通知<a href=http://localhost:9888/flowable/task/record/index?procInsId=a00acdd1-80e2-11ed-bcd5-00d0f8000001&deployId=03ecce4f-7aba-11ed-bb85-00d0f8000001&taskId=a0f8af54-80e2-11ed-bcd5-00d0f8000001&businessKey=1256629139206680578&category=online&finished=false>点击这个进行查看</a>',NULL,NULL,'admin','M','1','USER','1','2022-12-30 15:36:26','admin','2022-12-30 15:36:26',NULL,NULL,NULL,NULL),
(12,'流程待办通知','流程待办通知<a href=http://localhost:9888/flowable/task/record/index?procInsId=bdd1305f-8814-11ed-b8b9-00d0f8000001&deployId=4bc46387-80de-11ed-91e9-00d0f8000001&taskId=be2766c7-8814-11ed-b8b9-00d0f8000001&businessKey&category=&finished=true>点击这个进行处理</a>',NULL,NULL,'admin','M','3','USER','1','2022-12-30 15:36:59','admin','2022-12-30 15:36:59',NULL,NULL,NULL,NULL),
(13,'流程待办通知','流程待办通知<a href=http://localhost:9888/flowable/task/record/index?procInsId=bdd1305f-8814-11ed-b8b9-00d0f8000001&deployId=4bc46387-80de-11ed-91e9-00d0f8000001&taskId=bbf946c0-8815-11ed-b8b9-00d0f8000001&businessKey&category=&finished=true>点击这个进行处理</a>',NULL,NULL,'zhagnxiao','M','3','USER','1','2022-12-30 15:44:05','zhagnxiao','2022-12-30 15:44:05',NULL,NULL,NULL,NULL),
(14,'流程待办通知','流程待办通知<a href=http://localhost:9888/flowable/task/record/index?procInsId=087101df-908f-11ed-acdc-00d0f8000001&deployId=4bc46387-80de-11ed-91e9-00d0f8000001&taskId=08b7cdf7-908f-11ed-acdc-00d0f8000001&businessKey&category=&finished=true>点击这个进行处理</a>',NULL,NULL,'admin','M','3','USER','1','2023-01-10 10:32:32','admin','2023-01-10 10:32:32','admin','2023-03-29 15:49:21',NULL,NULL),
(15,'流程任务结束通知','流程任务结束通知<a href=http://localhost:9888/flowable/task/record/index?procInsId=0ff57fb6-917d-11ed-a964-00d0f8000001&deployId=5fd033c0-6335-11ed-abfe-601895569a42&taskId=10363249-917d-11ed-a964-00d0f8000001&businessKey=f94168589ca6481c880652f93262f56e&category=online&finished=false>点击这个进行查看</a>',NULL,NULL,'admin','M','1','USER','1','2023-01-11 15:16:11','admin','2023-01-11 15:16:11',NULL,NULL,NULL,NULL),
(16,'测试通告','<p>测试文本<p>',NULL,NULL,'','','1','','0',NULL,'admin','2023-03-27 17:39:43','',NULL,'e9ca23d68d884d4ebb19d07889727dae',''),
(17,'测试通告','',NULL,NULL,'','','1','','0',NULL,'admin','2023-03-28 11:15:40','',NULL,'e9ca23d68d884d4ebb19d07889727dae',''),
(18,'测试编辑star','测试星标内容',NULL,NULL,'admin','','','','1','2023-03-29 13:55:44','admin','2023-03-28 11:21:26','admin','2023-03-29 13:55:44','e9ca23d68d884d4ebb19d07889727dae',''),
(19,'消息','通知内容',NULL,NULL,'admin','','','','1','2023-03-29 15:54:44','admin','2023-03-29 11:27:39','admin','2023-03-29 15:54:44','e9ca23d68d884d4ebb19d07889727dae',''),
(20,'通知','<p>房价<p>',NULL,NULL,'admin','H','1','','1','2023-03-29 13:48:32','admin','2023-03-29 13:46:40','admin','2023-03-29 15:52:15','e9ca23d68d884d4ebb19d07889727dae,a75d45a015c44384a04449ee80dc3503','通知测试'),
(21,'test通告3.30','测试通告3.30',NULL,NULL,'admin','M','','','2','2023-03-30 10:02:52','admin','2023-03-30 10:00:27','admin','2023-03-30 10:33:03','e9ca23d68d884d4ebb19d07889727da','通知测试'),
(22,'test通告13.30','添加的公告3.30',NULL,NULL,'admin','M','2','','1','2023-03-30 10:51:38','admin','2023-03-30 10:50:37','admin','2023-03-30 10:51:38','e9ca23d68d884d4ebb19d07889727dae,a75d45a015c44384a04449ee80dc3503','通知测试'),
(23,'test通告星标测试查询3.30','添加的公告星标3.30',NULL,NULL,'admin','L','1','','1','2023-03-30 10:57:27','admin','2023-03-30 10:57:07','admin','2023-03-30 10:57:27','e9ca23d68d884d4ebb19d07889727dae,a75d45a015c44384a04449ee80dc3503','通知测试'),
(24,'我的消息日期查询','我的消息日期查询测试test',NULL,NULL,'admin','M','1','','1','2023-03-30 14:09:24','admin','2023-03-30 14:04:05','admin','2023-03-30 14:09:24','e9ca23d68d884d4ebb19d07889727dae','通知测试'),
(25,'我的消息日期查询','我的消息日期查询测试test',NULL,NULL,'admin','M','1','','1','2023-03-30 14:13:58','admin','2023-03-30 14:12:35','admin','2023-03-30 14:13:58','e9ca23d68d884d4ebb19d07889727dae,',''),
(26,'USER通知','USER用户的测试通知',NULL,NULL,'admin','H','1','USER','1','2023-03-30 15:34:54','admin','2023-03-30 15:34:02','admin','2023-03-30 15:34:54','e9ca23d68d884d4ebb19d07889727dae,',''),
(27,'通知1111','<p>USER用户的测试通知1111</p>',NULL,NULL,'admin','H','2','USER','1','2023-03-30 15:58:11','admin','2023-03-30 15:57:38','admin','2023-03-30 15:58:11','e9ca23d68d884d4ebb19d07889727dae,',''),
(28,'测试通告3.31','<p>公告内容部分</p>',NULL,'2023-03-30 01:36:23','admin','M','1','ALL','1','2023-03-31 14:41:26','admin','2023-03-31 14:34:58','admin','2023-03-31 18:27:20',NULL,'测试菜单'),
(29,'5467567',NULL,NULL,NULL,'admin',NULL,'2',NULL,'1','2019-03-30 12:40:38','admin','2019-02-26 17:23:26','admin','2023-03-27 17:41:35',NULL,NULL),
(30,'111222',NULL,NULL,NULL,NULL,NULL,'2',NULL,'0',NULL,'admin','2019-03-29 17:19:47','admin','2019-03-29 17:19:50',NULL,NULL),
(31,'111',NULL,'2019-02-06 17:28:10','2019-03-08 17:28:11',NULL,NULL,'2',NULL,'0',NULL,'admin','2019-02-26 17:28:17','admin','2019-03-26 19:59:49',NULL,NULL),
(32,'测试编辑star','','2019-02-06 17:20:17','2019-02-21 17:20:20','','','','','','2019-02-26 17:24:29','','2019-02-26 17:16:26','admin','2023-03-28 11:26:44','',''),
(34,'334','334',NULL,NULL,NULL,NULL,'2',NULL,'0',NULL,'admin','2019-03-30 12:40:28','admin','2023-03-28 08:54:36',NULL,NULL),
(35,'Boot 1.0.0版本发布','<h5>升级不兼容</h5><ul><li><br></li><li>1、升级 ant-design-vue 到最新版本 1.5.2，会导致使用disabled的组件不可用（需要全局替换disabled 为readOnly；另外原来readOnly不允许全小写）</li><li><br></li><li><br></li><li>2、JSearchSelectTag.vue行编辑的popup传参做了修改，需要全局替换 orgFieldse 为 orgFields</li><li><br></li><li><br></li><li>3、 项目删除了sass，全部换成 less，其中涉及/deep/语法得改造</li><li><br></li><li><br></li><li>4、 Online表单的填值规则用法修改了&nbsp;<a href=\"http://doc.jeecg.com/1630378\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(65, 131, 196); background-color: transparent;\">文档</a></li><li><br></li></ul><h5>较大改造</h5><ul><li><br></li><li>登录的时候一次性加载系统字典，进行前端缓存，减少ajax重复请求</li><li><br></li><li><br></li><li>修改定时任务quartz配置</li><li><br></li><li><br></li><li>logback-spring.xml配置不按照日期和大小生成新日志文件问题修复</li><li><br></li><li><br></li><li>vue-cli3 编译打包进行zip压缩优化</li><li><br></li><li><br></li><li>根据index.html页面window._CONFIG[\'domianURL\']，指定 axios的 baseURL（所以vue的代理没有用了）</li><li><br></li><li><br></li><li>JEditableTable重构，新增获取值时应该把临时id去掉、行编辑修改不直接更改数据源的ID</li><li><br></li><li><br></li><li>Online模块重点优化升级、Online代码生成器重点优化升级</li><li><br></li></ul><h5>ONLINE升级</h5><ul><li><br></li><li>Online访问权限控制实现，如果online表单配置了菜单，则用户需要授权才能访问此表单</li><li><br></li><li><br></li><li>Online表单新增组件： 省市区地域组件、开关组件、三级联动(级联下拉)组件、markdown组件</li><li><br></li><li><br></li><li>Online表单弹窗宽度，根据不同的列数显示不同的宽度，实现更好的效果</li><li><br></li><li><br></li><li>Online 树表单功能一系列优化，比如数据列新增添加下级按钮功能、添加下级不自动展开列表等问题</li><li><br></li><li><br></li><li>Online JS增强编辑器支持放大，同时JS代码变更，增加版本记忆功能，方便追踪历史</li><li><br></li><li><br></li><li>Online JS增强支持lodash工具</li><li><br></li><li><br></li><li>Online控件 默认值表达式功能&nbsp;<a href=\"http://doc.jeecg.com/1630378\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(65, 131, 196); background-color: transparent;\">文档</a></li><li><br></li><li><br></li><li>Online 增加Excel导入导出转换器配置，针对各种控件的导入导出做了统一处理</li><li><br></li><li><br></li><li>Online 列表字段排序支持配置</li><li><br></li><li><br></li><li>Online同步数据库，数据库兼容性优化（mysql、oracle11g、SqlServer2017）</li><li><br></li><li><br></li><li>Online功能列表，高级查询优化，丰富控件的支持（新增：用户选择、部门选择、时间等）</li><li><br></li><li><br></li><li>Online表单配置，类型Text、date、Blob的字段长度默认设置为0</li><li><br></li><li><br></li><li>Online自定义button，支持位置自定义（支持右侧和下方）</li><li><br></li><li><br></li><li>Online表单列表，列表显示那些字段，支持用户个性化设置</li><li><br></li><li><br></li><li>Online表单删除和移除逻辑优化，防止未同步情况下删除报错</li><li><br></li><li><br></li><li>Online上传逻辑重构，针对单表、一对多行操作，都支持图片和文件上传，同时支持三种模式（minio、阿里云、本地存储）</li><li><br></li><li><br></li><li>Online上传逻辑重构， 行编辑模式，支持图片顺序修改</li><li><br></li><li><br></li><li>Online上传逻辑重构，在列表页面支持图片和文件的展示</li><li><br></li><li><br></li><li>Online表单索引同步逻辑重构，同时支持选择多个字段，组合索引设置</li><li><br></li><li><br></li><li>Online表单 excel导出实现数据权限逻辑</li><li><br></li><li><br></li><li>Online表单列表强制列不换行，自动出现超出滚定条，支持移动端自适应（单表、树和ERP等模型都已修改）</li><li><br></li><li><br></li><li>Online表单管理列表，回车查询和列表左右拖动移动自适应问题</li><li><br></li><li><br></li><li>Online表单附表序号必填</li><li><br></li><li><br></li><li>Online表名加校验不能全是数字，自动trim空格</li><li><br></li><li><br></li><li>Online 一对多tab必填校验不通过，添加友好提醒</li><li><br></li><li><br></li><li>Online表单控件默认值示例</li><li><br></li><li><br></li><li>Online一对多内嵌子表风格，高级查询不好用，过滤不了数据处理</li><li><br></li><li><br></li><li>Online表单 自定义校验规则正则，录入不成功问题处理</li><li><br></li><li><br></li><li>Online表单设置不分页，排序后又分页了问题处理</li><li><br></li><li><br></li><li>Online表单，下拉搜索组件，表字典配置加条件，下拉值出不来问题处理</li><li><br></li><li><br></li><li>Online表单，一对一子表，下拉选择、时间等组件被遮挡问题处理</li><li><br></li><li><br></li><li>Online表单树模型和一对多ERP模板支持href</li><li><br></li><li><br></li><li>Online 报表支持上下文变量表达式</li><li><br></li><li><br></li><li>Online 报表实现数据权限逻辑</li><li><br></li><li><br></li><li>Online 报表新增拖动字段顺序</li><li><br></li><li><br></li><li>Online 报表列表，sql过长截取显示</li><li><br></li><li><br></li><li>Online 报表，popup回车查询</li><li><br></li><li><br></li><li>Online表单auto页面弹窗改成JModule；online表单移动自适应；</li><li><br></li></ul><h5>Online代码生成器升级</h5><blockquote><br></blockquote><blockquote>后期重点维护ONLINE模式的代码生成器，GUI模式逐步弃用。</blockquote><blockquote><br></blockquote><ul><li><br></li><li>新增内嵌Table代码生成器模板</li><li><br></li><li><br></li><li>升级代码生成器依赖，支持返回生成结果&amp;支持服务器端生成代码config</li><li><br></li><li><br></li><li>代码生成器列表，列表自适应优化，支持移动效果（强制列不换行，不过有弊端，<a href=\"http://doc.jeecg.com/1607183\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(65, 131, 196); background-color: transparent;\">见文档</a>）</li><li><br></li><li><br></li><li>实体生成，自动带着swagger 注解（支持单表、一对多等模型）</li><li><br></li><li><br></li><li>代码生成器，列表移动自适应样式修改</li><li><br></li><li><br></li><li>生成后的代码导入导出bug修复</li><li><br></li><li><br></li><li>online树代码生成器模板，直接删除一级分类会导致列表乱</li><li><br></li><li><br></li><li>ERP代码生成器模板升级，子表支持导入导出</li><li><br></li><li><br></li><li>ERP风格代码生成器模板问题（导入导入路径错误、swagger注解问题）</li><li><br></li><li><br></li><li>代码生成器，校验为空的话不生成，简化生成的代码</li><li><br></li><li><br></li><li>代码生成器，支持子表校验生成</li><li><br></li><li><br></li><li>树形列表代码生成器优化，添加子节点</li><li><br></li><li><br></li><li>修复bug： online字典未配置，代码生成器报错问题</li><li><br></li><li><br></li><li>生成的实体字段excel注解，针对系统标准字段，创建人、创建时间等字段不生成</li><li><br></li><li><br></li><li>生成的表单弹窗统一更换为j-modal，支持放大缩小全屏</li><li><br></li><li><br></li><li>代码生成，popup参数大小写 驼峰问题修复</li><li><br></li><li><br></li><li>生成的表单控件类型更丰富，新支持控件：markdown、省市区地域、密码、下拉搜索</li><li><br></li><li><br></li><li>生成的列表查询区域，控件支持加强，新支持控件：省市区地域、下拉搜索、popup、选择用户、选择部门</li><li><br></li></ul><h5>平台基础升级</h5><ul><li><br></li><li>针对auto隐藏路由菜单，实现自动授权，简化online菜单的授权</li><li><br></li><li><br></li><li>IDE中找不到sun.misc.BASE64Encoder jar包问题</li><li><br></li><li><br></li><li>删掉作废获取所有用户角色列表接口，接口有性能问题</li><li><br></li><li><br></li><li>在我的消息里点击已读以后，首页上面的通知红点并没有同步更改问题修复</li><li><br></li><li><br></li><li>用户与部门取消关联删除关联关系bug修改</li><li><br></li><li><br></li><li>部门导入未刷新redis缓存</li><li><br></li><li><br></li><li>修复SysPermissionMapper.xml 的SQL语句不兼容SQLServer的问题</li><li><br></li><li><br></li><li>在线动态数据源代码重构</li><li><br></li><li><br></li><li>【二级管理员】部门修改、删除权限时关联删除部门角色数据</li><li><br></li><li><br></li><li>【二级管理员】我的部门，选中部门只能看当前部门下的角色</li><li><br></li><li><br></li><li>我的消息支持模糊查询</li><li><br></li><li><br></li><li>常用示例-对象存储文件上传优化</li><li><br></li><li><br></li><li>用户相关功能，sql写法不兼容其他数据库问题修复</li><li><br></li><li><br></li><li>图片上传组件修改</li><li><br></li><li><br></li><li>导入功能优化，提示准确导入成功失败信息，涉及功能 用户、角色、部门、字典、定时任务等</li><li><br></li><li><br></li><li>增加生产环境禁用swagger-ui配置</li><li><br></li><li><br></li><li>第三方登录代码集成</li><li><br></li><li><br></li><li>系统公告优化</li><li><br></li><li><br></li><li>MockController 返回json数据，utf-8格式化，防止中文乱码</li><li><br></li><li><br></li><li>部门删除后删除部门角色等关联</li><li><br></li><li><br></li><li>分类字典支持选择数据，添加下级分类</li><li><br></li></ul><h5>UI组件升级</h5><ul><li><br></li><li>升级 ant-design-vue 为最新版本 1.5.2</li><li><br></li><li><br></li><li>登录验证码获取失败的时候，不显示空白</li><li><br></li><li><br></li><li>升级 ant-design-vue，JModal切换全屏按钮因ant升级错位问题修复</li><li><br></li><li><br></li><li>简化 j-modal 的相关代码</li><li><br></li><li><br></li><li>封装常用组件示例；JInput新增当 type 变化的时候重新计算值</li><li><br></li><li><br></li><li>markdown集成</li><li><br></li><li><br></li><li>富文本支持minio上传</li><li><br></li><li><br></li><li>选择用户组件列表样式错位；Ellipsis.vue 优化</li><li><br></li><li><br></li><li>JModal移动端全屏效果</li><li><br></li><li><br></li><li>高级查询只有在 in 模式下才能多选</li><li><br></li><li><br></li><li>自定义选择用户组件JSelectMultiUser的宽度和截取显示长度</li><li><br></li><li><br></li><li>行编辑 JEditableTable移动自适应效果；</li><li><br></li><li><br></li><li>JEditableTable重构 行编辑新增合计功能</li><li><br></li><li><br></li><li>JEditableTable重构 行编辑Popup请求数量过多（加缓存机制）</li><li><br></li><li><br></li><li>JEditableTable重构,行编辑InputNumber扩展支持输入小数和负数</li><li><br></li><li><br></li><li>JEditableTable.vue disable模式禁用添加删除按钮</li><li><br></li><li><br></li><li>JEditableTable行编辑， popup返回值，时间赋值有问题</li><li><br></li><li><br></li><li>JEditableTable行编辑，日期控件显示错位问题</li><li><br></li><li><br></li><li>高级查询移动自适应效果；</li><li><br></li><li><br></li><li>高级查询保存的同时也要保存匹配方式（支持and or）</li><li><br></li><li><br></li><li>高级查询混入统一修改</li><li><br></li><li><br></li><li>高级查询选择用户组件时，点开用户弹框不选择用户，直接关掉用户弹框，再次点击弹框时，无法点开问题</li><li><br></li><li><br></li><li>高级查询组件支持，新支持组件，选择人、选择部门、popup、时间等</li><li><br></li><li><br></li><li>JPopup支持多选</li><li><br></li><li><br></li><li>JPopup返回值null问题</li><li><br></li><li><br></li><li>JPopup列表数据不刷新问题</li><li><br></li><li><br></li><li>JSearchSelectTag.vue匹配不上数字值问题</li><li><br></li><li><br></li><li>JSelectUserByDep 根据部门选择人组件bug</li><li><br></li><li><br></li><li>JTreeDict.vue 分类字典组件 清空不了问题</li><li><br></li><li><br></li><li>常用示例，新增搜索下拉 JSearchSelectTag.vue例子</li><li><br></li><li><br></li><li>常用示例，新增如何关闭当前页面例子</li><li><br></li><li><br></li><li>常用示例，省市区三级联动的例子</li><li><br></li><li><br></li><li>常用示例，增加字典下拉多选组件示例</li><li><br></li><li><br></li><li>示例demo，关于图片的做统一优化</li><li><br></li></ul><h5>Issues处理</h5><ul><li><br></li><li>online form表单项能否支持配置有级联关系的内容&nbsp;<a href=\"https://github.com/zhangdaiscott/jeecg-boot/issues/948\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(65, 131, 196); background-color: transparent;\">#948</a></li><li><br></li><li><br></li><li>全局拦截异常错误的提醒文字&nbsp;<a href=\"https://github.com/zhangdaiscott/jeecg-boot/issues/768\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(65, 131, 196); background-color: transparent;\">#768</a></li><li><br></li><li><br></li><li>建议：城市级联选择组件&nbsp;<a href=\"https://github.com/zhangdaiscott/jeecg-boot/issues/905\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(65, 131, 196); background-color: transparent;\">#905</a></li><li><br></li><li><br></li><li>表单配置中检验字段配置href，报表中该配置字段无法看到链接&nbsp;<a href=\"https://github.com/zhangdaiscott/jeecg-boot/issues/961\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(65, 131, 196); background-color: transparent;\">#961</a></li><li><br></li><li><br></li><li>SysUserMapper.xml查询脚本数据兼容问题&nbsp;<a href=\"https://github.com/zhangdaiscott/jeecg-boot/issues/962\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(65, 131, 196); background-color: transparent;\">#962</a></li><li><br></li><li><br></li><li>在线表单 提示 ButtonExpHandler is not defined&nbsp;<a href=\"https://github.com/zhangdaiscott/jeecg-boot/issues/957\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(65, 131, 196); background-color: transparent;\">#957</a></li><li><br></li><li><br></li><li>online表单中添加自定义按钮无法显示&nbsp;<a href=\"https://github.com/zhangdaiscott/jeecg-boot/issues/973\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(65, 131, 196); background-color: transparent;\">#973</a></li><li><br></li><li><br></li><li>online报表不支持按照登录用户过滤数据&nbsp;<a href=\"https://github.com/zhangdaiscott/jeecg-boot/issues/934\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(65, 131, 196); background-color: transparent;\">#934</a></li><li><br></li><li><br></li><li>点击新增或者编辑按钮弹框宽度的设置问题&nbsp;<a href=\"https://github.com/zhangdaiscott/jeecg-boot/issues/974\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(65, 131, 196); background-color: transparent;\">#974</a></li><li><br></li><li><br></li><li>online报表配置中使用系统参数，报错&nbsp;<a href=\"https://gitee.com/jeecg/jeecg-boot/issues/I1AWNM\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(65, 131, 196); background-color: transparent;\">I1AWNM</a></li><li><br></li><li><br></li><li>online增强SQL变量取数为null,#{sys.sys_date} 还有#{sys.sys_time}&nbsp;<a href=\"https://github.com/zhangdaiscott/jeecg-boot/issues/999\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(65, 131, 196); background-color: transparent;\">#999</a></li><li><br></li><li><br></li><li>一个主表，多个付表。1对多。保存后，某些从表行项目内容保存成功，单重新打开数据表现丢失。&nbsp;<a href=\"https://github.com/zhangdaiscott/jeecg-boot/issues/997\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(65, 131, 196); background-color: transparent;\">#997</a></li><li><br></li><li><br></li><li>/online/cgform/api/exportXls/{code}接口问题&nbsp;<a href=\"https://github.com/zhangdaiscott/jeecg-boot/issues/1012\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(65, 131, 196); background-color: transparent;\">#1012</a></li><li><br></li><li><br></li><li>打成jar包，访问不到代码生成器模板&nbsp;<a href=\"https://github.com/zhangdaiscott/jeecg-boot/issues/1010\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(65, 131, 196); background-color: transparent;\">#1010</a></li><li><br></li><li><br></li><li>online表单开发，打包后模板找不到&nbsp;<a href=\"https://github.com/zhangdaiscott/jeecg-boot/issues/865\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(65, 131, 196); background-color: transparent;\">#865</a></li><li><br></li><li><br></li><li>已生成的代码，子表最下下行添加合计行底部固定问题&nbsp;<a href=\"https://github.com/zhangdaiscott/jeecg-boot/issues/936\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(65, 131, 196); background-color: transparent;\">#936</a></li><li><br></li><li><br></li><li>下拉搜索框在编辑时下拉name无法带过来&nbsp;<a href=\"https://github.com/zhangdaiscott/jeecg-boot/issues/971\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(65, 131, 196); background-color: transparent;\">#971</a></li><li><br></li><li><br></li><li>建议autoPoi升级，优化数据返回List Map格式下的复合表头导出excel的体验&nbsp;<a href=\"https://github.com/zhangdaiscott/jeecg-boot/issues/873\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(65, 131, 196); background-color: transparent;\">#873</a></li><li><br></li><li><br></li><li>配置 Href 跳转，并没有显示为超链接&nbsp;<a href=\"https://github.com/zhangdaiscott/jeecg-boot/issues/1020\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(65, 131, 196); background-color: transparent;\">#1020</a></li><li><br></li><li><br></li><li>首次打开一对多表单，JEditableTable的addDefaultRowNum属性不生效&nbsp;<a href=\"https://github.com/zhangdaiscott/jeecg-boot/issues/1003\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(65, 131, 196); background-color: transparent;\">#1003</a></li><li><br></li><li><br></li><li>autopoi 双表头问题&nbsp;<a href=\"https://github.com/zhangdaiscott/jeecg-boot/issues/862\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(65, 131, 196); background-color: transparent;\">#862</a></li><li><br></li><li><br></li><li>应该是权限管理bug&nbsp;<a href=\"https://github.com/zhangdaiscott/jeecg-boot/issues/110\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(65, 131, 196); background-color: transparent;\">#110</a></li><li><br></li><li><br></li><li>在线 的online报表报错&nbsp;<a href=\"https://github.com/zhangdaiscott/jeecg-boot/issues/1029\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(65, 131, 196); background-color: transparent;\">#1029</a></li><li><br></li><li><br></li><li>online代码生成器树形表单父节点字段名称问题&nbsp;<a href=\"https://gitee.com/jeecg/jeecg-boot/issues/I1ABGV\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(65, 131, 196); background-color: transparent;\">issues/I1ABGV</a></li><li><br></li><li><br></li><li>点击j-popup,里面有数据，如果选择同名的数据，文本框为空&nbsp;<a href=\"https://github.com/zhangdaiscott/jeecg-boot/issues/1044\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(65, 131, 196); background-color: transparent;\">#1044</a></li><li><br></li><li><br></li><li>关于table列宽可拖动问题&nbsp;<a href=\"https://github.com/zhangdaiscott/jeecg-boot/issues/1054\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(65, 131, 196); background-color: transparent;\">#1054</a></li><li><br></li><li><br></li><li>单表数据导出多表头 auto 的Excel注解 groupName属性<a href=\"https://github.com/zhangdaiscott/jeecg-boot/issues/1053\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(65, 131, 196); background-color: transparent;\">&nbsp;#1053</a></li><li><br></li><li><br></li><li>在线报表和在线online的问题&nbsp;<a href=\"https://github.com/zhangdaiscott/jeecg-boot/issues/1030\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(65, 131, 196); background-color: transparent;\">#1030</a></li><li><br></li><li><br></li><li>J-pop组件&nbsp;<a href=\"https://github.com/zhangdaiscott/jeecg-boot/issues/1043\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(65, 131, 196); background-color: transparent;\">#1043</a></li><li><br></li><li><br></li><li>2.1.4 日志管理---没有记录查询接口参数&nbsp;<a href=\"https://github.com/zhangdaiscott/jeecg-boot/issues/1070\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(65, 131, 196); background-color: transparent;\">#1070</a></li><li><br></li><li><br></li><li>服务器日志超过设置的MaxFileSize时&nbsp;<a href=\"https://github.com/zhangdaiscott/jeecg-boot/issues/1130\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(65, 131, 196); background-color: transparent;\">#1130</a></li><li><br></li><li><br></li><li>online 表单中，在 附表中存在上传图片组件，点击上传图片并提交，显示提交失败&nbsp;<a href=\"https://github.com/zhangdaiscott/jeecg-boot/issues/1074\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(65, 131, 196); background-color: transparent;\">#1074</a></li><li><br></li><li><br></li><li>online表单js增强修改从表控件值问题&nbsp;<a href=\"https://github.com/zhangdaiscott/jeecg-boot/issues/1051\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(65, 131, 196); background-color: transparent;\">#1051</a></li><li><br></li><li><br></li><li>重复代理问题&nbsp;<a href=\"https://github.com/zhangdaiscott/jeecg-boot/issues/994\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(65, 131, 196); background-color: transparent;\">#994</a></li><li><br></li><li><br></li><li>系统使用的日志包有问题&nbsp;<a href=\"https://github.com/zhangdaiscott/jeecg-boot/issues/887\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(65, 131, 196); background-color: transparent;\">#887</a></li><li><br></li><li><br></li><li>使用sqlserver数据库,用户管理查询出错&nbsp;<a href=\"https://github.com/zhangdaiscott/jeecg-boot/issues/1140\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(65, 131, 196); background-color: transparent;\">#1140</a></li><li><br></li><li><br></li><li>主表和从表 一对一关系表单 TypeError: Cannot read property \'getAll\' of undefined&nbsp;<a href=\"https://github.com/zhangdaiscott/jeecg-boot/issues/1129\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(65, 131, 196); background-color: transparent;\">#1129</a></li><li><br></li><li><br></li><li>ERP表单附表数据编辑后消失&nbsp;<a href=\"https://gitee.com/jeecg/jeecg-boot/issues/I1DN3B\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(65, 131, 196); background-color: transparent;\">issues/I1DN3B</a></li><li><br></li><li><br></li><li>多表的erp模式生成的子表，表单没有导入导出功能&nbsp;<a href=\"https://gitee.com/jeecg/jeecg-boot/issues/I1BB2U\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(65, 131, 196); background-color: transparent;\">issues/I1BB2U</a></li><li><br></li><li><br></li><li>用edge打开首页，整个页面动不了，控制台console打出很多错误&nbsp;<a href=\"https://gitee.com/jeecg/jeecg-boot/issues/I189B5\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(65, 131, 196); background-color: transparent;\">issues/I189B5</a></li><li><br></li><li><br></li><li>官方的快速开发平台主子表对IE11不兼容&nbsp;<a href=\"https://gitee.com/jeecg/jeecg-boot/issues/I17LEE\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(65, 131, 196); background-color: transparent;\">issues/I17LEE</a></li><li><br></li><li><br></li><li>360兼容模式 修改为你说的js之后；单表的数据兼容可以；主子表的不加载；错误如下&nbsp;<a href=\"https://gitee.com/jeecg/jeecg-boot/issues/I17H8L\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(65, 131, 196); background-color: transparent;\">issues/I17H8L</a></li><li><br></li><li><br></li><li>Online表单开发，点击“新增”按钮，是否树：选择是，页面控制台报错&nbsp;<a href=\"https://gitee.com/jeecg/jeecg-boot/issues/I1BHXG\" rel=\"noopener noreferrer\" target=\"_blank\" style=\"color: rgb(65, 131, 196); background-color: transparent;\">issues/I1BHXG</a></li><li><br></li></ul>','2020-05-01 00:00:00','2020-05-30 00:00:00','admin','H','1','ALL','1','2022-04-20 00:00:00','admin','2023-04-07 14:44:52','admin','2020-05-02 15:31:44',NULL,'重磅版本发布'),
(37,'JeecgBoot 2.2.0版本发布','<h5>庆贺v1.0.0版本发布！</h5>','2020-05-01 00:00:00','2020-05-30 00:00:00','admin','H','1','ALL','1','2020-05-02 00:00:00','admin','2023-05-02 17:13:08','admin','2020-05-02 15:31:44',NULL,'重磅版本发布'),
(38,'夕阳v1.0.0版本发布','<h5>夕阳V1.0.0系统发布！</h5>','2020-05-01 00:00:00','2020-05-30 00:00:00','admin','H','1','ALL','1','2020-05-02 00:00:00','admin','2023-05-02 17:13:55','admin','2020-05-02 15:31:44',NULL,'重磅版本发布');

/*Table structure for table `sys_announcement_send` */

DROP TABLE IF EXISTS `sys_announcement_send`;

CREATE TABLE `sys_announcement_send` (
  `id` int(4) NOT NULL AUTO_INCREMENT,
  `annt_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '通告ID',
  `user_id` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '用户id',
  `read_flag` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '阅读状态（0未读，1已读）',
  `read_time` datetime DEFAULT NULL COMMENT '阅读时间',
  `create_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '创建人',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(32) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '更新人',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `star_flag` varchar(10) CHARACTER SET utf8 COLLATE utf8_general_ci DEFAULT NULL COMMENT '标星状态( 1为标星 空/0没有标星)',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci ROW_FORMAT=DYNAMIC COMMENT='用户通告阅读标记表';

/*Data for the table `sys_announcement_send` */

insert  into `sys_announcement_send`(`id`,`annt_id`,`user_id`,`read_flag`,`read_time`,`create_by`,`create_time`,`update_by`,`update_time`,`star_flag`) values 
(1,'93a9060a1c20e4bf98b3f768a02c2ff9','e9ca23d68d884d4ebb19d07889727dae','1','2023-03-30 10:41:33','admin','2019-05-17 11:50:56','admin','2023-03-30 10:41:33',NULL),
(2,'93a9060a1c20e4bf98b3f768a02c2ff9','a75d45a015c44384a04449ee80dc3503','0',NULL,'jeecg','2019-11-21 16:39:55',NULL,NULL,NULL),
(3,'1256486817286418434','e9ca23d68d884d4ebb19d07889727dae','1','2023-03-30 10:41:33','admin','2020-05-02 15:32:56','admin','2023-03-30 10:41:33','1'),
(4,'1256486817286418434','a75d45a015c44384a04449ee80dc3503','0','2020-05-02 15:32:56','admin','2020-05-02 15:32:56',NULL,NULL,'0'),
(5,'1256486502931722242','e9ca23d68d884d4ebb19d07889727dae','1','2023-03-30 10:41:33','admin','2020-05-02 18:12:59','admin','2023-03-31 18:35:32','1'),
(6,'1256486502931722242','a75d45a015c44384a04449ee80dc3503','0',NULL,'jeecg','2020-05-14 21:39:45','admin','2023-03-31 18:35:32','1'),
(7,'1524265037052194817','e9ca23d68d884d4ebb19d07889727dae','1','2023-03-30 10:41:33','admin','2022-05-11 13:51:21','admin','2023-03-30 10:41:33',NULL),
(8,'1524269214973243394','e9ca23d68d884d4ebb19d07889727dae','1','2023-03-30 10:41:33','admin','2022-05-11 14:04:37','admin','2023-03-30 10:41:33','1'),
(9,'1524269214973243394','a75d45a015c44384a04449ee80dc3503','0',NULL,'jeecg','2022-06-21 16:33:26',NULL,NULL,NULL),
(10,'1605402698232918018','f0019fdebedb443c98dcb17d88222c38','0',NULL,'admin','2022-12-21 11:20:05',NULL,NULL,NULL),
(11,'1605403484740415489','f0019fdebedb443c98dcb17d88222c38','0',NULL,'admin','2022-12-21 11:23:12',NULL,NULL,NULL),
(12,'1524269214973243394','f0019fdebedb443c98dcb17d88222c38','0',NULL,'zhagnxiao','2022-12-21 11:27:21',NULL,NULL,NULL),
(13,'1605404955896737794','3d464b4ea0d2491aab8a7bde74c57e95','0',NULL,'zhagnxiao','2022-12-21 11:29:03',NULL,NULL,NULL),
(14,'1605405494848024577','f0019fdebedb443c98dcb17d88222c38','0',NULL,'admin','2022-12-21 11:31:12',NULL,NULL,NULL),
(15,'1605410763091005441','e9ca23d68d884d4ebb19d07889727dae','1','2023-03-30 10:41:33','admin','2022-12-21 11:52:08','admin','2023-03-31 18:35:00','1'),
(16,'1608728701298548738','e9ca23d68d884d4ebb19d07889727dae','1','2023-03-30 10:41:33','admin','2022-12-30 15:36:26','admin','2023-03-31 18:33:49','1'),
(17,'1608728840419418113','f0019fdebedb443c98dcb17d88222c38','0',NULL,'admin','2022-12-30 15:36:59',NULL,NULL,'0'),
(18,'1608730626672828417','3d464b4ea0d2491aab8a7bde74c57e95','0',NULL,'zhagnxiao','2022-12-30 15:44:05',NULL,NULL,'0'),
(19,'1612638489594048513','f0019fdebedb443c98dcb17d88222c38','0',NULL,'admin','2023-01-10 10:32:32',NULL,NULL,'0'),
(20,'1613072260717953025','e9ca23d68d884d4ebb19d07889727dae','1','2023-03-30 10:41:33','admin','2023-01-11 15:16:11','admin','2023-03-31 12:03:28','1'),
(21,'1640287473048600577','e9ca23d68d884d4ebb19d07889727da','0','2023-03-27 17:39:43','admin','2023-03-27 17:39:43',NULL,NULL,'0'),
(22,'1640553211726397441','e9ca23d68d884d4ebb19d07889727da','0','2023-03-28 11:15:40','admin','2023-03-28 11:15:40',NULL,NULL,'0'),
(23,'1640554662099972098','e9ca23d68d884d4ebb19d07889727da','0','2023-03-28 11:21:26','admin','2023-03-28 11:21:26',NULL,NULL,'0'),
(24,'1640918614474592257','e9ca23d68d884d4ebb19d07889727da','0','2023-03-29 11:27:39','admin','2023-03-29 11:27:39','admin','2023-03-29 16:11:44','1'),
(25,'1640953599902453762','e9ca23d68d884d4ebb19d07889727dae','1','2023-03-30 10:41:33','admin','2023-03-29 13:46:40','admin','2023-04-03 13:47:06','1'),
(26,'1640953599902453762','a75d45a015c44384a04449ee80dc350','0','2023-03-29 13:46:40','admin','2023-03-29 13:46:40','admin','2023-03-31 13:44:41','1'),
(27,'1641253846054674434','e9ca23d68d884d4ebb19d07889727dae','0','2023-03-30 09:39:45','admin','2023-03-30 09:39:45','admin','2023-03-30 09:43:18','0'),
(28,'1641259055078252546','e9ca23d68d884d4ebb19d07889727dae','0','2023-03-30 10:00:27','admin','2023-03-30 10:00:27','admin','2023-03-30 10:03:38','1'),
(29,'1641271681426518018','e9ca23d68d884d4ebb19d07889727dae','1','2023-03-30 10:50:37','admin','2023-03-30 10:50:37','admin','2023-04-03 13:49:08','1'),
(30,'1641271681426518018','a75d45a015c44384a04449ee80dc350','0','2023-03-30 10:50:37','admin','2023-03-30 10:50:37','admin','2023-04-03 12:37:15','0'),
(31,'1641273317842612226','e9ca23d68d884d4ebb19d07889727dae','1','2023-03-30 10:57:07','admin','2023-03-30 10:57:07','admin','2023-03-30 10:59:32','1'),
(32,'1641273317842612226','a75d45a015c44384a04449ee80dc350','0','2023-03-30 10:57:07','admin','2023-03-30 10:57:07',NULL,NULL,'0'),
(33,'1641320369108590594','e9ca23d68d884d4ebb19d07889727da','0','2023-03-30 14:04:05','admin','2023-03-30 14:04:05',NULL,NULL,'0'),
(34,'1641322510070095873','e9ca23d68d884d4ebb19d07889727dae','1','2023-03-30 14:12:35','admin','2023-03-30 14:12:35','admin','2023-04-03 08:55:26','0'),
(35,'1641343007084290049','e9ca23d68d884d4ebb19d07889727dae','1','2023-03-30 15:34:02','admin','2023-03-30 15:34:02','admin','2023-04-03 08:55:44','0'),
(36,'1641348947107946498','e9ca23d68d884d4ebb19d07889727dae','1','2023-03-30 15:57:38','admin','2023-03-30 15:57:38','admin','2023-04-03 08:49:34','1'),
(37,'1641690528465903617','e9ca23d68d884d4ebb19d07889727dae','1',NULL,'admin','2023-03-31 14:41:26','admin','2023-04-03 08:50:14','0');

/*Table structure for table `sys_apphome_group` */

DROP TABLE IF EXISTS `sys_apphome_group`;

CREATE TABLE `sys_apphome_group` (
  `id` varchar(108) DEFAULT NULL COMMENT 'ID',
  `create_by` varchar(150) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(150) DEFAULT NULL COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `sys_org_code` varchar(192) DEFAULT NULL COMMENT '所属部门',
  `group_name` varchar(96) DEFAULT NULL COMMENT '应用分组名'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `sys_apphome_group` */

insert  into `sys_apphome_group`(`id`,`create_by`,`create_time`,`update_by`,`update_time`,`sys_org_code`,`group_name`) values 
('1638796660154150914','admin','2023-03-23 14:55:46','admin','2023-03-23 15:41:10','A01','AI'),
('1638797683551744001','admin','2023-03-23 14:59:50','admin','2023-03-23 15:40:54','A01','资源相关'),
('1638798366350880770','admin','2023-03-23 15:02:33','admin','2023-03-23 15:40:19','A01','应用系统'),
('1638799919975608321','admin','2023-03-23 15:08:43','admin','2023-03-23 15:40:03','A01','运维系统'),
('1638801795894849537','admin','2023-03-23 15:16:10','admin','2023-03-23 15:39:34','A01','其他分组');

/*Table structure for table `sys_apphome_index` */

DROP TABLE IF EXISTS `sys_apphome_index`;

CREATE TABLE `sys_apphome_index` (
  `id` varchar(108) DEFAULT NULL COMMENT 'ID',
  `create_by` varchar(150) DEFAULT NULL COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(150) DEFAULT NULL COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `sys_org_code` varchar(192) DEFAULT NULL COMMENT '所属部门',
  `app_name` varchar(96) DEFAULT NULL COMMENT '应用名',
  `order_num` varchar(96) DEFAULT NULL COMMENT '分组应用序号',
  `app_cover_img` varchar(96) DEFAULT NULL COMMENT '应用Logo',
  `group_id` varchar(96) DEFAULT NULL COMMENT '分组ID'
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `sys_apphome_index` */

insert  into `sys_apphome_index`(`id`,`create_by`,`create_time`,`update_by`,`update_time`,`sys_org_code`,`app_name`,`order_num`,`app_cover_img`,`group_id`) values 
('16795545183190669165','admin','2023-03-23 15:41:10',NULL,NULL,'A01','机器学习','1','temp/热点_1679557267382.png','1638796660154150914'),
('16795547541830670591','admin','2023-03-23 15:40:54',NULL,NULL,'A01','人力流程','1','temp/电话_1679557238950.png','1638797683551744001'),
('16795549456430582353','admin','2023-03-23 15:40:19',NULL,NULL,'A01','实验环境','1','temp/细节_1679557215538.png','1638798366350880770'),
('16795550214751420764','admin','2023-03-23 15:40:54',NULL,NULL,'A01','资源共享平台','2','temp/银行1_1679557251887.png','1638797683551744001'),
('16795552936370421799','admin','2023-03-23 15:40:03',NULL,NULL,'A01','工单issue','1','temp/s_1679557191190.png','1638799919975608321'),
('16795556300361965262','admin','2023-03-23 15:40:03',NULL,NULL,'A01','test','2','temp/链接_1679557199660.png','1638799919975608321'),
('16795557464940565982','admin','2023-03-23 15:39:34',NULL,NULL,'A01','web官网','1','temp/s_1679557171003.png','1638801795894849537');

/*Table structure for table `sys_config` */

DROP TABLE IF EXISTS `sys_config`;

CREATE TABLE `sys_config` (
  `config_id` int(5) NOT NULL AUTO_INCREMENT COMMENT '参数主键',
  `config_name` varchar(100) DEFAULT '' COMMENT '参数名称',
  `config_key` varchar(100) DEFAULT '' COMMENT '参数键名',
  `config_value` varchar(500) DEFAULT '' COMMENT '参数键值',
  `config_type` char(1) DEFAULT 'N' COMMENT '系统内置（Y是 N否）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`config_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='参数配置表';

/*Data for the table `sys_config` */

insert  into `sys_config`(`config_id`,`config_name`,`config_key`,`config_value`,`config_type`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values 
(1,'主框架页-默认皮肤样式名称','sys.index.skinName','skin-blue','Y','admin','2023-04-04 21:07:30','',NULL,'蓝色 skin-blue、绿色 skin-green、紫色 skin-purple、红色 skin-red、黄色 skin-yellow'),
(2,'用户管理-账号初始密码','sys.user.initPassword','123456','Y','admin','2023-04-04 21:07:30','',NULL,'初始化密码 123456'),
(3,'主框架页-侧边栏主题','sys.index.sideTheme','theme-dark','Y','admin','2023-04-04 21:07:30','',NULL,'深色主题theme-dark，浅色主题theme-light'),
(4,'账号自助-验证码开关','sys.account.captchaEnabled','true','Y','admin','2023-04-04 21:07:31','',NULL,'是否开启验证码功能（true开启，false关闭）'),
(5,'账号自助-是否开启用户注册功能','sys.account.registerUser','false','Y','admin','2023-04-04 21:07:32','',NULL,'是否开启注册用户功能（true开启，false关闭）'),
(6,'用户登录-黑名单列表','sys.login.blackIPList','','Y','admin','2023-04-04 21:07:32','',NULL,'设置登录IP黑名单限制，多个匹配项以;分隔，支持匹配（*通配、网段）');

/*Table structure for table `sys_dept` */

DROP TABLE IF EXISTS `sys_dept`;

CREATE TABLE `sys_dept` (
  `dept_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '部门id',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父部门id',
  `ancestors` varchar(50) DEFAULT '' COMMENT '祖级列表',
  `dept_name` varchar(30) DEFAULT '' COMMENT '部门名称',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `leader` varchar(20) DEFAULT NULL COMMENT '负责人',
  `phone` varchar(11) DEFAULT NULL COMMENT '联系电话',
  `email` varchar(50) DEFAULT NULL COMMENT '邮箱',
  `status` char(1) DEFAULT '0' COMMENT '部门状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  PRIMARY KEY (`dept_id`)
) ENGINE=InnoDB AUTO_INCREMENT=200 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='部门表';

/*Data for the table `sys_dept` */

insert  into `sys_dept`(`dept_id`,`parent_id`,`ancestors`,`dept_name`,`order_num`,`leader`,`phone`,`email`,`status`,`del_flag`,`create_by`,`create_time`,`update_by`,`update_time`) values 
(100,0,'0','朝阳科技',0,'耀鹏','15888888888','yp@qq.com','0','0','admin','2023-04-04 21:05:15','admin','2023-04-05 16:01:48'),
(101,100,'0,100','深圳总公司',1,'若依','15888888888','ry@qq.com','0','0','admin','2023-04-04 21:05:18','',NULL),
(102,100,'0,100','长沙分公司',2,'若依','15888888888','ry@qq.com','0','0','admin','2023-04-04 21:05:18','',NULL),
(103,101,'0,100,101','研发部门',1,'若依','15888888888','ry@qq.com','0','0','admin','2023-04-04 21:05:18','',NULL),
(104,101,'0,100,101','市场部门',2,'若依','15888888888','ry@qq.com','0','0','admin','2023-04-04 21:05:18','',NULL),
(105,101,'0,100,101','测试部门',3,'若依','15888888888','ry@qq.com','0','0','admin','2023-04-04 21:05:18','',NULL),
(106,101,'0,100,101','财务部门',4,'若依','15888888888','ry@qq.com','0','0','admin','2023-04-04 21:05:19','',NULL),
(107,101,'0,100,101','运维部门',5,'若依','15888888888','ry@qq.com','0','0','admin','2023-04-04 21:05:19','',NULL),
(108,102,'0,100,102','市场部门',1,'若依','15888888888','ry@qq.com','0','0','admin','2023-04-04 21:05:19','',NULL),
(109,102,'0,100,102','财务部门',2,'若依','15888888888','ry@qq.com','0','0','admin','2023-04-04 21:05:20','',NULL);

/*Table structure for table `sys_dict_data` */

DROP TABLE IF EXISTS `sys_dict_data`;

CREATE TABLE `sys_dict_data` (
  `dict_code` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典编码',
  `dict_sort` int(4) DEFAULT '0' COMMENT '字典排序',
  `dict_label` varchar(100) DEFAULT '' COMMENT '字典标签',
  `dict_value` varchar(100) DEFAULT '' COMMENT '字典键值',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `css_class` varchar(100) DEFAULT NULL COMMENT '样式属性（其他样式扩展）',
  `list_class` varchar(100) DEFAULT NULL COMMENT '表格回显样式',
  `is_default` char(1) DEFAULT 'N' COMMENT '是否默认（Y是 N否）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_code`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='字典数据表';

/*Data for the table `sys_dict_data` */

insert  into `sys_dict_data`(`dict_code`,`dict_sort`,`dict_label`,`dict_value`,`dict_type`,`css_class`,`list_class`,`is_default`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values 
(1,1,'男','0','sys_user_sex','','','Y','0','admin','2023-04-04 21:07:17','',NULL,'性别男'),
(2,2,'女','1','sys_user_sex','','','N','0','admin','2023-04-04 21:07:20','',NULL,'性别女'),
(3,3,'未知','2','sys_user_sex','','','N','0','admin','2023-04-04 21:07:21','',NULL,'性别未知'),
(4,1,'显示','0','sys_show_hide','','primary','Y','0','admin','2023-04-04 21:07:22','',NULL,'显示菜单'),
(5,2,'隐藏','1','sys_show_hide','','danger','N','0','admin','2023-04-04 21:07:22','',NULL,'隐藏菜单'),
(6,1,'正常','0','sys_normal_disable','','primary','Y','0','admin','2023-04-04 21:07:22','',NULL,'正常状态'),
(7,2,'停用','1','sys_normal_disable','','danger','N','0','admin','2023-04-04 21:07:22','',NULL,'停用状态'),
(8,1,'正常','0','sys_job_status','','primary','Y','0','admin','2023-04-04 21:07:22','',NULL,'正常状态'),
(9,2,'暂停','1','sys_job_status','','danger','N','0','admin','2023-04-04 21:07:22','',NULL,'停用状态'),
(10,1,'默认','DEFAULT','sys_job_group','','','Y','0','admin','2023-04-04 21:07:22','',NULL,'默认分组'),
(11,2,'系统','SYSTEM','sys_job_group','','','N','0','admin','2023-04-04 21:07:23','',NULL,'系统分组'),
(12,1,'是','Y','sys_yes_no','','primary','Y','0','admin','2023-04-04 21:07:23','',NULL,'系统默认是'),
(13,2,'否','N','sys_yes_no','','danger','N','0','admin','2023-04-04 21:07:23','',NULL,'系统默认否'),
(14,1,'通知','1','sys_notice_type','','warning','Y','0','admin','2023-04-04 21:07:23','',NULL,'通知'),
(15,2,'公告','2','sys_notice_type','','success','N','0','admin','2023-04-04 21:07:23','',NULL,'公告'),
(16,1,'正常','0','sys_notice_status','','primary','Y','0','admin','2023-04-04 21:07:23','',NULL,'正常状态'),
(17,2,'关闭','1','sys_notice_status','','danger','N','0','admin','2023-04-04 21:07:24','',NULL,'关闭状态'),
(18,99,'其他','0','sys_oper_type','','info','N','0','admin','2023-04-04 21:07:24','',NULL,'其他操作'),
(19,1,'新增','1','sys_oper_type','','info','N','0','admin','2023-04-04 21:07:24','',NULL,'新增操作'),
(20,2,'修改','2','sys_oper_type','','info','N','0','admin','2023-04-04 21:07:24','',NULL,'修改操作'),
(21,3,'删除','3','sys_oper_type','','danger','N','0','admin','2023-04-04 21:07:24','',NULL,'删除操作'),
(22,4,'授权','4','sys_oper_type','','primary','N','0','admin','2023-04-04 21:07:24','',NULL,'授权操作'),
(23,5,'导出','5','sys_oper_type','','warning','N','0','admin','2023-04-04 21:07:25','',NULL,'导出操作'),
(24,6,'导入','6','sys_oper_type','','warning','N','0','admin','2023-04-04 21:07:25','',NULL,'导入操作'),
(25,7,'强退','7','sys_oper_type','','danger','N','0','admin','2023-04-04 21:07:25','',NULL,'强退操作'),
(26,8,'生成代码','8','sys_oper_type','','warning','N','0','admin','2023-04-04 21:07:25','',NULL,'生成操作'),
(27,9,'清空数据','9','sys_oper_type','','danger','N','0','admin','2023-04-04 21:07:25','',NULL,'清空操作'),
(28,1,'成功','0','sys_common_status','','primary','N','0','admin','2023-04-04 21:07:26','',NULL,'正常状态'),
(29,2,'失败','1','sys_common_status','','danger','N','0','admin','2023-04-04 21:07:26','',NULL,'停用状态');

/*Table structure for table `sys_dict_type` */

DROP TABLE IF EXISTS `sys_dict_type`;

CREATE TABLE `sys_dict_type` (
  `dict_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '字典主键',
  `dict_name` varchar(100) DEFAULT '' COMMENT '字典名称',
  `dict_type` varchar(100) DEFAULT '' COMMENT '字典类型',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`dict_id`),
  UNIQUE KEY `dict_type` (`dict_type`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='字典类型表';

/*Data for the table `sys_dict_type` */

insert  into `sys_dict_type`(`dict_id`,`dict_name`,`dict_type`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values 
(1,'用户性别','sys_user_sex','1','admin','2023-04-04 21:07:08','admin','2023-04-05 15:20:37','用户性别列表'),
(2,'菜单状态','sys_show_hide','0','admin','2023-04-04 21:07:09','',NULL,'菜单状态列表'),
(3,'系统开关','sys_normal_disable','0','admin','2023-04-04 21:07:10','',NULL,'系统开关列表'),
(4,'任务状态','sys_job_status','0','admin','2023-04-04 21:07:10','',NULL,'任务状态列表'),
(5,'任务分组','sys_job_group','0','admin','2023-04-04 21:07:11','',NULL,'任务分组列表'),
(6,'系统是否','sys_yes_no','0','admin','2023-04-04 21:07:11','',NULL,'系统是否列表'),
(7,'通知类型','sys_notice_type','0','admin','2023-04-04 21:07:12','',NULL,'通知类型列表'),
(8,'通知状态','sys_notice_status','0','admin','2023-04-04 21:07:12','',NULL,'通知状态列表'),
(9,'操作类型','sys_oper_type','0','admin','2023-04-04 21:07:12','',NULL,'操作类型列表'),
(10,'系统状态','sys_common_status','0','admin','2023-04-04 21:07:12','',NULL,'登录状态列表');

/*Table structure for table `sys_job` */

DROP TABLE IF EXISTS `sys_job`;

CREATE TABLE `sys_job` (
  `job_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务ID',
  `job_name` varchar(64) NOT NULL DEFAULT '' COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL DEFAULT 'DEFAULT' COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `cron_expression` varchar(255) DEFAULT '' COMMENT 'cron执行表达式',
  `misfire_policy` varchar(20) DEFAULT '3' COMMENT '计划执行错误策略（1立即执行 2执行一次 3放弃执行）',
  `concurrent` char(1) DEFAULT '1' COMMENT '是否并发执行（0允许 1禁止）',
  `status` char(1) DEFAULT '0' COMMENT '状态（0正常 1暂停）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注信息',
  PRIMARY KEY (`job_id`,`job_name`,`job_group`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='定时任务调度表';

/*Data for the table `sys_job` */

insert  into `sys_job`(`job_id`,`job_name`,`job_group`,`invoke_target`,`cron_expression`,`misfire_policy`,`concurrent`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values 
(1,'系统默认（无参）','DEFAULT','ryTask.ryNoParams','0/10 * * * * ?','3','1','1','admin','2023-04-04 21:07:39','',NULL,''),
(2,'系统默认（有参）','DEFAULT','ryTask.ryParams(\'ry\')','0/15 * * * * ?','3','1','1','admin','2023-04-04 21:07:39','',NULL,''),
(3,'系统默认（多参）','DEFAULT','ryTask.ryMultipleParams(\'ry\', true, 2000L, 316.50D, 100)','0/20 * * * * ?','3','1','1','admin','2023-04-04 21:07:40','',NULL,'');

/*Table structure for table `sys_job_log` */

DROP TABLE IF EXISTS `sys_job_log`;

CREATE TABLE `sys_job_log` (
  `job_log_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '任务日志ID',
  `job_name` varchar(64) NOT NULL COMMENT '任务名称',
  `job_group` varchar(64) NOT NULL COMMENT '任务组名',
  `invoke_target` varchar(500) NOT NULL COMMENT '调用目标字符串',
  `job_message` varchar(500) DEFAULT NULL COMMENT '日志信息',
  `status` char(1) DEFAULT '0' COMMENT '执行状态（0正常 1失败）',
  `exception_info` varchar(2000) DEFAULT '' COMMENT '异常信息',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  PRIMARY KEY (`job_log_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='定时任务调度日志表';

/*Data for the table `sys_job_log` */

/*Table structure for table `sys_logininfor` */

DROP TABLE IF EXISTS `sys_logininfor`;

CREATE TABLE `sys_logininfor` (
  `info_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '访问ID',
  `user_name` varchar(50) DEFAULT '' COMMENT '用户账号',
  `ipaddr` varchar(128) DEFAULT '' COMMENT '登录IP地址',
  `login_location` varchar(255) DEFAULT '' COMMENT '登录地点',
  `browser` varchar(50) DEFAULT '' COMMENT '浏览器类型',
  `os` varchar(50) DEFAULT '' COMMENT '操作系统',
  `status` char(1) DEFAULT '0' COMMENT '登录状态（0成功 1失败）',
  `msg` varchar(255) DEFAULT '' COMMENT '提示消息',
  `login_time` datetime DEFAULT NULL COMMENT '访问时间',
  PRIMARY KEY (`info_id`),
  KEY `idx_sys_logininfor_s` (`status`),
  KEY `idx_sys_logininfor_lt` (`login_time`)
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='系统访问记录';

/*Data for the table `sys_logininfor` */

insert  into `sys_logininfor`(`info_id`,`user_name`,`ipaddr`,`login_location`,`browser`,`os`,`status`,`msg`,`login_time`) values 
(1,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','退出成功','2023-04-05 15:43:13'),
(2,'ry','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-04-05 15:43:31'),
(3,'ry','127.0.0.1','内网IP','Chrome 11','Windows 10','0','退出成功','2023-04-05 15:43:49'),
(4,'zyp','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-04-05 15:44:02'),
(5,'zyp','127.0.0.1','内网IP','Chrome 11','Windows 10','0','退出成功','2023-04-05 15:45:34'),
(6,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-04-05 15:45:40'),
(7,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','退出成功','2023-04-05 17:20:41'),
(8,'zyp','127.0.0.1','内网IP','Chrome 11','Windows 10','1','验证码错误','2023-04-05 17:20:57'),
(9,'zyp','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-04-05 17:21:03'),
(10,'zyp','127.0.0.1','内网IP','Chrome 11','Windows 10','0','退出成功','2023-04-05 17:22:39'),
(11,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-04-05 17:22:46'),
(12,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-04-05 18:32:37'),
(13,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','退出成功','2023-04-05 18:36:11'),
(14,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-04-05 18:37:25'),
(15,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','退出成功','2023-04-05 18:37:45'),
(16,'zyp','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-04-05 18:37:57'),
(17,'zyp','127.0.0.1','内网IP','Chrome 11','Windows 10','0','退出成功','2023-04-05 18:39:28'),
(18,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-04-05 18:39:35'),
(19,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','退出成功','2023-04-05 18:43:06'),
(20,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-04-05 18:43:12'),
(21,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','退出成功','2023-04-05 18:43:16'),
(22,'zyp','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-04-05 18:43:28'),
(23,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-04-05 18:44:53'),
(24,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','退出成功','2023-04-05 18:52:57'),
(25,'zyp','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-04-05 18:53:08'),
(26,'zyp','127.0.0.1','内网IP','Chrome 11','Windows 10','0','退出成功','2023-04-05 19:03:18'),
(27,'zyp','127.0.0.1','内网IP','Chrome 11','Windows 10','1','密码输入错误1次','2023-04-05 19:04:18'),
(28,'zyp','127.0.0.1','内网IP','Chrome 11','Windows 10','1','用户不存在/密码错误','2023-04-05 19:04:18'),
(29,'zyp','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-04-05 19:04:26'),
(30,'zyp','127.0.0.1','内网IP','Chrome 11','Windows 10','0','退出成功','2023-04-05 19:11:31'),
(31,'zyp','127.0.0.1','内网IP','Chrome 11','Windows 10','1','验证码错误','2023-04-05 19:11:51'),
(32,'zyp','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-04-05 19:11:55'),
(33,'zyp','127.0.0.1','内网IP','Chrome 11','Windows 10','0','退出成功','2023-04-05 19:12:06'),
(34,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-04-05 19:12:11'),
(35,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','退出成功','2023-04-05 19:30:03'),
(36,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-04-05 19:30:08'),
(37,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','退出成功','2023-04-05 19:39:05'),
(38,'zyp','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-04-05 19:39:16'),
(39,'zyp','127.0.0.1','内网IP','Chrome 11','Windows 10','0','退出成功','2023-04-05 19:39:49'),
(40,'ry','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-04-05 19:39:59'),
(41,'ry','127.0.0.1','内网IP','Chrome 11','Windows 10','0','退出成功','2023-04-05 19:54:09'),
(42,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-04-05 19:55:13'),
(43,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-04-06 10:52:04'),
(44,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-04-06 12:14:04'),
(45,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-04-06 13:45:01'),
(46,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-04-06 15:16:25'),
(47,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-04-06 16:31:37'),
(48,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-04-07 11:30:46'),
(49,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-04-07 12:01:13'),
(50,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-04-07 13:32:44'),
(51,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-05-02 15:23:31'),
(52,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-05-02 16:07:03'),
(53,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','退出成功','2023-05-02 17:34:45'),
(54,'admin','127.0.0.1','内网IP','Chrome 11','Windows 10','0','登录成功','2023-05-02 17:41:41');

/*Table structure for table `sys_menu` */

DROP TABLE IF EXISTS `sys_menu`;

CREATE TABLE `sys_menu` (
  `menu_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '菜单ID',
  `menu_name` varchar(50) NOT NULL COMMENT '菜单名称',
  `parent_id` bigint(20) DEFAULT '0' COMMENT '父菜单ID',
  `order_num` int(4) DEFAULT '0' COMMENT '显示顺序',
  `path` varchar(200) DEFAULT '' COMMENT '路由地址',
  `component` varchar(255) DEFAULT NULL COMMENT '组件路径',
  `query` varchar(255) DEFAULT NULL COMMENT '路由参数',
  `is_frame` int(1) DEFAULT '1' COMMENT '是否为外链（0是 1否）',
  `is_cache` int(1) DEFAULT '0' COMMENT '是否缓存（0缓存 1不缓存）',
  `menu_type` char(1) DEFAULT '' COMMENT '菜单类型（M目录 C菜单 F按钮）',
  `visible` char(1) DEFAULT '0' COMMENT '菜单状态（0显示 1隐藏）',
  `status` char(1) DEFAULT '0' COMMENT '菜单状态（0正常 1停用）',
  `perms` varchar(100) DEFAULT NULL COMMENT '权限标识',
  `icon` varchar(100) DEFAULT '#' COMMENT '菜单图标',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT '' COMMENT '备注',
  PRIMARY KEY (`menu_id`)
) ENGINE=InnoDB AUTO_INCREMENT=2007 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='菜单权限表';

/*Data for the table `sys_menu` */

insert  into `sys_menu`(`menu_id`,`menu_name`,`parent_id`,`order_num`,`path`,`component`,`query`,`is_frame`,`is_cache`,`menu_type`,`visible`,`status`,`perms`,`icon`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values 
(1,'系统管理',0,1,'system',NULL,'',1,0,'M','0','0','','system','admin','2023-04-04 21:05:41','',NULL,'系统管理目录'),
(2,'系统监控',0,2,'monitor',NULL,'',1,0,'M','0','0','','monitor','admin','2023-04-04 21:05:42','',NULL,'系统监控目录'),
(3,'系统工具',0,3,'tool',NULL,'',1,0,'M','0','0','','tool','admin','2023-04-04 21:05:42','',NULL,'系统工具目录'),
(4,'百度官网',0,5,'http://baidu.com',NULL,'',0,0,'M','0','0','','guide','admin','2023-04-04 21:05:43','admin','2023-04-05 17:10:46','若依官网地址'),
(100,'用户管理',1,1,'user','system/user/index','',1,0,'C','0','0','system:user:list','user','admin','2023-04-04 21:05:43','',NULL,'用户管理菜单'),
(101,'角色管理',1,2,'role','system/role/index','',1,0,'C','0','0','system:role:list','peoples','admin','2023-04-04 21:05:43','admin','2023-04-05 18:48:28','角色管理菜单'),
(102,'菜单管理',1,3,'menu','system/menu/index','',1,0,'C','0','0','system:menu:list','tree-table','admin','2023-04-04 21:05:44','',NULL,'菜单管理菜单'),
(103,'部门管理',1,4,'dept','system/dept/index','',1,0,'C','0','0','system:dept:list','tree','admin','2023-04-04 21:05:44','',NULL,'部门管理菜单'),
(104,'岗位管理',1,5,'post','system/post/index','',1,0,'C','0','0','system:post:list','post','admin','2023-04-04 21:05:44','',NULL,'岗位管理菜单'),
(105,'字典管理',1,6,'dict','system/dict/index','',1,0,'C','0','0','system:dict:list','dict','admin','2023-04-04 21:05:44','',NULL,'字典管理菜单'),
(106,'参数设置',1,7,'config','system/config/index','',1,0,'C','0','0','system:config:list','edit','admin','2023-04-04 21:05:45','',NULL,'参数设置菜单'),
(107,'通知公告',2001,2,'notice','news/notice/index','',1,0,'C','0','0','news:notice:list','message','admin','2023-04-04 21:05:45','admin','2023-04-06 12:17:03','通知公告菜单'),
(108,'日志管理',1,9,'log','','',1,0,'M','0','0','','log','admin','2023-04-04 21:05:45','',NULL,'日志管理菜单'),
(109,'在线用户',2,1,'online','monitor/online/index','',1,0,'C','0','0','monitor:online:list','online','admin','2023-04-04 21:05:45','',NULL,'在线用户菜单'),
(110,'定时任务',2,2,'job','monitor/job/index','',1,0,'C','0','0','monitor:job:list','job','admin','2023-04-04 21:05:46','',NULL,'定时任务菜单'),
(111,'数据监控',2,3,'druid','monitor/druid/index','',1,0,'C','0','0','monitor:druid:list','druid','admin','2023-04-04 21:05:46','',NULL,'数据监控菜单'),
(112,'服务监控',2,4,'server','monitor/server/index','',1,0,'C','0','0','monitor:server:list','server','admin','2023-04-04 21:05:46','',NULL,'服务监控菜单'),
(113,'缓存监控',2,5,'cache','monitor/cache/index','',1,0,'C','0','0','monitor:cache:list','redis','admin','2023-04-04 21:05:46','',NULL,'缓存监控菜单'),
(114,'缓存列表',2,6,'cacheList','monitor/cache/list','',1,0,'C','0','0','monitor:cache:list','redis-list','admin','2023-04-04 21:05:47','',NULL,'缓存列表菜单'),
(115,'表单构建',3,1,'build','tool/build/index','',1,0,'C','0','0','tool:build:list','build','admin','2023-04-04 21:05:47','',NULL,'表单构建菜单'),
(116,'代码生成',3,2,'gen','tool/gen/index','',1,0,'C','0','0','tool:gen:list','code','admin','2023-04-04 21:05:47','',NULL,'代码生成菜单'),
(117,'系统接口',3,3,'swagger','tool/swagger/index','',1,0,'C','0','0','tool:swagger:list','swagger','admin','2023-04-04 21:05:47','',NULL,'系统接口菜单'),
(500,'操作日志',108,1,'operlog','monitor/operlog/index','',1,0,'C','0','0','monitor:operlog:list','form','admin','2023-04-04 21:05:47','',NULL,'操作日志菜单'),
(501,'登录日志',108,2,'logininfor','monitor/logininfor/index','',1,0,'C','0','0','monitor:logininfor:list','logininfor','admin','2023-04-04 21:05:47','',NULL,'登录日志菜单'),
(1000,'用户查询',100,1,'','','',1,0,'F','0','0','system:user:query','#','admin','2023-04-04 21:05:47','',NULL,''),
(1001,'用户新增',100,2,'','','',1,0,'F','0','0','system:user:add','#','admin','2023-04-04 21:05:47','',NULL,''),
(1002,'用户修改',100,3,'','','',1,0,'F','0','0','system:user:edit','#','admin','2023-04-04 21:05:48','',NULL,''),
(1003,'用户删除',100,4,'','','',1,0,'F','0','0','system:user:remove','#','admin','2023-04-04 21:05:48','',NULL,''),
(1004,'用户导出',100,5,'','','',1,0,'F','0','0','system:user:export','#','admin','2023-04-04 21:05:48','',NULL,''),
(1005,'用户导入',100,6,'','','',1,0,'F','0','0','system:user:import','#','admin','2023-04-04 21:05:48','',NULL,''),
(1006,'重置密码',100,7,'','','',1,0,'F','0','0','system:user:resetPwd','#','admin','2023-04-04 21:05:49','',NULL,''),
(1007,'角色查询',101,1,'','','',1,0,'F','0','0','system:role:query','#','admin','2023-04-04 21:05:49','',NULL,''),
(1008,'角色新增',101,2,'','','',1,0,'F','0','0','system:role:add','#','admin','2023-04-04 21:05:50','',NULL,''),
(1009,'角色修改',101,3,'','','',1,0,'F','0','0','system:role:edit','#','admin','2023-04-04 21:05:50','',NULL,''),
(1010,'角色删除',101,4,'','','',1,0,'F','0','0','system:role:remove','#','admin','2023-04-04 21:05:50','',NULL,''),
(1011,'角色导出',101,5,'','','',1,0,'F','0','0','system:role:export','#','admin','2023-04-04 21:05:51','',NULL,''),
(1012,'菜单查询',102,1,'','','',1,0,'F','0','0','system:menu:query','#','admin','2023-04-04 21:05:51','',NULL,''),
(1013,'菜单新增',102,2,'','','',1,0,'F','0','0','system:menu:add','#','admin','2023-04-04 21:05:51','',NULL,''),
(1014,'菜单修改',102,3,'','','',1,0,'F','0','0','system:menu:edit','#','admin','2023-04-04 21:05:51','',NULL,''),
(1015,'菜单删除',102,4,'','','',1,0,'F','0','0','system:menu:remove','#','admin','2023-04-04 21:05:52','',NULL,''),
(1016,'部门查询',103,1,'','','',1,0,'F','0','0','system:dept:query','#','admin','2023-04-04 21:05:52','',NULL,''),
(1017,'部门新增',103,2,'','','',1,0,'F','0','0','system:dept:add','#','admin','2023-04-04 21:05:52','',NULL,''),
(1018,'部门修改',103,3,'','','',1,0,'F','0','0','system:dept:edit','#','admin','2023-04-04 21:05:52','',NULL,''),
(1019,'部门删除',103,4,'','','',1,0,'F','0','0','system:dept:remove','#','admin','2023-04-04 21:05:52','',NULL,''),
(1020,'岗位查询',104,1,'','','',1,0,'F','0','0','system:post:query','#','admin','2023-04-04 21:05:52','',NULL,''),
(1021,'岗位新增',104,2,'','','',1,0,'F','0','0','system:post:add','#','admin','2023-04-04 21:05:52','',NULL,''),
(1022,'岗位修改',104,3,'','','',1,0,'F','0','0','system:post:edit','#','admin','2023-04-04 21:05:53','',NULL,''),
(1023,'岗位删除',104,4,'','','',1,0,'F','0','0','system:post:remove','#','admin','2023-04-04 21:05:53','',NULL,''),
(1024,'岗位导出',104,5,'','','',1,0,'F','0','0','system:post:export','#','admin','2023-04-04 21:05:53','',NULL,''),
(1025,'字典查询',105,1,'#','','',1,0,'F','0','0','system:dict:query','#','admin','2023-04-04 21:05:53','',NULL,''),
(1026,'字典新增',105,2,'#','','',1,0,'F','0','0','system:dict:add','#','admin','2023-04-04 21:05:53','',NULL,''),
(1027,'字典修改',105,3,'#','','',1,0,'F','0','0','system:dict:edit','#','admin','2023-04-04 21:05:53','',NULL,''),
(1028,'字典删除',105,4,'#','','',1,0,'F','0','0','system:dict:remove','#','admin','2023-04-04 21:05:53','',NULL,''),
(1029,'字典导出',105,5,'#','','',1,0,'F','0','0','system:dict:export','#','admin','2023-04-04 21:05:54','',NULL,''),
(1030,'参数查询',106,1,'#','','',1,0,'F','0','0','system:config:query','#','admin','2023-04-04 21:05:54','',NULL,''),
(1031,'参数新增',106,2,'#','','',1,0,'F','0','0','system:config:add','#','admin','2023-04-04 21:05:54','',NULL,''),
(1032,'参数修改',106,3,'#','','',1,0,'F','0','0','system:config:edit','#','admin','2023-04-04 21:05:54','',NULL,''),
(1033,'参数删除',106,4,'#','','',1,0,'F','0','0','system:config:remove','#','admin','2023-04-04 21:05:54','',NULL,''),
(1034,'参数导出',106,5,'#','','',1,0,'F','0','0','system:config:export','#','admin','2023-04-04 21:05:55','',NULL,''),
(1035,'公告查询',107,1,'#','','',1,0,'F','0','0','news:notice:query','#','admin','2023-04-04 21:05:55','admin','2023-04-05 18:41:39',''),
(1036,'公告新增',107,2,'#','','',1,0,'F','0','0','news:notice:add','#','admin','2023-04-04 21:05:55','admin','2023-04-05 18:41:55',''),
(1037,'公告修改',107,3,'#','','',1,0,'F','0','0','news:notice:edit','#','admin','2023-04-04 21:05:55','admin','2023-04-05 18:42:03',''),
(1038,'公告删除',107,4,'#','','',1,0,'F','0','0','news:notice:remove','#','admin','2023-04-04 21:05:55','admin','2023-04-05 18:42:13',''),
(1039,'操作查询',500,1,'#','','',1,0,'F','0','0','monitor:operlog:query','#','admin','2023-04-04 21:05:56','',NULL,''),
(1040,'操作删除',500,2,'#','','',1,0,'F','0','0','monitor:operlog:remove','#','admin','2023-04-04 21:05:56','',NULL,''),
(1041,'日志导出',500,3,'#','','',1,0,'F','0','0','monitor:operlog:export','#','admin','2023-04-04 21:05:56','',NULL,''),
(1042,'登录查询',501,1,'#','','',1,0,'F','0','0','monitor:logininfor:query','#','admin','2023-04-04 21:05:56','',NULL,''),
(1043,'登录删除',501,2,'#','','',1,0,'F','0','0','monitor:logininfor:remove','#','admin','2023-04-04 21:05:56','',NULL,''),
(1044,'日志导出',501,3,'#','','',1,0,'F','0','0','monitor:logininfor:export','#','admin','2023-04-04 21:05:57','',NULL,''),
(1045,'账户解锁',501,4,'#','','',1,0,'F','0','0','monitor:logininfor:unlock','#','admin','2023-04-04 21:05:57','',NULL,''),
(1046,'在线查询',109,1,'#','','',1,0,'F','0','0','monitor:online:query','#','admin','2023-04-04 21:05:57','',NULL,''),
(1047,'批量强退',109,2,'#','','',1,0,'F','0','0','monitor:online:batchLogout','#','admin','2023-04-04 21:05:57','',NULL,''),
(1048,'单条强退',109,3,'#','','',1,0,'F','0','0','monitor:online:forceLogout','#','admin','2023-04-04 21:05:57','',NULL,''),
(1049,'任务查询',110,1,'#','','',1,0,'F','0','0','monitor:job:query','#','admin','2023-04-04 21:05:58','',NULL,''),
(1050,'任务新增',110,2,'#','','',1,0,'F','0','0','monitor:job:add','#','admin','2023-04-04 21:05:58','',NULL,''),
(1051,'任务修改',110,3,'#','','',1,0,'F','0','0','monitor:job:edit','#','admin','2023-04-04 21:05:58','',NULL,''),
(1052,'任务删除',110,4,'#','','',1,0,'F','0','0','monitor:job:remove','#','admin','2023-04-04 21:05:58','',NULL,''),
(1053,'状态修改',110,5,'#','','',1,0,'F','0','0','monitor:job:changeStatus','#','admin','2023-04-04 21:05:59','',NULL,''),
(1054,'任务导出',110,6,'#','','',1,0,'F','0','0','monitor:job:export','#','admin','2023-04-04 21:05:59','',NULL,''),
(1055,'生成查询',116,1,'#','','',1,0,'F','0','0','tool:gen:query','#','admin','2023-04-04 21:05:59','',NULL,''),
(1056,'生成修改',116,2,'#','','',1,0,'F','0','0','tool:gen:edit','#','admin','2023-04-04 21:05:59','',NULL,''),
(1057,'生成删除',116,3,'#','','',1,0,'F','0','0','tool:gen:remove','#','admin','2023-04-04 21:05:59','',NULL,''),
(1058,'导入代码',116,4,'#','','',1,0,'F','0','0','tool:gen:import','#','admin','2023-04-04 21:06:00','',NULL,''),
(1059,'预览代码',116,5,'#','','',1,0,'F','0','0','tool:gen:preview','#','admin','2023-04-04 21:06:00','',NULL,''),
(1060,'生成代码',116,6,'#','','',1,0,'F','0','0','tool:gen:code','#','admin','2023-04-04 21:06:00','',NULL,''),
(2000,'QQ邮箱',4,1,'https://mail.qq.com/',NULL,NULL,0,0,'M','0','0','','qq','admin','2023-04-05 15:57:19','admin','2023-04-05 18:50:45',''),
(2001,'消息中心',0,4,'news',NULL,NULL,1,0,'M','0','0','','user','admin','2023-04-05 17:08:54','admin','2023-04-06 10:52:51',''),
(2002,'我的消息',2001,1,'announcement','news/announcement/index',NULL,1,0,'C','0','0','news:announcement:list','button','admin','2023-04-06 12:16:39','admin','2023-04-06 12:39:09',''),
(2003,'消息查询',2002,1,'',NULL,NULL,1,0,'F','0','0','news:announcement:query','#','admin','2023-04-06 12:22:18','admin','2023-04-06 12:22:46',''),
(2004,'消息新增',2002,2,'',NULL,NULL,1,0,'F','0','0','news:announcement:add','#','admin','2023-04-06 12:23:31','',NULL,''),
(2005,'消息修改',2002,3,'',NULL,NULL,1,0,'F','0','0','news:announcement:edit','#','admin','2023-04-06 12:24:04','',NULL,''),
(2006,'消息删除',2002,4,'',NULL,NULL,1,0,'F','0','0','news:announcement:remove','#','admin','2023-04-06 12:24:46','',NULL,'');

/*Table structure for table `sys_notice` */

DROP TABLE IF EXISTS `sys_notice`;

CREATE TABLE `sys_notice` (
  `notice_id` int(4) NOT NULL AUTO_INCREMENT COMMENT '公告ID',
  `notice_title` varchar(50) NOT NULL COMMENT '公告标题',
  `notice_type` char(1) NOT NULL COMMENT '公告类型（1通知 2公告）',
  `notice_content` longblob COMMENT '公告内容',
  `status` char(1) DEFAULT '0' COMMENT '公告状态（0正常 1关闭）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(255) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`notice_id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='通知公告表';

/*Data for the table `sys_notice` */

insert  into `sys_notice`(`notice_id`,`notice_title`,`notice_type`,`notice_content`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values 
(1,'温馨提醒：2022-04-02 管理系统发布啦','2','<p>新版本内容</p>','0','admin','2023-04-04 21:07:53','ry','2023-04-05 19:41:13','管理员'),
(2,'维护通知：2018-04-22 系统凌晨维护','2','<p>维护内容</p>','0','admin','2023-04-04 21:07:55','ry','2023-04-05 19:41:35','管理员'),
(10,'测试的通知公告','1','<p>猜测是的公告内容</p>','0','zyp','2023-04-05 18:39:14','',NULL,NULL),
(11,'ry用户通知公告','1','<p>通知公告的内容</p>','0','ry','2023-04-05 19:40:44','',NULL,NULL);

/*Table structure for table `sys_oper_log` */

DROP TABLE IF EXISTS `sys_oper_log`;

CREATE TABLE `sys_oper_log` (
  `oper_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '日志主键',
  `title` varchar(50) DEFAULT '' COMMENT '模块标题',
  `business_type` int(2) DEFAULT '0' COMMENT '业务类型（0其它 1新增 2修改 3删除）',
  `method` varchar(100) DEFAULT '' COMMENT '方法名称',
  `request_method` varchar(10) DEFAULT '' COMMENT '请求方式',
  `operator_type` int(1) DEFAULT '0' COMMENT '操作类别（0其它 1后台用户 2手机端用户）',
  `oper_name` varchar(50) DEFAULT '' COMMENT '操作人员',
  `dept_name` varchar(50) DEFAULT '' COMMENT '部门名称',
  `oper_url` varchar(255) DEFAULT '' COMMENT '请求URL',
  `oper_ip` varchar(128) DEFAULT '' COMMENT '主机地址',
  `oper_location` varchar(255) DEFAULT '' COMMENT '操作地点',
  `oper_param` varchar(2000) DEFAULT '' COMMENT '请求参数',
  `json_result` varchar(2000) DEFAULT '' COMMENT '返回参数',
  `status` int(1) DEFAULT '0' COMMENT '操作状态（0正常 1异常）',
  `error_msg` varchar(2000) DEFAULT '' COMMENT '错误消息',
  `oper_time` datetime DEFAULT NULL COMMENT '操作时间',
  `cost_time` bigint(20) DEFAULT '0' COMMENT '消耗时间',
  PRIMARY KEY (`oper_id`),
  KEY `idx_sys_oper_log_bt` (`business_type`),
  KEY `idx_sys_oper_log_s` (`status`),
  KEY `idx_sys_oper_log_ot` (`oper_time`)
) ENGINE=InnoDB AUTO_INCREMENT=88 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='操作日志记录';

/*Data for the table `sys_oper_log` */

insert  into `sys_oper_log`(`oper_id`,`title`,`business_type`,`method`,`request_method`,`operator_type`,`oper_name`,`dept_name`,`oper_url`,`oper_ip`,`oper_location`,`oper_param`,`json_result`,`status`,`error_msg`,`oper_time`,`cost_time`) values 
(1,'操作日志',9,'com.ruoyi.web.controller.monitor.SysOperlogController.clean()','DELETE',1,'admin',NULL,'/monitor/operlog/clean','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-04-05 15:21:51',2068),
(2,'角色管理',1,'com.ruoyi.web.controller.system.SysRoleController.add()','POST',1,'admin',NULL,'/system/role','127.0.0.1','内网IP','{\"admin\":false,\"deptCheckStrictly\":true,\"deptIds\":[],\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,501,1042,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,114,3,115,116,1055,1056,1057,1058,1059,1060,117],\"params\":{},\"remark\":\"zyp用户\",\"roleKey\":\"admin\",\"roleName\":\"zyp\",\"roleSort\":3,\"status\":\"0\"}','{\"msg\":\"新增角色\'zyp\'失败，角色权限已存在\",\"code\":500}',0,NULL,'2023-04-05 15:23:37',32),
(3,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.edit()','PUT',1,'admin',NULL,'/system/user','127.0.0.1','内网IP','{\"admin\":false,\"avatar\":\"\",\"createBy\":\"zyp\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100\",\"children\":[],\"deptId\":102,\"deptName\":\"长沙分公司\",\"leader\":\"若依\",\"orderNum\":2,\"params\":{},\"parentId\":100,\"status\":\"0\"},\"deptId\":100,\"email\":\"yp@qq.com\",\"loginIp\":\"\",\"nickName\":\"xiyang\",\"params\":{},\"phonenumber\":\"15566667934\",\"postIds\":[2],\"roleIds\":[2],\"roles\":[],\"sex\":\"0\",\"status\":\"0\",\"userId\":3,\"userName\":\"zyp\"}','{\"msg\":\"修改用户\'zyp\'失败，邮箱账号已存在\",\"code\":500}',0,NULL,'2023-04-05 15:24:30',7),
(4,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.edit()','PUT',1,'admin',NULL,'/system/user','127.0.0.1','内网IP','{\"admin\":false,\"avatar\":\"\",\"createBy\":\"zyp\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100\",\"children\":[],\"deptId\":102,\"deptName\":\"长沙分公司\",\"leader\":\"若依\",\"orderNum\":2,\"params\":{},\"parentId\":100,\"status\":\"0\"},\"deptId\":100,\"email\":\"yp1@qq.com\",\"loginIp\":\"\",\"nickName\":\"xiyang\",\"params\":{},\"phonenumber\":\"15566667934\",\"postIds\":[2],\"roleIds\":[2],\"roles\":[],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":3,\"userName\":\"zyp\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-04-05 15:24:41',203),
(5,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.edit()','PUT',1,'admin',NULL,'/system/role','127.0.0.1','内网IP','{\"admin\":false,\"createTime\":\"2023-04-04 21:05:37\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,100,1000,1001,1002,1003,1004,1005,1006,101,1007,1008,1009,1010,1011,102,1012,1013,1014,1015,103,1016,1017,1018,1019,104,1020,1021,1022,1023,1024,105,1025,1026,1027,1028,1029,106,1030,1031,1032,1033,1034,107,1035,1036,1037,1038,108,500,1039,1040,1041,501,1042,1043,1044,1045,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,114,3,115,116,1055,1056,1057,1058,1059,1060,117],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-04-05 15:24:58',444),
(6,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.edit()','PUT',1,'admin',NULL,'/system/user','127.0.0.1','内网IP','{\"admin\":false,\"avatar\":\"\",\"createBy\":\"zyp\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0\",\"children\":[],\"deptId\":100,\"deptName\":\"若依科技\",\"leader\":\"若依\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"status\":\"0\"},\"deptId\":101,\"email\":\"yp1@qq.com\",\"loginIp\":\"\",\"nickName\":\"xiyang\",\"params\":{},\"phonenumber\":\"15566667934\",\"postIds\":[2],\"roleIds\":[2],\"roles\":[{\"admin\":false,\"dataScope\":\"2\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\"}],\"sex\":\"0\",\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":3,\"userName\":\"zyp\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-04-05 15:25:30',398),
(7,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.edit()','PUT',1,'admin',NULL,'/system/user','127.0.0.1','内网IP','{\"admin\":false,\"avatar\":\"\",\"createBy\":\"admin\",\"createTime\":\"2023-04-04 21:05:27\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100,101\",\"children\":[],\"deptId\":105,\"deptName\":\"测试部门\",\"leader\":\"若依\",\"orderNum\":3,\"params\":{},\"parentId\":101,\"status\":\"0\"},\"deptId\":105,\"email\":\"yp@qq.com\",\"loginDate\":\"2023-04-04 21:05:27\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"xiyang\",\"params\":{},\"phonenumber\":\"15666666666\",\"postIds\":[2],\"remark\":\"测试员\",\"roleIds\":[2],\"roles\":[{\"admin\":false,\"dataScope\":\"2\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\"}],\"sex\":\"1\",\"status\":\"1\",\"updateBy\":\"admin\",\"userId\":2,\"userName\":\"ry\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-04-05 15:25:42',195),
(8,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.changeStatus()','PUT',1,'admin',NULL,'/system/user/changeStatus','127.0.0.1','内网IP','{\"admin\":false,\"params\":{},\"status\":\"0\",\"updateBy\":\"admin\",\"userId\":2}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-04-05 15:42:17',404),
(9,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.edit()','PUT',1,'zyp',NULL,'/system/role','127.0.0.1','内网IP','{\"admin\":false,\"createTime\":\"2023-04-04 21:05:37\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,104,1020,1021,1022,1023,1024,107,1035,1036,1037,1038,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,114,3,115,116,1055,1056,1057,1058,1059,1060,117],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"zyp\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-04-05 15:45:18',229),
(10,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.edit()','PUT',1,'admin',NULL,'/system/role','127.0.0.1','内网IP','{\"admin\":false,\"createTime\":\"2023-04-04 21:05:37\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,104,1020,1021,1022,1023,1024,107,1035,1036,1037,1038,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,114,3,115,116,1055,1056,1057,1058,1059,1060,117],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-04-05 15:46:07',202),
(11,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin',NULL,'/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createTime\":\"2023-04-04 21:05:43\",\"icon\":\"guide\",\"isCache\":\"0\",\"isFrame\":\"0\",\"menuId\":4,\"menuName\":\"百度官网\",\"menuType\":\"C\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"http://baidu.com\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-04-05 15:53:50',153),
(12,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin',NULL,'/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createBy\":\"admin\",\"icon\":\"qq\",\"isCache\":\"0\",\"isFrame\":\"0\",\"menuName\":\"QQ邮箱\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":4,\"path\":\"https://mail.qq.com/\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-04-05 15:57:20',163),
(13,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin',NULL,'/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createTime\":\"2023-04-04 21:05:43\",\"icon\":\"guide\",\"isCache\":\"0\",\"isFrame\":\"0\",\"menuId\":4,\"menuName\":\"百度官网\",\"menuType\":\"M\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"http://baidu.com\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-04-05 15:58:26',171),
(14,'用户管理',2,'com.ruoyi.web.controller.system.SysUserController.resetPwd()','PUT',1,'admin',NULL,'/system/user/resetPwd','127.0.0.1','内网IP','{\"admin\":false,\"params\":{},\"updateBy\":\"admin\",\"userId\":2}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-04-05 16:00:44',287),
(15,'部门管理',2,'com.ruoyi.web.controller.system.SysDeptController.edit()','PUT',1,'admin',NULL,'/system/dept','127.0.0.1','内网IP','{\"ancestors\":\"0\",\"children\":[],\"deptId\":100,\"deptName\":\"朝阳科技\",\"email\":\"yp@qq.com\",\"leader\":\"耀鹏\",\"orderNum\":0,\"params\":{},\"parentId\":0,\"phone\":\"15888888888\",\"status\":\"0\",\"updateBy\":\"admin\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-04-05 16:01:48',158),
(16,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin',NULL,'/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"我的消息\",\"menuType\":\"M\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"news\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-04-05 17:08:54',169),
(17,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin',NULL,'/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createTime\":\"2023-04-05 17:08:54\",\"icon\":\"peoples\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2001,\"menuName\":\"我的消息\",\"menuType\":\"C\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"news\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-04-05 17:10:40',212),
(18,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin',NULL,'/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createTime\":\"2023-04-04 21:05:43\",\"icon\":\"guide\",\"isCache\":\"0\",\"isFrame\":\"0\",\"menuId\":4,\"menuName\":\"百度官网\",\"menuType\":\"M\",\"orderNum\":5,\"params\":{},\"parentId\":0,\"path\":\"http://baidu.com\",\"perms\":\"\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-04-05 17:10:47',168),
(19,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.edit()','PUT',1,'admin',NULL,'/system/role','127.0.0.1','内网IP','{\"admin\":false,\"createTime\":\"2023-04-04 21:05:37\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,104,1020,1021,1022,1023,1024,107,1035,1036,1037,1038,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,114,2001],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-04-05 17:19:46',212),
(20,'用户头像',2,'com.ruoyi.web.controller.system.SysProfileController.avatar()','POST',1,'zyp',NULL,'/system/user/profile/avatar','127.0.0.1','内网IP','','{\"msg\":\"操作成功\",\"imgUrl\":\"/profile/avatar/2023/04/05/blob_20230405172143A001.png\",\"code\":200}',0,NULL,'2023-04-05 17:21:43',915),
(21,'个人信息',2,'com.ruoyi.web.controller.system.SysProfileController.updateProfile()','PUT',1,'zyp',NULL,'/system/user/profile','127.0.0.1','内网IP','{\"admin\":false,\"createBy\":\"zyp\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100\",\"children\":[],\"deptId\":101,\"deptName\":\"深圳总公司\",\"leader\":\"若依\",\"orderNum\":1,\"params\":{},\"parentId\":100,\"status\":\"0\"},\"email\":\"15211657xx@qq.com\",\"loginDate\":\"2023-04-05 15:44:02\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"xiyang\",\"params\":{},\"phonenumber\":\"15566667934\",\"roles\":[{\"admin\":false,\"dataScope\":\"2\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\"}],\"sex\":\"0\",\"status\":\"0\",\"userId\":3,\"userName\":\"zyp\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-04-05 17:22:05',207),
(22,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin',NULL,'/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"system/notice/index\",\"createTime\":\"2023-04-04 21:05:45\",\"icon\":\"message\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":107,\"menuName\":\"通知公告\",\"menuType\":\"C\",\"orderNum\":8,\"params\":{},\"parentId\":2001,\"path\":\"notice\",\"perms\":\"system:notice:list\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-04-05 17:23:25',179),
(23,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin',NULL,'/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"system/notice/index\",\"createTime\":\"2023-04-04 21:05:45\",\"icon\":\"message\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":107,\"menuName\":\"通知公告\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2001,\"path\":\"notice\",\"perms\":\"news:notice:list\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-04-05 17:24:56',158),
(24,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin',NULL,'/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"news/notice/index\",\"createTime\":\"2023-04-04 21:05:45\",\"icon\":\"message\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":107,\"menuName\":\"通知公告\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2001,\"path\":\"notice\",\"perms\":\"news:notice:list\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-04-05 17:25:49',128),
(25,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin',NULL,'/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createTime\":\"2023-04-05 17:08:54\",\"icon\":\"peoples\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2001,\"menuName\":\"我的消息\",\"menuType\":\"M\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"news\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-04-05 17:28:25',184),
(26,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.edit()','PUT',1,'admin',NULL,'/system/role','127.0.0.1','内网IP','{\"admin\":false,\"createTime\":\"2023-04-04 21:05:37\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,104,1020,1021,1022,1023,1024,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,114,2001,107,1035,1036,1037,1038],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-04-05 18:36:06',214),
(27,'通知公告',1,'com.ruoyi.web.controller.system.SysNoticeController.add()','POST',1,'zyp',NULL,'/system/notice','127.0.0.1','内网IP','{\"createBy\":\"zyp\",\"noticeContent\":\"<p>猜测是的公告内容</p>\",\"noticeTitle\":\"测试的通知公告\",\"noticeType\":\"1\",\"params\":{},\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-04-05 18:39:14',149),
(28,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.edit()','PUT',1,'admin',NULL,'/system/role','127.0.0.1','内网IP','{\"admin\":false,\"createTime\":\"2023-04-04 21:05:37\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,104,1020,1021,1022,1023,1024,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,114,2001,107,1035,1036,1037,1038],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-04-05 18:41:03',281),
(29,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin',NULL,'/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"\",\"createTime\":\"2023-04-04 21:05:55\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":1035,\"menuName\":\"公告查询\",\"menuType\":\"F\",\"orderNum\":1,\"params\":{},\"parentId\":107,\"path\":\"#\",\"perms\":\"news:notice:query\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-04-05 18:41:40',316),
(30,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin',NULL,'/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"\",\"createTime\":\"2023-04-04 21:05:55\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":1036,\"menuName\":\"公告新增\",\"menuType\":\"F\",\"orderNum\":2,\"params\":{},\"parentId\":107,\"path\":\"#\",\"perms\":\"news:notice:add\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-04-05 18:41:55',156),
(31,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin',NULL,'/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"\",\"createTime\":\"2023-04-04 21:05:55\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":1037,\"menuName\":\"公告修改\",\"menuType\":\"F\",\"orderNum\":3,\"params\":{},\"parentId\":107,\"path\":\"#\",\"perms\":\"news:notice:edit\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-04-05 18:42:03',183),
(32,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin',NULL,'/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"\",\"createTime\":\"2023-04-04 21:05:55\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":1038,\"menuName\":\"公告删除\",\"menuType\":\"F\",\"orderNum\":4,\"params\":{},\"parentId\":107,\"path\":\"#\",\"perms\":\"news:notice:remove\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-04-05 18:42:13',351),
(33,'在线用户',7,'com.ruoyi.web.controller.monitor.SysUserOnlineController.forceLogout()','DELETE',1,'zyp',NULL,'/monitor/online/a996e039-bd9c-41ea-b197-4b8c44d67058','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-04-05 18:44:43',1),
(34,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin',NULL,'/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"news/notice/index\",\"createTime\":\"2023-04-04 21:05:45\",\"icon\":\"message\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":107,\"menuName\":\"通知公告\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2001,\"path\":\"notice\",\"perms\":\"news:notice:list\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-04-05 18:48:14',204),
(35,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin',NULL,'/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"system/role/index\",\"createTime\":\"2023-04-04 21:05:43\",\"icon\":\"peoples\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":101,\"menuName\":\"角色管理\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":1,\"path\":\"role\",\"perms\":\"system:role:list\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-04-05 18:48:28',480),
(36,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin',NULL,'/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createTime\":\"2023-04-05 15:57:19\",\"icon\":\"qq\",\"isCache\":\"0\",\"isFrame\":\"0\",\"menuId\":2000,\"menuName\":\"QQ邮箱\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":4,\"path\":\"https://mail.qq.com/\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-04-05 18:50:45',163),
(37,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin',NULL,'/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"news/notice/index\",\"createTime\":\"2023-04-04 21:05:45\",\"icon\":\"message\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":107,\"menuName\":\"通知公告\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2001,\"path\":\"notice\",\"perms\":\"news:notice:list\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-04-05 19:17:29',156),
(38,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin',NULL,'/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createTime\":\"2023-04-05 17:08:54\",\"icon\":\"peoples\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2001,\"menuName\":\"我的消息\",\"menuType\":\"M\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"news\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-04-05 19:18:00',173),
(39,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin',NULL,'/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createTime\":\"2023-04-05 17:08:54\",\"icon\":\"peoples\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2001,\"menuName\":\"我的消息\",\"menuType\":\"M\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"news\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-04-05 19:18:39',110),
(40,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.edit()','PUT',1,'admin',NULL,'/system/role','127.0.0.1','内网IP','{\"admin\":false,\"createTime\":\"2023-04-04 21:05:37\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,3,104,1020,1021,1022,1023,1024,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,114,116,1055,1056,1057,1058,1059,1060,2001,107,1035,1036,1037,1038,4,2000],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-04-05 19:31:13',375),
(41,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin',NULL,'/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createTime\":\"2023-04-05 17:08:54\",\"icon\":\"user\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2001,\"menuName\":\"我的消息\",\"menuType\":\"M\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"news\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-04-05 19:32:41',356),
(42,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin',NULL,'/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"news/notice/index\",\"createTime\":\"2023-04-04 21:05:45\",\"icon\":\"message\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":107,\"menuName\":\"通知公告\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2001,\"path\":\"notice\",\"perms\":\"news:notice:list\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-04-05 19:38:52',179),
(43,'通知公告',1,'com.ruoyi.web.controller.news.SysNoticeController.add()','POST',1,'ry',NULL,'/news/notice','127.0.0.1','内网IP','{\"createBy\":\"ry\",\"noticeContent\":\"<p>通知公告的内容</p>\",\"noticeTitle\":\"ry用户通知公告\",\"noticeType\":\"1\",\"params\":{},\"status\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-04-05 19:40:44',188),
(44,'通知公告',2,'com.ruoyi.web.controller.news.SysNoticeController.edit()','PUT',1,'ry',NULL,'/news/notice','127.0.0.1','内网IP','{\"createBy\":\"admin\",\"createTime\":\"2023-04-04 21:07:53\",\"noticeContent\":\"<p>新版本内容</p>\",\"noticeId\":1,\"noticeTitle\":\"温馨提醒：2022-04-02 管理系统发布啦\",\"noticeType\":\"2\",\"params\":{},\"remark\":\"管理员\",\"status\":\"0\",\"updateBy\":\"ry\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-04-05 19:41:13',284),
(45,'通知公告',2,'com.ruoyi.web.controller.news.SysNoticeController.edit()','PUT',1,'ry',NULL,'/news/notice','127.0.0.1','内网IP','{\"createBy\":\"admin\",\"createTime\":\"2023-04-04 21:07:55\",\"noticeContent\":\"<p>维护内容</p>\",\"noticeId\":2,\"noticeTitle\":\"维护通知：2018-04-22 系统凌晨维护\",\"noticeType\":\"1\",\"params\":{},\"remark\":\"管理员\",\"status\":\"0\",\"updateBy\":\"ry\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-04-05 19:41:29',101),
(46,'通知公告',2,'com.ruoyi.web.controller.news.SysNoticeController.edit()','PUT',1,'ry',NULL,'/news/notice','127.0.0.1','内网IP','{\"createBy\":\"admin\",\"createTime\":\"2023-04-04 21:07:55\",\"noticeContent\":\"<p>维护内容</p>\",\"noticeId\":2,\"noticeTitle\":\"维护通知：2018-04-22 系统凌晨维护\",\"noticeType\":\"2\",\"params\":{},\"remark\":\"管理员\",\"status\":\"0\",\"updateBy\":\"ry\",\"updateTime\":\"2023-04-05 19:41:29\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-04-05 19:41:36',140),
(47,'个人信息',2,'com.ruoyi.web.controller.system.SysProfileController.updateProfile()','PUT',1,'ry',NULL,'/system/user/profile','127.0.0.1','内网IP','{\"admin\":false,\"createBy\":\"admin\",\"createTime\":\"2023-04-04 21:05:27\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100,101\",\"children\":[],\"deptId\":105,\"deptName\":\"测试部门\",\"leader\":\"若依\",\"orderNum\":3,\"params\":{},\"parentId\":101,\"status\":\"0\"},\"email\":\"yp@qq.com\",\"loginDate\":\"2023-04-05 15:43:32\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"xiyang\",\"params\":{},\"phonenumber\":\"15666666666\",\"remark\":\"测试员\",\"roles\":[{\"admin\":false,\"dataScope\":\"2\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\"}],\"sex\":\"1\",\"status\":\"0\",\"userId\":2,\"userName\":\"ry\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-04-05 19:53:20',167),
(48,'个人信息',2,'com.ruoyi.web.controller.system.SysProfileController.updateProfile()','PUT',1,'ry',NULL,'/system/user/profile','127.0.0.1','内网IP','{\"admin\":false,\"createBy\":\"admin\",\"createTime\":\"2023-04-04 21:05:27\",\"delFlag\":\"0\",\"dept\":{\"ancestors\":\"0,100,101\",\"children\":[],\"deptId\":105,\"deptName\":\"测试部门\",\"leader\":\"若依\",\"orderNum\":3,\"params\":{},\"parentId\":101,\"status\":\"0\"},\"email\":\"ry@qq.com\",\"loginDate\":\"2023-04-05 15:43:32\",\"loginIp\":\"127.0.0.1\",\"nickName\":\"ry\",\"params\":{},\"phonenumber\":\"15666666666\",\"remark\":\"测试员\",\"roles\":[{\"admin\":false,\"dataScope\":\"2\",\"deptCheckStrictly\":false,\"flag\":false,\"menuCheckStrictly\":false,\"params\":{},\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\"}],\"sex\":\"1\",\"status\":\"0\",\"userId\":2,\"userName\":\"ry\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-04-05 19:53:34',116),
(49,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.edit()','PUT',1,'admin',NULL,'/system/role','127.0.0.1','内网IP','{\"admin\":false,\"createTime\":\"2023-04-04 21:05:37\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,3,104,1020,1021,1022,1023,1024,106,1030,1031,1032,1033,1034,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,114,116,1055,1056,1057,1058,1059,1060,2001,107,1035,1036,1037,1038],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-04-05 19:56:05',164),
(50,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin',NULL,'/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createTime\":\"2023-04-05 17:08:54\",\"icon\":\"user\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2001,\"menuName\":\"消息中心\",\"menuType\":\"M\",\"orderNum\":4,\"params\":{},\"parentId\":0,\"path\":\"news\",\"perms\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-04-06 10:52:52',191),
(51,'代码生成',6,'com.ruoyi.generator.controller.GenController.importTableSave()','POST',1,'admin',NULL,'/tool/gen/importTable','127.0.0.1','内网IP','{\"tables\":\"sys_announcement,sys_announcement_send\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-04-06 10:56:14',583),
(52,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin',NULL,'/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"sys_announcement,sys_announcement_send\"}',NULL,0,NULL,'2023-04-06 10:56:22',745),
(53,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin',NULL,'/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"sys_announcement,sys_announcement_send\"}',NULL,0,NULL,'2023-04-06 11:03:09',297),
(54,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin',NULL,'/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createBy\":\"admin\",\"icon\":\"button\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"我的消息\",\"menuType\":\"M\",\"orderNum\":1,\"params\":{},\"parentId\":2001,\"path\":\"news\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-04-06 12:16:39',415),
(55,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin',NULL,'/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"news/notice/index\",\"createTime\":\"2023-04-04 21:05:45\",\"icon\":\"message\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":107,\"menuName\":\"通知公告\",\"menuType\":\"C\",\"orderNum\":2,\"params\":{},\"parentId\":2001,\"path\":\"notice\",\"perms\":\"news:notice:list\",\"query\":\"\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-04-06 12:17:03',215),
(56,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin',NULL,'/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"/news/announcement\",\"createTime\":\"2023-04-06 12:16:39\",\"icon\":\"button\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2002,\"menuName\":\"我的消息\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2001,\"path\":\"announcement\",\"perms\":\"news:announcement:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-04-06 12:18:36',385),
(57,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin',NULL,'/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"news/announcement\",\"createTime\":\"2023-04-06 12:16:39\",\"icon\":\"button\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2002,\"menuName\":\"我的消息\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2001,\"path\":\"announcement\",\"perms\":\"news:announcement:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-04-06 12:18:55',291),
(58,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin',NULL,'/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"news/announcement/index\",\"createTime\":\"2023-04-06 12:16:39\",\"icon\":\"button\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2002,\"menuName\":\"我的消息\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2001,\"path\":\"announcement\",\"perms\":\"news:announcement:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-04-06 12:19:40',210),
(59,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin',NULL,'/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"消息查询\",\"menuType\":\"F\",\"orderNum\":1,\"params\":{},\"parentId\":2002,\"perms\":\"news:announcement\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-04-06 12:22:18',239),
(60,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin',NULL,'/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createTime\":\"2023-04-06 12:22:18\",\"icon\":\"#\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2003,\"menuName\":\"消息查询\",\"menuType\":\"F\",\"orderNum\":1,\"params\":{},\"parentId\":2002,\"path\":\"\",\"perms\":\"news:announcement:query\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-04-06 12:22:46',208),
(61,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin',NULL,'/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"消息新增\",\"menuType\":\"F\",\"orderNum\":2,\"params\":{},\"parentId\":2002,\"perms\":\"news:announcement:add\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-04-06 12:23:32',168),
(62,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin',NULL,'/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"消息修改\",\"menuType\":\"F\",\"orderNum\":3,\"params\":{},\"parentId\":2002,\"perms\":\"news:announcement:edit\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-04-06 12:24:04',158),
(63,'菜单管理',1,'com.ruoyi.web.controller.system.SysMenuController.add()','POST',1,'admin',NULL,'/system/menu','127.0.0.1','内网IP','{\"children\":[],\"createBy\":\"admin\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuName\":\"消息删除\",\"menuType\":\"F\",\"orderNum\":4,\"params\":{},\"parentId\":2002,\"perms\":\"news:announcement:remove\",\"status\":\"0\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-04-06 12:24:46',191),
(64,'角色管理',2,'com.ruoyi.web.controller.system.SysRoleController.edit()','PUT',1,'admin',NULL,'/system/role','127.0.0.1','内网IP','{\"admin\":false,\"createTime\":\"2023-04-04 21:05:37\",\"dataScope\":\"2\",\"delFlag\":\"0\",\"deptCheckStrictly\":true,\"flag\":false,\"menuCheckStrictly\":true,\"menuIds\":[1,3,104,1020,1021,1022,1023,1024,106,1030,1031,1032,1033,1034,2,109,1046,1047,1048,110,1049,1050,1051,1052,1053,1054,111,112,113,114,116,1055,1056,1057,1058,1059,1060,2001,2002,2003,2004,2005,2006,107,1035,1036,1037,1038],\"params\":{},\"remark\":\"普通角色\",\"roleId\":2,\"roleKey\":\"common\",\"roleName\":\"普通角色\",\"roleSort\":2,\"status\":\"0\",\"updateBy\":\"admin\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-04-06 12:26:42',1145),
(65,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin',NULL,'/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"news/announcement/index\",\"createTime\":\"2023-04-06 12:16:39\",\"icon\":\"button\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2002,\"menuName\":\"我的消息\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2001,\"path\":\"announcement\",\"perms\":\"news:announcement:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-04-06 12:28:23',159),
(66,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin',NULL,'/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"news/announcement/index\",\"createTime\":\"2023-04-06 12:16:39\",\"icon\":\"button\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2002,\"menuName\":\"我的消息\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2001,\"path\":\"announcement\",\"perms\":\"news:announcement:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-04-06 12:33:12',165),
(67,'菜单管理',2,'com.ruoyi.web.controller.system.SysMenuController.edit()','PUT',1,'admin',NULL,'/system/menu','127.0.0.1','内网IP','{\"children\":[],\"component\":\"news/announcement/index\",\"createTime\":\"2023-04-06 12:16:39\",\"icon\":\"button\",\"isCache\":\"0\",\"isFrame\":\"1\",\"menuId\":2002,\"menuName\":\"我的消息\",\"menuType\":\"C\",\"orderNum\":1,\"params\":{},\"parentId\":2001,\"path\":\"announcement\",\"perms\":\"news:announcement:list\",\"status\":\"0\",\"updateBy\":\"admin\",\"visible\":\"0\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-04-06 12:39:09',131),
(68,'代码生成',3,'com.ruoyi.generator.controller.GenController.remove()','DELETE',1,'admin',NULL,'/tool/gen/2,3','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-04-06 14:19:56',748),
(69,'代码生成',6,'com.ruoyi.generator.controller.GenController.importTableSave()','POST',1,'admin',NULL,'/tool/gen/importTable','127.0.0.1','内网IP','{\"tables\":\"sys_announcement_send,sys_announcement\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-04-06 14:23:10',1104),
(70,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin',NULL,'/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"sys_announcement,sys_announcement_send\"}',NULL,0,NULL,'2023-04-06 14:23:46',119),
(71,'系统通告',5,'com.ruoyi.web.controller.news.SysAnnouncementController.export()','POST',1,'admin',NULL,'/news/announcement/export','127.0.0.1','内网IP','{\"pageSize\":\"10\",\"pageNum\":\"1\"}',NULL,0,NULL,'2023-04-06 16:32:16',6388),
(72,'系统通告',5,'com.ruoyi.web.controller.news.SysAnnouncementController.export()','POST',1,'admin',NULL,'/news/announcement/export','127.0.0.1','内网IP','{\"pageSize\":\"10\",\"pageNum\":\"1\"}',NULL,0,NULL,'2023-04-07 12:21:16',2732),
(73,'系统通告',3,'com.ruoyi.web.controller.news.SysAnnouncementController.remove()','DELETE',1,'admin',NULL,'/news/announcement/4','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-04-07 12:21:44',668),
(74,'系统通告',3,'com.ruoyi.web.controller.news.SysAnnouncementController.remove()','DELETE',1,'admin',NULL,'/news/announcement/33','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-04-07 14:42:44',546),
(75,'系统通告',1,'com.ruoyi.web.controller.news.SysAnnouncementController.add()','POST',1,'admin',NULL,'/news/announcement','127.0.0.1','内网IP','{\"createBy\":\"admin\",\"createTime\":\"2023-04-07 14:44:53\",\"endTime\":\"2020-05-30\",\"id\":36,\"msgAbstract\":\"重磅版本发布\",\"msgCategory\":\"1\",\"msgContent\":\"<h5>升级不兼容</h5><ul><li><br></li><li>1、升级 ant-design-vue 到最新版本 1.5.2，会导致使用disabled的组件不可用（需要全局替换disabled 为readOnly；另外原来readOnly不允许全小写）</li><li><br></li><li><br></li><li>2、JSearchSelectTag.vue行编辑的popup传参做了修改，需要全局替换 orgFieldse 为 orgFields</li><li><br></li><li><br></li><li>3、 项目删除了sass，全部换成 less，其中涉及/deep/语法得改造</li><li><br></li><li><br></li><li>4、 Online表单的填值规则用法修改了&nbsp;<a href=\\\"http://doc.jeecg.com/1630378\\\" rel=\\\"noopener noreferrer\\\" target=\\\"_blank\\\" style=\\\"color: rgb(65, 131, 196); background-color: transparent;\\\">文档</a></li><li><br></li></ul><h5>较大改造</h5><ul><li><br></li><li>登录的时候一次性加载系统字典，进行前端缓存，减少ajax重复请求</li><li><br></li><li><br></li><li>修改定时任务quartz配置</li><li><br></li><li><br></li><li>logback-spring.xml配置不按照日期和大小生成新日志文件问题修复</li><li><br></li><li><br></li><li>vue-cli3 编译打包进行zip压缩优化</li><li><br></li><li><br></li><li>根据index.html页面window._CONFIG[\'domianURL\']，指定 axios的 baseURL（所以vue的代理没有用了）</li><li><br></li><li><br></li><li>JEditableTable重构，新增获取值时应该把临时id去掉、行编辑修改不直接更改数据源的ID</li><li><br></li><li><br></li><li>Online模块重点优化升级、Online代码生成器重点优化升级</li><li><br></li></ul><h5>ONLINE升级</h5><ul><li><br></li><li>Online访问权限控制实现，如果online表单配置了菜单，则用户需要授权才能访问此表单</li><li><br></li><li><br></li><li>Online表单新增组件： 省市区地域组件、开关组件、三级联动(级联下拉)组件、markdown组件</li><li><br></li><li><br></li><li>Online表单弹窗宽度，根据不同的列数显示不同的宽度，实现更好的效果</li><li><br></li><li><br></li><li>Online 树表单功能一系列优化，比如数据列新增添加下级按钮功能、添加下级不自动展开列表等问题</li><li><br></li><li><br></li><li>Online JS增强编辑器支持放大，同时JS代码变更，增加版本记忆功能，方便追踪历史</li><li><br></li><li><br></li><li>Online JS增强支持lodash工具</li><li><br></li><li><br></li><li>Online控件 默认值表达式功能&nbsp;<a href=\\\"http://doc.jeecg.com/1630378\\\" rel=\\\"noopener noreferrer\\\" target=\\\"_blank\\\" style=\\\"color: rgb(65, 131, 196); background-color: transparent;\\\">文档</a></li><li><br></li><li><br></li><li>Online 增加Excel导入导出转换器配置，针对各种控件的导入导出做了统一处理</li><li><br></li><li><br></li>','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-04-07 14:44:55',1498),
(76,'系统通告',1,'com.ruoyi.web.controller.news.SysAnnouncementController.add()','POST',1,'admin',NULL,'/news/announcement','127.0.0.1','内网IP','{\"createBy\":\"admin\",\"createTime\":\"2023-04-07 14:44:51\",\"endTime\":\"2020-05-30\",\"id\":35,\"msgAbstract\":\"重磅版本发布\",\"msgCategory\":\"1\",\"msgContent\":\"<h5>升级不兼容</h5><ul><li><br></li><li>1、升级 ant-design-vue 到最新版本 1.5.2，会导致使用disabled的组件不可用（需要全局替换disabled 为readOnly；另外原来readOnly不允许全小写）</li><li><br></li><li><br></li><li>2、JSearchSelectTag.vue行编辑的popup传参做了修改，需要全局替换 orgFieldse 为 orgFields</li><li><br></li><li><br></li><li>3、 项目删除了sass，全部换成 less，其中涉及/deep/语法得改造</li><li><br></li><li><br></li><li>4、 Online表单的填值规则用法修改了&nbsp;<a href=\\\"http://doc.jeecg.com/1630378\\\" rel=\\\"noopener noreferrer\\\" target=\\\"_blank\\\" style=\\\"color: rgb(65, 131, 196); background-color: transparent;\\\">文档</a></li><li><br></li></ul><h5>较大改造</h5><ul><li><br></li><li>登录的时候一次性加载系统字典，进行前端缓存，减少ajax重复请求</li><li><br></li><li><br></li><li>修改定时任务quartz配置</li><li><br></li><li><br></li><li>logback-spring.xml配置不按照日期和大小生成新日志文件问题修复</li><li><br></li><li><br></li><li>vue-cli3 编译打包进行zip压缩优化</li><li><br></li><li><br></li><li>根据index.html页面window._CONFIG[\'domianURL\']，指定 axios的 baseURL（所以vue的代理没有用了）</li><li><br></li><li><br></li><li>JEditableTable重构，新增获取值时应该把临时id去掉、行编辑修改不直接更改数据源的ID</li><li><br></li><li><br></li><li>Online模块重点优化升级、Online代码生成器重点优化升级</li><li><br></li></ul><h5>ONLINE升级</h5><ul><li><br></li><li>Online访问权限控制实现，如果online表单配置了菜单，则用户需要授权才能访问此表单</li><li><br></li><li><br></li><li>Online表单新增组件： 省市区地域组件、开关组件、三级联动(级联下拉)组件、markdown组件</li><li><br></li><li><br></li><li>Online表单弹窗宽度，根据不同的列数显示不同的宽度，实现更好的效果</li><li><br></li><li><br></li><li>Online 树表单功能一系列优化，比如数据列新增添加下级按钮功能、添加下级不自动展开列表等问题</li><li><br></li><li><br></li><li>Online JS增强编辑器支持放大，同时JS代码变更，增加版本记忆功能，方便追踪历史</li><li><br></li><li><br></li><li>Online JS增强支持lodash工具</li><li><br></li><li><br></li><li>Online控件 默认值表达式功能&nbsp;<a href=\\\"http://doc.jeecg.com/1630378\\\" rel=\\\"noopener noreferrer\\\" target=\\\"_blank\\\" style=\\\"color: rgb(65, 131, 196); background-color: transparent;\\\">文档</a></li><li><br></li><li><br></li><li>Online 增加Excel导入导出转换器配置，针对各种控件的导入导出做了统一处理</li><li><br></li><li><br></li>','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-04-07 14:44:55',3417),
(77,'系统通告',3,'com.ruoyi.web.controller.news.SysAnnouncementController.remove()','DELETE',1,'admin',NULL,'/news/announcement/36','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-04-07 14:45:19',329),
(78,'代码生成',8,'com.ruoyi.generator.controller.GenController.batchGenCode()','GET',1,'admin',NULL,'/tool/gen/batchGenCode','127.0.0.1','内网IP','{\"tables\":\"sys_announcement\"}',NULL,0,NULL,'2023-05-02 16:07:26',2356),
(79,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin',NULL,'/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"announcement\",\"className\":\"SysAnnouncement\",\"columns\":[{\"capJavaField\":\"Id\",\"columnId\":37,\"columnName\":\"id\",\"columnType\":\"int(4)\",\"createBy\":\"admin\",\"createTime\":\"2023-04-06 14:23:10\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":true,\"insert\":true,\"isIncrement\":\"1\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"id\",\"javaType\":\"Integer\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"Titile\",\"columnComment\":\"标题\",\"columnId\":38,\"columnName\":\"titile\",\"columnType\":\"varchar(100)\",\"createBy\":\"admin\",\"createTime\":\"2023-04-06 14:23:10\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"titile\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"MsgContent\",\"columnComment\":\"内容\",\"columnId\":39,\"columnName\":\"msg_content\",\"columnType\":\"text\",\"createBy\":\"admin\",\"createTime\":\"2023-04-06 14:23:10\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"editor\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"msgContent\",\"javaType\":\"String\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"queryType\":\"EQ\",\"required\":false,\"sort\":3,\"superColumn\":false,\"tableId\":4,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"StartTime\",\"columnComment\":\"开始时间\",\"columnId\":40,\"columnName\":\"start_time\",\"columnType\":\"datetime\",\"createBy\":\"admin\",\"createTime\":\"2023-04-06 14:23:10\",\"dictType\":\"\",\"edit\":true,\"htmlType\":\"datetime\",\"increment\":false,\"insert\":true,\"isEdit\":\"1\",\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isList\":\"1\",\"isPk\":\"0\",\"isQuery\":\"1\",\"javaField\":\"startTime\",\"javaType\":\"Date\",\"list\":true,\"params\":{},\"pk\":false,\"query\":true,\"','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-05-02 16:13:17',616),
(80,'系统通告',1,'com.ruoyi.web.controller.news.SysAnnouncementController.add()','POST',1,'admin',NULL,'/news/announcement','127.0.0.1','内网IP','{\"createBy\":\"admin\",\"createTime\":\"2023-05-02 17:13:08\",\"endTime\":\"2020-05-30\",\"id\":37,\"msgAbstract\":\"重磅版本发布\",\"msgCategory\":\"1\",\"msgContent\":\"<h5>庆贺v1.0.0版本发布！</h5>\",\"msgType\":\"ALL\",\"params\":{},\"priority\":\"H\",\"sendStatus\":\"1\",\"sendTime\":\"2020-05-02\",\"sender\":\"admin\",\"startTime\":\"2020-05-01\",\"titile\":\"JeecgBoot 2.2.0版本发布\",\"updateBy\":\"admin\",\"updateTime\":\"2020-05-02 15:31:44\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-05-02 17:13:10',1938),
(81,'系统通告',1,'com.ruoyi.web.controller.news.SysAnnouncementController.add()','POST',1,'admin',NULL,'/news/announcement','127.0.0.1','内网IP','{\"createBy\":\"admin\",\"createTime\":\"2023-05-02 17:13:54\",\"endTime\":\"2020-05-30\",\"id\":38,\"msgAbstract\":\"重磅版本发布\",\"msgCategory\":\"1\",\"msgContent\":\"<h5>夕阳V1.0.0系统发布！</h5>\",\"msgType\":\"ALL\",\"params\":{},\"priority\":\"H\",\"sendStatus\":\"1\",\"sendTime\":\"2020-05-02\",\"sender\":\"admin\",\"startTime\":\"2020-05-01\",\"titile\":\"夕阳v1.0.0版本发布\",\"updateBy\":\"admin\",\"updateTime\":\"2020-05-02 15:31:44\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-05-02 17:13:55',380),
(82,'系统通告',3,'com.ruoyi.web.controller.news.SysAnnouncementController.remove()','DELETE',1,'admin',NULL,'/news/announcement/1','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-05-02 17:14:09',743),
(83,'系统通告',5,'com.ruoyi.web.controller.news.SysAnnouncementController.export()','POST',1,'admin',NULL,'/news/announcement/export','127.0.0.1','内网IP','{\"pageSize\":\"10\",\"pageNum\":\"1\"}',NULL,0,NULL,'2023-05-02 17:46:34',14920),
(84,'系统通告',5,'com.ruoyi.web.controller.news.SysAnnouncementController.export()','POST',1,'admin',NULL,'/news/announcement/export','127.0.0.1','内网IP','{\"pageSize\":\"10\",\"pageNum\":\"1\"}',NULL,0,NULL,'2023-05-02 17:46:34',524),
(85,'代码生成',6,'com.ruoyi.generator.controller.GenController.importTableSave()','POST',1,'admin',NULL,'/tool/gen/importTable','127.0.0.1','内网IP','{\"tables\":\"sys_user_post\"}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-05-02 18:03:40',1783),
(86,'代码生成',2,'com.ruoyi.generator.controller.GenController.editSave()','PUT',1,'admin',NULL,'/tool/gen','127.0.0.1','内网IP','{\"businessName\":\"post\",\"className\":\"SysUserPost\",\"columns\":[{\"capJavaField\":\"UserId\",\"columnComment\":\"用户ID\",\"columnId\":64,\"columnName\":\"user_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-02 18:03:40\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"userId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":1,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"usableColumn\":false},{\"capJavaField\":\"PostId\",\"columnComment\":\"岗位ID\",\"columnId\":65,\"columnName\":\"post_id\",\"columnType\":\"bigint(20)\",\"createBy\":\"admin\",\"createTime\":\"2023-05-02 18:03:40\",\"dictType\":\"\",\"edit\":false,\"htmlType\":\"input\",\"increment\":false,\"insert\":true,\"isIncrement\":\"0\",\"isInsert\":\"1\",\"isPk\":\"1\",\"javaField\":\"postId\",\"javaType\":\"Long\",\"list\":false,\"params\":{},\"pk\":true,\"query\":false,\"queryType\":\"EQ\",\"required\":false,\"sort\":2,\"superColumn\":false,\"tableId\":6,\"updateBy\":\"\",\"usableColumn\":false}],\"crud\":true,\"functionAuthor\":\"ruoyi\",\"functionName\":\"用户与岗位关联\",\"genPath\":\"/\",\"genType\":\"0\",\"moduleName\":\"news\",\"options\":\"{}\",\"packageName\":\"com.ruoyi.news\",\"params\":{},\"sub\":false,\"tableComment\":\"用户与岗位关联表\",\"tableId\":6,\"tableName\":\"sys_user_post\",\"tplCategory\":\"crud\",\"tree\":false}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-05-02 18:03:53',334),
(87,'代码生成',2,'com.ruoyi.generator.controller.GenController.synchDb()','GET',1,'admin',NULL,'/tool/gen/synchDb/sys_user_post','127.0.0.1','内网IP','{}','{\"msg\":\"操作成功\",\"code\":200}',0,NULL,'2023-05-02 18:04:00',299);

/*Table structure for table `sys_post` */

DROP TABLE IF EXISTS `sys_post`;

CREATE TABLE `sys_post` (
  `post_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '岗位ID',
  `post_code` varchar(64) NOT NULL COMMENT '岗位编码',
  `post_name` varchar(50) NOT NULL COMMENT '岗位名称',
  `post_sort` int(4) NOT NULL COMMENT '显示顺序',
  `status` char(1) NOT NULL COMMENT '状态（0正常 1停用）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`post_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='岗位信息表';

/*Data for the table `sys_post` */

insert  into `sys_post`(`post_id`,`post_code`,`post_name`,`post_sort`,`status`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values 
(1,'ceo','董事长',1,'0','admin','2023-04-04 21:05:30','',NULL,''),
(2,'se','项目经理',2,'0','admin','2023-04-04 21:05:31','',NULL,''),
(3,'hr','人力资源',3,'0','admin','2023-04-04 21:05:32','',NULL,''),
(4,'user','普通员工',4,'0','admin','2023-04-04 21:05:32','',NULL,'');

/*Table structure for table `sys_role` */

DROP TABLE IF EXISTS `sys_role`;

CREATE TABLE `sys_role` (
  `role_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '角色ID',
  `role_name` varchar(30) NOT NULL COMMENT '角色名称',
  `role_key` varchar(100) NOT NULL COMMENT '角色权限字符串',
  `role_sort` int(4) NOT NULL COMMENT '显示顺序',
  `data_scope` char(1) DEFAULT '1' COMMENT '数据范围（1：全部数据权限 2：自定数据权限 3：本部门数据权限 4：本部门及以下数据权限）',
  `menu_check_strictly` tinyint(1) DEFAULT '1' COMMENT '菜单树选择项是否关联显示',
  `dept_check_strictly` tinyint(1) DEFAULT '1' COMMENT '部门树选择项是否关联显示',
  `status` char(1) NOT NULL COMMENT '角色状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`role_id`)
) ENGINE=InnoDB AUTO_INCREMENT=100 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色信息表';

/*Data for the table `sys_role` */

insert  into `sys_role`(`role_id`,`role_name`,`role_key`,`role_sort`,`data_scope`,`menu_check_strictly`,`dept_check_strictly`,`status`,`del_flag`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values 
(1,'超级管理员','admin',1,'1',1,1,'0','0','admin','2023-04-04 21:05:36','',NULL,'超级管理员'),
(2,'普通角色','common',2,'2',1,1,'0','0','admin','2023-04-04 21:05:37','admin','2023-04-06 12:26:40','普通角色');

/*Table structure for table `sys_role_dept` */

DROP TABLE IF EXISTS `sys_role_dept`;

CREATE TABLE `sys_role_dept` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `dept_id` bigint(20) NOT NULL COMMENT '部门ID',
  PRIMARY KEY (`role_id`,`dept_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色和部门关联表';

/*Data for the table `sys_role_dept` */

insert  into `sys_role_dept`(`role_id`,`dept_id`) values 
(2,100),
(2,101),
(2,105);

/*Table structure for table `sys_role_menu` */

DROP TABLE IF EXISTS `sys_role_menu`;

CREATE TABLE `sys_role_menu` (
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  `menu_id` bigint(20) NOT NULL COMMENT '菜单ID',
  PRIMARY KEY (`role_id`,`menu_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='角色和菜单关联表';

/*Data for the table `sys_role_menu` */

insert  into `sys_role_menu`(`role_id`,`menu_id`) values 
(2,1),
(2,2),
(2,3),
(2,104),
(2,106),
(2,107),
(2,109),
(2,110),
(2,111),
(2,112),
(2,113),
(2,114),
(2,116),
(2,1020),
(2,1021),
(2,1022),
(2,1023),
(2,1024),
(2,1030),
(2,1031),
(2,1032),
(2,1033),
(2,1034),
(2,1035),
(2,1036),
(2,1037),
(2,1038),
(2,1046),
(2,1047),
(2,1048),
(2,1049),
(2,1050),
(2,1051),
(2,1052),
(2,1053),
(2,1054),
(2,1055),
(2,1056),
(2,1057),
(2,1058),
(2,1059),
(2,1060),
(2,2001),
(2,2002),
(2,2003),
(2,2004),
(2,2005),
(2,2006);

/*Table structure for table `sys_test` */

DROP TABLE IF EXISTS `sys_test`;

CREATE TABLE `sys_test` (
  `id` bigint(32) unsigned zerofill NOT NULL AUTO_INCREMENT COMMENT '主键id',
  `name` varchar(20) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL COMMENT '姓名',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

/*Data for the table `sys_test` */

insert  into `sys_test`(`id`,`name`) values 
(00000000000000000000000000000001,'2'),
(00000000000000000000000000000002,'3');

/*Table structure for table `sys_user` */

DROP TABLE IF EXISTS `sys_user`;

CREATE TABLE `sys_user` (
  `user_id` bigint(20) NOT NULL AUTO_INCREMENT COMMENT '用户ID',
  `dept_id` bigint(20) DEFAULT NULL COMMENT '部门ID',
  `user_name` varchar(30) NOT NULL COMMENT '用户账号',
  `nick_name` varchar(30) NOT NULL COMMENT '用户昵称',
  `user_type` varchar(2) DEFAULT '00' COMMENT '用户类型（00系统用户）',
  `email` varchar(50) DEFAULT '' COMMENT '用户邮箱',
  `phonenumber` varchar(11) DEFAULT '' COMMENT '手机号码',
  `sex` char(1) DEFAULT '0' COMMENT '用户性别（0男 1女 2未知）',
  `avatar` varchar(100) DEFAULT '' COMMENT '头像地址',
  `password` varchar(100) DEFAULT '' COMMENT '密码',
  `status` char(1) DEFAULT '0' COMMENT '帐号状态（0正常 1停用）',
  `del_flag` char(1) DEFAULT '0' COMMENT '删除标志（0代表存在 2代表删除）',
  `login_ip` varchar(128) DEFAULT '' COMMENT '最后登录IP',
  `login_date` datetime DEFAULT NULL COMMENT '最后登录时间',
  `create_by` varchar(64) DEFAULT '' COMMENT '创建者',
  `create_time` datetime DEFAULT NULL COMMENT '创建时间',
  `update_by` varchar(64) DEFAULT '' COMMENT '更新者',
  `update_time` datetime DEFAULT NULL COMMENT '更新时间',
  `remark` varchar(500) DEFAULT NULL COMMENT '备注',
  PRIMARY KEY (`user_id`)
) ENGINE=InnoDB AUTO_INCREMENT=101 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户信息表';

/*Data for the table `sys_user` */

insert  into `sys_user`(`user_id`,`dept_id`,`user_name`,`nick_name`,`user_type`,`email`,`phonenumber`,`sex`,`avatar`,`password`,`status`,`del_flag`,`login_ip`,`login_date`,`create_by`,`create_time`,`update_by`,`update_time`,`remark`) values 
(1,103,'admin','xiyang','00','yp@163.com','15888887934','0','/profile/avatar/2023/04/05/blob_20230405093715A001.png','$2a$10$7JB720yubVSZvUI0rEqK/.VqGOZTH.ulu33dHOiBE8ByOhJIrdAu2','0','0','127.0.0.1','2023-05-02 17:41:42','admin','2023-04-04 21:05:26','','2023-05-02 17:41:41','管理员'),
(2,105,'ry','ry','00','ry@qq.com','15666666666','1','','$2a$10$lJQMkdYqI34Vp3vqgw65k.RrOdNcPo.6loBBVSvdTL8yBAAkkNhuS','0','0','127.0.0.1','2023-04-05 15:43:32','admin','2023-04-04 21:05:27','admin','2023-04-05 19:53:34','测试员'),
(3,101,'zyp','xiyang','00','15211657xx@qq.com','15566667934','0','/profile/avatar/2023/04/05/blob_20230405172143A001.png','$2a$10$64lXxBbq1wHcSd7pIDeoLuRj5/qLBDVqdy5yIMOpQk7g8lpqTKc12','0','0','127.0.0.1','2023-04-05 19:39:16','zyp',NULL,'admin','2023-04-05 19:39:16',NULL);

/*Table structure for table `sys_user_post` */

DROP TABLE IF EXISTS `sys_user_post`;

CREATE TABLE `sys_user_post` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `post_id` bigint(20) NOT NULL COMMENT '岗位ID',
  PRIMARY KEY (`user_id`,`post_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户与岗位关联表';

/*Data for the table `sys_user_post` */

insert  into `sys_user_post`(`user_id`,`post_id`) values 
(1,1),
(2,2),
(3,2);

/*Table structure for table `sys_user_role` */

DROP TABLE IF EXISTS `sys_user_role`;

CREATE TABLE `sys_user_role` (
  `user_id` bigint(20) NOT NULL COMMENT '用户ID',
  `role_id` bigint(20) NOT NULL COMMENT '角色ID',
  PRIMARY KEY (`user_id`,`role_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='用户和角色关联表';

/*Data for the table `sys_user_role` */

insert  into `sys_user_role`(`user_id`,`role_id`) values 
(1,1),
(2,2),
(3,2);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
