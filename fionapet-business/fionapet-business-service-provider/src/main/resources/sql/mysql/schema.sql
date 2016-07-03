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