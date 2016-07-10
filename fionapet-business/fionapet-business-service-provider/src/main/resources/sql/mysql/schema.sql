-- CREATE DATABASE IF NOT EXISTS fiona_pet_business DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
-- ----------------------------
-- Table structure for t_pet_race 宠物种类
-- ----------------------------
DROP TABLE IF EXISTS `t_pet_race`;
CREATE TABLE `t_pet_race` (
  `uuid` VARCHAR(36) NOT NULL,
  `name` varchar(64) NOT NULL,
  `create_user_id` varchar(36) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user_id` varchar(36) NOT NULL,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`uuid`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_pet_small_race 宠物类型
-- ----------------------------
DROP TABLE IF EXISTS `t_pet_small_race`;
CREATE TABLE `t_pet_small_race` (
  `uuid` VARCHAR(36) NOT NULL,
  `type` varchar(64) NOT NULL,
  `pet_race_id` VARCHAR(36) NOT NULL,
  `create_user_id` varchar(36) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user_id` varchar(36) NOT NULL,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`uuid`),
  UNIQUE KEY `type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_warehouse 仓库
-- ----------------------------
DROP TABLE IF EXISTS `t_warehouse`;
CREATE TABLE `t_warehouse` (
  `uuid` VARCHAR(36) NOT NULL,
  `code` varchar(64) NOT NULL,
  `name` VARCHAR(36) NOT NULL,
  `remark` VARCHAR(36),
  `drug_store` BOOLEAN DEFAULT TRUE,-- 药库
  `sell_store` BOOLEAN DEFAULT TRUE,-- 销售库
  `create_user_id` varchar(36) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user_id` varchar(36) NOT NULL,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


