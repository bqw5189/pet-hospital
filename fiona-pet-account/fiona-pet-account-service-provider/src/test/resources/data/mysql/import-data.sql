-- ----------------------------
-- uuid https://www.uuidgenerator.net/
-- ----------------------------

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
insert into t_menu (uuid,name,code,uri,icon_class,`describe`,parent_id,leaf) values('87cafa35-7efd-4d91-bb9b-23e91a28b2e0','系统应用模块','M00000','#','nav-item','系统应用模块','M',false);
--  前台服务 --
insert into t_menu (uuid,name,code,uri,icon_class,`describe`,parent_id,leaf) values('60cf0342-ff06-4fa1-aa9b-42183b10a70a','前台服务','M00300','#','nav-item','前台服务','M00000',false);
insert into t_menu (uuid,name,code,uri,icon_class,`describe`,parent_id) values('60cf0342-ff06-4fa1-aa9b-42183b10a70a','门诊挂号','FM0301','MedicBusiness/ApplyRegister','nav-item','门诊挂号','M00300');
insert into t_menu (uuid,name,code,uri,icon_class,`describe`,parent_id) values('60cf0342-ff06-4fa1-aa9b-42183b10a70a','门诊收费','FM0302','Business/PatientCharge','nav-item','门诊收费','M00300');
insert into t_menu (uuid,name,code,uri,icon_class,`describe`,parent_id) values('60cf0342-ff06-4fa1-aa9b-42183b10a70a','直接销售','FM0303','StoreBusiness/DirectSell','nav-item','直接销售','M00300');
insert into t_menu (uuid,name,code,uri,icon_class,`describe`,parent_id) values('60cf0342-ff06-4fa1-aa9b-42183b10a70a','挂号查询','FM0304','MedicBusiness/RegisterQueryList','nav-item','挂号查询','M00300');

 (N'FM0305', N'收费管理', N'FM0300', N'StoreBusiness/CashManageList.xaml', 3, 1, N'', 1, 0, 9, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
 (N'FM0313', N'寄养管理', N'FM0300', N'HotelBusiness/FosterManage.xaml', 3, 1, N'', 1, 0, 7, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
 (N'FM0314', N'住院管理', N'FM0300', N'HotelBusiness/HospitalizedManage.xaml', 3, 1, N'', 1, 0, 8, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
 (N'FM0315', N'自助短信', N'FM0300', N'Business/SMSBySelf.xaml', 3, 1, N'', 0, 0, 6, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 1)
 (N'FM0317', N'销售查询', N'FM0300', N'StoreBusiness/SellSearchManage.xaml', 3, 1, N'', 1, 0, 5, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
 (N'FM0316', N'结算单管理', N'FM0300', N'StoreBusiness/CashSearchList.xaml', 3, 1, N'', 1, 0, 9, N'', CAST(0xFFFFFFFE00000000 AS DateTime), N'', CAST(0xFFFFFFFE00000000 AS DateTime), 0)
 (N'FM0318', N'会员挂号', N'FM0300', N'TR.PHM.WPFClient.MedicBusiness.Register.AddRegister', 3, 1, N'""', 1, 1, 1, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'""', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
 (N'FM0319', N'快捷挂号', N'FM0300', N'TR.PHM.WPFClient.WinRandomGestRegist', 3, 1, N'""""""', 1, 1, 2, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'""""""', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
 (N'FM0320', N'美容服务', N'FM0300', N'HotelBusiness/ServiceManage.xaml', 3, 1, N'', 1, 0, 6, N'admin', CAST(0x0000A56C012BC5F7 AS DateTime), N'', CAST(0x0000A56C012BC5F7 AS DateTime), 0)
 (N'FM0370', N'预约管理', N'FM0300', N'MicroSMS/AppointmentList.xaml', 3, 1, N'', 1, 0, -20, N'admin', CAST(0x0000A58500F028B6 AS DateTime), N'admin', CAST(0x0000A58500F028B6 AS DateTime), 0)
 (N'FM0321', N'销售退货', N'FM0300', N'StoreBusiness/ReturnCommodityManage.xaml', 3, 1, N'', 1, 0, 10, N'admin', CAST(0x0000A58500F028B6 AS DateTime), N'admin', CAST(0x0000A58500F028B6 AS DateTime), 0)

--  前台服务 --
--  诊疗服务 --
insert into t_menu (uuid,name,code,uri,icon_class,`describe`,parent_id) values('cb587c93-bce4-43fa-86a9-6e6ee23ff259','诊疗服务','M00350','SYS_BUSINESS_MDULE/MEDICAL','nav-item','诊疗服务','M00000');
 (N'FM0306', N'就诊管理', N'FM0350', N'MedicBusiness/MedicTreatment.xaml', 3, 1, N'', 1, 0, 0, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
 (N'FM0310', N'驱虫疫苗', N'FM0350', N'MedicBusiness/VaccineManage.xaml', 3, 1, N'', 1, 0, 0, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
 (N'FM0311', N'拓瑞检测', N'FM0350', N'Business/TRTest.xaml', 3, 1, N'', 0, 0, 0, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 1)
 (N'FM0312', N'病案管理', N'FM0350', N'MedicBusiness/SickFileManagement.xaml', 3, 1, N'', 1, 0, 0, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
 (N'FM0608', N'处方模板管理', N'FM0350', N'MedicBusiness/PrescriptionTemplateManage.xaml', 3, 1, N'', 1, 0, 0, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
--  诊疗服务 --
--  化验影像 --
insert into t_menu (uuid,name,code,uri,icon_class,`describe`,parent_id) values('f9978660-91cf-40fb-822d-c73680cf878a','化验影像','M00380','SYS_BUSINESS_MDULE/TEST','nav-item','化验影像','M00000');
 (N'FM0307', N'化验管理', N'FM0380', N'MedicBusiness/ChemistResultManage.xaml', 3, 1, N'', 1, 0, 0, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
 (N'FM0308', N'影像管理', N'FM0380', N'MedicBusiness/VedioResultManage.xaml', 3, 1, N'', 1, 0, 0, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)

--  化验影像 --
--  护士工作站 --
insert into t_menu (uuid,name,code,uri,icon_class,`describe`,parent_id) values('c735985a-1ec0-4f03-b498-2f5c6cef3f51','护士工作站','M00390','SYS_BUSINESS_MDULE/NURSE_STATION','nav-item','','M00000');
 (N'FM0309', N'处方执行', N'FM0390', N'MedicBusiness/PrescriptionManage.xaml', 3, 1, N'', 1, 0, 0, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
--  护士工作站 --

 (N'FM0900', N'短信&微信营销', N'FM0000', N'#', 2, 1, N'""', 1, 0, 3, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'""', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
 (N'FM0902', N'自助短信', N'FM0900', N'SMSManagement/SMSSendList.xaml', 3, 1, N'""', 1, 0, 0, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'""', CAST(0x0000A53801084C91 AS DateTime), 0)
 (N'FM0903', N'短信设置', N'FM0900', N'SMSManagement/SMSConfigPage.xaml', 3, 1, N'""', 1, 0, 0, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'""', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
 (N'FM1002', N'微信设置', N'FM0900', N'MicroSMS/MicroSMSConfigPage.xaml', 3, 1, N'""""""', 1, 0, 0, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'""""""', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
 (N'FM1011', N'微网站管理', N'FM0900', N'MicroSMS/MicroWeb.xaml', 3, 1, N'', 1, 0, 20, N'admin', CAST(0x0000A58500F028B6 AS DateTime), N'admin', CAST(0x0000A58500F028B6 AS DateTime), 0)
 (N'FM1001', N'会员关注', N'FM0900', N'MicroSMS/VIPSMSManageList.xaml', 3, 1, N'', 1, 0, 0, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
 (N'FM0901', N'短信查询', N'FM0900', N'SMSManagement/SMSManage.xaml', 3, 1, N'', 1, 0, 0, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CC8 AS DateTime), 0)

 (N'FM0700', N'经营管理', N'FM0000', N'#', 2, 1, N'', 1, 0, 8, N'admin', CAST(0x0000A59C00EDD1F8 AS DateTime), N'admin', CAST(0x0000A59C00EDD1F8 AS DateTime), 0)
 (N'FM0701', N'支出管理', N'FM0700', N'OperateManagement/ExpenseManageList.xaml', 3, 1, N'', 1, 0, 0, N'admin', CAST(0x0000A59C00EDD1F8 AS DateTime), N'admin', CAST(0x0000A59C00EDD1F8 AS DateTime), 0)

 (N'FM0100', N'会员信息', N'FM0000', N'#', 2, 1, N'', 1, 0, 2, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
 (N'FM0102', N'宠物管理', N'FM0100', N'GestManagement/PetManageList.xaml', 3, 1, N'', 1, 0, 0, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
 (N'FM0101', N'会员管理', N'FM0100', N'GestManagement/VIPManageList.xaml', 3, 1, N'""', 1, 0, 0, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'""', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)

 (N'FM1000', N'微信营销', N'FM0000', N'#', 2, 1, N'""""""', 0, 0, 3, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'""""""', CAST(0x0000A3DA00F67CE2 AS DateTime), 1)

 (N'FM0400', N'统计报表', N'FM0000', N'#', 2, 1, N'', 1, 0, 10, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
 (N'FM0401', N'库存资产统计', N'FM0400', N'StatisticsBusiness/CurrentProperty.xaml', 3, 1, N'', 1, 0, 3, N'', CAST(0xFFFFFFFE00000000 AS DateTime), N'', CAST(0xFFFFFFFE00000000 AS DateTime), 0)
 (N'FM0402', N'营业收入统计', N'FM0400', N'StatisticsBusiness/TotalEarnMoney.xaml', 3, 1, N'', 1, 0, 2, N'', CAST(0xFFFFFFFE00000000 AS DateTime), N'', CAST(0xFFFFFFFE00000000 AS DateTime), 0)
 (N'FM0403', N'挂号就诊统计', N'FM0400', N'StatisticsBusiness/TotalRegisterRecord.xaml', 3, 1, N'', 1, 0, 1, N'', CAST(0xFFFFFFFE00000000 AS DateTime), N'', CAST(0xFFFFFFFE00000000 AS DateTime), 0)
 (N'FM0404', N'就诊分期统计', N'FM0400', N'StatisticsBusiness/RegisterRecordCount.xaml', 3, 1, N'""', 1, 0, 1, N'""', CAST(0xFFFFFFFE00000000 AS DateTime), N'""', CAST(0xFFFFFFFE00000000 AS DateTime), 0)
 (N'FM0702', N'效绩考核统计', N'FM0400', N'StatisticsBusiness/CountAchievement.xaml', 3, 1, N'', 1, 0, 1, N'admin', CAST(0x0000A59C00EDD1F8 AS DateTime), N'admin', CAST(0x0000A59C00EDD1F8 AS DateTime), 0)
 (N'FM0703', N'门店收支统计', N'FM0400', N'StatisticsBusiness/CountInCome.xaml', 3, 1, N'', 1, 0, 2, N'admin', CAST(0x0000A59C00EDD1F8 AS DateTime), N'admin', CAST(0x0000A59C00EDD1F8 AS DateTime), 0)
 (N'FM0704', N'会员消费统计', N'FM0400', N'StatisticsBusiness/CountVIPCost.xaml', 3, 1, N'', 1, 0, 3, N'admin', CAST(0x0000A59C00EDD1F8 AS DateTime), N'admin', CAST(0x0000A59C00EDD1F8 AS DateTime), 0)
 (N'FM0405', N'病例统计', N'FM0400', N'StatisticsBusiness/TotalMedicalRecord.xaml', 3, 1, N'', 1, 0, 4, N'admin', CAST(0x0000A5B8012CA6EF AS DateTime), N'admin', CAST(0x0000A5B8012CA6EF AS DateTime), 0)
 (N'FM0707', N'毛利统计', N'FM0400', N'StatisticsBusiness/CountMargin.xaml', 3, 1, N'', 1, 0, 5, N'admin', CAST(0x0000A5B8012CA6EF AS DateTime), N'admin', CAST(0x0000A5B8012CA6EF AS DateTime), 0)
 (N'FM0708', N'商品销售统计', N'FM0400', N'StatisticsBusiness/CountItemSell.xaml', 3, 1, N'""', 1, 0, 7, N'admin', CAST(0x0000A5B8012CA6EF AS DateTime), N'admin', CAST(0x0000A5B8012CA6EF AS DateTime), 0)
 (N'FM0709', N'商品采购统计', N'FM0400', N'StatisticsBusiness/CountItemPurchase.xaml', 3, 1, N'""', 1, 0, 6, N'admin', CAST(0x0000A5B8012CA6EF AS DateTime), N'admin', CAST(0x0000A5B8012CA6EF AS DateTime), 0)


 (N'FM0500', N'系统管理', N'FM0000', N'#', 2, 1, N'', 0, 0, 7, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
 (N'FM0501', N'登录日志', N'FM0500', N'Maintain/LoginLog.xaml', 3, 1, N'', 0, 0, 0, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 1)
 (N'FM0505', N'密码变更', N'FM0500', N'TR.PHM.WpfClient.Maintain.PWChange', 3, 1, N'', 0, 1, 0, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 1)
 (N'FM0506', N'备份还原', N'FM0500', N'TR.PHM.WPFClient.DBChooseMenu', 3, 1, N'', 0, 1, 1, N'admin', CAST(0x0000A56C012BC601 AS DateTime), N'', CAST(0x0000A56C012BC601 AS DateTime), 0)
 (N'FM0507', N'设置向导', N'FM0500', N'TR.PHM.WPFClient.WinNavigation', 3, 1, N'', 0, 1, 1, N'admin', CAST(0x0000A575013457D3 AS DateTime), N'', CAST(0x0000A575013457D3 AS DateTime), 0)



 (N'FM0600', N'基础数据', N'FM0000', N'#', 2, 1, N'""', 1, 0, 9, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)

 (N'FM0601', N'经销商与生产商', N'FM0600', N'BaseDataManagement/DealerManageList.xaml', 3, 1, N'', 1, 0, 0, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F68029 AS DateTime), 0)
 (N'FM0602', N'仓库信息管理', N'FM0600', N'BaseDataManagement/WarehouseManagementList.xaml', 3, 1, N'', 1, 0, 0, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
 (N'FM0603', N'商品与服务管理', N'FM0600', N'BaseDataManagement/ItemTypeManageList.xaml', 3, 1, N'', 1, 0, 0, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
 (N'FM0604', N'会员等级管理', N'FM0600', N'BaseDataManagement/VIPLevel.xaml', 3, 1, N'', 1, 0, 0, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
 (N'FM0605', N'数据字典管理', N'FM0600', N'BaseDataManagement/DataDictmanageList.xaml', 3, 1, N'', 1, 0, 0, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
 (N'FM0606', N'员工管理', N'FM0600', N'BaseDataManagement/Employee.xaml', 3, 1, N'', 1, 0, 0, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
 (N'FM0607', N'按钮配置', N'FM0600', N'SetButton.xaml', 3, 1, N'', 0, 0, 0, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 1)
 (N'FM0609', N'化验项目管理', N'FM0600', N'BaseDataManagement/CheMistTestTypeManageList.xaml', 3, 1, N'', 1, 0, 0, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
 (N'FM0610', N'宠物品种管理', N'FM0600', N'BaseDataManagement/PetRaceManage.xaml', 3, 1, N'""', 1, 0, 0, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'""', CAST(0x0000A3DA00F67CC8 AS DateTime), 0)
 (N'FM0502', N'医院信息', N'FM0600', N'TR.PHM.WPFClient.WinHospitalInfo', 3, 1, N'', 1, 1, 0, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
 (N'FM0503', N'应用参数', N'FM0600', N'BaseDataManagement/ConfigPage.xaml', 3, 1, N'', 1, 0, 10, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
 (N'FM0504', N'角色管理', N'FM0600', N'BaseDataManagement/RoleManageList.xaml', 3, 1, N'', 1, 0, 0, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)



 (N'FM0200', N'仓库管理', N'FM0000', N'#', 2, 1, N'', 1, 0, 5, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
 (N'FM0201', N'库存查询', N'FM0200', N'WarehouseManagement/WarehouseItemCount.xaml', 3, 1, N'', 1, 0, 0, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
 (N'FM0202', N'入库管理', N'FM0200', N'WarehouseManagement/InWarehouseList.xaml', 3, 1, N'', 1, 0, 0, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
 (N'FM0203', N'出库管理', N'FM0200', N'WarehouseManagement/OutWarehouseList.xaml', 3, 1, N'', 1, 0, 0, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
 (N'FM0204', N'移库管理', N'FM0200', N'WarehouseManagement/MoveWarehouseList.xaml', 3, 1, N'', 1, 0, 0, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
 (N'FM0205', N'盘点管理', N'FM0200', N'WarehouseManagement/CheckWarehouseList.xaml', 3, 1, N'', 0, 0, 0, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 1)
 (N'FM0206', N'退货管理', N'FM0200', N'WarehouseManagement/BackWarehouseList.xaml', 3, 1, N'', 1, 0, 0, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)

 (N'FM0800', N'拓瑞检测', N'FM0000', N'#', 2, 1, N'', 1, 0, 4, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
 (N'FM0801', N'检测申报', N'FM0800', N'TR.PHM.WPFClient.WinApplyTRCheck', 3, 1, N'', 1, 1, 0, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A53801084C91 AS DateTime), 0)
 (N'FM0802', N'检测查询', N'FM0800', N'TRSearch/TRCheckFileManage.xaml', 3, 1, N'', 1, 0, 1, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
 (N'FM0803', N'费用统计', N'FM0800', N'#', 3, 1, N'', 0, 0, 0, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 1)
 (N'FM0804', N'尿检设备', N'FM0800', N'Equipment/UrineInstrument.xaml', 3, 1, N'', 1, 0, 3, N'admin', CAST(0x0000A619010C77FE AS DateTime), N'admin', CAST(0x0000A619010C77FE AS DateTime), 0)


-- 系统应用模块 --


-- ----------------------------
-- Table data for t_user_role
-- ----------------------------
insert into t_user_role (uuid,user_id,role_id) values('836b4570-9b24-4a1b-9b50-0e4a652d9ee1','fc5db3b3-4063-4a12-a511-880ba19e4b58','8890e122-d989-4800-8bee-23cc345e13ba');

-- ----------------------------
-- Table data for t_enterprise
-- ----------------------------
insert into t_enterprise (uuid, name, code) values('9b06d376-44ff-4153-9b31-c29a19b8da29','北京福莱','default');