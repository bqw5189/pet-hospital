-- CREATE DATABASE IF NOT EXISTS fiona_pet_business DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
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

-- ----------------------------
-- Table structure for t_member_level 会员级别
-- ----------------------------
-- DROP TABLE IF EXISTS `t_member_level`;
-- CREATE TABLE `t_member_level` (
--   `id` VARCHAR(36) NOT NULL,
--   `name` varchar(256) NOT NULL,
--   `is_credit` boolean DEFAULT FALSE , -- 信誉状态
--   `is_discount` boolean DEFAULT FALSE , -- 是否打折
--   `discount_rate` FLOAT DEFAULT 100, -- 打折比率
--   `remark` varchar(256) , -- 备注
--   `create_user_id` varchar(36) NOT NULL,
--   `create_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
--   `update_user_id` varchar(36) NOT NULL,
--   `update_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
--   `status` varchar(32) NOT NULL DEFAULT 'OK',
--   PRIMARY KEY (`id`),
--   UNIQUE KEY `name` (`name`)
-- ) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