-- ----------------------------
-- Table structure for t_item_cate 商品服务种类
-- ----------------------------
DROP TABLE IF EXISTS `t_item_cate`;
CREATE TABLE `t_item_cate` (
  `uuid` VARCHAR(36) NOT NULL,
  `cate_no` varchar(50),-- 种类业务编号
  `parent_id` VARCHAR(36), -- 父类ID
  `cate_name` VARCHAR(50), -- 种类业务名称
  `busi_type_id` VARCHAR(36),-- 业务类型ID
  `single_profit` DOUBLE ,-- 零售预期毛利
  `create_user_id` varchar(36) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user_id` varchar(36) NOT NULL,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;



-- ----------------------------
-- Table structure for t_busines_cate 业务类型表
-- ----------------------------
DROP TABLE IF EXISTS `t_busines_cate`;
CREATE TABLE `t_busines_cate` (
  `uuid` VARCHAR(36) NOT NULL,
  `cate_name` varchar(50) NOT NULL,-- 业务类型名称
  `create_user_id` varchar(36) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user_id` varchar(36) NOT NULL,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ---------------------------- --
-- Table structure for t_item_type 商品类型 
-- ---------------------------- --
DROP TABLE IF EXISTS `t_item_type`;
CREATE TABLE t_item_type
(
  uuid VARCHAR(36) PRIMARY KEY NOT NULL,
  item_code VARCHAR(50),-- 商品编号
  item_name VARCHAR(100),-- 商品名称
  cate_no VARCHAR(50),
  package_unit VARCHAR(50),
  recipe_unit VARCHAR(50),
  item_standard VARCHAR(50),
  item_style VARCHAR(50),
  bar_code VARCHAR(50),
  busi_type_id VARCHAR(36),
  item_bulk INT(11),
  input_price DOUBLE,
  dealer_code VARCHAR(50),
  dealer_name VARCHAR(100),
  sell_price DOUBLE,
  is_vip_discount VARCHAR(50),
  vip_sell_price DOUBLE,
  is_sell VARCHAR(50),
  is_count VARCHAR(50),
  recipe_price DOUBLE,
  drug_form VARCHAR(50),
  ware_up_limit INT(11),
  ware_down_limit INT(11),
  safe_day INT(11),
  use_way VARCHAR(5000),
  group_name VARCHAR(50),
  remark VARCHAR(5000),
  input_code VARCHAR(50),
  is_scattered DOUBLE,
  location VARCHAR(200),
  is_can_exchange VARCHAR(50),
  exchange_reward_point INT(11),
  create_user_id VARCHAR(36) NOT NULL,
  create_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
  update_user_id VARCHAR(36) NOT NULL,
  update_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
  status VARCHAR(32) DEFAULT 'OK' NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

----------------------------
-- Table structure for t_gest_level 会员等级管理
-- ----------------------------
DROP TABLE IF EXISTS `t_gest_level`;
CREATE TABLE `t_gest_level` (
  `uuid` VARCHAR(36) NOT NULL,
  `level_code` varchar(50)  NULL,-- 等级编号
  `level_name` varchar(50)  NULL,-- 等级名称
  `is_credit` varchar(50)  NULL,-- 信用是否生效
  `is_discount` varchar(50)  NULL,-- 是否折扣
  `discount_rate` varchar(50)  NULL,-- 折扣比率
  `remark` varchar(100)  NULL,-- 备注
  `create_user_id` varchar(36) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user_id` varchar(36) NOT NULL,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

----------------------------
-- Table structure for t_user_dict_detail 数据字典 字典明细项
-- ----------------------------
DROP TABLE IF EXISTS `t_user_dict_detail`;
CREATE TABLE `t_user_dict_detail` (
  `uuid` VARCHAR(36) NOT NULL,
  `dict_type_id` varchar(36)  NULL,-- 字典类型ID t_user_dict表uuid关联
  `dict_detail_code` varchar(50)  NULL,-- 字典明细编号
  `value_name_CN` varchar(50)  NULL,-- 中文名称
  `value_name_EN` varchar(50)  NULL,-- 英文名称
  `sort` INTEGER  DEFAULT 0,-- 排序
  `comments` varchar(100) null,-- 说明
  `create_user_id` varchar(36) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user_id` varchar(36) NOT NULL,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


----------------------------
-- Table structure for t_user_dict  应用字典大类
-- ----------------------------
DROP TABLE IF EXISTS `t_user_dict`;
CREATE TABLE `t_user_dict` (
  `uuid` VARCHAR(36) NOT NULL,
  `dict_name` varchar(50)  NULL,-- 字典名称
  `can_edit` varchar(5)  NULL,-- 可编辑
  `can_view` varchar(5)  NULL,-- 可展示
  `sort` INTEGER  DEFAULT 0,-- 排序
  `create_user_id` varchar(36) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user_id` varchar(36) NOT NULL,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

---------------------------
-- Table structure for t_dict_type_detail  宠物字典类型明细
-- ----------------------------
DROP TABLE IF EXISTS `t_dict_type_detail`;
CREATE TABLE `t_dict_type_detail` (
  `uuid` VARCHAR(36) NOT NULL,
  `dict_type_id` varchar(36)  NULL,-- 字典类型ID 关联t_dict_type表UUID
  `dict_detail_code` varchar(50)  NULL,-- 编号
  `value_name_CN` varchar(50)  NULL,-- 中文名
  `value_name_EN` varchar(50)  NULL ,-- 英文名
  `comments` varchar(100)  NULL ,-- 描述
  `create_user_id` varchar(36) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user_id` varchar(36) NOT NULL,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-------------------------------------------
-- Table structure for t_dict_type  字典类型
-------------------------------------------
DROP TABLE IF EXISTS `t_dict_type`;
CREATE TABLE `t_dict_type` (
  `uuid` VARCHAR(36) NOT NULL,
  `dict_name` varchar(50)  NULL,-- 字典名称
  `create_user_id` varchar(36) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user_id` varchar(36) NOT NULL,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

----------------------------
-- Table structure for t_item_discount_rate 业务类型打折率
-- ----------------------------
DROP TABLE IF EXISTS `t_item_discount_rate`;
CREATE TABLE `t_item_discount_rate` (
  `uuid` VARCHAR(36) NOT NULL,
  `level_code` varchar(50)  NULL,-- 等级编号
  `cate_no` varchar(50)  NULL,-- 业务类型编号
  `discount_rate` varchar(50)  NULL,-- 折扣比率
  `create_user_id` varchar(36) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user_id` varchar(36) NOT NULL,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

----------------------------
-- Table structure for t_app_config 提醒配置表
-- ----------------------------
DROP TABLE IF EXISTS `t_app_config`;
CREATE TABLE `t_app_config` (
  `uuid` VARCHAR(36) NOT NULL,
  `config_name` varchar(500)  NULL,-- 名称
  `config_value` varchar(1000)  NULL,-- 提醒内容
  `description` varchar(1000)  NULL,-- 描述 模版
  `create_user_id` varchar(36) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user_id` varchar(36) NOT NULL,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

----------------------------
-- Table structure for t_trprescription_template_type 处方模版类型
-- ----------------------------
DROP TABLE IF EXISTS `t_trprescription_template_type`;
CREATE TABLE `t_trprescription_template_type` (
  `uuid` VARCHAR(36) NOT NULL,
  `type_no` varchar(50)  NULL,-- 编号
  `parent_id` varchar(36)  NULL,-- 上级ID号
  `type_name` varchar(50)  NULL,-- 处方名称
  `gest_id` varchar(50)  NULL,-- 宠物主人ID
  `create_user_id` varchar(36) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user_id` varchar(36) NOT NULL,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

----------------------------
-- Table structure for t_trprescription_template_detail 处方模版明细
-- ----------------------------
DROP TABLE IF EXISTS `t_trprescription_template_detail`;
CREATE TABLE `t_trprescription_template_detail` (
  `uuid` VARCHAR(36) NOT NULL,
  `template_id` varchar(36)  NULL,-- 模版ID
  `template_no` varchar(50)  NULL,-- 模版编号
  `item_code` varchar(50)  NULL,-- 商品类型 ID t_item_type表item_code
  `item_name` varchar(50)  null,-- 商品类型 名称
  `item_num` varchar(50)  null,-- 商品类型 数量
  `sell_price` varchar(50)  null,-- 销售价格
  `recipe_unit` varchar(50)  null,-- 食谱剂量单位 处方单位
  `use_way` varchar(50)  null,-- 食用方式
  `gest_id` varchar(50)  null,-- 主人id
  `item_style` varchar(50)  NULL,-- 商品服务种类t_item_cate 表cate_name
  `create_user_id` varchar(36) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user_id` varchar(36) NOT NULL,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

----------------------------
-- Table structure for t_trprescription_template 处方模版明细
-- ----------------------------
DROP TABLE IF EXISTS `t_trprescription_template`;
CREATE TABLE `t_trprescription_template` (
  `uuid` VARCHAR(36) NOT NULL,
  `type_id` varchar(36)  NULL,-- 类型ID
  `type_no` varchar(50)  NULL,-- 类型编号
  `template_no` varchar(50)  NULL,-- 模版编号
  `template_name` varchar(50)  NULL,-- 模版名称
  `bar_code` varchar(100)  null,-- 条码
  `gest_id` varchar(50)  null,-- 主人ID
  `suggest` varchar(500)  null,-- 建议
  `create_user_id` varchar(36) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user_id` varchar(36) NOT NULL,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

----------------------------
-- Table structure for t_role 登陆角色
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `uuid` VARCHAR(36) NOT NULL,
  `role_code` varchar(50)  NULL,-- 角色编号
  `role_name` varchar(100)  NULL,-- 角色名称
  `role_desc` varchar(1000)  NULL,-- 角色描述
  `create_user_id` varchar(36) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user_id` varchar(36) NOT NULL,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

----------------------------
-- Table structure for t_role_right 角色权限表
-- ----------------------------
DROP TABLE IF EXISTS `t_role_right`;
CREATE TABLE `t_role_right` (
  `uuid` VARCHAR(36) NOT NULL,
  `role_id` varchar(50)  NULL,-- 角色ID表t_role的ID
  `modul_id` varchar(100)  NULL,-- 模块t_menu_fun_module表ID
  `create_user_id` varchar(36) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user_id` varchar(36) NOT NULL,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

----------------------------
-- Table structure for t_prescription_template_type
-- ----------------------------
DROP TABLE IF EXISTS `t_prescription_template_type`;
CREATE TABLE `t_prescription_template_type` (
  `uuid` VARCHAR(36) NOT NULL,
  `type_no` varchar(50)  NULL,-- 类型编号
  `parent_id` varchar(36)  NULL,-- 上级ID
  `type_name` varchar(50)  NULL,-- 类型名称
  `gest_id` varchar(36)  NULL,-- 主人ID
  `create_user_id` varchar(36) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user_id` varchar(36) NOT NULL,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

----------------------------
-- Table structure for t_prescription_template_detail
-- ----------------------------
DROP TABLE IF EXISTS `t_prescription_template_detail`;
CREATE TABLE `t_prescription_template_detail` (
  `uuid` VARCHAR(36) NOT NULL,
  `template_id` varchar(36)  NULL,-- 模版ID
  `template_no` varchar(50)  NULL,-- 模版编号
  `item_code` varchar(50)  NULL,-- 商品类型 ID t_item_type表item_code
  `item_name` varchar(50)  null,-- 商品类型 名称
  `item_num` varchar(50)  null,-- 商品类型 数量
  `sell_price` varchar(50)  null,-- 销售价格
  `recipe_unit` varchar(50)  null,-- 食谱剂量单位 处方单位
  `use_way` varchar(50)  null,-- 食用方式
  `gest_id` varchar(50)  null,-- 主人id
  `item_style` varchar(50)  NULL,-- 商品服务种类t_item_cate 表cate_name
  `create_user_id` varchar(36) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user_id` varchar(36) NOT NULL,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

----------------------------
-- Table structure for t_prescription_template 处方模版明细
-- ----------------------------
DROP TABLE IF EXISTS `t_prescription_template`;
CREATE TABLE `t_prescription_template` (
  `uuid` VARCHAR(36) NOT NULL,
  `type_id` varchar(36)  NULL,-- 类型ID
  `type_no` varchar(50)  NULL,-- 类型编号
  `template_no` varchar(50)  NULL,-- 模版编号
  `template_name` varchar(50)  NULL,-- 模版名称
  `bar_code` varchar(100)  null,-- 条码
  `gest_id` varchar(50)  null,-- 主人ID
  `create_user_id` varchar(36) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user_id` varchar(36) NOT NULL,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

----------------------------
-- Table structure for t_pet 宠物
-- ----------------------------
DROP TABLE IF EXISTS `t_pet`;
CREATE TABLE `t_pet` (
  `uuid` VARCHAR(36) NOT NULL,
  `pet_code` varchar(50)  NULL,-- 宠物编号
  `gest_id` varchar(36)  NULL,-- 主人ID
  `gest_code` varchar(50)  null,-- 主人编号
  `gest_name` varchar(50)  null,-- 主人名称
  `pet_name` varchar(100)  null,-- 宠物名称
  `pet_sex` varchar(50)  null,-- 宠物性别
  `pet_birthday` date  null,-- 宠物生日
  `age` varchar(20) null ,-- 宠物年龄
  `pet_skin_color` varchar(50)  null,-- 宠物皮肤颜色
  `pet_race` varchar(50)  null,-- 宠物跑赛
  `pet_breed` varchar(50)  null,-- 宠物饲养
  `pet_weight` varchar(50)  null,-- 宠物重量
  `pet_height` varchar(50)  null,-- 宠物高度
  `pet_swidth` varchar(50)  null,-- 宠物宽度
  `pet_body_long` varchar(50)  null,-- 宠物长度
  `sick_file_code` varchar(50)  null,-- 宠物状态
  `birth_status` varchar(50)  null,-- 宠物生日状态
  `pet_head` varchar(36)  null,-- 宠物头像
  `pet_head_id` varchar(36)  null,-- 宠物头像id
  `dog_band_id` varchar(36)  null,-- 宠物id
  `mdic_type_name` varchar(50)  null,-- 医生类型名称
  `remark` varchar(100)  null,-- 说明
  `create_user_id` varchar(36) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user_id` varchar(36) NOT NULL,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

----------------------------
-- Table structure for t_persons_cm_app
-- ----------------------------
DROP TABLE IF EXISTS `t_persons_cm_app`;
CREATE TABLE `t_persons_cm_app` (
  `uuid` VARCHAR(36) NOT NULL,
  `request_id` varchar(36)  NULL,
  `person_id` varchar(36)  NULL,
  `focus_date` DATE NULL,
  `AM` varchar(50) NULL,
  `PM` varchar(50)  NULL,
  `remark` varchar(500)  NULL,
  `create_user_id` varchar(36) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user_id` varchar(36) NOT NULL,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

----------------------------
-- Table structure for t_persons_appointment
-- ----------------------------
DROP TABLE IF EXISTS `t_persons_appointment`;
CREATE TABLE `t_persons_appointment` (
  `uuid` VARCHAR(36) NOT NULL,
  `request_id` varchar(36)  NULL,
  `persons_cm_app_request_id` varchar(36)  NULL,
  `pet_name` varchar(50) NULL,
  `pet_age` varchar(50) NULL,
  `symptom` varchar(500)  NULL,
  `want_help` varchar(500)  NULL,
  `create_user_id` varchar(36) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user_id` varchar(36) NOT NULL,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
----------------------------
-- Table structure for t_persons 宠物主人信息
-- ----------------------------
DROP TABLE IF EXISTS `t_persons`;
CREATE TABLE `t_persons` (
  `uuid` VARCHAR(36) NOT NULL,
  `person_code` varchar(50)  NULL,
  `person_name` varchar(200)  NULL,
  `password` varchar(100) NULL,
  `login_app_type` varchar(50) NULL,
  `login_account_type` varchar(50)  NULL,
  `pwd_failed_count` varchar(50)  NULL,
  `change_start_reason` varchar(400)  NULL,
  `org_id` varchar(36)  NULL,
  `id_card_type` varchar(36)  NULL,
  `sex` varchar(50)  NULL,
  `mobile_phone` varchar(50)  NULL,
  `emergency_phone` varchar(50)  NULL,
  `id_card_number` varchar(100)  NULL,
  `office_email` varchar(50)  NULL,
  `address` varchar(100)  NULL,
  `office_address` varchar(100)  NULL,
  `person_status` varchar(50)  NULL,
  `is_doctor` varchar(100)  NULL,
  `is_nurse` varchar(50)  NULL,
  `is_seller` varchar(50)  NULL,
  `role_id` varchar(1000)  NULL,
  `authorization_code` varchar(100)  NULL,
  `is_sync_eas` varchar(36)  NULL,
  `birthday` DATE  NULL,
  `person_right` varchar(1000)  NULL,
  `Images` varchar(100)  NULL,
  `descibe` varchar(100)  NULL,
  `isno_appo_int` INTEGER  NULL,
  `emploee_head_id` varchar(36)  NULL,
  `create_user_id` varchar(36) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user_id` varchar(36) NOT NULL,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

----------------------------
-- Table structure for t_images
-- ----------------------------
DROP TABLE IF EXISTS `t_images`;
CREATE TABLE `t_images` (
  `uuid` VARCHAR(36) NOT NULL,
  `pet_code` varchar(50)  NULL,-- 等级编号
  `pet_id` varchar(36)  NULL,--
  `image_name` varchar(50)  NULL,-- 图片名称
  `image_url` varchar(100) NULL,
  `image_descipt` varchar(300)  NULL,
  `image_style` varchar(50)  NULL,
  `create_user_id` varchar(36) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user_id` varchar(36) NOT NULL,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--M_OperationLog
----------------------------
-- Table structure for t_menu_fun_module 功能模块
-- ----------------------------
DROP TABLE IF EXISTS `t_menu_fun_module`;
CREATE TABLE `t_menu_fun_module` (
  `uuid` VARCHAR(36) NOT NULL,
  `mfm_name` varchar(50)  null,-- 功能模块名称
  `parent_id` varchar(36)  null,-- 上级ID
  `mfm_location` varchar(500) null,-- 路径
  `mfm_level` integer  null, -- 菜单级别
  `mfm_type` integer  null, -- 类型
  `mfm_desc` varchar(500)  null, -- 描述
  `is_modal_window` varchar(500)  null, -- 显示模式
  `Sort` INTEGER NULL, -- 排序
  `mfm_status` INTEGER DEFAULT 1, -- 状态
  `create_user_id` varchar(36) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user_id` varchar(36) NOT NULL,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

----------------------------
-- Table structure for t_menu_button 功能按钮
-- ----------------------------
DROP TABLE IF EXISTS `t_menu_button`;
CREATE TABLE `t_menu_button` (
  `uuid` VARCHAR(36) NOT NULL,
  `mfm_id` varchar(36)  null,-- 功能模块ID
  `mfm_name` varchar(50)  null,-- 模块名称
  `button_name` varchar(50)  null,-- 按钮名称
  `Button_Code` varchar(50) null,-- 按钮编号
  `Button_Desc` varchar(200)  null, -- 按钮描述URL
  `Button_image` varchar(200)  null, -- 按钮描述URL
  `Sort` INTEGER NULL, -- 排序
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

----------------------------
-- Table structure for t_gest 宠物主人
-- ----------------------------
DROP TABLE IF EXISTS `t_gest`;
CREATE TABLE `t_gest` (
  `uuid` VARCHAR(36) NOT NULL,
  `gest_code` varchar(36)  null,-- 编号
  `lose_right_date` date  null,--
  `gest_name` varchar(100)  null,-- 姓名
  `gest_sex` varchar(50) null,-- 性别
  `gest_birthday` date  null, -- 生日
  `mobile_phone` varchar(50)  null, -- 手机
  `tel_phone` varchar(50) null, -- 电话
  `e_mail` varchar(50) null ,-- 邮箱
  `gest_address` varchar(100) null , -- 地址
  `is_vip` varchar(50) null ,-- 是否VIP
  `vip_no` varchar(50) null ,-- VIP号
  `vip_account` double null ,-- 折扣
  `last_paid_time` timestamp null ,-- 最后就诊时间
  `gest_style` varchar(50) null ,
  `paid_status` varchar(50) null ,
  `remark` varchar(100) null ,
  `reward_point` varchar(50) null ,
  `prepay_money` double null ,-- 预付费
  `create_user_id` varchar(36) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user_id` varchar(36) NOT NULL,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


----------------------------
-- Table structure for t_expenses_cate 费用类型
-- ----------------------------
DROP TABLE IF EXISTS `t_expenses_cate`;
CREATE TABLE `t_expenses_cate` (
  `uuid` VARCHAR(36) NOT NULL,
  `cate_no` varchar(50)  null,-- 类型编号
  `cate_name` varchar(50)  null,-- 类型名称
  `sort` INTEGER DEFAULT 0, -- 排序
  `create_user_id` varchar(36) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user_id` varchar(36) NOT NULL,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


--------------------------------------------------------
----- Table structure for t_chemical_exam_cate 化验样例类型
-- ----------------------------------------------------
DROP TABLE IF EXISTS `t_chemical_exam_cate`;
CREATE TABLE `t_chemical_exam_cate` (
  `uuid` VARCHAR(36) NOT NULL,
  `cate_no` varchar(50)  null,-- 类型编号
  `parent_id` varchar(36)  null,-- 上级ID
  `cate_name` varchar(50)  null,-- 类型名称
  `source` varchar(50)  null,-- 源头
  `source_changed_reason` varchar(200)  null,-- 变化原因
  `remark` varchar(800)  null,-- 描述
  `create_user_id` varchar(36) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user_id` varchar(36) NOT NULL,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


--------------------------------------------------------
----- Table structure for t_medic_vedio_exam 医生影像样例
-- ----------------------------------------------------
DROP TABLE IF EXISTS `t_medic_vedio_exam`;
CREATE TABLE `t_medic_vedio_exam` (
  `uuid` VARCHAR(36) NOT NULL,
  `enterprise_no` varchar(50)  null,-- 类型编号
  `medic_record_code` varchar(50)  null,-- 记录号
  `medic_record_id` varchar(36)  null,-- 记录ID
  `item_code` varchar(50)  null,-- 类别编号
  `vedio_exam_cost` DOUBLE null,-- 费用
  `vedio_test_name` varchar(50)  null,-- 名称
  `vedio_result` message_text null,-- 结果
  `doctor` varchar(50)  null,-- 医生
  `check_time` timestamp null,-- 检查时间
  `paid_status` varchar(800)  null,-- 影像状态
  `paid_time` timestamp  null,-- 影像时间
  `create_user_id` varchar(36) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user_id` varchar(36) NOT NULL,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


--------------------------------------------------------
----- Table structure for t_medic_prescription_detail 医生处方明细
-- ----------------------------------------------------
DROP TABLE IF EXISTS `t_medic_prescription_detail`;
CREATE TABLE `t_medic_prescription_detail` (
  `uuid` VARCHAR(36) NOT NULL,
  `enterprise_no` varchar(50)  null,-- 企业编号
  `prescription_id` varchar(36)  null,-- 处方ID
  `item_name` varchar(50)  null,-- 类别名称
  `item_code` varchar(50)  null,-- 类别编号
  `item_cost` double null,-- 费用
  `item_num` integer  null,-- 数量
  `recipe_unit` varchar(1000) null,-- 处方单位
  `use_way` varchar(50)  null,-- 使用方式
  `group_name` varchar(50) null,-- 组名
  `paid_status` varchar(800)  null,-- 影像状态
  `paid_time` timestamp  null,-- 影像时间
  `item_count_status` varchar(50) null,-- 状态
  `frequency` varchar(200) null,-- 发生率
  `dose` varchar(50) null,-- 剂量
  `executor_id` varchar(36) null,-- 执行ID
  `executor_date` timestamp not null default current_timestamp on update current_timestamp,
  `use_unit` varchar(50) null,-- 使用单位
  `create_user_id` varchar(36) not null,
  `create_date` timestamp not null default current_timestamp on update current_timestamp,
  `update_user_id` varchar(36) not null,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


--------------------------------------------------------
----- Table structure for t_medic_prescription 医生开处方
-- ----------------------------------------------------
DROP TABLE IF EXISTS `t_medic_prescription`;
CREATE TABLE `t_medic_prescription` (
  `uuid` VARCHAR(36) NOT NULL,
  `enterprise_no` varchar(50)  null,-- 企业编号
  `medic_record_code` varchar(50)  null,-- 处方编号
  `medic_record_id` varchar(36)  null,-- 处方ID
  `prescription_code` varchar(50)  null,-- 类别名称
  `prescription_cost` double  null,-- 类别编号
  `gest_name` varchar(50) null,-- 养育人名称
  `pet_name` varchar(50)  null,-- 宠物名称
  `sick_file_code` varchar(50) null,-- 病例编号
  `doctor` varchar(50)  null,-- 医生
  `paid_status` varchar(50)  null,-- 影像状态
  `paid_time` timestamp  null,-- 影像时间
  `create_user_id` varchar(36) not null,
  `create_date` timestamp not null default current_timestamp on update current_timestamp,
  `update_user_id` varchar(36) not null,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--------------------------------------------------------------
----- Table structure for t_medic_chemical_exam_detail 化验单明细
-- -----------------------------------------------------------
DROP TABLE IF EXISTS `t_medic_chemical_exam_detail`;
CREATE TABLE `t_medic_chemical_exam_detail` (
  `uuid` VARCHAR(36) NOT NULL,
  `enterprise_no` varchar(50)  null,-- 企业编号
  `exam_type_id` varchar(36)  null,-- 处方编号
  `chemical_exam_id` varchar(36)  null,-- 化验报告id
  `chemical_exam_name` varchar(36)  null,-- 化验报告名称
  `exam_name` varchar(50)  null,-- 案例名称
  `exam_value` double null,-- 案例值
  `exam_up_limit` double null,-- 上限
  `exam_down_limit` double null,-- 下限
  `che_test_word` varchar(50)  null,-- 诊断词
  `exam_piece` varchar(50)  null,-- 块
  `exam_age` varchar(50)  null,-- 年龄
  `exam_sign` varchar(50)  null,-- 标志
  `paid_status` varchar(50)  null,-- 影像时间
  `create_user_id` varchar(36) not null,
  `create_date` timestamp not null default current_timestamp on update current_timestamp,
  `update_user_id` varchar(36) not null,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

--------------------------------------------------------------
----- Table structure for t_medic_chemicalexam 化验单明细
-- -----------------------------------------------------------
DROP TABLE IF EXISTS `t_medic_chemicalexam`;
CREATE TABLE `t_medic_chemicalexam` (
  `uuid` VARCHAR(36) NOT NULL,
  `enterprise_no` varchar(50)  null,-- 企业编号
  `medic_record_code` varchar(36)  null,-- 处方编号
  `medic_record_id` varchar(36)  null,-- 化验报告id
  `chemical_exam_code` varchar(50)  null,-- 化验编号
  `chemical_exam_cost` double null,-- 化验费用
  `che_test_name` varchar(50) null,-- 名称
  `che_test_unit` varchar(50) null,-- 单元
  `chemical_result` varchar(50)  null,-- 化验结果
  `item_code` varchar(50)  null,-- 类型编号
  `paid_status` varchar(50)  null,-- 年龄
  `gest_name` varchar(50)  null,-- 养者名称
  `doctor` varchar(50)  null,-- 医院
  `exam_time` timestamp null,-- 案例时间
  `pet_name` varchar(50)  null,-- 宠物名称
  `paid_time` timestamp null,-- 影像时间
  `create_user_id` varchar(36) not null,
  `create_date` timestamp not null default current_timestamp on update current_timestamp,
  `update_user_id` varchar(36) not null,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


--------------------------------------------------------------
----- Table structure for t_check_process_sheet 检查处理单据
-- -----------------------------------------------------------
DROP TABLE IF EXISTS `t_check_process_sheet`;
CREATE TABLE `t_check_process_sheet` (
  `uuid` VARCHAR(36) NOT NULL,
  `sheet_no` varchar(50)  null,-- 企业编号
  `resource_sheet_no` varchar(50)  null,-- 处方编号
  `lib_center_request_id` varchar(50)  null,-- 化验报告id
  `hospital_no` varchar(50)  null,-- 化验编号
  `hospital_name` varchar(50) null,-- 化验费用
  `doctor_no` varchar(50) null,--  医生编号
  `doctor_name` varchar(50) null,-- 医生名称
  `sampling_date` timestamp  null,-- 日期
  `guest_name` varchar(50)  null,--
  `guest_phone` varchar(50)  null,-- 电话
  `pet_mode` varchar(50)  null,--
  `pet_name` varchar(50)  null,--
  `pet_pz` varchar(50)  null,--
  `pet_age` varchar(50)  null,-- 年龄
  `pet_sex` varchar(50)  null,-- 性别
  `pet_jy` varchar(50)  null,--
  `sampling_part` varchar(50)  null,--
  `sample_item` text  null,--
  `check_item` text  null,--
  `medicinal_history` varchar(500)  null,--
  `send_to_library_address` varchar(50) null,--
  `pet_id` varchar(36)  null,-- 宠物ID
  `sample_str` text  null,-- 宠物名称
  `sample_value` text  null,-- 宠物名称
  `normal_check_str` text  null,-- 宠物名称
  `normal_check_value` text  null,-- 宠物名称
  `adv_check_str` text null,-- 宠物名称
  `adv_check_value` text  null,-- 宠物名称
  `medic_treatment_code` varchar(50)  null,-- 宠物名称
  `pet_id` varchar(36)  null,-- 宠物名称
  `last_sheet_no` varchar(50)  null,-- 宠物名称
  `query_status` varchar(36)  null,-- 宠物名称
  `guest_id` varchar(36)  null,-- 宠物名称
  `sent_to_library` varchar(50)  null,-- 宠物名称
  `gest_code` varchar(36)  null,-- 宠物名称
  `is_urgent` int  null,-- 宠物名称
  `create_user_id` varchar(36) not null,
  `create_date` timestamp not null default current_timestamp on update current_timestamp,
  `update_user_id` varchar(36) not null,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;