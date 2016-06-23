-- CREATE DATABASE IF NOT EXISTS fiona_pet_account DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci;
-- ----------------------------
-- Table structure for t_user
-- ----------------------------
DROP TABLE IF EXISTS `t_user`;
CREATE TABLE `t_user` (
  `uuid` VARCHAR(36) NOT NULL,
  `enterprise_id` VARCHAR(36) NOT NULL,
  `login_name` varchar(64) NOT NULL,
  `name` varchar(64) NOT NULL,
  `password` varchar(255) NOT NULL,
  `salt` varchar(64) DEFAULT NULL,
  `roles` varchar(255) DEFAULT NULL,
  `register_date` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`uuid`),
  UNIQUE KEY `login_name` (`login_name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
-- ----------------------------
-- Table structure for t_role
-- ----------------------------
DROP TABLE IF EXISTS `t_role`;
CREATE TABLE `t_role` (
  `uuid` VARCHAR(36) NOT NULL,
  `name` VARCHAR(256) NOT NULL,
  `describe` varchar(256),
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  PRIMARY KEY (`uuid`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
-- ----------------------------
-- Table structure for t_user_role
-- ----------------------------
DROP TABLE IF EXISTS `t_user_role`;
CREATE TABLE `t_user_role` (
  `uuid` VARCHAR(36) NOT NULL,
  `user_id` VARCHAR(36) NOT NULL,
  `role_id` VARCHAR(36) NOT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
-- ----------------------------
-- Table structure for t_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_menu`;
CREATE TABLE `t_menu` (
  `uuid` VARCHAR(36) NOT NULL,
  `name` varchar(128) NOT NULL,
  `code` varchar(128) NOT NULL,
  `uri` varchar(128) DEFAULT '#',
  `icon_class` varchar(128) NOT NULL,
  `describe` varchar(256) DEFAULT NULL,
  `status` varchar(32) NOT NULL DEFAULT 'OK',
  `leaf` BOOLEAN DEFAULT TRUE,
  `order` int DEFAULT 0,
  `parent_id` VARCHAR(36) DEFAULT '-1',
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- ----------------------------
-- Table structure for t_role_menu
-- ----------------------------
DROP TABLE IF EXISTS `t_role_menu`;
CREATE TABLE `t_role_menu` (
  `uuid` VARCHAR(36) NOT NULL,
  `role_id` VARCHAR(36) NOT NULL,
  `menu_id` VARCHAR(36) NOT NULL,
  PRIMARY KEY (`uuid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
-- ----------------------------
-- Table structure for t_enterprise
-- ----------------------------
DROP TABLE IF EXISTS `t_enterprise`;
CREATE TABLE `t_enterprise` (
  `uuid` VARCHAR(36) NOT NULL,
  `name` VARCHAR(256) NOT NULL,
  `code` varchar(64) NOT NULL DEFAULT 'default',
  PRIMARY KEY (`uuid`),
  UNIQUE KEY `name_code` (`name`,`code`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;

