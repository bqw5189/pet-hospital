-- ----------------------------
-- Table data for t_user
-- ----------------------------
insert into t_user (uuid,enterprise_id, login_name, name, password, salt, roles, register_date) values('fc5db3b3-4063-4a12-a511-880ba19e4b58','9b06d376-44ff-4153-9b31-c29a19b8da29','admin','Admin','691b14d79bf0fa2215f155235df5e670b64394cc','7efbd59d9741d34f','admin','2012-06-04 01:00:00');
insert into t_user (uuid,enterprise_id, login_name, name, password, salt, roles, register_date) values('f7419766-8544-47f7-8aca-b8b48e7698fc','9b06d376-44ff-4153-9b31-c29a19b8da29','user','Calvin','2488aa0c31c624687bd9928e0a5d29e7d1ed520b','6d65d24122c30500','user','2012-06-04 02:00:00');
-- ----------------------------
-- Table data for t_role
-- ----------------------------
insert into t_role (uuid,name,`describe`) values('8890e122-d989-4800-8bee-23cc345e13ba','admin','系统管理员');
insert into t_role (uuid,name,`describe`) values('b57c2d66-4ebf-4a20-9eb1-e47c8ede27c8','销售员','挂号,结帐,会员注册登记');
insert into t_role (uuid,name,`describe`) values('59061794-7df9-49b5-a5e4-b786073c2b80','医生','就诊,开单,化验,检查');
insert into t_role (uuid,name,`describe`) values('42ed144b-76ef-4634-ba6b-b6664105401c','护士','出药,打针,盘点');
-- ----------------------------
-- Table data for t_menu
-- ----------------------------
-- 系统应用模块 --
insert into t_menu (uuid,name,code,uri,icon_class,`describe`,parent_id) values('87cafa35-7efd-4d91-bb9b-23e91a28b2e0','系统应用模块','M00000','sys_business_mdule','nav-item','系统应用模块','-1');
--  前台服务 --
insert into t_menu (uuid,name,code,uri,icon_class,`describe`,parent_id) values('60cf0342-ff06-4fa1-aa9b-42183b10a70a','前台服务','M00001','SYS_BUSINESS_MDULE/STAGE','nav-item','前台服务','M00000');
--  前台服务 --
--  诊疗服务 --
insert into t_menu (uuid,name,code,uri,icon_class,`describe`,parent_id) values('cb587c93-bce4-43fa-86a9-6e6ee23ff259','诊疗服务','M00002','SYS_BUSINESS_MDULE/MEDICAL','nav-item','诊疗服务','M00000');
--  诊疗服务 --
--  化验影像 --
insert into t_menu (uuid,name,code,uri,icon_class,`describe`,parent_id) values('f9978660-91cf-40fb-822d-c73680cf878a','化验影像','M00003','SYS_BUSINESS_MDULE/TEST','nav-item','化验影像','M00000');
--  化验影像 --
--  护士工作站 --
insert into t_menu (uuid,name,code,uri,icon_class,`describe`,parent_id) values('c735985a-1ec0-4f03-b498-2f5c6cef3f51','护士工作站','M00004','SYS_BUSINESS_MDULE/NURSE_STATION','nav-item','','M00000');
--  护士工作站 --


-- 系统应用模块 --


-- ----------------------------
-- Table data for t_user_role
-- ----------------------------
insert into t_user_role (uuid,user_id,role_id) values('836b4570-9b24-4a1b-9b50-0e4a652d9ee1','fc5db3b3-4063-4a12-a511-880ba19e4b58','8890e122-d989-4800-8bee-23cc345e13ba');

-- ----------------------------
-- Table data for t_enterprise
-- ----------------------------
insert into t_enterprise (uuid, name, code) values('9b06d376-44ff-4153-9b31-c29a19b8da29','北京福莱','default');