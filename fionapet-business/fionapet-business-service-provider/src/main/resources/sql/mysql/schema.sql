-- CREATE DATABASE IF NOT EXISTS fiona_pet_business DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
-- -- -- --- --- --- --- --- --- --- ---
-- Table structure for t_pet_race 宠物种类
-- -- -- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_pet_race`;
CREATE TABLE `t_pet_race` (
  `id` VARCHAR(36) NOT NULL,
  `name` varchar(64) NOT NULL,
  `create_user_id` varchar(36) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user_id` varchar(36) NOT NULL,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- -- -- --- --- --- --- --- --- --- ---
-- Table structure for t_pet_small_race 宠物类型
-- -- -- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_pet_small_race`;
CREATE TABLE `t_pet_small_race` (
  `id` VARCHAR(36) NOT NULL,
  `type` varchar(64) NOT NULL,
  `pet_race_id` VARCHAR(36) NOT NULL,
  `create_user_id` varchar(36) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user_id` varchar(36) NOT NULL,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`id`),
  UNIQUE KEY `type` (`type`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- -- -- --- --- --- --- --- --- --- ---
-- Table structure for t_warehouse 仓库
-- -- -- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_warehouse`;
CREATE TABLE `t_warehouse` (
  `id` VARCHAR(36) NOT NULL,
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


-- -- -- --- --- --- --- --- --- --- ---
-- Table structure for t_item_cate 商品服务种类
-- -- -- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_item_cate`;
CREATE TABLE `t_item_cate` (
  `id` VARCHAR(36) NOT NULL,
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;



-- -- -- --- --- --- --- --- --- --- ---
-- Table structure for t_busines_cate 业务类型表
-- -- -- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_busines_cate`;
CREATE TABLE `t_busines_cate` (
  `id` VARCHAR(36) NOT NULL,
  `cate_name` varchar(50) NOT NULL,-- 业务类型名称
  `create_user_id` varchar(36) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user_id` varchar(36) NOT NULL,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- -- -- --- --- --- --- --- --- --- --- --
-- Table structure for t_item_type 商品类型
-- -- -- --- --- --- --- --- --- --- --- --
DROP TABLE IF EXISTS `t_item_type`;
CREATE TABLE t_item_type
(
  `id` VARCHAR(36) PRIMARY KEY NOT NULL,
  `item_code` VARCHAR(50),-- 商品编号
  `item_name` VARCHAR(100),-- 商品名称
  `cate_no` VARCHAR(50),
  `package_unit` VARCHAR(50),-- 单位
  `recipe_unit` VARCHAR(50),
  `item_standard` VARCHAR(50),
  `item_style` VARCHAR(50),
  `bar_code` VARCHAR(50),
  `busi_type_id` VARCHAR(36),
  `item_bulk` INT(11),
  `input_price` DOUBLE,
  `dealer_code` VARCHAR(50),
  `dealer_name` VARCHAR(100),
  `sell_price` DOUBLE,
  `is_vip_discount` VARCHAR(50),
  `vip_sell_price` DOUBLE,
  `is_sell` VARCHAR(50),
  `is_count` VARCHAR(50),
  `recipe_price` DOUBLE,
  `drug_form` VARCHAR(50),
  `ware_up_limit` INT(11),
  `ware_down_limit` INT(11),
  `safe_day` INT(11),
  `use_way` VARCHAR(5000),
  `group_name` VARCHAR(50),
  `remark` VARCHAR(5000),
  `input_code` VARCHAR(50),
  `is_scattered` DOUBLE,
  `location` VARCHAR(200),
  `is_can_exchange` VARCHAR(50),
  `exchange_reward_point` INT(11),
  `create_user_id` VARCHAR(36) NOT NULL,
  `create_date` TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
  `update_user_id` VARCHAR(36) NOT NULL,
  `update_date` TIMESTAMP DEFAULT CURRENT_TIMESTAMP NOT NULL,
  `status` VARCHAR(32) DEFAULT 'OK' NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- -- --- --- --- --- --- --- --- ---
-- Table structure for t_gest_level 会员等级管理
-- -- --- --- --- --- --- --- --- --- --
DROP TABLE IF EXISTS `t_gest_level`;
CREATE TABLE `t_gest_level` (
  `id` VARCHAR(36) NOT NULL,
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- -- --- --- --- --- --- --- --- ---
-- Table structure for t_user_dict_detail 数据字典 字典明细项
-- -- -- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_user_dict_detail`;
CREATE TABLE `t_user_dict_detail` (
  `id` VARCHAR(36) NOT NULL,
  `dict_type_id` varchar(36)  NULL,-- 字典类型ID t_user_dict表uuid关联
  `dict_detail_code` varchar(50)  NULL,-- 字典明细编号
  `value_name_cn` varchar(50)  NULL,-- 中文名称
  `value_name_en` varchar(50)  NULL,-- 英文名称
  `sort` INTEGER  DEFAULT 0,-- 排序
  `comments` varchar(100) null,-- 说明
  `create_user_id` varchar(36) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user_id` varchar(36) NOT NULL,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


-- -- --- --- --- --- --- --- --- ---
-- Table structure for t_user_dict  应用字典大类
-- -- -- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_user_dict`;
CREATE TABLE `t_user_dict` (
  `id` VARCHAR(36) NOT NULL,
  `dict_name` varchar(50)  NULL,-- 字典名称
  `can_edit` varchar(5)  NULL,-- 可编辑
  `can_view` varchar(5)  NULL,-- 可展示
  `sort` INTEGER  DEFAULT 0,-- 排序
  `create_user_id` varchar(36) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user_id` varchar(36) NOT NULL,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- -- --- --- --- --- --- --- --- ---
-- Table structure for t_dict_type_detail  宠物字典类型明细
-- -- -- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_dict_type_detail`;
CREATE TABLE `t_dict_type_detail` (
  `id` VARCHAR(36) NOT NULL,
  `dict_type_id` varchar(36)  NULL,-- 字典类型ID 关联t_dict_type表UUID
  `dict_detail_code` varchar(50)  not null UNIQUE ,-- 编号
  `value_name_cn` varchar(50)  NULL,-- 中文名
  `value_name_en` varchar(50)  NULL ,-- 英文名
  `comments` varchar(100)  NULL ,-- 描述
  `create_user_id` varchar(36) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user_id` varchar(36) NOT NULL,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- -- -- --- --- --- --- --- --- --- --- --- --- --- --- -
-- Table structure for t_dict_type  字典类型
-- -- -- --- --- --- --- --- --- --- --- --- --- --- --- -
DROP TABLE IF EXISTS `t_dict_type`;
CREATE TABLE `t_dict_type` (
  `id` VARCHAR(36) NOT NULL,
  `dict_name` varchar(50)  NULL,-- 字典名称
  `create_user_id` varchar(36) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user_id` varchar(36) NOT NULL,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- -- --- --- --- --- --- --- --- ---
-- Table structure for t_item_discount_rate 业务类型打折率
-- -- -- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_item_discount_rate`;
CREATE TABLE `t_item_discount_rate` (
  `id` VARCHAR(36) NOT NULL,
  `level_code` varchar(50)  NULL,-- 等级编号
  `cate_no` varchar(50)  NULL,-- 业务类型编号
  `discount_rate` varchar(50)  NULL,-- 折扣比率
  `create_user_id` varchar(36) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user_id` varchar(36) NOT NULL,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- -- --- --- --- --- --- --- --- ---
-- Table structure for t_app_config 提醒配置表
-- -- -- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_app_config`;
CREATE TABLE `t_app_config` (
  `id` VARCHAR(36) NOT NULL,
  `config_name` varchar(500)  NULL,-- 名称
  `config_value` varchar(1000)  NULL,-- 提醒内容
  `description` varchar(1000)  NULL,-- 描述 模版
  `create_user_id` varchar(36) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user_id` varchar(36) NOT NULL,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- -- --- --- --- --- --- --- --- ---
-- Table structure for t_trprescription_template_type 处方模版类型
-- -- -- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_trprescription_template_type`;
CREATE TABLE `t_trprescription_template_type` (
  `id` VARCHAR(36) NOT NULL,
  `type_no` varchar(50)  NULL,-- 编号
  `parent_id` varchar(36)  NULL,-- 上级ID号
  `type_name` varchar(50)  NULL,-- 处方名称
  `gest_id` varchar(50)  NULL,-- 宠物主人ID
  `create_user_id` varchar(36) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user_id` varchar(36) NOT NULL,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- -- --- --- --- --- --- --- --- ---
-- Table structure for t_trprescription_template_detail 处方模版明细
-- -- -- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_trprescription_template_detail`;
CREATE TABLE `t_trprescription_template_detail` (
  `id` VARCHAR(36) NOT NULL,
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- -- --- --- --- --- --- --- --- ---
-- Table structure for t_trprescription_template 处方模版明细
-- -- -- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_trprescription_template`;
CREATE TABLE `t_trprescription_template` (
  `id` VARCHAR(36) NOT NULL,
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- -- --- --- --- --- --- --- --- ---
-- Table structure for t_role 登陆角色
-- -- -- --- --- --- --- --- --- --- ---
-- DROP TABLE IF EXISTS `t_role`;
-- CREATE TABLE `t_role` (
--   `id` VARCHAR(36) NOT NULL,
--   `role_code` varchar(50)  NULL,-- 角色编号
--   `role_name` varchar(100)  NULL,-- 角色名称
--   `role_desc` varchar(1000)  NULL,-- 角色描述
--   `create_user_id` varchar(36) NOT NULL,
--   `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
--   `update_user_id` varchar(36) NOT NULL,
--   `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
--   `status` varchar(32) NOT NULL DEFAULT 'OK',
--   PRIMARY KEY (`id`)
-- ) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- -- --- --- --- --- --- --- --- ---
-- Table structure for t_role_right 角色权限表
-- -- -- --- --- --- --- --- --- --- ---
-- DROP TABLE IF EXISTS `t_role_right`;
-- CREATE TABLE `t_role_right` (
--   `id` VARCHAR(36) NOT NULL,
--   `role_id` varchar(50)  NULL,-- 角色ID表t_role的ID
--   `modul_id` varchar(100)  NULL,-- 模块t_menu_fun_module表ID
--   `create_user_id` varchar(36) NOT NULL,
--   `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
--   `update_user_id` varchar(36) NOT NULL,
--   `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
--   `status` varchar(32) NOT NULL DEFAULT 'OK',
--   PRIMARY KEY (`id`)
-- ) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- -- --- --- --- --- --- --- --- ---
-- Table structure for t_prescription_template_type 处方模版类型
-- -- -- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_prescription_template_type`;
CREATE TABLE `t_prescription_template_type` (
  `id` VARCHAR(36) NOT NULL,
  `type_no` varchar(50)  NULL,-- 类型编号
  `parent_id` varchar(36)  NULL,-- 上级ID
  `type_name` varchar(50)  NULL,-- 类型名称
  `gest_id` varchar(36)  NULL,-- 主人ID
  `create_user_id` varchar(36) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user_id` varchar(36) NOT NULL,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- -- --- --- --- --- --- --- --- ---
-- Table structure for t_prescription_template_detail 处方模版明细
-- -- -- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_prescription_template_detail`;
CREATE TABLE `t_prescription_template_detail` (
  `id` VARCHAR(36) NOT NULL,
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- -- --- --- --- --- --- --- --- ---
-- Table structure for t_prescription_template 处方模版明细
-- -- -- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_prescription_template`;
CREATE TABLE `t_prescription_template` (
  `id` VARCHAR(36) NOT NULL,
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- -- --- --- --- --- --- --- --- ---
-- Table structure for t_pet 宠物
-- -- -- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_pet`;
CREATE TABLE `t_pet` (
  `id` VARCHAR(36) NOT NULL,
  `pet_code` varchar(50)  NULL,-- 宠物编号
  `gest_id` varchar(36)  NULL,-- 主人ID
  `gest_code` varchar(50)  null,-- 主人编号
  `gest_name` varchar(50)  null,-- 主人名称
  `pet_name` varchar(100)  null,-- 宠物名称
  `pet_sex` varchar(50)  null,-- 宠物性别
  `pet_birthday` date  null,-- 宠物生日
  `age` int null ,-- 宠物年龄
  `pet_skin_color` varchar(50)  null,-- 宠物皮肤颜色
  `pet_race` varchar(50)  null,-- 宠物品种
  `pet_breed` varchar(50)  null,-- 绝育状态
  `pet_weight` FLOAT  null,-- 宠物重量
  `pet_height` int  null,-- 宠物高度
  `pet_swidth` int  null,-- 宠物宽度
  `pet_body_long` int  null,-- 宠物长度
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- -- --- --- --- --- --- --- --- ---
-- Table structure for t_persons_cm_app
-- -- -- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_persons_cm_app`;
CREATE TABLE `t_persons_cm_app` (
  `id` VARCHAR(36) NOT NULL,
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- -- --- --- --- --- --- --- --- ---
-- Table structure for t_persons_appointment
-- -- -- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_persons_appointment`;
CREATE TABLE `t_persons_appointment` (
  `id` VARCHAR(36) NOT NULL,
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
-- -- --- --- --- --- --- --- --- ---
-- Table structure for t_persons 宠物主人信息
-- -- -- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_persons`;
CREATE TABLE `t_persons` (
  `id` VARCHAR(36) NOT NULL,
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- -- --- --- --- --- --- --- --- ---
-- Table structure for t_images 图片信息
-- -- -- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_images`;
CREATE TABLE `t_images` (
  `id` VARCHAR(36) NOT NULL,
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- M_OperationLog
-- -- --- --- --- --- --- --- --- ---
-- Table structure for t_menu_fun_module 功能模块
-- -- -- --- --- --- --- --- --- --- ---
-- DROP TABLE IF EXISTS `t_menu_fun_module`;
-- CREATE TABLE `t_menu_fun_module` (
--   `id` VARCHAR(36) NOT NULL,
--   `mfm_name` varchar(50)  null,-- 功能模块名称
--   `parent_id` varchar(36)  null,-- 上级ID
--   `mfm_location` varchar(500) null,-- 路径
--   `mfm_level` integer  null, -- 菜单级别
--   `mfm_type` integer  null, -- 类型
--   `mfm_desc` varchar(500)  null, -- 描述
--   `is_modal_window` varchar(500)  null, -- 显示模式
--   `Sort` INTEGER NULL, -- 排序
--   `mfm_status` INTEGER DEFAULT 1, -- 状态
--   `create_user_id` varchar(36) NOT NULL,
--   `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
--   `update_user_id` varchar(36) NOT NULL,
--   `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
--   `status` varchar(32) NOT NULL DEFAULT 'OK',
--   PRIMARY KEY (`id`)
-- ) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- -- --- --- --- --- --- --- --- ---
-- Table structure for t_menu_button 功能按钮
-- -- -- --- --- --- --- --- --- --- ---
-- DROP TABLE IF EXISTS `t_menu_button`;
-- CREATE TABLE `t_menu_button` (
--   `id` VARCHAR(36) NOT NULL,
--   `mfm_id` varchar(36)  null,-- 功能模块ID
--   `mfm_name` varchar(50)  null,-- 模块名称
--   `button_name` varchar(50)  null,-- 按钮名称
--   `Button_Code` varchar(50) null,-- 按钮编号
--   `Button_Desc` varchar(200)  null, -- 按钮描述URL
--   `Button_image` varchar(200)  null, -- 按钮描述URL
--   `Sort` INTEGER NULL, -- 排序
--   `status` varchar(32) NOT NULL DEFAULT 'OK',
--   PRIMARY KEY (`id`)
-- ) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- -- --- --- --- --- --- --- --- ---
-- Table structure for t_gest 宠物主人
-- -- -- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_gest`;
CREATE TABLE `t_gest` (
  `id` VARCHAR(36) NOT NULL,
  `gest_code` varchar(36)  null,-- 编号
  `lose_right_date` date  null,
  `gest_name` varchar(100)  null,-- 姓名
  `gest_sex` varchar(50) null,-- 性别
  `gest_birthday` date  null, -- 生日
  `mobile_phone` varchar(50)  null, -- 手机
  `tel_phone` varchar(50) null, -- 电话
  `email` varchar(50) null ,-- 邮箱
  `gest_address` varchar(100) null , -- 地址
  `is_vip` varchar(50) null ,-- 是否VIP
  `vip_no` varchar(50) null ,-- VIP号
  `vip_account` double null ,-- 折扣
  `last_paid_time` timestamp null ,-- 最后就诊时间
  `gest_style` varchar(50) null , -- 会员级别
  `paid_status` varchar(50) null ,
  `remark` varchar(100) null ,
  `reward_point` varchar(50) null ,
  `prepay_money` double null ,-- 预付费
  `create_user_id` varchar(36) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user_id` varchar(36) NOT NULL,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


-- -- --- --- --- --- --- --- --- ---
-- Table structure for t_expenses_cate 费用类型
-- -- -- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_expenses_cate`;
CREATE TABLE `t_expenses_cate` (
  `id` VARCHAR(36) NOT NULL,
  `cate_no` varchar(50)  null,-- 类型编号
  `cate_name` varchar(50)  null,-- 类型名称
  `sort` INTEGER DEFAULT 0, -- 排序
  `create_user_id` varchar(36) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user_id` varchar(36) NOT NULL,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


-- -- --- --- --- --- --- --- --- --- -- -- --- --- --- --- --- --- --- ---
-- --- Table structure for t_chemical_exam_cate 化验样例类型
-- -- -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_chemical_exam_cate`;
CREATE TABLE `t_chemical_exam_cate` (
  `id` VARCHAR(36) NOT NULL,
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


-- -- --- --- --- --- --- --- --- --- -- -- --- --- --- --- --- --- --- ---
-- --- Table structure for t_medic_vedio_exam 医生影像样例
-- -- -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---

DROP TABLE IF EXISTS `t_medic_vedio_exam`;
CREATE TABLE `t_medic_vedio_exam` (
  `id` VARCHAR(36) NOT NULL,
  `enterprise_no` varchar(50)  null,-- 类型编号
  `medic_record_code` varchar(50)  null,-- 医生记录号
  `medic_record_id` varchar(36)  null,-- 医生记录ID
  `item_code` varchar(50)  null,-- 类别编号
  `vedio_exam_cost` DOUBLE null,-- 费用
  `vedio_test_name` varchar(50)  null,-- 名称
  `vedio_result` text null,-- 结果
  `doctor` varchar(50)  null,-- 医生
  `check_time` timestamp null,-- 检查时间
  `paid_status` varchar(800)  null,-- 影像状态
  `paid_time` timestamp  null,-- 影像时间
  `create_user_id` varchar(36) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user_id` varchar(36) NOT NULL,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


-- -- --- --- --- --- --- --- --- --- -- -- --- --- --- --- --- --- --- ---
-- --- Table structure for t_medic_prescription_detail 医生处方明细
-- -- -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_medic_prescription_detail`;
CREATE TABLE `t_medic_prescription_detail` (
  `id` VARCHAR(36) NOT NULL,
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


-- -- --- --- --- --- --- --- --- --- -- -- --- --- --- --- --- --- --- ---
-- --- Table structure for t_medic_prescription 医生开处方
-- -- -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_medic_prescription`;
CREATE TABLE `t_medic_prescription` (
  `id` VARCHAR(36) NOT NULL,
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- -- --- --- --- --- --- --- --- --- -- -- --- --- --- --- --- --- --- --- --- ---
-- --- Table structure for t_medic_chemical_exam_detail 化验单明细
-- -- -- --- --- --- --- --- --- --- --- -- -- --- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_medic_chemical_exam_detail`;
CREATE TABLE `t_medic_chemical_exam_detail` (
  `id` VARCHAR(36) NOT NULL,
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- -
-- -- - Table structure for t_medic_chemicalexam 化验单明细
-- -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_medic_chemicalexam`;
CREATE TABLE `t_medic_chemicalexam` (
  `id` VARCHAR(36) NOT NULL,
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


-- -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- -
-- -- - Table structure for t_check_process_sheet 检查处理单据 new
-- -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_check_process_sheet`;
CREATE TABLE `t_check_process_sheet` (
  `id` VARCHAR(36) NOT NULL,
  `sheet_no` varchar(50)  null,-- 单据编号
  `resource_sheet_no` varchar(50)  null,-- 原单据编号
  `lib_center_request_id` varchar(36)  null,-- 库存中心请求id
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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


-- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
-- --- Table structure for t_approve_status_entity  审批状态实体
-- -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_approve_status_entity`;
CREATE TABLE `t_approve_status_entity` (
  `id` VARCHAR(36) NOT NULL,
  `sheet_no` varchar(50)  null,-- 单号
  `activity_name` varchar(50)  null,-- 事项名称
  `approve_status` varchar(36)  null,-- 审批状态
  `approved_at` timestamp null,-- 审批时间
  `description` text null,-- 描述
  `create_user_id` varchar(36) not null,
  `create_date` timestamp not null default current_timestamp on update current_timestamp,
  `update_user_id` varchar(36) not null,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
-- --- Table structure for t_warehouse_outrecord_detail  出库记录明细
-- -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_warehouse_outrecord_detail`;
CREATE TABLE `t_warehouse_outrecord_detail` (
  `id` VARCHAR(36) NOT NULL,
  `out_warehouse_code` varchar(50)  null,-- 出库编号
  `item_code` varchar(50)  null,-- 类型编号
  `bar_code` varchar(50)  null,-- 条码
  `item_name` varchar(100) null,-- 类型名称
  `package_unit` varchar(50) null,-- 单位
  `item_standard` varchar(50) null,-- 规格
  `item_bulk` integer null,-- 零散比
  `input_price` double null,-- 出厂价格
  `drug_form` varchar(50) null,-- 药品形状
  `item_style` varchar(50) null,-- 商品服务种类
  `sell_price` double null,-- 卖价售价
  `input_count` integer null,-- 个数
  `input_cost` double null,-- 进价
  `produce_date` timestamp null,-- 生产日期
  `input_date` timestamp null,-- 进货日期
  `out_date_time` timestamp null,-- 过期时间
  `safe_day` integer null,-- 保质期天数
  `ware_up_limit` integer null,-- 仓库上限
  `ware_down_limit` integer null,-- 仓库下限
  `remark` varchar(100) null,-- 备注
  `manufacturer_code` varchar(50) null,-- 生产者编号
  `manufacturer_name` varchar(200) null,-- 生产者名称
  `create_user_id` varchar(36) not null,
  `create_date` timestamp not null default current_timestamp on update current_timestamp,
  `update_user_id` varchar(36) not null,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
-- --- Table structure for t_warehouse_outrecord  出库记录
-- -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_warehouse_outrecord`;
CREATE TABLE `t_warehouse_outrecord` (
  `id` VARCHAR(36) NOT NULL,
  `out_warehouse_code` varchar(50)  null,-- 出库编号
  `out_warehouse_man` varchar(50)  null,-- 出库人
  `out_warehouse_total_cost` DOUBLE  null,-- 出库总价
  `out_warehouse` varchar(100) null,-- 出库
  `out_reason` varchar(100) null,-- 原因
  `out_content` text null,-- 出库内容
  `total_count` INTEGER null,-- 总数量
  `warehouse_id` varchar(36) null,-- 仓库ID
  `check_date` TIMESTAMP null,-- 核对时间
  `check_man` VARCHAR(50) null,-- 核对人
  `out_warehouse_date` TIMESTAMP null,-- 出库时间
  `remark` text null,-- 备注
  `create_user_id` varchar(36) not null,
  `create_date` timestamp not null default current_timestamp on update current_timestamp,
  `update_user_id` varchar(36) not null,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
-- --- Table structure for t_warehouse_moverecord_detail  移库记录明细
-- -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_warehouse_moverecord_detail`;
CREATE TABLE `t_warehouse_moverecord_detail` (
  `id` VARCHAR(36) NOT NULL,
  `out_warehouse_code` varchar(50)  null,-- 移库编号
  `item_code` varchar(50)  null,-- 类型编号
  `bar_code` varchar(50)  null,-- 条码
  `item_name` varchar(100) null,-- 类型名称
  `package_unit` varchar(50) null,-- 单位
  `item_standard` varchar(50) null,-- 规格
  `item_bulk` integer null,-- 零散比
  `input_price` double null,-- 进货价格
  `drug_form` varchar(50) null,-- 药品形状
  `item_style` varchar(50) null,-- 商品服务种类
  `sell_price` double null,-- 卖价售价
  `input_count` integer null,-- 个数
  `input_cost` double null,-- 进价
  `produce_date` timestamp null,-- 生产日期
  `input_date` timestamp null,-- 进货日期
  `out_date_time` timestamp null,-- 过期时间
  `safe_day` integer null,-- 保质期天数
  `ware_up_limit` integer null,-- 仓库上限
  `ware_down_limit` integer null,-- 仓库下限
  `remark` varchar(100) null,-- 备注
  `batch_number` varchar(50) null,-- 批次编号
  `manufacturer_code` varchar(50) null,-- 生产者编号
  `manufacturer_name` varchar(200) null,-- 生产者名称
  `create_user_id` varchar(36) not null,
  `create_date` timestamp not null default current_timestamp on update current_timestamp,
  `update_user_id` varchar(36) not null,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
-- --- Table structure for t_warehouse_moverecord  移库记录
-- -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_warehouse_moverecord`;
CREATE TABLE `t_warehouse_moverecord` (
  `id` VARCHAR(36) NOT NULL,
  `out_warehouse_code` varchar(50)  null,-- 移库编号
  `out_warehouse_man` varchar(50)  null,-- 移库人
  `Move_Warehouse_Date` TIMESTAMP  null,-- 移库时间
  `from_warehouse` varchar(50)  null,-- 原仓库名称
  `to_warehouse` varchar(50)  null,-- 目标仓库名称
  `from_warehouse_id` varchar(36)  null,-- 原仓库ID
  `to_warehouse_id` varchar(36)  null,-- 目标仓库ID
  `in_warehouse_total_cost` DOUBLE  null,-- 进库总价
  `check_date` TIMESTAMP null,-- 核对时间
  `check_man` VARCHAR(50) null,-- 核对人
  `move_content` text null,-- 移库内容
  `total_count` INTEGER null,-- 总数量
  `remark` text null,-- 备注
  `create_user_id` varchar(36) not null,
  `create_date` timestamp not null default current_timestamp on update current_timestamp,
  `update_user_id` varchar(36) not null,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


-- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
-- --- Table structure for t_warehouse_inventory  仓库存货清单
-- -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_warehouse_inventory`;
CREATE TABLE `t_warehouse_inventory` (
  `id` VARCHAR(36) NOT NULL,
  `Inventory_Code` varchar(50)  null,-- 存货清单编号
  `Inventory_Man` varchar(50)  null,-- 存货清单人员
  `Inventory_Date` TIMESTAMP  null,-- 存货清单时间
  `Inventory_Ware` varchar(50)  null,-- 清单仓库
  `Warehouse_ID` varchar(50)  null,-- 仓库ID
  `Inventory_Content` text  null,-- 存货清单内容
  `remark` text null,-- 备注
  `create_user_id` varchar(36) not null,
  `create_date` timestamp not null default current_timestamp on update current_timestamp,
  `update_user_id` varchar(36) not null,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


-- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
-- --- Table structure for t_warehouse_inrecord_detail  进库记录明细
-- -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_warehouse_inrecord_detail`;
CREATE TABLE `t_warehouse_inrecord_detail` (
  `id` VARCHAR(36) NOT NULL,
  `in_warehouse_code` varchar(50)  null,-- 入库编号
  `item_code` varchar(50)  null,-- 类型编号
  `bar_code` varchar(50)  null,-- 条码
  `item_name` varchar(100) null,-- 类型名称
  `package_unit` varchar(50) null,-- 单位
  `item_standard` varchar(50) null,-- 规格
  `item_bulk` integer null,-- 零散比
  `input_price` double null,-- 进货价格
  `drug_form` varchar(50) null,-- 药品形状
  `item_style` varchar(50) null,-- 商品服务种类
  `sell_price` double null,-- 卖价售价
  `input_count` integer null,-- 个数
  `input_cost` double null,-- 进价
  `produce_date` timestamp null,-- 生产日期
  `input_date` timestamp null,-- 进货日期
  `out_date_time` timestamp null,-- 过期时间
  `safe_day` integer null,-- 保质期天数
  `ware_up_limit` integer null,-- 仓库上限
  `ware_down_limit` integer null,-- 仓库下限
  `remark` varchar(100) null,-- 备注
  `batch_number` varchar(50) null,-- 批次编号
  `manufacturer_code` varchar(50) null,-- 生产者编号
  `manufacturer_name` varchar(200) null,-- 生产者名称
  `create_user_id` varchar(36) not null,
  `create_date` timestamp not null default current_timestamp on update current_timestamp,
  `update_user_id` varchar(36) not null,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


-- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
-- --- Table structure for t_warehouse_inrecord  进库记录
-- -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_warehouse_inrecord`;
CREATE TABLE `t_warehouse_inrecord` (
  `id` VARCHAR(36) NOT NULL,
  `in_warehouse_code` varchar(50)  null,-- 入库编号
  `in_warehouse_man` varchar(50)  null,-- 入库人
  `in_warehouse_total_cost` DOUBLE  null,-- 入库总价
  `in_warehouse` varchar(50) null,-- 仓库
  `in_reason` varchar(100) null,-- 原因
  `in_content` text null,-- 入库内容
  `total_count` INTEGER null,-- 总数量
  `warehouse_id` varchar(36) null,-- 仓库ID
  `check_date` TIMESTAMP null,-- 核对时间
  `check_man` VARCHAR(50) null,-- 核对人
  `in_warehouse_date` TIMESTAMP null,-- 入库时间
  `To_Warehouse_Name` VARCHAR(50) null,-- 到仓库名称
  `To_Warehouse_Code` VARCHAR(50) null,-- 到仓库编号
  `Dealer_Name` VARCHAR(200) null,-- 经销商名称
  `Dealer_Code` VARCHAR(50) null,-- 经销商编号
  `remark` text null,-- 备注
  `create_user_id` varchar(36) not null,
  `create_date` timestamp not null default current_timestamp on update current_timestamp,
  `update_user_id` varchar(36) not null,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


-- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
-- --- Table structure for t_warehouse_backrecord_detail  退回记录明细
-- -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_warehouse_backrecord_detail`;
CREATE TABLE `t_warehouse_backrecord_detail` (
  `id` VARCHAR(36) NOT NULL,
  `back_warehouse_code` varchar(50)  null,-- 退回编号
  `item_code` varchar(50)  null,-- 类型编号
  `bar_code` varchar(50)  null,-- 条码
  `item_name` varchar(100) null,-- 类型名称
  `package_unit` varchar(50) null,-- 单位
  `item_standard` varchar(50) null,-- 规格
  `item_bulk` integer null,-- 零散比
  `input_price` double null,-- 进货价格
  `drug_form` varchar(50) null,-- 药品形状
  `item_style` varchar(50) null,-- 商品服务种类
  `sell_price` double null,-- 卖价售价
  `input_count` integer null,-- 个数
  `input_cost` double null,-- 进价
  `produce_date` timestamp null,-- 生产日期
  `input_date` timestamp null,-- 进货日期
  `out_date_time` timestamp null,-- 过期时间
  `safe_day` integer null,-- 保质期天数
  `ware_up_limit` integer null,-- 仓库上限
  `ware_down_limit` integer null,-- 仓库下限
  `remark` varchar(100) null,-- 备注
  `batch_number` varchar(50) null,-- 批次编号
  `manufacturer_code` varchar(50) null,-- 生产者编号
  `manufacturer_name` varchar(200) null,-- 生产者名称
  `create_user_id` varchar(36) not null,
  `create_date` timestamp not null default current_timestamp on update current_timestamp,
  `update_user_id` varchar(36) not null,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


-- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
-- --- Table structure for t_warehouse_backrecord  退回记录
-- -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_warehouse_backrecord`;
CREATE TABLE `t_warehouse_backrecord` (
  `id` VARCHAR(36) NOT NULL,
  `back_warehouse_code` varchar(50)  null,-- 退回仓库编号
  `back_warehouse_man` varchar(50)  null,-- 退回仓库人
  `back_warehouse_total_cost` DOUBLE  null,-- 退回仓库总价
  `back_warehouse` varchar(50) null,-- 退回仓库
  `back_reason` varchar(100) null,-- 原因
  `back_content` text null,-- 退回内容
  `total_count` INTEGER null,-- 总数量
  `warehouse_id` varchar(36) null,-- 仓库ID
  `check_date` TIMESTAMP null,-- 核对时间
  `check_man` VARCHAR(50) null,-- 核对人
  `back_warehouse_date` timestamp null,-- 退回时间
  `to_warehouse_name` varchar(50) null,-- 到仓库名称
  `to_warehouse_code` varchar(50) null,-- 到仓库编号
  `dealer_name` varchar(200) null,-- 经销商名称
  `dealer_code` varchar(50) null,-- 经销商编号
  `remark` text null,-- 备注
  `create_user_id` varchar(36) not null,
  `create_date` timestamp not null default current_timestamp on update current_timestamp,
  `update_user_id` varchar(36) not null,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


-- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
-- --- Table structure for t_vip_input_tem  VIP信息
-- -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_vip_input_tem`;
CREATE TABLE `t_vip_input_tem` (
  `id` VARCHAR(36) NOT NULL,
  `vip_no` varchar(50)  null,-- vip编号
  `batch_number` varchar(50)  null,-- 批次号
  `row_number` double  null,-- 行号
  `vip_code` varchar(50) null,-- VIP编号
  `vip_name` varchar(500) null,-- VIP名称
  `sex` varchar(10) null,-- 性别
  `birthday` timestamp null,-- 生日
  `mobile_phone` varchar(50) null,-- 移动电话
  `phone` varchar(50) null,-- 座机
  `email` varchar(100) null,-- 邮箱
  `vip_level` varchar(50) null,-- VIP等级
  `vip_adress` varchar(50) null,-- VIP地址
  `sign` integer null,-- 提示标识
  `create_user_id` varchar(36) not null,
  `create_date` timestamp not null default current_timestamp on update current_timestamp,
  `update_user_id` varchar(36) not null,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


-- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
-- --- Table structure for t_store_direct_sell_detail  仓库直销明细
-- -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_store_direct_sell_detail`;
CREATE TABLE `t_store_direct_sell_detail` (
  `id` VARCHAR(36) NOT NULL,
  `direct_sell_id` varchar(36)  null,-- 直销id
  `direct_sell_code` varchar(50)  null,-- 直销编号
  `bar_code` varchar(50) null,-- 条码
	`item_code` varchar(50) null,-- 类型编号
	`item_name` varchar(50) null,-- 类型名称
	`busi_type_id` VARCHAR(36) null,-- 业务类型ID
	`sell_price` DOUBLE null,-- 销售价格
	`sell_unit` varchar(50) null,-- 销售单元
	`item_num` DOUBLE null,-- 个数
	`item_standard` varchar(50) null,-- 规格
	`total_cost` DOUBLE null,-- 总价
	`sell_content` varchar(50) null,-- 销售内容
	`is_bulk` varchar(50) null,-- 是否批量
	`paid_status` varchar(50) null,-- 影像状态
	`paid_time` TIMESTAMP null,-- 影像时间
	`manufacturer_code` varchar(50) null,-- 生产者编号
  `manufacturer_name` varchar(200) null,-- 生产者名称
  `warehouse_id` varchar(36) null,-- 仓库ID
  `create_user_id` varchar(36) not null,
  `create_date` timestamp not null default current_timestamp on update current_timestamp,
  `update_user_id` varchar(36) not null,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


-- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
-- --- Table structure for t_store_direct_sell  仓库直销主表
-- -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_store_direct_sell`;
CREATE TABLE `t_store_direct_sell` (
  `id` VARCHAR(36) NOT NULL,
  `direct_sell_code` varchar(50) null,-- 仓库直销编号
	`total_num` INTEGER null,-- 总数
	`total_cost` DOUBLE null,-- 总价
	`gest_id` VARCHAR(36) null,-- 购买人ID
	`gest_name` varchar(50) null,-- 购买人名称
	`pet_id` VARCHAR(36) null,-- 宠物ID
	`pet_name` varchar(50) null,-- 宠物名称
	`gest_code` varchar(50) null,-- 购买人编号
	`mobile_phone` varchar(50) null,-- 电话
	`discount` DOUBLE null,-- 折扣
	`paid_status` varchar(50) null,-- 影像状态
	`paid_time` TIMESTAMP null,-- 影像时间
	`remark` text NULL,-- 备注
  `create_user_id` varchar(36) not null,
  `create_date` timestamp not null default current_timestamp on update current_timestamp,
  `update_user_id` varchar(36) not null,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


-- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
-- --- Table structure for t_service_detail  服务明细
-- -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_service_detail`;
CREATE TABLE `t_service_detail` (
  `id` VARCHAR(36) NOT NULL,
  `service_id` VARCHAR(36) null,-- 服务ID
	`item_code` varchar(50) null,-- 类型编号
	`item_name` varchar(100) null,-- 类型名称
	`item_standard` varchar(50) null,-- 规格
	`bar_code` varchar(50) null,-- 条码
	`sell_price` double null,-- 售价
	`input_count` integer null,-- 个数
	`total_cost` double null,-- 总价
	`package_unit` varchar(50) null,-- 单位
	`paid_status` varchar(50) null,-- 影像状态状态
	`paid_time` timestamp null,-- 影像时间
	`remark` varchar(200) null,-- 备注
  `create_user_id` varchar(36) not null,
  `create_date` timestamp not null default current_timestamp on update current_timestamp,
  `update_user_id` varchar(36) not null,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


-- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
-- --- Table structure for t_service  服务主表
-- -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_service`;
CREATE TABLE `t_service` (
  `id` VARCHAR(36) NOT NULL,
  `service_code` varchar(50) not null,-- 服务编号
	`gest_id` VARCHAR(36) null,-- 宠物主人ID
	`gest_name` varchar(100) null,-- 宠物主人名称
	`pet_id` VARCHAR(36) null,-- 宠物ID
	`pet_name` varchar(100) null,-- 宠物名称
	`gest_code` varchar(50) null,-- 宠物主人编号
	`mobile_phone` varchar(50) null,-- 电话
	`hairdresser_id` VARCHAR(36) null,-- 美发师ID
	`assistant_id` VARCHAR(36) null,-- 助理ID
	`assistant_name` varchar(50) null,-- 助理名称
	`hairdresser_name` varchar(50) null,-- 美发师名称
	`total_num` integer null,-- 数量
	`total_cost` double null,-- 金额
	`paid_status` varchar(50) null,-- 影像状态状态
	`paid_time` timestamp null,-- 影像时间
	`remark` varchar(200) null,-- 备注
  `create_user_id` varchar(36) not null,
  `create_date` timestamp not null default current_timestamp on update current_timestamp,
  `update_user_id` varchar(36) not null,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


-- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
-- --- Table structure for t_serial_number  序列号
-- -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_serial_number`;
CREATE TABLE `t_serial_number` (
  `id` VARCHAR(36) NOT NULL,
  `serial_number_style` varchar(50) NULL,-- 序列种类方式
	`serial_num` INTEGER NULL,-- 序列数
  `create_user_id` varchar(36) not null,
  `create_date` timestamp not null default current_timestamp on update current_timestamp,
  `update_user_id` varchar(36) not null,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


-- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
-- --- Table structure for t_reward_point_log  序列号
-- -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_reward_point_log`;
CREATE TABLE `t_reward_point_log` (
  `id` VARCHAR(36) NOT NULL,
  `gest_id` VARCHAR(36) null,-- 宠物主人ID
	`settle_id` VARCHAR(36) null,--
	`detail_id` VARCHAR(36) null,--
	`item_code` varchar(50) null,-- 种类编号
	`sell_price` numeric(18, 2) null,-- 销售价格
	`infact_price` double null,-- 价格
	`discount_money` double null,-- 折扣价
	`item_num` INTEGER null,-- 数量
	`sum_original_money` double null,-- 原总价
	`total_cost` double null,-- 实际总价
	`sum_discount_money` double null,-- 折扣总价
	`exchange_point_price` integer null,-- 交换点价格
	`exchange_point_total` integer null,-- 个数
	`sign` integer null,-- 标示
	`unique_sign` varchar(36) null,-- 唯一标示
  `create_user_id` varchar(36) not null,
  `create_date` timestamp not null default current_timestamp on update current_timestamp,
  `update_user_id` varchar(36) not null,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


-- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
-- --- Table structure for t_rewardpoint_exchange_detail  赔偿交换细节
-- -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_rewardpoint_exchange_detail`;
CREATE TABLE `t_rewardpoint_exchange_detail` (
  `id` VARCHAR(36) NOT NULL,
  `parent_id` VARCHAR(36) null,-- 上级ID
	`item_code` varchar(50) null,-- 类型编号
	`item_name` varchar(100) null,-- 类型名称
	`unit` varchar(50) null,-- 单位
	`busi_type_id` VARCHAR(36) null,-- 业务类型ID
	`sell_price` double null,-- 销售价格
	`reward_point_price` integer null,-- 偿还价格
	`total_reward_point` integer null,-- 总赔偿点
	`total_num` double null,-- 数量
	`paid_status` varchar(50) null,-- 影像状态
	`paid_time` timestamp null,-- 影像时间
  `create_user_id` varchar(36) not null,
  `create_date` timestamp not null default current_timestamp on update current_timestamp,
  `update_user_id` varchar(36) not null,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


-- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
-- --- Table structure for t_rewardpoint_exchange  赔偿交换
-- -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_rewardpoint_exchange`;
CREATE TABLE `t_rewardpoint_exchange` (
  `id` VARCHAR(36) NOT NULL,
  `gest_id` VARCHAR(36) null,-- 宠物主人ID
	`gest_code` varchar(50) null,-- 宠物主人编号
	`gest_name` varchar(100) null,-- 宠物主人名称
	`total_reward_point` integer null,-- 交换点
	`item_num` integer null,-- 数量
	`paid_status` varchar(50) null,-- 影像状态
	`paid_time` timestamp null,-- 影像时间
  `create_user_id` varchar(36) not null,
  `create_date` timestamp not null default current_timestamp on update current_timestamp,
  `update_user_id` varchar(36) not null,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;



-- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
-- --- Table structure for t_return_commodity_detail  返回商品明细
-- -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_return_commodity_detail`;
CREATE TABLE `t_return_commodity_detail` (
  `id` VARCHAR(36) NOT NULL,
  `rc_id` VARCHAR(36) null,
	`busi_type_id` VARCHAR(36) null,-- 业务类型ID
	`sell_detail_id` VARCHAR(36) null,-- 销售细节ID
	`item_code` varchar(50) null,-- 类型编号
	`bar_code` varchar(50) null,-- 条码
	`item_name` varchar(50) null,-- 类型名称
	`item_standard` varchar(50) null,-- 规格
	`manufacturer_code` varchar(50) null,-- 生产编号
	`manufacturer_name` varchar(50) null,-- 生产名称
	`batch_number` varchar(50) null,-- 批次号
	`out_date_time` timestamp null,-- 出售日期
	`package_unit` varchar(50) null,-- 单元
	`sell_price` double null,-- 销售价格
	`real_pay` double null,-- 实际付费
	`sell_count_num` integer null,-- 销售个数
	`return_price` double null,-- 返回价格
	`return_count_num` double null,-- 返回数量
	`return_total_cost` double null,-- 总价格
	`warehouse_id` VARCHAR(36) null,-- 仓库ID
	`warehouse_name` varchar(50) null,-- 仓库名称
	`paid_status` varchar(50) null,-- 影像状态
	`paid_time` timestamp null,-- 影像名称
	`remark` text null,-- 备注
  `create_user_id` varchar(36) not null,
  `create_date` timestamp not null default current_timestamp on update current_timestamp,
  `update_user_id` varchar(36) not null,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


-- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
-- --- Table structure for t_return_commodity  返回商品主表
-- -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_return_commodity`;
CREATE TABLE `t_return_commodity` (
  `id` VARCHAR(36) NOT NULL,
  `rc_code` varchar(50) null,-- 编号
	`cash_id` VARCHAR(36) null,-- 患处ID
	`cash_code` varchar(50) null,-- 患处编号
	`count_num` integer null,-- 数量
	`total_cost` double null,-- 价格
	`gest_id` VARCHAR(36) null,-- 宠物主人ID
	`gest_name` varchar(50) null,-- 宠物主人名称
	`gest_phone` varchar(50) null,-- 宠物主人电话
	`handler_id` VARCHAR(36) null,-- 训练员ID
	`handler_name` varchar(50) null,-- 训练员名称
	`hand_on` timestamp null,-- 时间
	`paid_status` varchar(50) null,-- 影像状态
	`paid_time` timestamp null,-- 影像名称
	`remark` text null,-- 备注
  `create_user_id` varchar(36) not null,
  `create_date` timestamp not null default current_timestamp on update current_timestamp,
  `update_user_id` varchar(36) not null,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


-- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
-- --- Table structure for t_prompt  急诊表
-- -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_prompt`;
CREATE TABLE `t_prompt` (
  `id` VARCHAR(36) NOT NULL,
  `config_id` varchar(36) null,-- 配置ID
	`key_code` varchar(50) null,-- 编号
	`relation_id` varchar(36) null,-- 关联ID
	`gest_id` varchar(36) null,-- 主人ID
	`gest_name` varchar(100) null,-- 宠物主人名称
	`sex` varchar(50) null,-- 性别
	`pet_id` varchar(36) null,-- 宠物ID
	`pet_name` varchar(50) null,-- 宠物名称
	`birthday` TIMESTAMP null,-- 生日
	`birthdate` TIMESTAMP null,-- 宠物生日
	`days` integer null,-- 天数
	`cage_no` varchar(50) null,-- 笼子号
	`package_unit` varchar(50) null,-- 单元
	`item_name` varchar(100) null,-- 类型名称
	`total_money` double null,-- 总价格
	`input_money` double null,-- 应付价格
	`start_time` timestamp null,-- 开始时间
	`end_time` timestamp null,-- 结束时间
	`shoot_process` varchar(50) null,-- 处理
	`mobile_phone` varchar(20) null,-- 电话
	`send_status` varchar(50) null, -- 状态
	`prompt_type` varchar(50) null,-- 类型
	`item_count` varchar(50) null,-- 类型统计
	`ware_house` varchar(50) null,-- 仓库
	`up_limit` integer null,-- 上限
	`down_limit` integer null,-- 下限
	`shoot_status` varchar(50) null,
  `create_user_id` varchar(36) not null,
  `create_date` timestamp not null default current_timestamp on update current_timestamp,
  `update_user_id` varchar(36) not null,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


-- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
-- --- Table structure for t_prepay_money  提前付费表
-- -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_prepay_money`;
CREATE TABLE `t_prepay_money` (
  `id` VARCHAR(36) NOT NULL,
  `gest_id` VARCHAR(36) null,-- 宠物主人ID
	`business_type` VARCHAR(50) null,-- 业务类型
	`option_type` VARCHAR(50) null,-- 类型
	`relation_id` VARCHAR(36) null,-- 关联ID
	`input_money` double null,-- 付费
	`record_time` timestamp null,-- 时间
	`remark` text null,-- 备注
  `create_user_id` varchar(36) not null,
  `create_date` timestamp not null default current_timestamp on update current_timestamp,
  `update_user_id` varchar(36) not null,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;



-- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
-- --- Table structure for t_phone_message  电话信息表
-- -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_phone_message`;
CREATE TABLE `t_phone_message` (
  `id` VARCHAR(36) NOT NULL,
  `gest_id` VARCHAR(36) null,-- 宠物主人ID
	`gest_name` varchar(50) null,-- 宠物主人名称
	`mobile_phone` varchar(50) null,-- 电话
	`content` text null,-- 内容
	`prompt_type` varchar(50) null,-- 类型
	`relation_id` VARCHAR(36) null,-- 关联ID
	`send_status` varchar(50) null,-- 发送状态
	`birthday` TIMESTAMP null,-- 生日
	`send_time` TIMESTAMP null,-- 发送时间
  `create_user_id` varchar(36) not null,
  `create_date` timestamp not null default current_timestamp on update current_timestamp,
  `update_user_id` varchar(36) not null,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


-- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
-- --- Table structure for t_pet_small_race  宠物竞赛表
-- -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
-- DROP TABLE IF EXISTS `t_pet_small_race`;
-- CREATE TABLE `t_pet_small_race` (
--   `id` VARCHAR(36) NOT NULL,
--   `race_id` varchar(36)null,-- 竞赛ID
-- 	`pet_race_name` varchar(50) null,-- 宠物竞赛名称
-- 	`pet_type` varchar(50) null,-- 宠物类型
--   `create_user_id` varchar(36) not null,
--   `create_date` timestamp not null default current_timestamp on update current_timestamp,
--   `update_user_id` varchar(36) not null,
--   `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
--   `status` varchar(32) NOT NULL DEFAULT 'OK',
--   PRIMARY KEY (`id`)
-- ) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


-- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
-- --- Table structure for t_pet_race  宠物竞赛类型表
-- -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
-- DROP TABLE IF EXISTS `t_pet_race`;
-- CREATE TABLE `t_pet_race` (
--   `id` VARCHAR(36) NOT NULL,
--   `big_type_name` varchar(50)null,-- 大类名称
-- 	`mdic_type_name` varchar(50) null,-- 类型名称
--   `create_user_id` varchar(36) not null,
--   `create_date` timestamp not null default current_timestamp on update current_timestamp,
--   `update_user_id` varchar(36) not null,
--   `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
--   `status` varchar(32) NOT NULL DEFAULT 'OK',
--   PRIMARY KEY (`id`)
-- ) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


-- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
-- --- Table structure for t_micro_sms_config  消息提醒配置表
-- -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_micro_sms_config`;
CREATE TABLE `t_micro_sms_config` (
  `id` VARCHAR(36) NOT NULL,
  `config_name` varchar(50)null,-- 配置名称
	`config_value` varchar(256) null,-- 配置值
	`description` varchar(256) null,-- 描述
  `create_user_id` varchar(36) not null,
  `create_date` timestamp not null default current_timestamp on update current_timestamp,
  `update_user_id` varchar(36) not null,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;



-- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
-- --- Table structure for t_medic_vedio_exam  医生录像实例表
-- -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
-- DROP TABLE IF EXISTS `t_medic_vedio_exam`;
-- CREATE TABLE `t_medic_vedio_exam` (
--   `id` VARCHAR(36) NOT NULL,
--   `medic_record_code` varchar(50) NULL,-- 医生记录编号
-- 	`medic_record_id` VARCHAR(36) NULL,-- 医生记录ID
-- 	`item_code` varchar(50) NULL,-- 类型编号
-- 	`vedio_exam_cost` DOUBLE NULL,-- 录像实例消费
-- 	`vedio_test_name` varchar(50) NULL,-- 录像测试名称
-- 	`vedio_result` text NULL,-- 录像结果
-- 	`doctor` varchar(50) NULL,-- 医生
-- 	`check_time` TIMESTAMP NULL,-- 检查时间
-- 	`paid_status` varchar(50) null,-- 影像状态
-- 	`paid_time` timestamp null,-- 影像名称
--   `create_user_id` varchar(36) not null,
--   `create_date` timestamp not null default current_timestamp on update current_timestamp,
--   `update_user_id` varchar(36) not null,
--   `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
--   `status` varchar(32) NOT NULL DEFAULT 'OK',
--   PRIMARY KEY (`id`)
-- ) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


-- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
-- --- Table structure for t_medic_vaccine  育苗表
-- -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_medic_vaccine`;
CREATE TABLE `t_medic_vaccine` (
  `id` VARCHAR(36) NOT NULL,
  `vaccine_group_code` varchar(50) null,-- 育苗组编号
	`pet_name` varchar(50) null,-- 宠物名称
	`gest_id` VARCHAR(36) null,-- 宠物主人ID
	`gest_name` varchar(50) null,-- 宠物主人名称
	`gest_code` varchar(50) null,-- 宠物主人编号
	`pet_id` VARCHAR(36) null,-- 宠物ID
	`mobile_phone` varchar(50) null,-- 电话
	`item_name` varchar(50) null,-- 类型名称
	`item_code` varchar(50) null,-- 类型编号
	`item_cost` DOUBLE null,-- 类型价格
	`item_standard` varchar(50) null,-- 规格
	`estimate_time` TIMESTAMP null,-- 估算时间
	`fact_shoot_time` TIMESTAMP null,-- 实际注射时间
	`shoot_level_num` varchar(50) null,-- 注射等级号
	`shoot_process` varchar(50) null,-- 注射过程
	`interval_day` INTEGER null,-- 间隔天数
	`add_type` varchar(50) null,-- 增加类型
	`remark` varchar(256) null,-- 备注
	`paid_status` varchar(50) null,-- 影像时间
	`warn_status` varchar(50) null,-- 告诫状态
	`shoot_status` varchar(50) null,-- 注射状态
	`paid_time` TIMESTAMP null,-- 影像时间
	`batch_number` varchar(50) null,-- 批次号
	`out_date_time` TIMESTAMP null,-- 拔出时间
	`manufacturer_code` varchar(50) null,-- 生产编号
	`manufacturer_name` varchar(200) null,-- 生产名称
	`executor_id` VARCHAR(36) null,-- 执行者ID
	`executor_name` varchar(50) null,-- 执行者名称
	`doctor_id` VARCHAR(36) null,-- 医生ID
	`doctor_name` varchar(50) null,-- 医生名称
	`assistant_doctor_id` VARCHAR(36)  null,-- 助理医生ID
	`assistant_doctor_name` varchar(50) null,-- 助理名称
	`item_num` DOUBLE null,-- 类型号
	`total_cost` DOUBLE null,-- 总价
	`sign` INTEGER null,-- 标示
  `create_user_id` varchar(36) not null,
  `create_date` timestamp not null default current_timestamp on update current_timestamp,
  `update_user_id` varchar(36) not null,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


-- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
-- --- Table structure for t_medic_supplies  医生供应量表
-- -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_medic_supplies`;
CREATE TABLE `t_medic_supplies` (
  `id` VARCHAR(36) NOT NULL,
  `medic_record_code` varchar(50) null,-- 医生记录编号
	`medic_record_id` VARCHAR(36) null,-- 医生记录ID
	`exam_id` VARCHAR(36) not null,-- 实例ID
	`item_code` varchar(50) null,-- 类型编号
	`item_name` varchar(100) null,-- 类型名称
	`item_num` INTEGER null,-- 类型数量
	`item_standard` varchar(50) null,-- 规格
	`is_count` varchar(50) null,-- 数量
	`unit` varchar(50) null,-- 单位
	`paid_status` varchar(50) null,-- 影像状态
	`paid_time` TIMESTAMP null,-- 影像时间
	`sign` varchar(50) null,-- 标示
  `create_user_id` varchar(36) not null,
  `create_date` timestamp not null default current_timestamp on update current_timestamp,
  `update_user_id` varchar(36) not null,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


-- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
-- --- Table structure for t_medic_register_record  医生登记记录明细
-- -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_medic_register_record`;
CREATE TABLE `t_medic_register_record` (
  `id` VARCHAR(36) NOT NULL,
  `register_no` varchar(50)  null,-- 登记编号
  `register_style` varchar(50)  null,-- 登记类型
  `item_name` varchar(100) null,-- 类型名称
  `item_code` varchar(50)  null,-- 类型编号
  `register_price` double null,-- 登记价格
  `sick_file_code` varchar(50) null,-- 皮肤文件编号
  `gest_name` varchar(50)  null,-- 宠物主人名称
  `pet_name` varchar(50) null,-- 宠物名称
  `pet_id` varchar(36) null,-- 宠物id
  `operator_man` varchar(50) null,-- 操作人
  `doctor` varchar(50) null,-- 医生
  `doctor_id` varchar(36) null,-- 医生id
  `paid_status` varchar(50) null,-- 影像状态
  `paid_time` TIMESTAMP null,-- 影像时间
  `pause_reason` varchar(500) null,-- 原因
  `assistant_doctor_id` varchar(36) null,-- 助理id
  `assistant_doctor_name` varchar(50) null,-- 助理名称
  `create_user_id` varchar(36) not null,
  `create_date` timestamp not null default current_timestamp on update current_timestamp,
  `update_user_id` varchar(36) not null,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;



-- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
-- --- Table structure for t_base_medic_prescription_detail  处方明细
-- -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_base_medic_prescription_detail`;
CREATE TABLE `t_base_medic_prescription_detail` (
  `id` VARCHAR(36) NOT NULL,
  `prescription_id` varchar(36)  null,-- 处方ID
  `item_name` varchar(100) null,-- 类型名称
  `item_code` varchar(50)  null,-- 类型编号
  `item_cost` DOUBLE null,-- 类型费用
  `item_num` INTEGER  null,-- 类型数量
  `recipe_unit` varchar(50) null,-- 食谱单位
  `use_way` varchar(50) null,-- 食用方式
  `group_name` varchar(50)  null,-- 组名称
  `paid_status` varchar(50)  null,-- 影像状态
  `paid_time` TIMESTAMP null,-- 影像时间
  `item_count_status` varchar(50) null,-- 类型状态
  `manufacturer_code` varchar(50) null,-- 生产编号
  `manufacturer_name` varchar(200) null,-- 生产名称
  `executor_id` varchar(36)  null,-- 执行ID
  `executor_name` varchar(50)  null,-- 执行名称
  `frequency` varchar(200)  null,-- 发生率
  `dose` varchar(50) null,-- 一次剂量
  `use_unit` varchar(50) null,-- 使用单位
  `create_user_id` varchar(36) not null,
  `create_date` timestamp not null default current_timestamp on update current_timestamp,
  `update_user_id` varchar(36) not null,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


-- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
-- --- Table structure for t_base_medic_prescription  处方
-- -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_base_medic_prescription`;
CREATE TABLE `t_base_medic_prescription` (
  `id` VARCHAR(36) NOT NULL,
  `medic_record_code` varchar(50) null,-- 医生记录编号
  `medic_record_id` VARCHAR(36) null,-- 记录名称
  `prescription_code` varchar(50) null,-- 开处方编号
  `prescription_cost` double null,-- 开处方费用
  `gest_name` varchar(50) null,-- 宠物主人名称
  `pet_name` varchar(50) null,-- 宠物名称
  `sick_file_code` varchar(50) null,-- 病例编号
  `doctor` varchar(50) null,-- 医生
  `paid_status` varchar(50) null,-- 影像状态
  `paid_time` timestamp null,-- 影像时间
  `create_user_id` varchar(36) not null,
  `create_date` timestamp not null default current_timestamp on update current_timestamp,
  `update_user_id` varchar(36) not null,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;



-- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
-- --- Table structure for t_in_hospital_prescription_detail  住院处方明细
-- -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_in_hospital_prescription_detail`;
CREATE TABLE `t_in_hospital_prescription_detail` (
  `id` VARCHAR(36) NOT NULL,
  `prescription_id` varchar(36)  null,-- 处方ID
  `item_name` varchar(100) null,-- 类型名称
  `item_code` varchar(50)  null,-- 类型编号
  `item_cost` DOUBLE null,-- 类型费用
  `item_num` INTEGER  null,-- 类型数量
  `recipe_unit` varchar(50) null,-- 食谱单位
  `use_way` varchar(50) null,-- 食用方式
  `group_name` varchar(50)  null,-- 组名称
  `paid_status` varchar(50)  null,-- 影像状态
  `paid_time` TIMESTAMP null,-- 影像时间
  `item_count_status` varchar(50) null,-- 类型状态
  `manufacturer_code` varchar(50) null,-- 生产编号
	`manufacturer_name` varchar(200) null,-- 生产名称
  `executor_id` varchar(36)  null,-- 执行ID
  `executor_name` varchar(50)  null,-- 执行名称
  `frequency` varchar(200)  null,-- 发生率
  `dose` varchar(50) null,-- 一次剂量
  `use_unit` varchar(50) null,-- 使用单位
  `create_user_id` varchar(36) not null,
  `create_date` timestamp not null default current_timestamp on update current_timestamp,
  `update_user_id` varchar(36) not null,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


-- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
-- --- Table structure for t_in_hospital_prescription  住院处方明细
-- -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_in_hospital_prescription`;
CREATE TABLE `t_in_hospital_prescription` (
  `id` VARCHAR(36) NOT NULL,
  `in_hospital_no` varchar(50) null,-- 医生记录编号
	`in_hospital_id` VARCHAR(36) null,-- 记录名称
	`prescription_code` varchar(50) null,-- 开处方编号
	`prescription_cost` double null,-- 开处方费用
	`gest_name` varchar(50) null,-- 宠物主人名称
	`pet_name` varchar(50) null,-- 宠物名称
	`sick_file_code` varchar(50) null,-- 病例编号
	`doctor` varchar(50) null,-- 医生
	`paid_status` varchar(50) null,-- 影像状态
	`paid_time` timestamp null,-- 影像时间
  `create_user_id` varchar(36) not null,
  `create_date` timestamp not null default current_timestamp on update current_timestamp,
  `update_user_id` varchar(36) not null,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


-- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
-- --- Table structure for t_medic_medictreat_record  医生处理记录
-- -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_medic_medictreat_record`;
CREATE TABLE `t_medic_medictreat_record` (
  `id` VARCHAR(36) NOT NULL,
  `pet_id` varchar(36) null,-- 宠物id
	`medi_treatment_code` varchar(50) null,-- 医生对待编号
	`register_no` varchar(50) UNIQUE ,-- 注册编号
	`temperature` varchar(50) null,-- 温度
	`heartbeat` varchar(50) null,-- 心跳
	`breath` varchar(50) null,-- 气息
	`blood_pressure` varchar(50) null,-- 血压
	`rheme` text null,-- 条理
	`examination` text null,-- 经过产看的情况
	`diagnosed` text null,-- 诊断
	`doctor_advice` text null,-- 医生意见
	`paid_status` varchar(50) null,-- 影像状态
	`gest_name` varchar(50) null,-- 宠物主人名字
	`doctor` varchar(50) null,-- 医生
	`pet_name` varchar(50) null,-- 宠物名称
	`assistant_doctor_name` varchar(50) null,-- 助理名称
	`assistant_doctor_id` varchar(36) null,-- 助理ID
  `create_user_id` varchar(36) not null,
  `create_date` timestamp not null default current_timestamp on update current_timestamp,
  `update_user_id` varchar(36) not null,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --
-- --- Table structure for t_medic_chemical_examtype_detail  医生化验实例类型细节表
-- -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_medic_chemical_examtype_detail`;
CREATE TABLE `t_medic_chemical_examtype_detail` (
  `id` VARCHAR(36) NOT NULL,
  `che_test_typd_id` varchar(36) null,-- 实验类型ID
	`pet_race_name` varchar(50) null,-- 宠物竞赛名称
	`pet_age_moth_from` integer null,-- 宠物起始年龄月
	`pet_age_moth_to` integer null,-- 宠物结束年龄月
	`reference_value_up` double null,-- 引用上届值
	`reference_value_donw` double null,-- 引用下届值
	`pet_age_word` varchar(50) null,-- 宠物年龄词汇
	`result` varchar(200) null,-- 结论
  `create_user_id` varchar(36) not null,
  `create_date` timestamp not null default current_timestamp on update current_timestamp,
  `update_user_id` varchar(36) not null,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --
-- --- Table structure for t_medic_chemical_examtype  医生化验实例类型细节表
-- -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_medic_chemical_examtype`;
CREATE TABLE `t_medic_chemical_examtype` (
  `id` VARCHAR(36) NOT NULL,
  `item_code` varchar(50) null,-- 类型编号
	`item_name` varchar(50) null,-- 类型名称
	`che_test_name` varchar(50) null,-- 检查测试名称
	`che_test_unit` varchar(50) null,-- 检查测试单元
	`index_type` varchar(50) null,-- 索引类型
	`cate_no` varchar(50) null,-- 种类编号
  `create_user_id` varchar(36) not null,
  `create_date` timestamp not null default current_timestamp on update current_timestamp,
  `update_user_id` varchar(36) not null,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --
-- --- Table structure for t_medic_appliance  医生器具表
-- -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_medic_appliance`;
CREATE TABLE `t_medic_appliance` (
  `id` VARCHAR(36) NOT NULL,
  `medic_record_code` varchar(50) null,-- 医生记录编号
  `medic_record_id` varchar(50) null,-- 医生记录名称
  `item_code` varchar(50) null,-- 类型编号
  `item_name` varchar(100) null,-- 类型名称
  `item_num` double null,-- 数量
  `item_standard` varchar(50) null,-- 规格
  `sell_price` double null,-- 售价
  `is_count` varchar(50) null,-- 是否计算
  `unit` varchar(50) null,-- 单元
  `executor_id` varchar(36) null,-- 执行者
  `executor_name` varchar(50) null,-- 执行者名称
  `paid_status` varchar(50) null,-- 影像状态
  `paid_time` timestamp null,-- 影像时间
  `create_user_id` varchar(36) not null,
  `create_date` timestamp not null default current_timestamp on update current_timestamp,
  `update_user_id` varchar(36) not null,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --
-- --- Table structure for t_itemtype_supplies  供应量表
-- -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_itemtype_supplies`;
CREATE TABLE `t_itemtype_supplies` (
  `id` VARCHAR(36) NOT NULL,
  `item_code` varchar(50) null,-- 类型编号
  `item_num` double null,-- 数量
  `unit` varchar(50) null,-- 单元
  `supplies_code` varchar(50) null,-- 供应量编号
  `sign` varchar(50) null,-- 提示
  `create_user_id` varchar(36) not null,
  `create_date` timestamp not null default current_timestamp on update current_timestamp,
  `update_user_id` varchar(36) not null,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --
-- --- Table structure for t_itemtype_chemicalexam  类型化验实例表
-- -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_itemtype_chemicalexam`;
CREATE TABLE `t_itemtype_chemicalexam` (
  `id` VARCHAR(36) NOT NULL,
  `item_code` varchar(50) null,-- 类型编号
  `chemical_exam_id` VARCHAR(36) null,-- 化验实例ID
  `create_user_id` varchar(36) not null,
  `create_date` timestamp not null default current_timestamp on update current_timestamp,
  `update_user_id` varchar(36) not null,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --
-- --- Table structure for t_item_single_detail  类型化验实例明细表
-- -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_item_single_detail`;
CREATE TABLE `t_item_single_detail` (
  `id` VARCHAR(36) NOT NULL,
  `item_code` varchar(50) null,-- 类型编号
  `batch_code` varchar(100) null,-- 批次号
  `bar_code` varchar(100) not null,-- 条码
  `item_name` varchar(100) null,-- 类型名称
  `package_unit` varchar(50) null,-- 单元
  `item_standard` varchar(50) null,-- 规格
  `drug_form` varchar(50) null,-- 药品形状
  `item_style` varchar(50) null,-- 商品服务种类
  `is_vip_discount` double null,-- VIP折扣
  `vip_sell_price` double null,-- VIP售价
  `input_price` double null,-- 进价
  `sell_price` double null,-- 售价
  `produce_date` timestamp null,-- 产品日期
  `infact_profit` varchar(50) null,-- 实际利润
  `input_date` timestamp null,-- 进货日期
  `keep_days` integer null,-- 保质期天数
  `out_date_time` timestamp null,-- 失效日期
  `item_sell_count` integer null,-- 销售个数
  `item_bulk` integer null,-- 零散比
  `is_standardize` integer null,-- 是否达到标准
  `dealer_code` varchar(50) null,-- 经销商编号
  `dealer_name` varchar(100) null,-- 经销商名称
  `sell_man` varchar(100) null,-- 销售人
  `warehouse_code` varchar(50) null,-- 仓库编号
  `warehouse_id` varchar(36) null,-- 仓库ID
  `create_user_id` varchar(36) not null,
  `create_date` timestamp not null default current_timestamp on update current_timestamp,
  `update_user_id` varchar(36) not null,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --
-- --- Table structure for t_item_count_change_reason  种类数量更改原因表
-- -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_item_count_change_reason`;
CREATE TABLE `t_item_count_change_reason` (
  `id` VARCHAR(36) NOT NULL,
  `item_code` varchar(50) null,-- 类型编号
  `item_name` varchar(100) null,-- 类型名称
  `warehouse_code` varchar(50) null,-- 仓库编号
  `warehouse_name` varchar(50) null,-- 仓库名称
  `source_count` DOUBLE null,-- 资源数量
  `new_count` double null,-- 新数量
  `source_scattered_count` double null,-- 原洒落数量
  `new_scattered_count` double null,-- 新洒落数量
  `change_reason` text null,-- 更新原因
  `source_batch_number` varchar(50) null,-- 原批数量
  `new_batch_number` varchar(200) null,-- 新批数量
  `source_out_date_time` timestamp null,-- 原移除时间
  `new_out_date_time` timestamp null,-- 新移除时间
  `item_count_id` VARCHAR(36) null,-- 类型数量ID
  `create_user_id` varchar(36) not null,
  `create_date` timestamp not null default current_timestamp on update current_timestamp,
  `update_user_id` varchar(36) not null,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --
-- --- Table structure for t_item_count  种类数量更改原因表
-- -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_item_count`;
CREATE TABLE `t_item_count` (
  `id` VARCHAR(36) NOT NULL,
  `item_code` varchar(50) null,-- 类型编号
  `bar_code` varchar(50) null,-- 条码
  `item_name` varchar(100) null,-- 类型名称
  `package_unit` varchar(50) null,-- 单元
  `item_standard` varchar(50) null,-- 规格
  `drug_form` varchar(50) null,-- 药品形状
  `item_style` varchar(50) null,-- 商品服务种类
  `item_bulk` INTEGER null,-- 零散比
  `sell_price` double null,-- 售价
  `is_vip_discount` varchar(50) null,-- vip折扣
  `vip_sell_price` double null,-- VIP价格
  `item_count_num` double null,-- 类型数量
  `scattered_count_num` double null,-- 散装数量
  `input_price` double null,-- 进价
  `ware_up_limit` integer null,-- 仓库上限
  `ware_down_limit` integer null,-- 仓库下限
  `warehouse_name` varchar(50) null,-- 仓库名称
  `warehouse_id` varchar(36) null,-- 仓库ID
  `remark` text null,-- 备注
  `manufacturer_code` varchar(50) null,-- 经销商编号
  `manufacturer_name` varchar(200) null,-- 经销商名称
  `batch_number` varchar(50)  null,-- 批次号
  `out_date_time` timestamp null,-- 过期时间
  `create_user_id` varchar(36) not null,
  `create_date` timestamp not null default current_timestamp on update current_timestamp,
  `update_user_id` varchar(36) not null,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


-- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --
-- --- Table structure for t_inventory_log  存货清单日志表
-- -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_inventory_log`;
CREATE TABLE `t_inventory_log` (
  `id` VARCHAR(36) NOT NULL,
  `inventory_code` varchar(50) null,-- 存货清单编号
  `inventory` varchar(36) null,-- 存货清单
  `warehouse_id` varchar(36) null,-- 仓库ID
  `item_code` varchar(36) null,-- 类型编号
  `batch_number` varchar(36) null,-- 批次号
  `item_count_num` varchar(36) null,-- 类型统计个数
  `scattered_count_num` varchar(36) null,-- 散装数量
  `create_user_id` varchar(36) not null,
  `create_date` timestamp not null default current_timestamp on update current_timestamp,
  `update_user_id` varchar(36) not null,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


-- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --
-- --- Table structure for t_input_money_record  收款记录表
-- -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_input_money_record`;
CREATE TABLE `t_input_money_record` (
  `id` VARCHAR(36) NOT NULL,
  `input_money_date` TIMESTAMP null,-- 收款时间
  `gest_name` varchar(50) null,-- 客户名称
  `gest_id` varchar(36) null,-- 客户ID
  `input_money` DOUBLE null,-- 收款金额
  `vip_account` DOUBLE null,-- VIP账号
  `create_user_id` varchar(36) not null,
  `create_date` timestamp not null default current_timestamp on update current_timestamp,
  `update_user_id` varchar(36) not null,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


-- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --
-- --- Table structure for t_in_hospital_record_detail  医院记录明细表
-- -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_in_hospital_record_detail`;
CREATE TABLE `t_in_hospital_record_detail` (
  `id` VARCHAR(36) NOT NULL,
  `in_hospital_id` varchar(36) null,-- 医院ID
  `in_hospital_no` varchar(50) null,-- 医院编号
  `item_code` varchar(50) null,-- 类型编号
  `item_name` varchar(100) null,-- 类型名称
  `total_cost` double null,-- 整体消费
  `item_num` double null,-- 类型数量
  `sell_price` double null,-- 销售价格
  `item_style` varchar(50) null,-- 商品服务种类
  `recipe_unit` varchar(50) null,-- 食谱单位
  `item_standard` varchar(50) null,-- 规格
  `use_way` varchar(1000) null,-- 食用方式
  `item_count_status` varchar(50) null,-- 状态
  `paid_status` varchar(50) null,-- 影像状态
  `paid_time` timestamp null,-- 影像时间
  `warehouse_id` varchar(36) null, -- 仓库ID
  `record_time` timestamp null, -- 记录时间
  `remark` text null,-- 备注
  `batch_number` varchar(50) null,-- 批次号
  `out_date_time` timestamp null,-- 过期时间
  `manufacturer_code` varchar(50) null,-- 经销商编号
  `manufacturer_name` varchar(200) null,-- 经销商名称
  `create_user_id` varchar(36) not null,
  `create_date` timestamp not null default current_timestamp on update current_timestamp,
  `update_user_id` varchar(36) not null,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --
-- --- Table structure for t_in_hospital_record  医院记录表
-- -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_in_hospital_record`;
CREATE TABLE `t_in_hospital_record` (
  `id` VARCHAR(36) NOT NULL,
  `in_hospital_no` varchar(50) null,-- 医院编号
  `gest_id` varchar(36) null,-- 顾客ID
  `gest_code` varchar(100) null,-- 顾客编号
  `gest_name` varchar(50) null,-- 顾客名称
  `vip_no` double null,-- VIP编号
  `mobile_phone` varchar(50) null,-- 手机
  `pet_id` varchar(36) null,-- 宠物ID
  `pet_name` varchar(50) null,-- 宠物名称
  `start_time` timestamp null,-- 起始时间
  `end_time` timestamp null,-- 结束时间
  `input_money` double null,-- 收款
  `pre_days` integer null,-- 预约时间
  `real_days` integer null,-- 实际时间
  `cage_no` varchar(50) null, -- 笼子编号
  `item_code` varchar(50) null,-- 类型编号
  `item_name` varchar(100) null,-- 类型名称
  `price` double null, -- 价格
  `real_price` double null,-- 实际价格
  `total_money` double null,-- 总价
  `record_time` timestamp null,-- 记录时间
  `paid_status` varchar(50) null,-- 影像状态
  `paid_time` timestamp null,-- 影像时间
  `manager_by` varchar(50) null,--
  `remark` text null,
  `update_time` timestamp null,
  `manager_id` VARCHAR(36) null,
  `manufacturer_id` varchar(36) null,-- 经销商编号
  `manufacturer_name` varchar(200) null,-- 经销商名称
  `create_user_id` varchar(36) not null,
  `create_date` timestamp not null default current_timestamp on update current_timestamp,
  `update_user_id` varchar(36) not null,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --
-- --- Table structure for t_gest_paid_record  顾客影像记录表
-- -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_gest_paid_record`;
CREATE TABLE `t_gest_paid_record` (
  `id` VARCHAR(36) NOT NULL,
  `gest_name` varchar(50) null,-- 客户名称
  `gest_id` varchar(36) null,-- 客户ID
  `operate_action` varchar(50) null,-- 操作部位
  `operate_content` varchar(50) null,-- 操作内容
  `settle_accounts_id` varchar(36) null,-- 账号ID
  `create_user_id` varchar(36) not null,
  `create_date` timestamp not null default current_timestamp on update current_timestamp,
  `update_user_id` varchar(36) not null,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


-- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --
-- --- Table structure for t_foster_record_detail  养育记录明细表
-- -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_foster_record_detail`;
CREATE TABLE `t_foster_record_detail` (
  `id` VARCHAR(36) NOT NULL,
  `foster_id` VARCHAR(36) null,-- 养育ID
  `foster_no` varchar(50) null,-- 养育编号
  `item_code` varchar(50) null,-- 类型编号
  `item_name` varchar(100) null,-- 类型名称
  `total_cost` double null,-- 总价
  `item_num` double null,-- 类型编号
  `sell_price` double null,-- 售价
  `item_style` varchar(50) null,-- 商品服务种类
  `recipe_unit` varchar(50) null,-- 食谱单位
  `item_standard` varchar(50) null,-- 规格
  `use_way` varchar(1000) null,-- 食用方式
  `item_count_status` varchar(50) null,-- 状态
  `paid_status` varchar(50) null,-- 影像状态
  `paid_time` timestamp null,-- 影像时间
  `record_time` timestamp null,-- 记录时间
  `remark` text null,-- 备注
  `warehouse_id` VARCHAR(36) null,-- 仓库ID
  `manufacturer_code` varchar(50) null,-- 经销商编号
  `manufacturer_name` varchar(200) null,-- 经销商名称
  `create_user_id` varchar(36) not null,
  `create_date` timestamp not null default current_timestamp on update current_timestamp,
  `update_user_id` varchar(36) not null,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


-- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --
-- --- Table structure for t_foster_record  养育记录主表
-- -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_foster_record`;
CREATE TABLE `t_foster_record` (
  `id` VARCHAR(36) NOT NULL,
  `foster_no` varchar(50) null,-- 养育编号
  `gest_id` VARCHAR(36) null,-- 顾客ID
  `gest_code` varchar(50) null,-- 顾客编号
  `gest_name` varchar(100) null,-- 顾客名称
  `vip_no` varchar(50) null,-- vip编号
  `mobile_phone` varchar(50) null,-- 手机
  `pet_id` VARCHAR(36) null,-- 宠物ID
  `pet_name` varchar(50) null,-- 宠物名称
  `start_time` timestamp null,-- 起始时间
  `end_time` timestamp null,-- 结束时间
  `input_money` double null,-- 预存金额
  `pre_days` integer null,-- 预约时间
  `real_days` integer null,-- 实际时间
  `cage_no` varchar(50) null,-- 笼子编号
  `item_code` varchar(50) null,-- 类型编号
  `item_name` varchar(100) null,-- 类型名称
  `price` double null,-- 价格
  `real_price` double null,-- 实际价格
  `total_money` double null,-- 总价
  `paid_status` varchar(50) null,-- 影像状态
  `paid_time` timestamp null,-- 影像时间
  `record_time` timestamp null,-- 记录时间
  `remark` text null,-- 备注
  `manufacturer_id` varchar(50) null,-- 经销商id
  `manufacturer_name` varchar(200) null,-- 经销商名称
  `manager_by` varchar(50) NULL,-- 管理人员
  `manager_id` varchar(36) NULL,-- 管理ID
  `create_user_id` varchar(36) not null,
  `create_date` timestamp not null default current_timestamp on update current_timestamp,
  `update_user_id` varchar(36) not null,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


-- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --
-- --- Table structure for t_foster_health  养育健康状况表
-- -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_foster_health`;
CREATE TABLE `t_foster_health` (
  `id` VARCHAR(36) NOT NULL,
  `foster_no` varchar(50) null,-- 编号
  `remark` text null,-- 说明
  `create_user_id` varchar(36) not null,
  `create_date` timestamp not null default current_timestamp on update current_timestamp,
  `update_user_id` varchar(36) not null,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


-- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --
-- --- Table structure for t_finance_settle_accounts_detail  资金账户明细表
-- -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_finance_settle_accounts_detail`;
CREATE TABLE `t_finance_settle_accounts_detail` (
  `id` VARCHAR(36) NOT NULL,
  `settle_accounts_detail_id` VARCHAR(36) null,
  `item_code` varchar(50) null,-- 类型编号
  `item_name` varchar(100) null,-- 类型名称
  `package_unit` varchar(50) null,-- 单元
  `item_standard` varchar(50) null,-- 规格
  `item_bulk` integer null,-- 零散比
  `sell_price` double null,-- 售价
  `total_num` double null,-- 总个数
  `total_cost` double null,-- 总价
  `infact_price` double null,-- 实际价格
  `discount_money` double null,-- 折后价
  `busi_type_id` integer null,-- 业务类型ID
  `relation_id` VARCHAR(36) null,-- 关联ID
  `item_descript` varchar(100) null,-- 类型描述
  `paid_status` varchar(50) null,-- 影像状态
  `paid_time` timestamp null,-- 影像时间
  `relation_detail_id` VARCHAR(36) null,-- 关联细节ID
  `sum_discount_money` double null,-- 折后总价
  `sum_original_money` double null,-- 原始价格
  `create_user_id` varchar(36) not null,
  `create_date` timestamp not null default current_timestamp on update current_timestamp,
  `update_user_id` varchar(36) not null,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;



-- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --
-- --- Table structure for t_finance_settle_accounts  资金账号表
-- -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_finance_settle_accounts`;
CREATE TABLE `t_finance_settle_accounts` (
  `id` VARCHAR(36) NOT NULL,
  `settle_code` varchar(50) null,-- 编号
  `gest_id` varchar(50) null,-- 顾客ID
  `gest_code` varchar(50) null,-- 顾客编号
  `gest_name` varchar(100) null,-- 顾客名称
  `pet_code` varchar(50) null,-- 宠物编号
  `pet_name` varchar(50) null,-- 宠物名称
  `total_money` double null,-- 总金额
  `dis_count_money` double null,-- 折扣金额
  `should_paid_money` double null,-- 原金额
  `fact_paid_money` double null,-- 实际金额
  `back_money` double null,-- 返回金额
  `back_reason` text null,-- 返回原因
  `paid_status` varchar(50) null,-- 影像状态
  `paid_time` timestamp null,-- 影像时间
  `change_money` double null,-- 变更金额
  `create_user_id` varchar(36) not null,
  `create_date` timestamp not null default current_timestamp on update current_timestamp,
  `update_user_id` varchar(36) not null,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


-- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --
-- --- Table structure for t_fifo_log  进库出库日志
-- -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_fifo_log`;
CREATE TABLE `t_fifo_log` (
  `id` VARCHAR(36) NOT NULL,
  `type` varchar(50) not null,-- 类型
  `bill_code` varchar(50) not null,-- 单号
  `detail_id` VARCHAR(36) null,-- 明细ID
  `warehouse_id` VARCHAR(36) null,-- 仓库ID
  `item_code` varchar(50) not null,-- 类型编号
  `batch_number` varchar(50) null,-- 批次号
  `out_date_time` timestamp null,-- 出库时间
  `item_count_num` double null,-- 个数
  `sign` integer null,-- 标签
  `created_on` timestamp null,-- 时间
  `unit` varchar(50) null,-- 单元
  `input_price` double null,-- 进价
  `create_user_id` varchar(36) not null,
  `create_date` timestamp not null default current_timestamp on update current_timestamp,
  `update_user_id` varchar(36) not null,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;



-- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --
-- --- Table structure for t_expenses_expend  付出费用表
-- -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_expenses_expend`;
CREATE TABLE `t_expenses_expend` (
  `id` VARCHAR(36) NOT NULL,
  `Cate_No` varchar(50) null,-- 种类编号
  `Cate_Name` varchar(50) null,-- 种类名称
  `Input_Date` TIMESTAMP null,-- 日期
  `Amount` DOUBLE null,-- 账号
  `Describe` varchar(8000) null,-- 说明
  `create_user_id` varchar(36) not null,
  `create_date` timestamp not null default current_timestamp on update current_timestamp,
  `update_user_id` varchar(36) not null,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


-- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --
-- --- Table structure for t_enterprise  企业信息表
-- -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_enterprise`;
CREATE TABLE `t_enterprise` (
  `id` VARCHAR(36) NOT NULL,
  `full_name` varchar(50) null,-- 全名称
  `short_name` varchar(50) null,-- 简称
  `ent_no` varchar(50) null,-- 企业号
  `response_man` varchar(50) null,-- 负责人
  `email_no` varchar(50) null,-- 邮箱号
  `address` varchar(50) null,-- 地址
  `tel_phone` varchar(50) null,-- 电话
  `fax` varchar(50) null,-- 口号
  `e_mail` varchar(50) null,-- 邮箱
  `area_code` varchar(50) null,-- 邮编
  `serial_number` varchar(50) null,-- 序列号
  `remark` text null,-- 说明
  `create_user_id` varchar(36) not null,
  `create_date` timestamp not null default current_timestamp on update current_timestamp,
  `update_user_id` varchar(36) not null,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


-- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --
-- --- Table structure for t_check_warehouse_detail  检查仓库明细表
-- -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_check_warehouse_detail`;
CREATE TABLE `t_check_warehouse_detail` (
  `id` VARCHAR(36) NOT NULL,
  `item_count_id` VARCHAR(36) not null,-- 类型统计ID
  `item_code` varchar(50) null,-- 类型编号
  `item_count_num` DOUBLE null,-- 个数
  `item_bulk` INTEGER null,-- 零散比
  `scattered_count_num` DOUBLE null,-- 散装数量
  `package_unit` varchar(50) null,-- 单位
  `recipe_unit` varchar(50) null,-- 食谱单位
  `batch_number` varchar(50) not null,-- 批次数
  `out_date_time` TIMESTAMP null,-- 出库时间
  `old_item_count_num` DOUBLE null,-- 上次类型数量
  `old_scattered_count_num` DOUBLE null,-- 上次散装数量
  `old_out_date_time` TIMESTAMP null,-- 上次出库时间
  `remark` text null,-- 说明
  `warehouse_id` INTEGER null,-- 仓库ID
  `warehouse_name` varchar(200) null,-- 仓库名称
  `check_number` varchar(50) not null,-- 检查数量
  `create_user_id` varchar(36) not null,
  `create_date` timestamp not null default current_timestamp on update current_timestamp,
  `update_user_id` varchar(36) not null,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;



-- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --
-- --- Table structure for t_check_warehouse  仓库检查主表
-- -- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- --- ---
DROP TABLE IF EXISTS `t_check_warehouse`;
CREATE TABLE `t_check_warehouse` (
  `id` VARCHAR(36) NOT NULL,
  `check_date` timestamp null,-- 检查时间
  `check_man` varchar(50) null,-- 检查者
  `status` varchar(50) null,-- 状态
  `file_name` varchar(500) null,-- 文件名
  `item_count` INTEGER not null,-- 类型统计
  `describe` varchar(2500) null,-- 描述
  `check_number` varchar(50) not null,-- 检查数量
  `create_user_id` varchar(36) not null,
  `create_date` timestamp not null default current_timestamp on update current_timestamp,
  `update_user_id` varchar(36) not null,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_dealer 经销商
-- ----------------------------
DROP TABLE IF EXISTS `t_dealer`;
CREATE TABLE `t_dealer` (
  `id` VARCHAR(36) NOT NULL,
  `code` varchar(16) NOT NULL, -- 编码
  `name` varchar(256) NOT NULL,
  `contract_man` varchar(16), -- 联系人
  `mobile_phone` varchar(11), -- 移动电话
  `tel_phone` varchar(12) , -- 电话
  `email` varchar(12), -- 邮箱
  `dealer_address` varchar(256), -- 联系地址
  `fax` varchar(12) , -- 传真
  `website` varchar(128) , -- 网站
  `tax_no` varchar(128) , -- 税号
  `bank_name` varchar(128) , -- 开户银行
  `dealer_bank_name` varchar(12) , -- 代理商账户名
  `account_no` varchar(32) , -- 银行账号
  `remark` varchar(256) , -- 备注
  `company_type` varchar(32) , -- 类型:经销商/生产商/经销商和代理商
  `create_user_id` varchar(36) NOT NULL,
  `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `update_user_id` varchar(36) NOT NULL,
  `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`id`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;


CREATE UNIQUE INDEX t_medic_medictreat_record_register_no_uindex ON fiona_pet_business.t_medic_medictreat_record (register_no);


