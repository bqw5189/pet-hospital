USE [PetClient]
GO
/****** Object:  Table [dbo].[S_UploadTables]    Script Date: 06/02/2016 16:19:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[S_UploadTables](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TableName] [varchar](50) NULL,
	[UploadTime] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
	[ImageUploadTime] [datetime] NULL,
 CONSTRAINT [PK_S_UploadTables] PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[S_PrintConfig]    Script Date: 06/02/2016 16:19:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[S_PrintConfig](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Version] [varchar](50) NULL,
	[Content] [varchar](max) NULL,
	[Sign] [varchar](50) NULL,
	[IsDeleted] [int] NULL,
	[ModifiedOn] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[S_PrintConfig] ON
INSERT [dbo].[S_PrintConfig] ([ID], [Version], [Content], [Sign], [IsDeleted], [ModifiedOn]) VALUES (1, N'1.0', N'<Root lable="小票样式定义" subtitle="小票样式定义">
    <Title lable="标题" subtitle="标题" serial="10000" visible="true"></Title>
    <Head lable="单据头" subtitle="单据头" serial="10010" visible="true"></Head>
        <Head_Account lable="会员账号" subtitle="会员账号" serial="10020" visible="true"></Head_Account>
    <Head_GestName lable="会员姓名" subtitle="会员姓名" serial="10030" visible="true"></Head_GestName>
        <Head_SettleNO lable="结算单号" subtitle="结算单号" serial="10040" visible="true"></Head_SettleNO>

    <Detail lable="明细" subtitle="明细" serial="20000" visible="true"> </Detail>
        <Detail_Column_Name lable="项目名称" subtitle="项目名称" serial="20010" visible="true"></Detail_Column_Name>
        <Detail_Column_Num lable="数量" subtitle="数量" serial="20020" visible="true"></Detail_Column_Num>
        <Detail_Column_Unit lable="单位" subtitle="单位" serial="20030" visible="true"></Detail_Column_Unit>
        <Detail_Column_Price lable="单价" subtitle="单价" serial="20040" visible="true"></Detail_Column_Price>
        <Detail_Column_TotalMoney lable="小计" subtitle="小计" serial="20050" visible="true"></Detail_Column_TotalMoney>
        <Detail_Column_Preferential lable="扣扣" subtitle="扣扣" serial="20060" visible="true"></Detail_Column_Preferential>
     <Subtotal lable="小计" subtitle="小计" serial="30000" visible="false"></Subtotal>
        <Subtotal_Column_Name lable="项目名称" subtitle="项目名称" serial="30010" visible="false"></Subtotal_Column_Name>
        <Subtotal_Column_TotalMoney lable="金额" subtitle="金额" serial="30020" visible="false"></Subtotal_Column_TotalMoney>
        <PayWay lable="支付方式" subtitle="支付方式" serial="40000" visible="true"></PayWay>
    <Total lable="总计" subtitle="总计" serial="50000" visible="true"></Total>
        <Total_Sum lable="合计" subtitle="合计" serial="50010" visible="true"></Total_Sum>
        <Total_Preferential lable="优惠" subtitle="优惠" serial="50020" visible="true"></Total_Preferential>
        <Total_ShouldPay lable="应收" subtitle="应收" serial="50030" visible="true"></Total_ShouldPay>
        <Total_RealInCome lable="实收" subtitle="实收" serial="50040" visible="true"></Total_RealInCome>
        <Total_BackMoney lable="找零" subtitle="找零" serial="50050" visible="true"></Total_BackMoney>
        <Total_Blance lable="账户余额" subtitle="账户余额" serial="50060" visible="true"></Total_Blance>
        <Total_CreatedOn lable="消费日期" subtitle="消费日期" serial="50070" visible="true"></Total_CreatedOn>
  </Root> ', N'SettleReceipt', 0, CAST(0x0000A5D70145BB7A AS DateTime))
SET IDENTITY_INSERT [dbo].[S_PrintConfig] OFF
/****** Object:  Table [dbo].[S_DictTypeDetail]    Script Date: 06/02/2016 16:19:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[S_DictTypeDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DictTypeID] [int] NULL,
	[DictDetailCode] [varchar](50) NULL,
	[value_nameCN] [text] NULL,
	[value_nameEN] [varchar](50) NULL,
	[status] [varchar](50) NULL,
	[comments] [varchar](50) NULL,
	[IsDeleted] [int] NOT NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[S_DictTypeDetail] ON
INSERT [dbo].[S_DictTypeDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [status], [comments], [IsDeleted]) VALUES (1, 1, N'SM00001', N'正常', N'', N'', N'', 0)
INSERT [dbo].[S_DictTypeDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [status], [comments], [IsDeleted]) VALUES (2, 1, N'SM00002', N'停用', N'', N'', N'', 0)
INSERT [dbo].[S_DictTypeDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [status], [comments], [IsDeleted]) VALUES (3, 2, N'SM00003', N'未绝育', N'', N'', N'', 0)
INSERT [dbo].[S_DictTypeDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [status], [comments], [IsDeleted]) VALUES (4, 2, N'SM00004', N'已绝育', N'', N'', N'', 0)
INSERT [dbo].[S_DictTypeDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [status], [comments], [IsDeleted]) VALUES (5, 3, N'SM00005', N'一联', N'', N'', N'', 0)
INSERT [dbo].[S_DictTypeDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [status], [comments], [IsDeleted]) VALUES (6, 3, N'SM00006', N'二联', N'', N'', N'', 0)
INSERT [dbo].[S_DictTypeDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [status], [comments], [IsDeleted]) VALUES (7, 3, N'SM00007', N'三联', N'', N'', N'', 0)
INSERT [dbo].[S_DictTypeDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [status], [comments], [IsDeleted]) VALUES (8, 3, N'SM00008', N'四联', N'', N'', N'', 0)
INSERT [dbo].[S_DictTypeDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [status], [comments], [IsDeleted]) VALUES (9, 3, N'SM00009', N'五联', N'', N'', N'', 0)
INSERT [dbo].[S_DictTypeDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [status], [comments], [IsDeleted]) VALUES (10, 3, N'SM00010', N'六联', N'', N'', N'', 0)
INSERT [dbo].[S_DictTypeDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [status], [comments], [IsDeleted]) VALUES (11, 3, N'SM00011', N'七联', N'', N'', N'', 0)
INSERT [dbo].[S_DictTypeDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [status], [comments], [IsDeleted]) VALUES (12, 3, N'SM00012', N'八联', N'', N'', N'', 0)
INSERT [dbo].[S_DictTypeDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [status], [comments], [IsDeleted]) VALUES (13, 3, N'SM00013', N'九联', N'', N'', N'', 0)
INSERT [dbo].[S_DictTypeDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [status], [comments], [IsDeleted]) VALUES (14, 3, N'SM00014', N'十联', N'', N'', N'', 0)
INSERT [dbo].[S_DictTypeDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [status], [comments], [IsDeleted]) VALUES (15, 4, N'SM00015', N'首免', N'', N'', N'', 0)
INSERT [dbo].[S_DictTypeDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [status], [comments], [IsDeleted]) VALUES (16, 4, N'SM00016', N'1免', N'', N'', N'', 0)
INSERT [dbo].[S_DictTypeDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [status], [comments], [IsDeleted]) VALUES (17, 4, N'SM00017', N'2免', N'', N'', N'', 0)
INSERT [dbo].[S_DictTypeDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [status], [comments], [IsDeleted]) VALUES (18, 4, N'SM00018', N'3免', N'', N'', N'', 0)
INSERT [dbo].[S_DictTypeDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [status], [comments], [IsDeleted]) VALUES (19, 4, N'SM00019', N'4免', N'', N'', N'', 0)
INSERT [dbo].[S_DictTypeDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [status], [comments], [IsDeleted]) VALUES (20, 4, N'SM00020', N'5免', N'', N'', N'', 0)
INSERT [dbo].[S_DictTypeDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [status], [comments], [IsDeleted]) VALUES (21, 4, N'SM00021', N'6免', N'', N'', N'', 0)
INSERT [dbo].[S_DictTypeDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [status], [comments], [IsDeleted]) VALUES (22, 4, N'SM00022', N'7免', N'', N'', N'', 0)
INSERT [dbo].[S_DictTypeDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [status], [comments], [IsDeleted]) VALUES (23, 4, N'SM00023', N'8免', N'', N'', N'', 0)
INSERT [dbo].[S_DictTypeDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [status], [comments], [IsDeleted]) VALUES (24, 4, N'SM00024', N'9免', N'', N'', N'', 0)
INSERT [dbo].[S_DictTypeDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [status], [comments], [IsDeleted]) VALUES (25, 4, N'SM00025', N'10免', N'', N'', N'', 0)
INSERT [dbo].[S_DictTypeDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [status], [comments], [IsDeleted]) VALUES (26, 4, N'SM00026', N'11免', N'', N'', N'', 0)
INSERT [dbo].[S_DictTypeDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [status], [comments], [IsDeleted]) VALUES (27, 5, N'SM00027', N'未提醒', N'', N'', N'', 0)
INSERT [dbo].[S_DictTypeDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [status], [comments], [IsDeleted]) VALUES (28, 5, N'SM00028', N'已提醒', N'', N'', N'', 0)
INSERT [dbo].[S_DictTypeDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [status], [comments], [IsDeleted]) VALUES (29, 6, N'SM00029', N'未执行', N'', N'', N'驱虫疫苗状态', 0)
INSERT [dbo].[S_DictTypeDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [status], [comments], [IsDeleted]) VALUES (30, 6, N'SM00030', N'已执行', N'', N'', N'驱虫疫苗状态', 0)
INSERT [dbo].[S_DictTypeDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [status], [comments], [IsDeleted]) VALUES (31, 7, N'SM00031', N'未执行', N'""', N'""', N'""', 0)
INSERT [dbo].[S_DictTypeDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [status], [comments], [IsDeleted]) VALUES (32, 7, N'SM00032', N'已执行', N'""', N'""', N'""', 0)
INSERT [dbo].[S_DictTypeDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [status], [comments], [IsDeleted]) VALUES (33, 7, N'SM00033', N'处方已退回，就诊中止', N'""', N'""', N'""', 0)
INSERT [dbo].[S_DictTypeDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [status], [comments], [IsDeleted]) VALUES (34, 8, N'SM00034', N'待就诊', N'', N'', N'', 0)
INSERT [dbo].[S_DictTypeDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [status], [comments], [IsDeleted]) VALUES (35, 8, N'SM00035', N'就诊中', N'', N'', N'', 0)
INSERT [dbo].[S_DictTypeDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [status], [comments], [IsDeleted]) VALUES (36, 8, N'SM00036', N'已中止', N'""', N'""', N'""', 0)
INSERT [dbo].[S_DictTypeDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [status], [comments], [IsDeleted]) VALUES (37, 8, N'SM00037', N'已就诊', N'', N'', N'', 0)
INSERT [dbo].[S_DictTypeDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [status], [comments], [IsDeleted]) VALUES (38, 9, N'SM00038', N'住院中', N'', N'', N'', 0)
INSERT [dbo].[S_DictTypeDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [status], [comments], [IsDeleted]) VALUES (39, 9, N'SM00039', N'已出院', N'', N'', N'', 0)
INSERT [dbo].[S_DictTypeDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [status], [comments], [IsDeleted]) VALUES (40, 10, N'SM00040', N'未付款', N'', N'', N'', 0)
INSERT [dbo].[S_DictTypeDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [status], [comments], [IsDeleted]) VALUES (41, 10, N'SM00041', N'已记账', N'""', N'""', N'""', 0)
INSERT [dbo].[S_DictTypeDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [status], [comments], [IsDeleted]) VALUES (42, 11, N'SM00042', N'入库中', N'', N'', N'', 0)
INSERT [dbo].[S_DictTypeDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [status], [comments], [IsDeleted]) VALUES (43, 11, N'SM00043', N'已审核', N'', N'', N'', 0)
INSERT [dbo].[S_DictTypeDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [status], [comments], [IsDeleted]) VALUES (44, 11, N'SM00044', N'调拨中', N'', N'', N'', 0)
INSERT [dbo].[S_DictTypeDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [status], [comments], [IsDeleted]) VALUES (45, 11, N'SM00045', N'出库中', N'', N'', N'', 0)
INSERT [dbo].[S_DictTypeDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [status], [comments], [IsDeleted]) VALUES (46, 11, N'SM00046', N'退货中', N'', N'', N'', 0)
INSERT [dbo].[S_DictTypeDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [status], [comments], [IsDeleted]) VALUES (47, 12, N'SM00047', N'未检查', N'', N'', N'', 0)
INSERT [dbo].[S_DictTypeDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [status], [comments], [IsDeleted]) VALUES (48, 12, N'SM00048', N'已检查', N'', N'', N'', 0)
INSERT [dbo].[S_DictTypeDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [status], [comments], [IsDeleted]) VALUES (49, 13, N'SM00049', N'寄养中', N'', N'', N'', 0)
INSERT [dbo].[S_DictTypeDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [status], [comments], [IsDeleted]) VALUES (50, 13, N'SM00050', N'寄养结束', N'', N'', N'', 0)
INSERT [dbo].[S_DictTypeDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [status], [comments], [IsDeleted]) VALUES (51, 10, N'SM00051', N'已付款', N'""', N'""', N'""', 0)
INSERT [dbo].[S_DictTypeDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [status], [comments], [IsDeleted]) VALUES (52, 27, N'SM00052', N'在世', N'', N'', N'', 0)
INSERT [dbo].[S_DictTypeDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [status], [comments], [IsDeleted]) VALUES (53, 27, N'SM00053', N'已死亡', N'', N'', N'', 0)
INSERT [dbo].[S_DictTypeDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [status], [comments], [IsDeleted]) VALUES (54, 28, N'SM00054', N'会员', N'', N'', N'', 0)
INSERT [dbo].[S_DictTypeDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [status], [comments], [IsDeleted]) VALUES (55, 28, N'SM00055', N'散客', N'""', N'', N'', 0)
INSERT [dbo].[S_DictTypeDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [status], [comments], [IsDeleted]) VALUES (56, 29, N'SM00056', N'开始申请', N'', N'', N'', 0)
INSERT [dbo].[S_DictTypeDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [status], [comments], [IsDeleted]) VALUES (57, 29, N'SM00057', N'申请提交', N'', N'', N'', 0)
INSERT [dbo].[S_DictTypeDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [status], [comments], [IsDeleted]) VALUES (58, 29, N'SM00058', N'检测正常结束', N'', N'', N'', 0)
INSERT [dbo].[S_DictTypeDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [status], [comments], [IsDeleted]) VALUES (59, 29, N'SM00059', N'检测异常中止', N'', N'', N'', 0)
INSERT [dbo].[S_DictTypeDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [status], [comments], [IsDeleted]) VALUES (60, 30, N'SM00060', N'申请人提交检测申请单', N'', N'', N'', 0)
INSERT [dbo].[S_DictTypeDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [status], [comments], [IsDeleted]) VALUES (61, 30, N'SM00061', N'样本初检员审核', N'', N'', N'', 0)
INSERT [dbo].[S_DictTypeDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [status], [comments], [IsDeleted]) VALUES (62, 30, N'SM00062', N'实验室检测人员审核', N'', N'', N'', 0)
INSERT [dbo].[S_DictTypeDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [status], [comments], [IsDeleted]) VALUES (63, 30, N'SM00063', N'实验室审核人员审核', N'', N'', N'', 0)
INSERT [dbo].[S_DictTypeDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [status], [comments], [IsDeleted]) VALUES (64, 30, N'SM00064', N'医疗组提供专业指导意见', N'', N'', N'', 0)
INSERT [dbo].[S_DictTypeDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [status], [comments], [IsDeleted]) VALUES (65, 30, N'SM00065', N'检测正常完成', N'', N'', N'', 0)
INSERT [dbo].[S_DictTypeDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [status], [comments], [IsDeleted]) VALUES (66, 30, N'SM00066', N'检测异常中止', N'', N'', N'', 0)
INSERT [dbo].[S_DictTypeDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [status], [comments], [IsDeleted]) VALUES (67, 31, N'SM00068', N'未审批', N'', N'', N'', 0)
INSERT [dbo].[S_DictTypeDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [status], [comments], [IsDeleted]) VALUES (68, 31, N'SM00069', N'已审批', N'', N'', N'', 0)
INSERT [dbo].[S_DictTypeDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [status], [comments], [IsDeleted]) VALUES (69, 32, N'SM00071', N'未归还', N'', N'', N'', 0)
INSERT [dbo].[S_DictTypeDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [status], [comments], [IsDeleted]) VALUES (70, 32, N'SM00072', N'已归还', N'', N'', N'', 0)
INSERT [dbo].[S_DictTypeDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [status], [comments], [IsDeleted]) VALUES (71, 33, N'SM00073', N'销售退货', N'', N'', N'', 0)
INSERT [dbo].[S_DictTypeDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [status], [comments], [IsDeleted]) VALUES (72, 34, N'SM00074', N'化验耗材', NULL, NULL, NULL, 0)
INSERT [dbo].[S_DictTypeDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [status], [comments], [IsDeleted]) VALUES (73, 34, N'SM00075', N'影像耗材', NULL, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[S_DictTypeDetail] OFF
/****** Object:  Table [dbo].[S_DictType]    Script Date: 06/02/2016 16:19:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[S_DictType](
	[ID] [int] NOT NULL,
	[DictName] [varchar](50) NULL,
	[IsDeleted] [int] NOT NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[S_DictType] ([ID], [DictName], [IsDeleted]) VALUES (1, N'会员状态', 0)
INSERT [dbo].[S_DictType] ([ID], [DictName], [IsDeleted]) VALUES (2, N'绝育状态', 0)
INSERT [dbo].[S_DictType] ([ID], [DictName], [IsDeleted]) VALUES (3, N'疫苗联数', 0)
INSERT [dbo].[S_DictType] ([ID], [DictName], [IsDeleted]) VALUES (4, N'单联名称', 0)
INSERT [dbo].[S_DictType] ([ID], [DictName], [IsDeleted]) VALUES (5, N'提醒状态', 0)
INSERT [dbo].[S_DictType] ([ID], [DictName], [IsDeleted]) VALUES (6, N'执行状态', 0)
INSERT [dbo].[S_DictType] ([ID], [DictName], [IsDeleted]) VALUES (7, N'取药状态', 0)
INSERT [dbo].[S_DictType] ([ID], [DictName], [IsDeleted]) VALUES (8, N'就诊状态', 0)
INSERT [dbo].[S_DictType] ([ID], [DictName], [IsDeleted]) VALUES (9, N'住院状态', 0)
INSERT [dbo].[S_DictType] ([ID], [DictName], [IsDeleted]) VALUES (10, N'付款状态', 0)
INSERT [dbo].[S_DictType] ([ID], [DictName], [IsDeleted]) VALUES (11, N'仓库管理状态', 0)
INSERT [dbo].[S_DictType] ([ID], [DictName], [IsDeleted]) VALUES (12, N'检查状态', 0)
INSERT [dbo].[S_DictType] ([ID], [DictName], [IsDeleted]) VALUES (13, N'寄养状态', 0)
INSERT [dbo].[S_DictType] ([ID], [DictName], [IsDeleted]) VALUES (27, N'宠物状态', 0)
INSERT [dbo].[S_DictType] ([ID], [DictName], [IsDeleted]) VALUES (28, N'会员类型', 0)
INSERT [dbo].[S_DictType] ([ID], [DictName], [IsDeleted]) VALUES (29, N'拓瑞检测状态', 0)
INSERT [dbo].[S_DictType] ([ID], [DictName], [IsDeleted]) VALUES (30, N'拓瑞查询状态', 0)
INSERT [dbo].[S_DictType] ([ID], [DictName], [IsDeleted]) VALUES (31, N'销售退货状态', 0)
INSERT [dbo].[S_DictType] ([ID], [DictName], [IsDeleted]) VALUES (32, N'归还状态', 0)
INSERT [dbo].[S_DictType] ([ID], [DictName], [IsDeleted]) VALUES (33, N'退货类型', 0)
INSERT [dbo].[S_DictType] ([ID], [DictName], [IsDeleted]) VALUES (34, N'耗材类型', 0)
/****** Object:  Table [dbo].[S_DBVersion]    Script Date: 06/02/2016 16:19:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[S_DBVersion](
	[Version] [int] NOT NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED
(
	[Version] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[S_DBVersion] ([Version], [CreatedOn], [ModifiedOn]) VALUES (1008, CAST(0x0000A58500F02788 AS DateTime), CAST(0x0000A58500F02788 AS DateTime))
INSERT [dbo].[S_DBVersion] ([Version], [CreatedOn], [ModifiedOn]) VALUES (1009, CAST(0x0000A5870122EE03 AS DateTime), CAST(0x0000A5870122EE03 AS DateTime))
INSERT [dbo].[S_DBVersion] ([Version], [CreatedOn], [ModifiedOn]) VALUES (1010, CAST(0x0000A58B000590A4 AS DateTime), CAST(0x0000A58B000590A4 AS DateTime))
INSERT [dbo].[S_DBVersion] ([Version], [CreatedOn], [ModifiedOn]) VALUES (1011, CAST(0x0000A59C00EDD1C5 AS DateTime), CAST(0x0000A59C00EDD1C5 AS DateTime))
INSERT [dbo].[S_DBVersion] ([Version], [CreatedOn], [ModifiedOn]) VALUES (1012, CAST(0x0000A5B8012CA69C AS DateTime), CAST(0x0000A5B8012CA69C AS DateTime))
INSERT [dbo].[S_DBVersion] ([Version], [CreatedOn], [ModifiedOn]) VALUES (1013, CAST(0x0000A5D70145BB48 AS DateTime), CAST(0x0000A5D70145BB48 AS DateTime))
INSERT [dbo].[S_DBVersion] ([Version], [CreatedOn], [ModifiedOn]) VALUES (1014, CAST(0x0000A60F01760D0A AS DateTime), CAST(0x0000A60F01760D0A AS DateTime))
INSERT [dbo].[S_DBVersion] ([Version], [CreatedOn], [ModifiedOn]) VALUES (1015, CAST(0x0000A60F0177C7B5 AS DateTime), CAST(0x0000A60F0177C7B5 AS DateTime))
INSERT [dbo].[S_DBVersion] ([Version], [CreatedOn], [ModifiedOn]) VALUES (1016, CAST(0x0000A613010819E4 AS DateTime), CAST(0x0000A613010819E4 AS DateTime))
INSERT [dbo].[S_DBVersion] ([Version], [CreatedOn], [ModifiedOn]) VALUES (1017, CAST(0x0000A619010C77FB AS DateTime), CAST(0x0000A619010C77FB AS DateTime))
/****** Object:  Table [dbo].[S_BusinesCate]    Script Date: 06/02/2016 16:19:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[S_BusinesCate](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CateName] [varchar](50) NULL,
	[IsDeleted] [int] NOT NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[S_BusinesCate] ON
INSERT [dbo].[S_BusinesCate] ([ID], [CateName], [IsDeleted]) VALUES (1, N'宠物药品', 0)
INSERT [dbo].[S_BusinesCate] ([ID], [CateName], [IsDeleted]) VALUES (2, N'宠物食品', 0)
INSERT [dbo].[S_BusinesCate] ([ID], [CateName], [IsDeleted]) VALUES (3, N'宠物用品', 0)
INSERT [dbo].[S_BusinesCate] ([ID], [CateName], [IsDeleted]) VALUES (4, N'化验项目', 0)
INSERT [dbo].[S_BusinesCate] ([ID], [CateName], [IsDeleted]) VALUES (5, N'影像项目', 0)
INSERT [dbo].[S_BusinesCate] ([ID], [CateName], [IsDeleted]) VALUES (6, N'住院项目', 0)
INSERT [dbo].[S_BusinesCate] ([ID], [CateName], [IsDeleted]) VALUES (7, N'宠物手术', 0)
INSERT [dbo].[S_BusinesCate] ([ID], [CateName], [IsDeleted]) VALUES (8, N'医疗处置', 0)
INSERT [dbo].[S_BusinesCate] ([ID], [CateName], [IsDeleted]) VALUES (9, N'驱虫疫苗', 0)
INSERT [dbo].[S_BusinesCate] ([ID], [CateName], [IsDeleted]) VALUES (10, N'挂号费用', 0)
INSERT [dbo].[S_BusinesCate] ([ID], [CateName], [IsDeleted]) VALUES (11, N'寄养项目', 0)
INSERT [dbo].[S_BusinesCate] ([ID], [CateName], [IsDeleted]) VALUES (12, N'美容服务', 0)
SET IDENTITY_INSERT [dbo].[S_BusinesCate] OFF
/****** Object:  Table [dbo].[S_APPConfig]    Script Date: 06/02/2016 16:19:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[S_APPConfig](
	[ID] [int] NOT NULL,
	[ConfigName] [varchar](500) NULL,
	[ConfigValue] [varchar](2560) NULL,
	[Description] [varchar](2560) NULL,
	[IsDeleted] [int] NOT NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (1, N'会员生日提醒', N'30', NULL, 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (2, N'宠物生日提醒', N'30', NULL, 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (3, N'寄养预付不足提醒', N'5', NULL, 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (4, N'住院预付不足提醒', N'5', NULL, 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (5, N'寄养到期提醒', N'3', NULL, 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (6, N'住院到期提醒', N'3', NULL, 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (7, N'库存不足提醒', N'5', NULL, 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (8, N'商品到期提醒', N'60', NULL, 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (9, N'驱虫疫苗提醒', N'15', N'驱虫疫苗提醒', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (10, N'挂号业务员', N'YGJS000000001,YGJS000000002,YGJS000000003,YGJS000000004', N'挂号业务员', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (11, N'挂号医生', N'YGJS000000001,YGJS000000002,YGJS000000003,YGJS000000004', N'挂号医生', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (12, N'寄养主管人员', N'YGJS000000001,YGJS000000002,YGJS000000003,YGJS000000004', N'寄养主管人员', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (13, N'住院主管人员', N'YGJS000000001,YGJS000000002,YGJS000000003,YGJS000000004', N'住院主管人员', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (14, N'会员生日提醒是否发送信息', N'是', N'是否发送信息', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (15, N'宠物生日提醒是否发送信息', N'是', N'是否发送信息', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (17, N'住院到期提醒是否发送信息', N'是', N'是否发送信息', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (18, N'寄养到期提醒是否发送信息', N'是', N'是否发送信息', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (19, N'寄养预付不足提醒是否发送信息', N'是', N'是否发送信息', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (20, N'住院预付不足提醒是否发送信息', N'是', N'是否发送信息', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (21, N'驱虫疫苗是否发送信息', N'是', N'驱虫疫苗是否发送信息', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (22, N'会员生日提醒短信模板', N'亲爱的{{会员姓名}},{{生日日期}}是您的生日 ,祝您生日快乐', N'会员生日提醒短信模板', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (23, N'宠物生日提醒短信模板', N'亲爱的{{会员姓名}},{{生日日期}}是您的爱宠{{宠物昵称}}的生日,生日快乐', N'宠物生日提醒短信模板', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (24, N'住院过期提醒短信模板', N'亲爱的{{会员姓名}},您的{{宠物昵称}}将于{{到期日期}}住院到期', N'住院到期提醒短信模板', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (25, N'寄养过期提醒短信模板', N'亲爱的{{会员姓名}},您的{{宠物昵称}}将于{{到期日期}}寄养到期', N'寄养到期提醒短信模板', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (26, N'寄养预付不足提醒短信模板', N'亲爱的{{会员姓名}},您的{{宠物昵称}}寄养预付已不足,请及时续费', N'寄养预付不足提醒短信模板', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (27, N'住院预付不足提醒短信模板', N'亲爱的{{会员姓名}},您的{{宠物昵称}}住院预付已不足,请及时续费', N'住院预付不足提醒短信模板', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (28, N'驱虫疫苗提醒短信模板', N'亲爱的{{会员姓名}},您的{{宠物昵称}}需要在{{执行日期}}执行驱虫疫苗,请如期执行', N'驱虫疫苗提醒短信模板', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (29, N'拓瑞权威模板更新日期', N'2016-01-07 12:12:12', N'拓瑞权威模板更新日期', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (30, N'拓瑞检测单提醒短信模板', N'亲爱的{{会员姓名}},您的{{宠物昵称}}检测单号为{{拓瑞检测单号}}的检测已经有结果,请与医生联系查看结果', N'拓瑞检测单提醒短信模板', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (31, N'上传更新配置参数', N'60', N'上传更新配置参数，单位为分钟。', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (32, N'宠物编号前缀', N'CP', N'宠物编号前缀', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (33, N'会员编号前缀', N'VIP', N'会员编号前缀', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (34, N'病历编号前缀', N'BL', N'病历编号前缀', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (35, N'销售单号前缀', N'XS', N'销售单号前缀', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (36, N'寄养编号前缀', N'JY', N'寄养编号前缀', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (37, N'住院编号前缀', N'ZY', N'住院编号前缀', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (38, N'结算单号前缀', N'JS', N'结算单号前缀', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (39, N'驱虫疫苗组号前缀', N'YM', N'驱虫疫苗组号前缀', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (40, N'库存条码前缀', N'WF', N'库存条码前缀', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (41, N'入库单号前缀', N'RK', N'入库单号前缀', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (42, N'出库单号前缀', N'CK', N'出库单号前缀', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (43, N'退货单号前缀', N'TH', N'退货单号前缀', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (44, N'处方流水前缀', N'CF', N'处方流水前缀', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (45, N'宠物编号长度', N'10', N'宠物编号长度', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (46, N'会员编号长度', N'10', N'会员编号长度', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (47, N'病历编号长度', N'10', N'病历编号长度', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (48, N'销售单号长度', N'5', N'销售单号长度', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (49, N'寄养编号长度', N'5', N'寄养编号长度', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (50, N'住院编号长度', N'5', N'住院编号长度', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (51, N'结算单号长度', N'5', N'结算单号长度', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (52, N'驱虫疫苗组号长度', N'5', N'驱虫疫苗组号长度', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (53, N'库存条码长度', N'5', N'库存条码长度', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (54, N'入库单号长度', N'5', N'入库单号长度', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (55, N'出库单号长度', N'5', N'出库单号长度', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (56, N'退货单号长度', N'5', N'退货单号长度', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (57, N'处方流水长度', N'5', N'处方流水长度', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (58, N'经销商编号前缀', N'SP', N'经销商号前缀', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (59, N'商品服务前缀', N'BC', N'商品服务前缀', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (60, N'字典编号前缀', N'DM', N'字典编号前缀', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (61, N'角色编号前缀', N'YGJS', N'角色编号前缀', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (62, N'个人处方模板前缀', N'GRMB', N'个人处方模板前缀', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (63, N'个人处方前缀', N'GRCF', N'个人处方前缀', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (64, N'仓库编号前缀', N'CK', N'仓库编号前缀', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (65, N'员工编号前缀', N'EM', N'员工编号前缀', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (66, N'经销商编号长度', N'10', N'经销商号长度', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (67, N'商品服务长度', N'5', N'商品服务长度', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (68, N'字典编号长度', N'10', N'字典编号长度', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (69, N'角色编号长度', N'10', N'角色编号长度', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (70, N'个人处方模板长度', N'5', N'个人处方模板长度', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (71, N'个人处方长度', N'5', N'个人处方长度', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (72, N'仓库编号长度', N'5', N'仓库编号长度', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (73, N'员工编号长度', N'10', N'员工编号长度', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (74, N'服务类型前缀', N'FWLX', N'服务类型前缀', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (75, N'服务类型长度', N'5', N'服务类型长度', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (76, N'会员等级前缀', N'HYDJ', N'会员等级前缀', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (77, N'会员等级长度', N'5', N'会员等级长度', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (78, N'移库编号前缀', N'YK', N'移库编号前缀', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (79, N'移库编号长度', N'5', N'移库编号长度', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (80, N'服务编号前缀', N'FW', N'服务编号前缀', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (81, N'服务编号长度', N'5', N'服务编号长度', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (82, N'美容师', N'YGJS000000001,YGJS000000002,YGJS000000003,YGJS000000004,YGJS0000000005,YGJS0000000006', N'美容师', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (83, N'美容助理', N'YGJS000000001,YGJS000000002,YGJS000000003,YGJS000000004,YGJS0000000005,YGJS0000000006', N'美容助理', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (84, N'助理医生', N'YGJS000000001,YGJS000000002,YGJS000000003,YGJS000000004', N'助理医生', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (85, N'住院业务员', N'YGJS000000001,YGJS000000002,YGJS000000003,YGJS000000004', N'住院业务员', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (86, N'寄养业务员', N'YGJS000000001,YGJS000000002,YGJS000000003,YGJS000000004', N'寄养业务员', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (89, N'盘点单编号前缀', N'PD', N'盘点单编号前缀', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (90, N'盘点单编号长度', N'5', N'盘点单编号长度', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (91, N'驱虫疫苗免责声明', N'生命是一个动态的过程，潜在很多不可预知的变数，本医院为您的宠物提供尽可能的安全驱虫疫苗服务，但宠物在执行驱虫疫苗后可能会出现过敏反应，这些过敏反应包括：呕吐、皮肤红斑、皮肤红肿、瘙痒、粘膜红肿、急性休克等。如果非药物质量问题或用药失误问题，本医院概不负责。', N'驱虫疫苗免责声明', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (92, N'销售退货单号前缀', N'XT', N'销售退货单号前缀', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (93, N'销售退货单号长度', N'5', N'销售退货单号长度', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (94, N'驱虫疫苗主冶医生', N'YGJS000000001,YGJS000000002,YGJS000000003,YGJS000000004', N'驱虫疫苗主冶医生', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (95, N'驱虫疫苗助理医生', N'YGJS000000001,YGJS000000002,YGJS000000003,YGJS000000004', N'驱虫疫苗助理医生', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (96, N'刷新间隔', N'60', N'单位（秒）', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (97, N'驱虫疫苗执行人', N'YGJS000000001,YGJS000000002,YGJS000000003,YGJS000000004', N'驱虫疫苗执行人', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (98, N'驱虫疫苗提醒过期时间', N'7', N'天', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (100, N'是否启用积分', N'否', N'积分启用状态', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (101, N'积分比例', N'1', N'每消费一元累积积分数量', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (102, N'费用不足提醒', N'5', N'费用不足提醒', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (103, N'费用不足提醒短信模板', N'亲爱的{{会员姓名}},您的预付：{{预付金}}消费总额：{{消费总额}},请及时续费', N'', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (104, N'费用不足提醒是否发送信息', N'是', N'', 0)
INSERT [dbo].[S_APPConfig] ([ID], [ConfigName], [ConfigValue], [Description], [IsDeleted]) VALUES (105, N'尿检设备号', N'', N'尿检设备号', 0)
GO
print 'Processed 100 total records'
/****** Object:  Table [dbo].[M_Warehouse]    Script Date: 06/02/2016 16:19:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Warehouse](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[WarehouseCode] [varchar](50) NULL,
	[WarehouseName] [varchar](100) NULL,
	[IsDrugStore] [varchar](50) NULL,
	[IsSellStore] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
	[Remark] [text] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[M_Warehouse] ON
INSERT [dbo].[M_Warehouse] ([ID], [WarehouseCode], [WarehouseName], [IsDrugStore], [IsSellStore], [Status], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1, N'CKBH0000001', N'医院药房', N'是', N'是', NULL, NULL, N'院长', CAST(0x0000A4C100B5D790 AS DateTime), N'院长', CAST(0x0000A4C100B5D790 AS DateTime), 0)
INSERT [dbo].[M_Warehouse] ([ID], [WarehouseCode], [WarehouseName], [IsDrugStore], [IsSellStore], [Status], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (3, N'CK00003', N'后备仓库', N'否', N'否', NULL, NULL, N'院长', CAST(0x0000A53401352771 AS DateTime), N'院长', CAST(0x0000A53401352771 AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[M_Warehouse] OFF
/****** Object:  Table [dbo].[M_UserDictDetail]    Script Date: 06/02/2016 16:19:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_UserDictDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DictTypeID] [int] NULL,
	[DictDetailCode] [varchar](50) NULL,
	[value_nameCN] [varchar](50) NULL,
	[value_nameEN] [varchar](50) NULL,
	[Sort] [int] NULL,
	[status] [varchar](50) NULL,
	[comments] [varchar](50) NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
 CONSTRAINT [PK__M_UserDictDetail__47FBA9D6] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[M_UserDictDetail] ON
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1, 1, N'DM00001', N'男', NULL, NULL, NULL, NULL, NULL, CAST(0x0000A42C00000000 AS DateTime), NULL, CAST(0x0000A42C00000000 AS DateTime), 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (2, 1, N'DM00002', N'女', NULL, NULL, NULL, NULL, NULL, CAST(0x0000A42C00000000 AS DateTime), NULL, CAST(0x0000A42C00000000 AS DateTime), 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (3, 2, N'DM00003', N'雄性', NULL, NULL, NULL, NULL, NULL, CAST(0x0000A42C00000000 AS DateTime), NULL, CAST(0x0000A42C00000000 AS DateTime), 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (4, 2, N'DM00004', N'雌性', NULL, NULL, NULL, NULL, NULL, CAST(0x0000A42C00000000 AS DateTime), NULL, CAST(0x0000A42C00000000 AS DateTime), 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (5, 3, N'DM00005', N'金色', NULL, NULL, NULL, NULL, NULL, CAST(0x0000A42C00000000 AS DateTime), NULL, CAST(0x0000A42C00000000 AS DateTime), 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (6, 3, N'DM00006', N'白色', NULL, NULL, NULL, NULL, NULL, CAST(0x0000A42C00000000 AS DateTime), NULL, CAST(0x0000A42C00000000 AS DateTime), 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (7, 3, N'DM00007', N'黑色', NULL, NULL, NULL, NULL, NULL, CAST(0x0000A42C00000000 AS DateTime), NULL, CAST(0x0000A42C00000000 AS DateTime), 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (8, 4, N'DM00008', N'无', NULL, NULL, NULL, NULL, NULL, CAST(0x0000A42C00000000 AS DateTime), NULL, CAST(0x0000A42C00000000 AS DateTime), 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (9, 4, N'DM00009', N'片剂', NULL, NULL, NULL, NULL, NULL, CAST(0x0000A42C00000000 AS DateTime), NULL, CAST(0x0000A42C00000000 AS DateTime), 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (10, 4, N'DM00010', N'水剂', NULL, NULL, NULL, NULL, NULL, CAST(0x0000A42C00000000 AS DateTime), NULL, CAST(0x0000A42C00000000 AS DateTime), 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (11, 5, N'DM00011', N'套', NULL, NULL, NULL, NULL, NULL, CAST(0x0000A42C00000000 AS DateTime), NULL, CAST(0x0000A42C00000000 AS DateTime), 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (12, 5, N'DM00012', N'头份', NULL, NULL, NULL, NULL, NULL, CAST(0x0000A42C00000000 AS DateTime), NULL, CAST(0x0000A42C00000000 AS DateTime), 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (13, 5, N'DM00013', N'次', NULL, NULL, NULL, NULL, NULL, CAST(0x0000A42C00000000 AS DateTime), NULL, CAST(0x0000A42C00000000 AS DateTime), 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (14, 5, N'DM00014', N'瓶', NULL, NULL, NULL, NULL, NULL, CAST(0x0000A42C00000000 AS DateTime), NULL, CAST(0x0000A42C00000000 AS DateTime), 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (15, 5, N'DM00015', N'片', NULL, NULL, NULL, NULL, NULL, CAST(0x0000A42C00000000 AS DateTime), NULL, CAST(0x0000A42C00000000 AS DateTime), 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (16, 6, N'DM00016', N'犬科', NULL, NULL, NULL, NULL, NULL, CAST(0x0000A42C00000000 AS DateTime), NULL, CAST(0x0000A42C00000000 AS DateTime), 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (17, 6, N'DM00017', N'猫科', NULL, NULL, NULL, NULL, NULL, CAST(0x0000A42C00000000 AS DateTime), NULL, CAST(0x0000A42C00000000 AS DateTime), 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (18, 5, N'DM00018', N'天', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (19, 5, N'DM00019', N'500g', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (20, 8, N'DM00020', N'销售', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (21, 8, N'DM00021', N'无公害处理', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (22, 4, N'DM00022', N'针剂', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (23, 7, N'DM00023', N'10^9/L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (24, 7, N'DM00024', N'%', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (25, 7, N'DM00025', N'10^12/L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (26, 7, N'DM00026', N'g/L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (27, 7, N'DM00027', N'mmol/L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (28, 7, N'DM00028', N'U/L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (29, 7, N'DM00029', N'umol/L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (30, 5, N'DM00030', N'针', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (32, 3, N'DM00032', N'狸花色', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (33, 3, N'DM00033', N'黑白相间', N'', NULL, N'', N'', N'', NULL, N'', NULL, 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (36, 2, N'DM00035', N'其他', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (37, 3, N'DM00036', N'杂毛', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (38, 5, N'DM00037', N'头/份', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (41, 5, N'DM00038', N'盒', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (42, 5, N'DM00041', N'袋', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (43, 4, N'DM00039', N'粉剂', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (44, 7, N'DM00040', N'fL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (45, 7, N'DM00042', N'pg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (46, 3, N'DM00043', N'灰色', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (47, 5, N'DM00044', N'个', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (48, 5, N'DM00045', N'张', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (49, 4, N'DM00046', N'365', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (50, 5, N'DM00047', N'包', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (51, 5, N'DM00048', N'只', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (52, 5, N'DM00049', N'扎', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (53, 5, N'DM00050', N'支', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (54, 4, N'DM00051', N'膏剂', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (55, 5, N'DM00052', N'付', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (56, 5, N'DM00053', N'粒', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (57, 5, N'DM00054', N'罐', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (58, 5, N'DM0000000055', N'桶', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (59, 5, N'DM0000000056', N'无', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (60, 5, N'DM0000000057', N'板', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (61, 5, N'DM0000000058', N'铁包金', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (62, 6, N'DM0000000060', N'兔', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (63, 5, N'DM0000000061', N'支', NULL, NULL, NULL, NULL, NULL, CAST(0x0000A58B000590B3 AS DateTime), NULL, CAST(0x0000A58B000590B3 AS DateTime), 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (64, 6, N'DM00000', N'其它', NULL, NULL, NULL, NULL, NULL, CAST(0x0000A59C00EDD235 AS DateTime), NULL, CAST(0x0000A59C00EDD235 AS DateTime), 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (65, 9, N'DM0000000062', N'点眼', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (66, 9, N'DM0000000063', N'肌注', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (67, 9, N'DM0000000064', N'静注', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (68, 9, N'DM0000000065', N'皮下注射', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (69, 9, N'DM0000000066', N'外用', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (70, 9, N'DM0000000067', N'口服', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (71, 9, N'DM0000000068', N'雾化给药', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (72, 9, N'DM0000000069', N'穴位注射', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (73, 9, N'DM0000000070', N'腹腔注射', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (74, 9, N'DM0000000071', N'直肠灌注', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (75, 10, N'DM0000000072', N'一次/天', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (76, 10, N'DM0000000073', N'二次/天', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (77, 10, N'DM0000000074', N'三次/天', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (78, 10, N'DM0000000075', N'四次/天', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (79, 10, N'DM0000000076', N'五次/天', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (80, 10, N'DM0000000077', N'六次/天', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (81, 7, N'DM00078', N'10x9/L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (82, 7, N'DM00079', N'10x3/μL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (83, 7, N'DM00080', N'10x6/μL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (84, 7, N'DM00081', N'10x12/L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (85, 7, N'DM00082', N'g/dL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (86, 7, N'DM00083', N'K/μL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (87, 7, N'DM00084', N'mg/dL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (88, 7, N'DM00085', N'K/ul', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (89, 7, N'DM00086', N'μmol/L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (90, 7, N'DM00087', N'#', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (91, 7, N'DM00088', N'sec', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (92, 7, N'DM00089', N'mmHg', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (93, 7, N'DM00090', N'mEq/L', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (94, 7, N'DM00091', N'ul/dL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (95, 7, N'DM00092', N'Leu/μL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
INSERT [dbo].[M_UserDictDetail] ([ID], [DictTypeID], [DictDetailCode], [value_nameCN], [value_nameEN], [Sort], [status], [comments], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (96, 7, N'DM00093', N'Ery/μL', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0)
SET IDENTITY_INSERT [dbo].[M_UserDictDetail] OFF
/****** Object:  Table [dbo].[M_UserDict]    Script Date: 06/02/2016 16:19:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_UserDict](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DictName] [varchar](50) NULL,
	[CanEdit] [varchar](50) NULL,
	[CanView] [varchar](50) NULL,
	[IsDeleted] [int] NOT NULL,
 CONSTRAINT [PK__M_UserDict__46136164] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[M_UserDict] ON
INSERT [dbo].[M_UserDict] ([ID], [DictName], [CanEdit], [CanView], [IsDeleted]) VALUES (1, N'性别', N'0', N'0', 0)
INSERT [dbo].[M_UserDict] ([ID], [DictName], [CanEdit], [CanView], [IsDeleted]) VALUES (2, N'动物性别', N'0', N'1', 0)
INSERT [dbo].[M_UserDict] ([ID], [DictName], [CanEdit], [CanView], [IsDeleted]) VALUES (3, N'动物颜色', N'1', N'1', 0)
INSERT [dbo].[M_UserDict] ([ID], [DictName], [CanEdit], [CanView], [IsDeleted]) VALUES (4, N'剂型', N'1', N'1', 0)
INSERT [dbo].[M_UserDict] ([ID], [DictName], [CanEdit], [CanView], [IsDeleted]) VALUES (5, N'物品单位', N'1', N'1', 0)
INSERT [dbo].[M_UserDict] ([ID], [DictName], [CanEdit], [CanView], [IsDeleted]) VALUES (6, N'医疗类型', N'1', N'1', 0)
INSERT [dbo].[M_UserDict] ([ID], [DictName], [CanEdit], [CanView], [IsDeleted]) VALUES (7, N'化验单位', N'1', N'1', 0)
INSERT [dbo].[M_UserDict] ([ID], [DictName], [CanEdit], [CanView], [IsDeleted]) VALUES (8, N'出库原因', N'1', N'1', 0)
INSERT [dbo].[M_UserDict] ([ID], [DictName], [CanEdit], [CanView], [IsDeleted]) VALUES (9, N'药品使用方法', N'1', N'1', 0)
INSERT [dbo].[M_UserDict] ([ID], [DictName], [CanEdit], [CanView], [IsDeleted]) VALUES (10, N'用药频次', N'1', N'1', 0)
SET IDENTITY_INSERT [dbo].[M_UserDict] OFF
/****** Object:  Table [dbo].[M_TRPrescription_TemplateType]    Script Date: 06/02/2016 16:19:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_TRPrescription_TemplateType](
	[ID] [int] NOT NULL,
	[TypeNo] [varchar](50) NULL,
	[PNo] [varchar](50) NULL,
	[TypeName] [varchar](50) NULL,
	[GestID] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
 CONSTRAINT [PK__M_TRPrescription__442B18F2] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[M_TRPrescription_TemplateType] ([ID], [TypeNo], [PNo], [TypeName], [GestID], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (9, N'MB10', N'', N'犬、猫免疫性疾病', 0, N'', CAST(0x0000A43D012850A4 AS DateTime), N'', CAST(0x0000A43D012850A4 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateType] ([ID], [TypeNo], [PNo], [TypeName], [GestID], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (10, N'MB11', N'', N'犬、猫营养及代谢性疾病', 0, N'', CAST(0x0000A43D012873CC AS DateTime), N'', CAST(0x0000A43D012873CC AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateType] ([ID], [TypeNo], [PNo], [TypeName], [GestID], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (101, N'MB101', N'', N'呼吸器官', 0, N'', CAST(0x0000A58400F16B84 AS DateTime), N'', CAST(0x0000A58400F16B84 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateType] ([ID], [TypeNo], [PNo], [TypeName], [GestID], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (102, N'MB102', N'', N'皮肤科', 0, N'', CAST(0x0000A58400F16B84 AS DateTime), N'', CAST(0x0000A58400F16B84 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateType] ([ID], [TypeNo], [PNo], [TypeName], [GestID], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (103, N'MB103', N'', N'手术', 0, N'', CAST(0x0000A58400F16B84 AS DateTime), N'', CAST(0x0000A58400F16B84 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateType] ([ID], [TypeNo], [PNo], [TypeName], [GestID], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (104, N'MB104', N'', N'外耳炎', 0, N'', CAST(0x0000A58400F16B84 AS DateTime), N'', CAST(0x0000A58400F16B84 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateType] ([ID], [TypeNo], [PNo], [TypeName], [GestID], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (105, N'MB105', N'', N'细小', 0, N'', CAST(0x0000A58400F16B84 AS DateTime), N'', CAST(0x0000A58400F16B84 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateType] ([ID], [TypeNo], [PNo], [TypeName], [GestID], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (106, N'MB106', N'', N'消化器官', 0, N'', CAST(0x0000A58400F16B84 AS DateTime), N'', CAST(0x0000A58400F16B84 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateType] ([ID], [TypeNo], [PNo], [TypeName], [GestID], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (107, N'MB107', N'', N'心丝虫', 0, N'', CAST(0x0000A58400F16B84 AS DateTime), N'', CAST(0x0000A58400F16B84 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateType] ([ID], [TypeNo], [PNo], [TypeName], [GestID], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (108, N'MB108', N'', N'心脏', 0, N'', CAST(0x0000A58400F16B84 AS DateTime), N'', CAST(0x0000A58400F16B84 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateType] ([ID], [TypeNo], [PNo], [TypeName], [GestID], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (109, N'MB109', N'', N'牙科', 0, N'', CAST(0x0000A58400F16B84 AS DateTime), N'', CAST(0x0000A58400F16B84 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateType] ([ID], [TypeNo], [PNo], [TypeName], [GestID], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (110, N'MB110', N'', N'眼科', 0, N'', CAST(0x0000A58400F16B84 AS DateTime), N'', CAST(0x0000A58400F16B84 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateType] ([ID], [TypeNo], [PNo], [TypeName], [GestID], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (111, N'MB103101', N'MB103', N'产科', 0, N'', CAST(0x0000A58400F16B84 AS DateTime), N'', CAST(0x0000A58400F16B84 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateType] ([ID], [TypeNo], [PNo], [TypeName], [GestID], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (112, N'MB103102', N'MB103', N'消化器官', 0, N'', CAST(0x0000A58400F16B84 AS DateTime), N'', CAST(0x0000A58400F16B84 AS DateTime), 0)
/****** Object:  Table [dbo].[M_TRPrescription_TemplateDetail]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_TRPrescription_TemplateDetail](
	[ID] [int] NOT NULL,
	[TemplateID] [int] NULL,
	[TemplateNo] [varchar](50) NULL,
	[ItemCode] [varchar](50) NULL,
	[ItemName] [varchar](50) NULL,
	[ItemNum] [int] NULL,
	[SellPrice] [numeric](18, 2) NULL,
	[RecipeUnit] [varchar](50) NULL,
	[UseWay] [varchar](max) NULL,
	[GestID] [int] NULL,
	[ItemStyle] [varchar](50) NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
 CONSTRAINT [PK__M_TRPrescription__4242D080] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (7, 3, N'AM1', N'', N'发士大夫', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'时代的说法', 0, N'稍等', N'admin', CAST(0x0000A47700A9E174 AS DateTime), N'admin', CAST(0x0000A47700A9E174 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (8, 4, N'AM2', N'', N'双叶草', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'用法简介', 0, N'分组2', N'admin', CAST(0x0000A47700FD4904 AS DateTime), N'admin', CAST(0x0000A47700FD4904 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (12, 3, N'AM1', N'', N'双黄连', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'医药的用法', 0, N'某一分组', N'admin', CAST(0x0000A47700FEDE7C AS DateTime), N'admin', CAST(0x0000A4770104E254 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (14, 4, N'AM2', N'', N'的税费负担', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'用法说明', 0, N'无', N'admin', CAST(0x0000A47700FF3408 AS DateTime), N'admin', CAST(0x0000A47700FF3408 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (19, 6, N'AM3', N'', N'头孢拉定', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每日一次，一次十ML', 0, N'无', N'test', CAST(0x0000A4AD00FAE9FC AS DateTime), N'test', CAST(0x0000A4F4010891B0 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (25, 9, N'AM4', N'', N'旺旺五联抗', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'肌肉注射：0.1ml/kg体重，1次/天，连用2天。预防剂量减半或遵医嘱。', 0, N'', N'test', CAST(0x0000A4C600F3F00C AS DateTime), N'test', CAST(0x0000A4C600F3F00C AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (28, 9, N'AM4', N'', N'美沙同', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'皮下注射', 0, N'', N'test', CAST(0x0000A4D700BB1EBC AS DateTime), N'test', CAST(0x0000A4D700BB1EBC AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (29, 6, N'AM3', N'', N'奥美拉唑', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'口服，每日一次，饭前服用。', 0, N'', N'test', CAST(0x0000A4EA00C0DE9C AS DateTime), N'test', CAST(0x0000A4EA00C0DE9C AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (30, 11, N'AM6', N'', N'犬干扰素', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'一天一次', 0, N'', N'test', CAST(0x0000A4F9010042BC AS DateTime), N'test', CAST(0x0000A4F9010042BC AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (31, 12, N'AM7', N'', N'舒一宁', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每天一包', 0, N'', N'test', CAST(0x0000A4F901015170 AS DateTime), N'test', CAST(0x0000A4F901015170 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (32, 12, N'AM7', N'', N'清热颗粒', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每天三次', 0, N'', N'test', CAST(0x0000A4F9010167B4 AS DateTime), N'test', CAST(0x0000A4F9010167B4 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (33, 13, N'AM8', N'', N'sadas', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'asdasdsa', 0, N'', N'test', CAST(0x0000A51B011E2390 AS DateTime), N'test', CAST(0x0000A51B011E2390 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (34, 13, N'AM8', N'', N'ssaas', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'xccxzxzcxz', 0, N'', N'test', CAST(0x0000A51B011E2CF0 AS DateTime), N'test', CAST(0x0000A51B011E2CF0 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (35, 13, N'AM8', N'', N'sacsa', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'ascas', 0, N'', N'test', CAST(0x0000A51B011E3650 AS DateTime), N'test', CAST(0x0000A51B011E3650 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (36, 6, N'AM3', N'', N'益生菌', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'口服，拌于宠物食物中与食物一同食用，或与温热水混合均匀后直接饲喂，最好用不高于40度温水冲泡开 完全', 0, N'', N'test', CAST(0x0000A51D00E6D750 AS DateTime), N'test', CAST(0x0000A51D00E6D750 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (37, 6, N'AM3', N'', N'康定', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'口服，拌于宠物食物中与食物一同食用，或与温热水混合均匀后直接饲喂，最好用不高于40度温水冲泡开 完全', 0, N'', N'test', CAST(0x0000A52101111D94 AS DateTime), N'test', CAST(0x0000A536010BAB0C AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (40, 14, N'AM8', N'', N'23423', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'DSJFKLDSJAFDLSJFDS;AFSD', 0, N'', N'cfadmin', CAST(0x0000A54000C03E10 AS DateTime), N'cfadmin', CAST(0x0000A54000C03E10 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (41, 14, N'AM8', N'', N'32492341032843092', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'REWUR9EWRE9W8R9EW8QRW90', 0, N'', N'cfadmin', CAST(0x0000A54000C04AF4 AS DateTime), N'cfadmin', CAST(0x0000A54000C04AF4 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (42, 15, N'AM9', N'', N'dsjfslkd', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'dsjflkdsjafkldjfkldsajfadsjfdsl', 0, N'', N'cfadmin', CAST(0x0000A54000C3BC34 AS DateTime), N'cfadmin', CAST(0x0000A54000C3BC34 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (43, 16, N'AM1', N'', N'jkjhjkkjjk', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'jkhjhjkhkjhjkjkhkj', 0, N'', N'cfadmin', CAST(0x0000A54000F7326C AS DateTime), N'cfadmin', CAST(0x0000A54000F7326C AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (44, 17, N'AM1', N'', N'头孢拉定', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次一片，一天3次，3个月以内的幼仔，需在医生建议下使用', 0, N'', N'test', CAST(0x0000A540010FD574 AS DateTime), N'test', CAST(0x0000A540010FD574 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (45, 17, N'AM1', N'', N'阿莫西林', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次一片，一天3次，3个月以内的幼仔，需在医生建议下使用', 0, N'', N'test', CAST(0x0000A54001101F48 AS DateTime), N'test', CAST(0x0000A54001101F48 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (46, 17, N'AM1', N'', N'舒血丸', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次3粒，一天3次，3个月以内的幼仔，需在医生建议下使用', 0, N'', N'test', CAST(0x0000A54001105404 AS DateTime), N'test', CAST(0x0000A54001105404 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (47, 18, N'AM2', N'', N'89798', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'89798798', 0, N'', N'cfadmin', CAST(0x0000A5400115FECC AS DateTime), N'cfadmin', CAST(0x0000A5400115FECC AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (48, 19, N'AM2', N'', N'4567', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'556788u8998', 0, N'', N'test', CAST(0x0000A54100F6DCE0 AS DateTime), N'test', CAST(0x0000A54100F6DCE0 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (49, 19, N'AM2', N'', N'687', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'iuhihihjkhjk', 0, N'', N'test', CAST(0x0000A54100F6E640 AS DateTime), N'test', CAST(0x0000A54100F6E640 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1001, 1017, N'QW0017', N'', N'恩诺沙星', 2, CAST(0.00 AS Numeric(18, 2)), N'', N'每次2.5毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1002, 1017, N'QW0017', N'', N'硫酸头孢噻肟', 20, CAST(0.00 AS Numeric(18, 2)), N'', N'每次20毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1003, 1017, N'QW0017', N'', N'磺胺甲恶唑/甲氧苄氨嘧啶', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.2毫升每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1004, 1017, N'QW0017', N'', N'西咪替丁', 5, CAST(0.00 AS Numeric(18, 2)), N'', N'每次5毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1005, 1017, N'QW0017', N'', N'甲氧氯普安', 1, CAST(0.00 AS Numeric(18, 2)), N'', N'每次1毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1006, 1027, N'QW0027', N'', N'阿托品', 1, CAST(0.00 AS Numeric(18, 2)), N'', N'每次1EA，每日3次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1007, 1027, N'QW0027', N'', N'地塞米松+多粘菌素B+新霉素', 1, CAST(0.00 AS Numeric(18, 2)), N'', N'每次1EA，每日3次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1008, 1027, N'QW0027', N'', N'恩诺沙星', 2, CAST(0.00 AS Numeric(18, 2)), N'', N'每次2.5毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1009, 1027, N'QW0027', N'', N'泼尼松龙、强的松', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.5毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1010, 1027, N'QW0027', N'', N'环丙沙星', 5, CAST(0.00 AS Numeric(18, 2)), N'', N'每次5毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1011, 1027, N'QW0027', N'', N'泼尼松龙、强的松', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.5毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1012, 1027, N'QW0027', N'', N'沙氏菌蛋白酶', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.1T/kg，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1013, 1011, N'QW0011', N'', N'恩诺沙星', 2, CAST(0.00 AS Numeric(18, 2)), N'', N'每次2.5毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1014, 1011, N'QW0011', N'', N'泼尼松龙、强的松', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.5毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1015, 1011, N'QW0011', N'', N'伊维菌素', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.05毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1016, 1011, N'QW0011', N'', N'新霉素+制霉菌素+曲安奈德+林丹', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0EA，每日0次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1017, 1011, N'QW0011', N'', N'阿莫西林', 10, CAST(0.00 AS Numeric(18, 2)), N'', N'每次10毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1018, 1011, N'QW0011', N'', N'头孢拉定', 10, CAST(0.00 AS Numeric(18, 2)), N'', N'每次10毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1019, 1011, N'QW0011', N'', N'氧氟沙星', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.05T/kg，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1020, 1011, N'QW0011', N'', N'泼尼松龙、强的松', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.5毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1021, 1011, N'QW0011', N'', N'沙氏菌蛋白酶', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.1T/kg，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1022, 1028, N'QW0028', N'', N'地塞米松+多粘菌素B+新霉素', 1, CAST(0.00 AS Numeric(18, 2)), N'', N'每次1EA，每日3次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1023, 1028, N'QW0028', N'', N'氧氟沙星', 1, CAST(0.00 AS Numeric(18, 2)), N'', N'每次1EA，每日3次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1024, 1028, N'QW0028', N'', N'恩诺沙星', 2, CAST(0.00 AS Numeric(18, 2)), N'', N'每次2.5毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1025, 1028, N'QW0028', N'', N'泼尼松龙、强的松', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.5毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1026, 1028, N'QW0028', N'', N'环丙沙星', 5, CAST(0.00 AS Numeric(18, 2)), N'', N'每次5毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1027, 1028, N'QW0028', N'', N'泼尼松龙、强的松', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.5毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1028, 1012, N'QW0012', N'', N'恩诺沙星', 2, CAST(0.00 AS Numeric(18, 2)), N'', N'每次2.5毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1029, 1012, N'QW0012', N'', N'泼尼松龙、强的松', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.5毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1030, 1012, N'QW0012', N'', N'伊维菌素', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.05毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1031, 1012, N'QW0012', N'', N'阿莫西林', 10, CAST(0.00 AS Numeric(18, 2)), N'', N'每次10毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1032, 1012, N'QW0012', N'', N'头孢拉定', 10, CAST(0.00 AS Numeric(18, 2)), N'', N'每次10毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1033, 1012, N'QW0012', N'', N'氧氟沙星', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.05毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1034, 1012, N'QW0012', N'', N'泼尼松龙、强的松', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.5毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1035, 1012, N'QW0012', N'', N'沙氏菌蛋白酶', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.1毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1036, 1018, N'QW0018', N'', N'恩诺沙星', 2, CAST(0.00 AS Numeric(18, 2)), N'', N'每次2.5毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1037, 1018, N'QW0018', N'', N'伊多-甲氧萘丁酮酸（孟布酮100mg/ml)', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.1毫升每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1038, 1018, N'QW0018', N'', N'甲硝唑', 10, CAST(0.00 AS Numeric(18, 2)), N'', N'每次10毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1039, 1018, N'QW0018', N'', N'甲硝唑', 10, CAST(0.00 AS Numeric(18, 2)), N'', N'每次10毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1040, 1018, N'QW0018', N'', N'阿苯达唑', 25, CAST(0.00 AS Numeric(18, 2)), N'', N'每次25毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1041, 1018, N'QW0018', N'', N'甲氧苄氨嘧啶+磺胺嘧啶片剂', 15, CAST(0.00 AS Numeric(18, 2)), N'', N'每次15毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1042, 1018, N'QW0018', N'', N'促甲状腺激素注射剂', 10, CAST(0.00 AS Numeric(18, 2)), N'', N'每次10毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1043, 1019, N'QW0019', N'', N'恩诺沙星', 2, CAST(0.00 AS Numeric(18, 2)), N'', N'每次2.5毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1044, 1019, N'QW0019', N'', N'泼尼松龙、强的松', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.5毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1045, 1019, N'QW0019', N'', N'甲氧苄氨嘧啶+磺胺嘧啶片剂', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.1毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1046, 1019, N'QW0019', N'', N'伊多-甲氧萘丁酮酸（孟布酮100mg/ml)', 10, CAST(0.00 AS Numeric(18, 2)), N'', N'每次10毫升每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1047, 1019, N'QW0019', N'', N'他克莫司注射剂', 10, CAST(0.00 AS Numeric(18, 2)), N'', N'每次10毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1048, 1019, N'QW0019', N'', N'硝呋齐特', 5, CAST(0.00 AS Numeric(18, 2)), N'', N'每次5毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1049, 1029, N'QW0029', N'', N'环孢霉素', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0EA，每日0次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1050, 1029, N'QW0029', N'', N'1%皮洛卡品', 1, CAST(0.00 AS Numeric(18, 2)), N'', N'每次1EA，每日3次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1051, 1029, N'QW0029', N'', N'人造眼泪', 1, CAST(0.00 AS Numeric(18, 2)), N'', N'每次1EA，每日3次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1052, 1029, N'QW0029', N'', N'恩诺沙星', 2, CAST(0.00 AS Numeric(18, 2)), N'', N'每次2.5毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1053, 1029, N'QW0029', N'', N'胰凝乳蛋白酶', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.1毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1054, 1029, N'QW0029', N'', N'氧氟沙星', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.05T/kg，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1055, 1029, N'QW0029', N'', N'胰凝乳蛋白酶', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.1毫克每只，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1056, 1029, N'QW0029', N'', N'泼尼松龙、强的松', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.5毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1057, 1029, N'QW0029', N'', N'乙酰半胱氨酸', 70, CAST(0.00 AS Numeric(18, 2)), N'', N'每次70毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1058, 1009, N'QW0009', N'', N'恩诺沙星', 2, CAST(0.00 AS Numeric(18, 2)), N'', N'每次2.5毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1059, 1009, N'QW0009', N'', N'泼尼松龙、强的松', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.5毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1060, 1009, N'QW0009', N'', N'阿莫西林', 10, CAST(0.00 AS Numeric(18, 2)), N'', N'每次10毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1061, 1009, N'QW0009', N'', N'沙氏菌蛋白酶', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.1T/kg，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1062, 1030, N'QW0030', N'', N'庆大霉素', 1, CAST(0.00 AS Numeric(18, 2)), N'', N'每次1毫克每千克，每日3次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1063, 1030, N'QW0030', N'', N'恩诺沙星', 2, CAST(0.00 AS Numeric(18, 2)), N'', N'每次2.5毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1064, 1030, N'QW0030', N'', N'氧氟沙星', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.05T/kg，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1065, 1030, N'QW0030', N'', N'沙氏菌蛋白酶', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.1T/kg，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1066, 1031, N'QW0031', N'', N'地塞米松+多粘菌素B+新霉素', 1, CAST(0.00 AS Numeric(18, 2)), N'', N'每次1EA，每日3次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1067, 1031, N'QW0031', N'', N'氧氟沙星', 1, CAST(0.00 AS Numeric(18, 2)), N'', N'每次1EA，每日3次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1068, 1031, N'QW0031', N'', N'恩诺沙星', 2, CAST(0.00 AS Numeric(18, 2)), N'', N'每次2.5毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1069, 1031, N'QW0031', N'', N'泼尼松龙、强的松', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.5毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1070, 1031, N'QW0031', N'', N'环丙沙星', 5, CAST(0.00 AS Numeric(18, 2)), N'', N'每次5毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1071, 1031, N'QW0031', N'', N'泼尼松龙、强的松', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.5毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1072, 1003, N'QW0003', N'', N'伊维菌素', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.05毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1073, 1003, N'QW0003', N'', N'恩诺沙星', 2, CAST(0.00 AS Numeric(18, 2)), N'', N'每次2.5毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1074, 1003, N'QW0003', N'', N'泼尼松龙、强的松', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.5毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1075, 1003, N'QW0003', N'', N'马来酸氯苯那敏', 2, CAST(0.00 AS Numeric(18, 2)), N'', N'每次2毫克每只，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
GO
print 'Processed 100 total records'
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1076, 1003, N'QW0003', N'', N'阿莫西林', 10, CAST(0.00 AS Numeric(18, 2)), N'', N'每次10毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1077, 1003, N'QW0003', N'', N'头孢氨苄', 10, CAST(0.00 AS Numeric(18, 2)), N'', N'每次10毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1078, 1003, N'QW0003', N'', N'沙氏菌蛋白酶', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.1T/kg，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1079, 1003, N'QW0003', N'', N'泼尼松龙、强的松', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.5毫升每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1080, 1003, N'QW0003', N'', N'马来酸氯苯那敏', 2, CAST(0.00 AS Numeric(18, 2)), N'', N'每次2毫克每只，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1081, 1003, N'QW0003', N'', N'克里马丁', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.05毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1082, 1032, N'QW0032', N'', N'庆大霉素', 1, CAST(0.00 AS Numeric(18, 2)), N'', N'每次1EA，每日3次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1083, 1032, N'QW0032', N'', N'恩诺沙星', 2, CAST(0.00 AS Numeric(18, 2)), N'', N'每次2.5毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1084, 1032, N'QW0032', N'', N'泼尼松龙、强的松', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.5毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1085, 1032, N'QW0032', N'', N'氧氟沙星', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.05T/kg，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1086, 1032, N'QW0032', N'', N'泼尼松龙、强的松', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.5毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1087, 1033, N'QW0033', N'', N'氯霉素', 1, CAST(0.00 AS Numeric(18, 2)), N'', N'每次1EA，每日3次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1088, 1033, N'QW0033', N'', N'双氯芬酸', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0EA，每日0次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1089, 1033, N'QW0033', N'', N'地塞米松+多粘菌素B+新霉素', 1, CAST(0.00 AS Numeric(18, 2)), N'', N'每次1EA，每日3次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1090, 1033, N'QW0033', N'', N'恩诺沙星', 2, CAST(0.00 AS Numeric(18, 2)), N'', N'每次2.5毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1091, 1033, N'QW0033', N'', N'地塞米松', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.1毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1092, 1033, N'QW0033', N'', N'马来酸氯苯那敏', 2, CAST(0.00 AS Numeric(18, 2)), N'', N'每次2毫克每只，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1093, 1033, N'QW0033', N'', N'血流量增强（草木樨）', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.1毫升每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1094, 1033, N'QW0033', N'', N'头孢氨苄', 10, CAST(0.00 AS Numeric(18, 2)), N'', N'每次10毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1095, 1033, N'QW0033', N'', N'酮康唑', 10, CAST(0.00 AS Numeric(18, 2)), N'', N'每次10毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1096, 1033, N'QW0033', N'', N'马来酸氯苯那敏', 2, CAST(0.00 AS Numeric(18, 2)), N'', N'每次2毫克每只，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1097, 1033, N'QW0033', N'', N'泼尼松龙、强的松', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.5毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1098, 1004, N'QW0004', N'', N'恩诺沙星', 2, CAST(0.00 AS Numeric(18, 2)), N'', N'每次2.5毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1099, 1004, N'QW0004', N'', N'阿莫西林', 10, CAST(0.00 AS Numeric(18, 2)), N'', N'每次10毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1100, 1004, N'QW0004', N'', N'阿莫西林克拉维酸', 12, CAST(0.00 AS Numeric(18, 2)), N'', N'每次12.5毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1101, 1004, N'QW0004', N'', N'头孢氨苄', 10, CAST(0.00 AS Numeric(18, 2)), N'', N'每次10毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1102, 1004, N'QW0004', N'', N'酮康唑', 10, CAST(0.00 AS Numeric(18, 2)), N'', N'每次10毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1103, 1004, N'QW0004', N'', N'伊曲康唑', 5, CAST(0.00 AS Numeric(18, 2)), N'', N'每次5毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1104, 1004, N'QW0004', N'', N'沙氏菌蛋白酶', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.1T/kg，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1105, 1004, N'QW0004', N'', N'酮康唑', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0EA，每日0次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1106, 1013, N'QW0013', N'', N'恩诺沙星', 2, CAST(0.00 AS Numeric(18, 2)), N'', N'每次2.5毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1107, 1013, N'QW0013', N'', N'泼尼松龙', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.5毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1108, 1013, N'QW0013', N'', N'氧氟沙星', 1, CAST(0.00 AS Numeric(18, 2)), N'', N'每次1毫克每千克，每日3次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1109, 1013, N'QW0013', N'', N'阿莫西林', 10, CAST(0.00 AS Numeric(18, 2)), N'', N'每次10毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1110, 1013, N'QW0013', N'', N'头孢拉定', 10, CAST(0.00 AS Numeric(18, 2)), N'', N'每次10毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1111, 1013, N'QW0013', N'', N'氧氟沙星', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.05T/kg，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1112, 1013, N'QW0013', N'', N'酮康唑', 10, CAST(0.00 AS Numeric(18, 2)), N'', N'每次10毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1113, 1013, N'QW0013', N'', N'伊曲康唑', 5, CAST(0.00 AS Numeric(18, 2)), N'', N'每次5毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1114, 1013, N'QW0013', N'', N'泼尼松龙、强的松', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.5毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1115, 1013, N'QW0013', N'', N'沙氏菌蛋白酶', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.1T/kg，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1116, 1013, N'QW0013', N'', N'熊去氧胆酸', 10, CAST(0.00 AS Numeric(18, 2)), N'', N'每次10毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1117, 1014, N'QW0014', N'', N'恩诺沙星', 2, CAST(0.00 AS Numeric(18, 2)), N'', N'每次2.5毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1118, 1014, N'QW0014', N'', N'泼尼松龙、强的松', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.5毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1119, 1014, N'QW0014', N'', N'阿莫西林', 10, CAST(0.00 AS Numeric(18, 2)), N'', N'每次10毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1120, 1014, N'QW0014', N'', N'酮康唑', 10, CAST(0.00 AS Numeric(18, 2)), N'', N'每次10毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1121, 1014, N'QW0014', N'', N'伊曲康唑', 5, CAST(0.00 AS Numeric(18, 2)), N'', N'每次5毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1122, 1014, N'QW0014', N'', N'头孢拉定', 10, CAST(0.00 AS Numeric(18, 2)), N'', N'每次10毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1123, 1014, N'QW0014', N'', N'氧氟沙星', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.05T/kg，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1124, 1014, N'QW0014', N'', N'泼尼松龙、强的松', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.5毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1125, 1014, N'QW0014', N'', N'沙氏菌蛋白酶', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.1T/kg，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1126, 1014, N'QW0014', N'', N'熊去氧胆酸', 10, CAST(0.00 AS Numeric(18, 2)), N'', N'每次10毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1127, 1005, N'QW0005', N'', N'伊维菌素', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.05毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1128, 1005, N'QW0005', N'', N'恩诺沙星', 2, CAST(0.00 AS Numeric(18, 2)), N'', N'每次2.5毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1129, 1005, N'QW0005', N'', N'阿莫西林', 10, CAST(0.00 AS Numeric(18, 2)), N'', N'每次10毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1130, 1005, N'QW0005', N'', N'头孢氨苄', 10, CAST(0.00 AS Numeric(18, 2)), N'', N'每次10毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1131, 1005, N'QW0005', N'', N'沙氏菌蛋白酶', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.1T/kg，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1132, 1020, N'QW0020', N'', N'阿莫西林钠', 10, CAST(0.00 AS Numeric(18, 2)), N'', N'每次10毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1133, 1020, N'QW0020', N'', N'西咪替丁', 5, CAST(0.00 AS Numeric(18, 2)), N'', N'每次5毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1134, 1020, N'QW0020', N'', N'甲氧氯普安', 1, CAST(0.00 AS Numeric(18, 2)), N'', N'每次1毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1135, 1020, N'QW0020', N'', N'阿莫西林', 10, CAST(0.00 AS Numeric(18, 2)), N'', N'每次10毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1136, 1020, N'QW0020', N'', N'西咪替丁', 5, CAST(0.00 AS Numeric(18, 2)), N'', N'每次5毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1137, 1020, N'QW0020', N'', N'硫糖铝', 250, CAST(0.00 AS Numeric(18, 2)), N'', N'每次250毫克每只，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1138, 1021, N'QW0021', N'', N'西咪替丁', 5, CAST(0.00 AS Numeric(18, 2)), N'', N'每次5毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1139, 1021, N'QW0021', N'', N'甲氧氯普安', 1, CAST(0.00 AS Numeric(18, 2)), N'', N'每次1毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1140, 1021, N'QW0021', N'', N'阿莫西林', 10, CAST(0.00 AS Numeric(18, 2)), N'', N'每次10毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1141, 1021, N'QW0021', N'', N'西咪替丁', 5, CAST(0.00 AS Numeric(18, 2)), N'', N'每次5毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1142, 1021, N'QW0021', N'', N'甲氧氯普安', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.2毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1143, 1021, N'QW0021', N'', N'蒙脱石粉', 1, CAST(0.00 AS Numeric(18, 2)), N'', N'每次1毫升每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1144, 1021, N'QW0021', N'', N'硫糖铝', 250, CAST(0.00 AS Numeric(18, 2)), N'', N'每次250毫克每只，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1145, 1006, N'QW0006', N'', N'恩诺沙星', 2, CAST(0.00 AS Numeric(18, 2)), N'', N'每次2.5毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1146, 1006, N'QW0006', N'', N'泼尼松龙、强的松', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.5毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1147, 1006, N'QW0006', N'', N'阿莫西林', 10, CAST(0.00 AS Numeric(18, 2)), N'', N'每次10毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1148, 1006, N'QW0006', N'', N'阿莫西林克拉维酸', 12, CAST(0.00 AS Numeric(18, 2)), N'', N'每次12.5毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1149, 1006, N'QW0006', N'', N'头孢氨苄', 10, CAST(0.00 AS Numeric(18, 2)), N'', N'每次10毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1150, 1006, N'QW0006', N'', N'泼尼松龙、强的松', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.5毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1151, 1006, N'QW0006', N'', N'马来酸氯苯那敏', 2, CAST(0.00 AS Numeric(18, 2)), N'', N'每次2毫克每只，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1152, 1006, N'QW0006', N'', N'克里马丁', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.05毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1153, 1022, N'QW0022', N'', N'恩诺沙星', 2, CAST(0.00 AS Numeric(18, 2)), N'', N'每次2.5毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1154, 1022, N'QW0022', N'', N'泼尼松龙、强的松', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.5毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1155, 1022, N'QW0022', N'', N'西咪替丁', 5, CAST(0.00 AS Numeric(18, 2)), N'', N'每次5毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1156, 1022, N'QW0022', N'', N'呋喃苯胺酸', 2, CAST(0.00 AS Numeric(18, 2)), N'', N'每次2毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1157, 1022, N'QW0022', N'', N'肝素钠', 50, CAST(0.00 AS Numeric(18, 2)), N'', N'每次50单位每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1158, 1022, N'QW0022', N'', N'阿莫西林', 10, CAST(0.00 AS Numeric(18, 2)), N'', N'每次10毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1159, 1022, N'QW0022', N'', N'泼尼松龙、强的松', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.5毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1160, 1022, N'QW0022', N'', N'马来酸依那普利', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.5毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1161, 1022, N'QW0022', N'', N'呋喃苯胺酸', 2, CAST(0.00 AS Numeric(18, 2)), N'', N'每次2毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1162, 1022, N'QW0022', N'', N'西咪替丁', 5, CAST(0.00 AS Numeric(18, 2)), N'', N'每次5毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1163, 1022, N'QW0022', N'', N'乙酰半胱氨酸', 70, CAST(0.00 AS Numeric(18, 2)), N'', N'每次70毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1164, 1034, N'QW0034', N'', N'拉坦前列素', 1, CAST(0.00 AS Numeric(18, 2)), N'', N'每次1EA，每日3次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1165, 1034, N'QW0034', N'', N'噻吗洛尔液', 1, CAST(0.00 AS Numeric(18, 2)), N'', N'每次1EA，每日3次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1166, 1034, N'QW0034', N'', N'2%皮洛卡品', 1, CAST(0.00 AS Numeric(18, 2)), N'', N'每次1EA，每日3次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1167, 1034, N'QW0034', N'', N'恩诺沙星', 2, CAST(0.00 AS Numeric(18, 2)), N'', N'每次2.5毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1168, 1034, N'QW0034', N'', N'双氯非那胺', 2, CAST(0.00 AS Numeric(18, 2)), N'', N'每次2毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1169, 1034, N'QW0034', N'', N'环丙沙星', 5, CAST(0.00 AS Numeric(18, 2)), N'', N'每次5毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1170, 1023, N'QW0023', N'', N'伊维菌素', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.05毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1171, 1023, N'QW0023', N'', N'恩诺沙星', 2, CAST(0.00 AS Numeric(18, 2)), N'', N'每次2.5毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1172, 1023, N'QW0023', N'', N'泼尼松龙、强的松', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.5毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1173, 1023, N'QW0023', N'', N'西咪替丁', 5, CAST(0.00 AS Numeric(18, 2)), N'', N'每次5毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1174, 1023, N'QW0023', N'', N'呋喃苯胺酸', 2, CAST(0.00 AS Numeric(18, 2)), N'', N'每次2毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1175, 1023, N'QW0023', N'', N'肝素钠', 50, CAST(0.00 AS Numeric(18, 2)), N'', N'每次50单位每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1176, 1023, N'QW0023', N'', N'阿莫西林', 10, CAST(0.00 AS Numeric(18, 2)), N'', N'每次10毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
GO
print 'Processed 200 total records'
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1177, 1023, N'QW0023', N'', N'泼尼松龙、强的松', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.5毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1178, 1023, N'QW0023', N'', N'呋喃苯胺酸', 2, CAST(0.00 AS Numeric(18, 2)), N'', N'每次2毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1179, 1023, N'QW0023', N'', N'西咪替丁', 5, CAST(0.00 AS Numeric(18, 2)), N'', N'每次5毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1180, 1023, N'QW0023', N'', N'乙酰半胱氨酸', 70, CAST(0.00 AS Numeric(18, 2)), N'', N'每次70毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1181, 1024, N'QW0024', N'', N'美拉索明', 2, CAST(0.00 AS Numeric(18, 2)), N'', N'每次2.5毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1182, 1036, N'QW0036', N'', N'恩诺沙星', 2, CAST(0.00 AS Numeric(18, 2)), N'', N'每次2.5毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1183, 1036, N'QW0036', N'', N'泼尼松龙、强的松', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.5毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1184, 1036, N'QW0036', N'', N'阿莫西林', 10, CAST(0.00 AS Numeric(18, 2)), N'', N'每次10毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1185, 1036, N'QW0036', N'', N'头孢拉定', 10, CAST(0.00 AS Numeric(18, 2)), N'', N'每次10毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1186, 1036, N'QW0036', N'', N'泼尼松龙、强的松', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.5毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1187, 1036, N'QW0036', N'', N'沙氏菌蛋白酶', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.1T/kg，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1188, 1037, N'QW0037', N'', N'恩诺沙星', 2, CAST(0.00 AS Numeric(18, 2)), N'', N'每次2.5毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1189, 1037, N'QW0037', N'', N'泼尼松龙、强的松', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.5毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1190, 1037, N'QW0037', N'', N'西咪替丁', 5, CAST(0.00 AS Numeric(18, 2)), N'', N'每次5毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1191, 1037, N'QW0037', N'', N'阿莫西林', 10, CAST(0.00 AS Numeric(18, 2)), N'', N'每次10毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1192, 1037, N'QW0037', N'', N'头孢拉定', 10, CAST(0.00 AS Numeric(18, 2)), N'', N'每次10毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1193, 1037, N'QW0037', N'', N'泼尼松龙、强的松', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.5毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1194, 1037, N'QW0037', N'', N'沙氏菌蛋白酶', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.1T/kg，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1195, 1037, N'QW0037', N'', N'西咪替丁', 5, CAST(0.00 AS Numeric(18, 2)), N'', N'每次5毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1196, 1010, N'QW0010', N'', N'恩诺沙星', 2, CAST(0.00 AS Numeric(18, 2)), N'', N'每次2.5毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1197, 1010, N'QW0010', N'', N'泼尼松龙、强的松', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.5毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1198, 1010, N'QW0010', N'', N'酮洛芬', 1, CAST(0.00 AS Numeric(18, 2)), N'', N'每次1毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1199, 1010, N'QW0010', N'', N'阿莫西林', 10, CAST(0.00 AS Numeric(18, 2)), N'', N'每次10毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1200, 1010, N'QW0010', N'', N'头孢拉定', 10, CAST(0.00 AS Numeric(18, 2)), N'', N'每次10毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1201, 1010, N'QW0010', N'', N'泼尼松龙、强的松', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.5毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1202, 1010, N'QW0010', N'', N'沙氏菌蛋白酶', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.1T/kg，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1203, 1010, N'QW0010', N'', N'美洛普康', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.1毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1204, 1015, N'QW0015', N'', N'恩诺沙星', 2, CAST(0.00 AS Numeric(18, 2)), N'', N'每次2.5毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1205, 1015, N'QW0015', N'', N'泼尼松龙、强的松', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.5毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1206, 1015, N'QW0015', N'', N'氧氟沙星', 1, CAST(0.00 AS Numeric(18, 2)), N'', N'每次1滴每千克，每日3次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1207, 1015, N'QW0015', N'', N'阿莫西林', 10, CAST(0.00 AS Numeric(18, 2)), N'', N'每次10毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1208, 1015, N'QW0015', N'', N'头孢拉定', 10, CAST(0.00 AS Numeric(18, 2)), N'', N'每次10毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1209, 1015, N'QW0015', N'', N'氧氟沙星', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.05T/kg，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1210, 1015, N'QW0015', N'', N'泼尼松龙、强的松', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.5毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1211, 1015, N'QW0015', N'', N'沙氏菌蛋白酶', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.1T/kg，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1212, 1016, N'QW0016', N'', N'白内障囊外切除术', 1, CAST(0.00 AS Numeric(18, 2)), N'', N'', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1213, 1016, N'QW0016', N'', N'恩诺沙星', 2, CAST(0.00 AS Numeric(18, 2)), N'', N'每次2.5毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1214, 1016, N'QW0016', N'', N'泼尼松龙、强的松', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.5毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1215, 1016, N'QW0016', N'', N'阿莫西林', 10, CAST(0.00 AS Numeric(18, 2)), N'', N'每次10毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1216, 1016, N'QW0016', N'', N'头孢拉定', 10, CAST(0.00 AS Numeric(18, 2)), N'', N'每次10毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1217, 1016, N'QW0016', N'', N'氧氟沙星', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.05T/kg，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1218, 1016, N'QW0016', N'', N'泼尼松龙、强的松', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.5毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1219, 1016, N'QW0016', N'', N'沙氏菌蛋白酶', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.1T/kg，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1220, 1025, N'QW0025', N'', N'地塞米松', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.1毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1221, 1025, N'QW0025', N'', N'异羟基洋地黄毒苷原', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.005毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1222, 1025, N'QW0025', N'', N'呋喃苯胺酸', 2, CAST(0.00 AS Numeric(18, 2)), N'', N'每次2毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1223, 1025, N'QW0025', N'', N'氨茶碱', 5, CAST(0.00 AS Numeric(18, 2)), N'', N'每次5毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1224, 1025, N'QW0025', N'', N'异羟基洋地黄毒苷原', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.005毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1225, 1025, N'QW0025', N'', N'呋喃苯胺酸', 2, CAST(0.00 AS Numeric(18, 2)), N'', N'每次2毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1226, 1025, N'QW0025', N'', N'氨茶碱', 5, CAST(0.00 AS Numeric(18, 2)), N'', N'每次5毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1227, 1025, N'QW0025', N'', N'马来酸依那普利', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.5毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1228, 1025, N'QW0025', N'', N'乙酰半胱氨酸', 70, CAST(0.00 AS Numeric(18, 2)), N'', N'每次70毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1229, 1026, N'QW0026', N'', N'恩诺沙星', 2, CAST(0.00 AS Numeric(18, 2)), N'', N'每次2.5毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1230, 1026, N'QW0026', N'', N'泼尼松龙、强的松', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.5毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1231, 1026, N'QW0026', N'', N'螺旋霉素+甲硝哒唑', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.1T/kg，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1232, 1026, N'QW0026', N'', N'泼尼松龙、强的松', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.5毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1233, 1026, N'QW0026', N'', N'沙氏菌蛋白酶', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.1T/kg，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1234, 1035, N'QW0035', N'', N'地塞米松+多粘菌素B+新霉素', 1, CAST(0.00 AS Numeric(18, 2)), N'', N'每次1EA，每日3次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1235, 1035, N'QW0035', N'', N'氧氟沙星', 1, CAST(0.00 AS Numeric(18, 2)), N'', N'每次1EA，每日3次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1236, 1035, N'QW0035', N'', N'恩诺沙星', 2, CAST(0.00 AS Numeric(18, 2)), N'', N'每次2.5毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1237, 1035, N'QW0035', N'', N'泼尼松龙、强的松', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.5毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1238, 1035, N'QW0035', N'', N'环丙沙星', 5, CAST(0.00 AS Numeric(18, 2)), N'', N'每次5毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1239, 1035, N'QW0035', N'', N'泼尼松龙、强的松', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.5毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1240, 1001, N'QW0001', N'', N'恩诺沙星', 2, CAST(0.00 AS Numeric(18, 2)), N'', N'每次2.5毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1241, 1001, N'QW0001', N'', N'泼尼松龙、强的松', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.5毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1242, 1001, N'QW0001', N'', N'氨茶碱', 5, CAST(0.00 AS Numeric(18, 2)), N'', N'每次5片，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1243, 1001, N'QW0001', N'', N'麻黄碱', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.3毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1244, 1001, N'QW0001', N'', N'溴己新', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.1T/kg，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1245, 1001, N'QW0001', N'', N'阿莫西林', 10, CAST(0.00 AS Numeric(18, 2)), N'', N'每次10毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1246, 1001, N'QW0001', N'', N'沙氏菌蛋白酶', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.1T/kg，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1247, 1001, N'QW0001', N'', N'氨茶碱', 5, CAST(0.00 AS Numeric(18, 2)), N'', N'每次5毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1248, 1001, N'QW0001', N'', N'麻黄碱', 1, CAST(0.00 AS Numeric(18, 2)), N'', N'每次1毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1249, 1001, N'QW0001', N'', N'溴己新', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.5毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1250, 1001, N'QW0001', N'', N'乙酰半胱氨酸', 70, CAST(0.00 AS Numeric(18, 2)), N'', N'每次70毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1251, 1007, N'QW0007', N'', N'恩诺沙星', 1, CAST(0.00 AS Numeric(18, 2)), N'', N'每次1毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1252, 1007, N'QW0007', N'', N'阿莫西林', 2, CAST(0.00 AS Numeric(18, 2)), N'', N'每次2毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1253, 1007, N'QW0007', N'', N'阿莫西林克拉维酸', 2, CAST(0.00 AS Numeric(18, 2)), N'', N'每次2毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1254, 1007, N'QW0007', N'', N'头孢氨苄', 2, CAST(0.00 AS Numeric(18, 2)), N'', N'每次2毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1255, 1007, N'QW0007', N'', N'酮康唑', 2, CAST(0.00 AS Numeric(18, 2)), N'', N'每次2毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1256, 1007, N'QW0007', N'', N'伊曲康唑', 2, CAST(0.00 AS Numeric(18, 2)), N'', N'每次2毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1257, 1007, N'QW0007', N'', N'沙氏菌蛋白酶', 2, CAST(0.00 AS Numeric(18, 2)), N'', N'每次2T/kg，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1258, 1007, N'QW0007', N'', N'酮康唑', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0EA，每日0次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1259, 1002, N'QW0002', N'', N'恩诺沙星', 2, CAST(0.00 AS Numeric(18, 2)), N'', N'每次2.5毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1260, 1002, N'QW0002', N'', N'泼尼松龙、强的松', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.5毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1261, 1002, N'QW0002', N'', N'氨茶碱', 5, CAST(0.00 AS Numeric(18, 2)), N'', N'每次5毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1262, 1002, N'QW0002', N'', N'麻黄碱', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.3毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1263, 1002, N'QW0002', N'', N'溴己新', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.1毫升每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1264, 1002, N'QW0002', N'', N'阿莫西林', 10, CAST(0.00 AS Numeric(18, 2)), N'', N'每次10毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1265, 1002, N'QW0002', N'', N'环丙沙星', 5, CAST(0.00 AS Numeric(18, 2)), N'', N'每次5毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1266, 1002, N'QW0002', N'', N'沙氏菌蛋白酶', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.1T/kg，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1267, 1002, N'QW0002', N'', N'氨茶碱', 5, CAST(0.00 AS Numeric(18, 2)), N'', N'每次5毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1268, 1002, N'QW0002', N'', N'麻黄碱', 1, CAST(0.00 AS Numeric(18, 2)), N'', N'每次1毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1269, 1002, N'QW0002', N'', N'溴己新', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.5毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1270, 1002, N'QW0002', N'', N'乙酰半胱氨酸', 70, CAST(0.00 AS Numeric(18, 2)), N'', N'每次70毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1271, 1002, N'QW0002', N'', N'特布他林', 1, CAST(0.00 AS Numeric(18, 2)), N'', N'每次1.25毫克每只，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1272, 1008, N'QW0008', N'', N'恩诺沙星', 2, CAST(0.00 AS Numeric(18, 2)), N'', N'每次2.5毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1273, 1008, N'QW0008', N'', N'泼尼松龙、强的松', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.5毫克每千克，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1274, 1008, N'QW0008', N'', N'马来酸氯苯那敏', 2, CAST(0.00 AS Numeric(18, 2)), N'', N'每次2毫克每只，每日1次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1275, 1008, N'QW0008', N'', N'阿莫西林', 10, CAST(0.00 AS Numeric(18, 2)), N'', N'每次10毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1276, 1008, N'QW0008', N'', N'阿莫西林克拉维酸', 12, CAST(0.00 AS Numeric(18, 2)), N'', N'每次12.5毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1277, 1008, N'QW0008', N'', N'头孢氨苄', 10, CAST(0.00 AS Numeric(18, 2)), N'', N'每次10毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
GO
print 'Processed 300 total records'
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1278, 1008, N'QW0008', N'', N'泼尼松龙、强的松', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.5毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1279, 1008, N'QW0008', N'', N'马来酸氯苯那敏', 2, CAST(0.00 AS Numeric(18, 2)), N'', N'每次2毫克每只，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
INSERT [dbo].[M_TRPrescription_TemplateDetail] ([ID], [TemplateID], [TemplateNo], [ItemCode], [ItemName], [ItemNum], [SellPrice], [RecipeUnit], [UseWay], [GestID], [ItemStyle], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1280, 1008, N'QW0008', N'', N'克里马丁', 0, CAST(0.00 AS Numeric(18, 2)), N'', N'每次0.05毫克每千克，每日2次      ', 0, N'', N'', CAST(0x0000A584011A85C8 AS DateTime), N'', CAST(0x0000A584011A85C8 AS DateTime), 0)
/****** Object:  Table [dbo].[M_TRPrescription_Template]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_TRPrescription_Template](
	[ID] [int] NOT NULL,
	[TypeID] [int] NULL,
	[TypeNo] [varchar](50) NULL,
	[TemplateNo] [varchar](50) NULL,
	[TemplateName] [varchar](50) NULL,
	[BarCode] [varchar](100) NULL,
	[GestID] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[Suggest] [varchar](500) NULL,
	[IsDeleted] [int] NOT NULL,
 CONSTRAINT [PK__M_TRPrescription__405A880E] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[M_TRPrescription_Template] ([ID], [TypeID], [TypeNo], [TemplateNo], [TemplateName], [BarCode], [GestID], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [Suggest], [IsDeleted]) VALUES (1001, 101, N'MB101', N'QW0001', N'一般治疗', N'', 0, N'', CAST(0x0000A584010F8498 AS DateTime), N'', CAST(0x0000A584010F8498 AS DateTime), N'', 0)
INSERT [dbo].[M_TRPrescription_Template] ([ID], [TypeID], [TypeNo], [TemplateNo], [TemplateName], [BarCode], [GestID], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [Suggest], [IsDeleted]) VALUES (1002, 101, N'MB101', N'QW0002', N'支气管炎（咳嗽）', N'', 0, N'', CAST(0x0000A584010F8498 AS DateTime), N'', CAST(0x0000A584010F8498 AS DateTime), N'', 0)
INSERT [dbo].[M_TRPrescription_Template] ([ID], [TypeID], [TypeNo], [TemplateNo], [TemplateName], [BarCode], [GestID], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [Suggest], [IsDeleted]) VALUES (1003, 102, N'MB102', N'QW0003', N'疥疮', N'', 0, N'', CAST(0x0000A584010F8498 AS DateTime), N'', CAST(0x0000A584010F8498 AS DateTime), N'', 0)
INSERT [dbo].[M_TRPrescription_Template] ([ID], [TypeID], [TypeNo], [TemplateNo], [TemplateName], [BarCode], [GestID], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [Suggest], [IsDeleted]) VALUES (1004, 102, N'MB102', N'QW0004', N'马拉色菌', N'', 0, N'', CAST(0x0000A584010F8498 AS DateTime), N'', CAST(0x0000A584010F8498 AS DateTime), N'', 0)
INSERT [dbo].[M_TRPrescription_Template] ([ID], [TypeID], [TypeNo], [TemplateNo], [TemplateName], [BarCode], [GestID], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [Suggest], [IsDeleted]) VALUES (1005, 102, N'MB102', N'QW0005', N'毛囊虫', N'', 0, N'', CAST(0x0000A584010F8498 AS DateTime), N'', CAST(0x0000A584010F8498 AS DateTime), N'', 0)
INSERT [dbo].[M_TRPrescription_Template] ([ID], [TypeID], [TypeNo], [TemplateNo], [TemplateName], [BarCode], [GestID], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [Suggest], [IsDeleted]) VALUES (1006, 102, N'MB102', N'QW0006', N'皮炎（一般细菌性）', N'', 0, N'', CAST(0x0000A584010F8498 AS DateTime), N'', CAST(0x0000A584010F8498 AS DateTime), N'', 0)
INSERT [dbo].[M_TRPrescription_Template] ([ID], [TypeID], [TypeNo], [TemplateNo], [TemplateName], [BarCode], [GestID], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [Suggest], [IsDeleted]) VALUES (1007, 102, N'MB102', N'QW0007', N'真菌', N'', 0, N'', CAST(0x0000A584010F8498 AS DateTime), N'', CAST(0x0000A584010F8498 AS DateTime), N'', 0)
INSERT [dbo].[M_TRPrescription_Template] ([ID], [TypeID], [TypeNo], [TemplateNo], [TemplateName], [BarCode], [GestID], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [Suggest], [IsDeleted]) VALUES (1008, 102, N'MB102', N'QW0008', N'脂溢性皮炎', N'', 0, N'', CAST(0x0000A584010F8498 AS DateTime), N'', CAST(0x0000A584010F8498 AS DateTime), N'', 0)
INSERT [dbo].[M_TRPrescription_Template] ([ID], [TypeID], [TypeNo], [TemplateNo], [TemplateName], [BarCode], [GestID], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [Suggest], [IsDeleted]) VALUES (1009, 103, N'MB103', N'QW0009', N'后处置', N'', 0, N'', CAST(0x0000A584010F8498 AS DateTime), N'', CAST(0x0000A584010F8498 AS DateTime), N'', 0)
INSERT [dbo].[M_TRPrescription_Template] ([ID], [TypeID], [TypeNo], [TemplateNo], [TemplateName], [BarCode], [GestID], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [Suggest], [IsDeleted]) VALUES (1010, 103, N'MB103', N'QW0010', N'膝盖骨脱位矫正手术', N'', 0, N'', CAST(0x0000A584010F8498 AS DateTime), N'', CAST(0x0000A584010F8498 AS DateTime), N'', 0)
INSERT [dbo].[M_TRPrescription_Template] ([ID], [TypeID], [TypeNo], [TemplateNo], [TemplateName], [BarCode], [GestID], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [Suggest], [IsDeleted]) VALUES (1011, 104, N'MB104', N'QW0011', N'出诊', N'', 0, N'', CAST(0x0000A584010F8498 AS DateTime), N'', CAST(0x0000A584010F8498 AS DateTime), N'', 0)
INSERT [dbo].[M_TRPrescription_Template] ([ID], [TypeID], [TypeNo], [TemplateNo], [TemplateName], [BarCode], [GestID], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [Suggest], [IsDeleted]) VALUES (1012, 104, N'MB104', N'QW0012', N'耳螨（再诊）', N'', 0, N'', CAST(0x0000A584010F8498 AS DateTime), N'', CAST(0x0000A584010F8498 AS DateTime), N'', 0)
INSERT [dbo].[M_TRPrescription_Template] ([ID], [TypeID], [TypeNo], [TemplateNo], [TemplateName], [BarCode], [GestID], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [Suggest], [IsDeleted]) VALUES (1013, 104, N'MB104', N'QW0013', N'马拉色菌 （初诊）', N'', 0, N'', CAST(0x0000A584010F8498 AS DateTime), N'', CAST(0x0000A584010F8498 AS DateTime), N'', 0)
INSERT [dbo].[M_TRPrescription_Template] ([ID], [TypeID], [TypeNo], [TemplateNo], [TemplateName], [BarCode], [GestID], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [Suggest], [IsDeleted]) VALUES (1014, 104, N'MB104', N'QW0014', N'马拉色菌 （再诊）', N'', 0, N'', CAST(0x0000A584010F8498 AS DateTime), N'', CAST(0x0000A584010F8498 AS DateTime), N'', 0)
INSERT [dbo].[M_TRPrescription_Template] ([ID], [TypeID], [TypeNo], [TemplateNo], [TemplateName], [BarCode], [GestID], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [Suggest], [IsDeleted]) VALUES (1015, 104, N'MB104', N'QW0015', N'细菌性 （初诊）', N'', 0, N'', CAST(0x0000A584010F8498 AS DateTime), N'', CAST(0x0000A584010F8498 AS DateTime), N'', 0)
INSERT [dbo].[M_TRPrescription_Template] ([ID], [TypeID], [TypeNo], [TemplateNo], [TemplateName], [BarCode], [GestID], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [Suggest], [IsDeleted]) VALUES (1016, 104, N'MB104', N'QW0016', N'细菌性 （再诊）', N'', 0, N'', CAST(0x0000A584010F8498 AS DateTime), N'', CAST(0x0000A584010F8498 AS DateTime), N'', 0)
INSERT [dbo].[M_TRPrescription_Template] ([ID], [TypeID], [TypeNo], [TemplateNo], [TemplateName], [BarCode], [GestID], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [Suggest], [IsDeleted]) VALUES (1017, 105, N'MB105', N'QW0017', N'（CPV）住院（2至4日治疗）', N'', 0, N'', CAST(0x0000A584010F8498 AS DateTime), N'', CAST(0x0000A584010F8498 AS DateTime), N'', 0)
INSERT [dbo].[M_TRPrescription_Template] ([ID], [TypeID], [TypeNo], [TemplateNo], [TemplateName], [BarCode], [GestID], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [Suggest], [IsDeleted]) VALUES (1018, 106, N'MB106', N'QW0018', N'腹泻（贾第虫）', N'', 0, N'', CAST(0x0000A584010F8498 AS DateTime), N'', CAST(0x0000A584010F8498 AS DateTime), N'', 0)
INSERT [dbo].[M_TRPrescription_Template] ([ID], [TypeID], [TypeNo], [TemplateNo], [TemplateName], [BarCode], [GestID], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [Suggest], [IsDeleted]) VALUES (1019, 106, N'MB106', N'QW0019', N'腹泻（细菌性）', N'', 0, N'', CAST(0x0000A584010F8498 AS DateTime), N'', CAST(0x0000A584010F8498 AS DateTime), N'', 0)
INSERT [dbo].[M_TRPrescription_Template] ([ID], [TypeID], [TypeNo], [TemplateNo], [TemplateName], [BarCode], [GestID], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [Suggest], [IsDeleted]) VALUES (1020, 106, N'MB106', N'QW0020', N'呕吐（呕吐）', N'', 0, N'', CAST(0x0000A584010F8498 AS DateTime), N'', CAST(0x0000A584010F8498 AS DateTime), N'', 0)
INSERT [dbo].[M_TRPrescription_Template] ([ID], [TypeID], [TypeNo], [TemplateNo], [TemplateName], [BarCode], [GestID], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [Suggest], [IsDeleted]) VALUES (1021, 106, N'MB106', N'QW0021', N'呕吐（一般）', N'', 0, N'', CAST(0x0000A584010F8498 AS DateTime), N'', CAST(0x0000A584010F8498 AS DateTime), N'', 0)
INSERT [dbo].[M_TRPrescription_Template] ([ID], [TypeID], [TypeNo], [TemplateNo], [TemplateName], [BarCode], [GestID], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [Suggest], [IsDeleted]) VALUES (1022, 107, N'MB107', N'QW0022', N'前处置（7天）', N'', 0, N'', CAST(0x0000A584010F8498 AS DateTime), N'', CAST(0x0000A584010F8498 AS DateTime), N'', 0)
INSERT [dbo].[M_TRPrescription_Template] ([ID], [TypeID], [TypeNo], [TemplateNo], [TemplateName], [BarCode], [GestID], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [Suggest], [IsDeleted]) VALUES (1023, 107, N'MB107', N'QW0023', N'驱虫（小虫）', N'', 0, N'', CAST(0x0000A584010F8498 AS DateTime), N'', CAST(0x0000A584010F8498 AS DateTime), N'', 0)
INSERT [dbo].[M_TRPrescription_Template] ([ID], [TypeID], [TypeNo], [TemplateNo], [TemplateName], [BarCode], [GestID], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [Suggest], [IsDeleted]) VALUES (1024, 107, N'MB107', N'QW0024', N'蛆成虫（投药）', N'', 0, N'', CAST(0x0000A584010F8498 AS DateTime), N'', CAST(0x0000A584010F8498 AS DateTime), N'', 0)
INSERT [dbo].[M_TRPrescription_Template] ([ID], [TypeID], [TypeNo], [TemplateNo], [TemplateName], [BarCode], [GestID], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [Suggest], [IsDeleted]) VALUES (1025, 108, N'MB108', N'QW0025', N'心衰', N'', 0, N'', CAST(0x0000A584010F8498 AS DateTime), N'', CAST(0x0000A584010F8498 AS DateTime), N'', 0)
INSERT [dbo].[M_TRPrescription_Template] ([ID], [TypeID], [TypeNo], [TemplateNo], [TemplateName], [BarCode], [GestID], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [Suggest], [IsDeleted]) VALUES (1026, 109, N'MB109', N'QW0026', N'牙垢', N'', 0, N'', CAST(0x0000A584010F8498 AS DateTime), N'', CAST(0x0000A584010F8498 AS DateTime), N'', 0)
INSERT [dbo].[M_TRPrescription_Template] ([ID], [TypeID], [TypeNo], [TemplateNo], [TemplateName], [BarCode], [GestID], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [Suggest], [IsDeleted]) VALUES (1027, 110, N'MB110', N'QW0027', N'白内障', N'', 0, N'', CAST(0x0000A584010F8498 AS DateTime), N'', CAST(0x0000A584010F8498 AS DateTime), N'', 0)
INSERT [dbo].[M_TRPrescription_Template] ([ID], [TypeID], [TypeNo], [TemplateNo], [TemplateName], [BarCode], [GestID], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [Suggest], [IsDeleted]) VALUES (1028, 110, N'MB110', N'QW0028', N'第三眼睑腺突', N'', 0, N'', CAST(0x0000A584010F8498 AS DateTime), N'', CAST(0x0000A584010F8498 AS DateTime), N'', 0)
INSERT [dbo].[M_TRPrescription_Template] ([ID], [TypeID], [TypeNo], [TemplateNo], [TemplateName], [BarCode], [GestID], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [Suggest], [IsDeleted]) VALUES (1029, 110, N'MB110', N'QW0029', N'干性结膜炎', N'', 0, N'', CAST(0x0000A584010F8498 AS DateTime), N'', CAST(0x0000A584010F8498 AS DateTime), N'', 0)
INSERT [dbo].[M_TRPrescription_Template] ([ID], [TypeID], [TypeNo], [TemplateNo], [TemplateName], [BarCode], [GestID], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [Suggest], [IsDeleted]) VALUES (1030, 110, N'MB110', N'QW0030', N'角膜溃疡', N'', 0, N'', CAST(0x0000A584010F8498 AS DateTime), N'', CAST(0x0000A584010F8498 AS DateTime), N'', 0)
INSERT [dbo].[M_TRPrescription_Template] ([ID], [TypeID], [TypeNo], [TemplateNo], [TemplateName], [BarCode], [GestID], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [Suggest], [IsDeleted]) VALUES (1031, 110, N'MB110', N'QW0031', N'结膜炎', N'', 0, N'', CAST(0x0000A584010F8498 AS DateTime), N'', CAST(0x0000A584010F8498 AS DateTime), N'', 0)
INSERT [dbo].[M_TRPrescription_Template] ([ID], [TypeID], [TypeNo], [TemplateNo], [TemplateName], [BarCode], [GestID], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [Suggest], [IsDeleted]) VALUES (1032, 110, N'MB110', N'QW0032', N'泪溢', N'', 0, N'', CAST(0x0000A584010F8498 AS DateTime), N'', CAST(0x0000A584010F8498 AS DateTime), N'', 0)
INSERT [dbo].[M_TRPrescription_Template] ([ID], [TypeID], [TypeNo], [TemplateNo], [TemplateName], [BarCode], [GestID], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [Suggest], [IsDeleted]) VALUES (1033, 110, N'MB110', N'QW0033', N'脸炎', N'', 0, N'', CAST(0x0000A584010F8498 AS DateTime), N'', CAST(0x0000A584010F8498 AS DateTime), N'', 0)
INSERT [dbo].[M_TRPrescription_Template] ([ID], [TypeID], [TypeNo], [TemplateNo], [TemplateName], [BarCode], [GestID], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [Suggest], [IsDeleted]) VALUES (1034, 110, N'MB110', N'QW0034', N'青光眼', N'', 0, N'', CAST(0x0000A584010F8498 AS DateTime), N'', CAST(0x0000A584010F8498 AS DateTime), N'', 0)
INSERT [dbo].[M_TRPrescription_Template] ([ID], [TypeID], [TypeNo], [TemplateNo], [TemplateName], [BarCode], [GestID], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [Suggest], [IsDeleted]) VALUES (1035, 110, N'MB110', N'QW0035', N'眼科手术及治疗', N'', 0, N'', CAST(0x0000A584010F8498 AS DateTime), N'', CAST(0x0000A584010F8498 AS DateTime), N'', 0)
INSERT [dbo].[M_TRPrescription_Template] ([ID], [TypeID], [TypeNo], [TemplateNo], [TemplateName], [BarCode], [GestID], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [Suggest], [IsDeleted]) VALUES (1036, 111, N'MB103101', N'QW0036', N'乳腺肿瘤', N'', 0, N'', CAST(0x0000A584010F8498 AS DateTime), N'', CAST(0x0000A584010F8498 AS DateTime), N'', 0)
INSERT [dbo].[M_TRPrescription_Template] ([ID], [TypeID], [TypeNo], [TemplateNo], [TemplateName], [BarCode], [GestID], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [Suggest], [IsDeleted]) VALUES (1037, 112, N'MB103102', N'QW0037', N'胃切除术', N'', 0, N'', CAST(0x0000A584010F8498 AS DateTime), N'', CAST(0x0000A584010F8498 AS DateTime), N'', 0)
/****** Object:  Table [dbo].[M_Role]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Role](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RoleCode] [varchar](50) NOT NULL,
	[RoleName] [varchar](100) NULL,
	[RoleDesc] [varchar](1000) NULL,
	[RoleRight] [text] NULL,
	[Status] [bit] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[M_Role] ON
INSERT [dbo].[M_Role] ([ID], [RoleCode], [RoleName], [RoleDesc], [RoleRight], [Status], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1, N'YGJS000000001', N'医生', NULL, N',FM0000,FM0300,FM0350,FM0100,FM0900,FM1000,FM0200,FM0800,FM0380,FM0390,FM0600,FM0400,FM0500,FM0901,FM0306,FM0307,FM0308,FM0309,FM0310,FM0311,FM0312,FM1001,FM0102,FM0201,FM0202,FM0203,FM0204,FM0205,FM0206,FM0601,FM0602,FM0603,FM0604,FM0605,FM0606,FM0607,FM0608,FM0609,FM0501,FM0502,FM0504,FM0505,FM0801,FM0803,FM0902,FM0610,FM0903,FM0101,FM1002,FM0802,FM0403,FM0318,FM0404,FM0402,FM0319,FM0301,FM0304,FM0401,FM0302,FM0303,FM0317,FM0315,FM0313,FM0314,FM0305,FM0316,FM0503,BTC10101,BTC10102,BTC10103,BTC10104,BTC10201,BTC10202,BTC10203,BTC10204,BTC20101,BTC20102,BTC20103,BTC20201,BTC20202,BTC20203,BTC20204,BTC20301,BTC20302,BTC20303,BTC20304,BTC20401,BTC20402,BTC20403,BTC20404,BTC20601,BTC20602,BTC20603,BTC20604,BTC30101,BTC30102,BTC30103,BTC30301,BTC30302,BTC30303,BTC30304,BTC30401,BTC30402,BTC30403,BTC30404,BTC30501,BTC30502,BTC30701,BTC30702,BTC30801,BTC30802,BTC30901,BTC30902,BTC30903,BTC30904,BTC31001,BTC31002,BTC31003,BTC31004,BTC31201,BTC31202,BTC31301,BTC31302,BTC31303,BTC31304,BTC31401,BTC31402,BTC31403,BTC31404,BTC31601,BTC31602,BTC31603,BTC31604,BTC31701,BTC31702,BTC40201,BTC40301,BTC60101,BTC60102,BTC60103,BTC60104,BTC60201,BTC60202,BTC60203,BTC60204,BTC60301,BTC60302,BTC60303,BTC60304,BTC60401,BTC60402,BTC60403,BTC60404,BTC60501,BTC60502,BTC60601,BTC60602,BTC60603,BTC60604,BTC60801,BTC60802,BTC60803,BTC60804,BTC60901,BTC60902,BTC61001,BTC61002,BTC61003,BTC61004,BTC10105,BTC10106,BTC10107,BTC10108,BTC10109,BTC61005,BTC61006,BTC60305,BTC60306,BTC60307,BTC60605,BTC60805,BTC60806,BTC60807,BTC60903,BTC60904,BTC60905,BTC60906,BTC60907,FM050401,FM050402,FM050403,FM050404,BTC10110,BTC30104,BTC20205,BTC20305,BTC20405,BTC20605,BTC60308,BTC60309,BTC20104,BTC20105,BTC10111,BTC10205,', 0, N'院长', CAST(0x0000A4C100B808E4 AS DateTime), N'院长', CAST(0x0000A4E200F32F1D AS DateTime), 0)
INSERT [dbo].[M_Role] ([ID], [RoleCode], [RoleName], [RoleDesc], [RoleRight], [Status], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (2, N'YGJS000000002', N'护士', NULL, N',FM0000,FM0300,FM0350,FM0900,FM0100,FM0800,FM0200,FM0380,FM0390,FM0600,FM0400,FM0307,FM0308,FM0309,FM0310,FM0312,FM0102,FM0201,FM0202,FM0203,FM0204,FM0206,FM0801,FM0101,FM0318,FM0319,FM0304,FM0313,FM0314,FM0305,FM0316,BTC10101,BTC10102,BTC10103,BTC10104,BTC10201,BTC10202,BTC10203,BTC10204,BTC20101,BTC20102,BTC20103,BTC20201,BTC20202,BTC20203,BTC20204,BTC20301,BTC20302,BTC20303,BTC20304,BTC20401,BTC20402,BTC20403,BTC20404,BTC20601,BTC20602,BTC20603,BTC20604,BTC30401,BTC30402,BTC30403,BTC30404,BTC30501,BTC30502,BTC30701,BTC30702,BTC30801,BTC30802,BTC30901,BTC30902,BTC30903,BTC30904,BTC31001,BTC31002,BTC31003,BTC31004,BTC31201,BTC31202,BTC31301,BTC31302,BTC31303,BTC31304,BTC31401,BTC31402,BTC31403,BTC31404,BTC31601,BTC31602,BTC31603,BTC31604,BTC10105,BTC10106,BTC10107,BTC10108,BTC10109,BTC10110,BTC20104,BTC20105,BTC10111,BTC10205,', 0, N'院长', CAST(0x0000A4C100B81244 AS DateTime), N'院长', CAST(0x0000A53800F1139A AS DateTime), 0)
INSERT [dbo].[M_Role] ([ID], [RoleCode], [RoleName], [RoleDesc], [RoleRight], [Status], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (3, N'YGJS000000003', N'销售员', NULL, N',FM0000,FM0300,FM0350,FM0900,FM0100,FM0800,FM0200,FM0380,FM0390,FM0600,FM0400,FM0201,FM0202,FM0203,FM0204,FM0206,FM0303,FM0317,FM0305,FM0316,BTC20101,BTC20102,BTC20103,BTC20201,BTC20202,BTC20203,BTC20204,BTC20301,BTC20302,BTC20303,BTC20304,BTC20401,BTC20402,BTC20403,BTC20404,BTC20601,BTC20602,BTC20603,BTC20604,BTC30301,BTC30302,BTC30303,BTC30304,BTC30501,BTC30502,BTC31601,BTC31602,BTC31603,BTC31604,BTC31701,BTC31702,BTC20104,BTC20105,', 0, N'院长', CAST(0x0000A4C100B8194C AS DateTime), N'院长', CAST(0x0000A53800F15228 AS DateTime), 0)
INSERT [dbo].[M_Role] ([ID], [RoleCode], [RoleName], [RoleDesc], [RoleRight], [Status], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (4, N'YGJS000000004', N'系统管理员', NULL, N',FM0000,FM0300,FM0350,FM0100,FM0900,FM0200,FM0800,FM0380,FM0390,FM0600,FM0400,', 0, N'院长', CAST(0x0000A4C100B8276B AS DateTime), N'院长', CAST(0x0000A4C100B8276B AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[M_Role] OFF
/****** Object:  Table [dbo].[M_Prescription_TemplateType]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Prescription_TemplateType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TypeNo] [varchar](50) NULL,
	[PNo] [varchar](50) NULL,
	[TypeName] [varchar](50) NULL,
	[GestID] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Prescription_TemplateDetail]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Prescription_TemplateDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TemplateID] [int] NULL,
	[TemplateNo] [varchar](50) NULL,
	[ItemCode] [varchar](50) NULL,
	[ItemName] [varchar](50) NULL,
	[ItemNum] [numeric](18, 2) NULL,
	[SellPrice] [numeric](18, 2) NULL,
	[RecipeUnit] [varchar](50) NULL,
	[UseWay] [varchar](max) NULL,
	[GestID] [int] NULL,
	[ItemStyle] [varchar](50) NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
	[ManufacturerCode] [varchar](50) NULL,
	[ManufacturerName] [varchar](200) NULL,
	[Frequency] [varchar](200) NULL,
	[Dose] [varchar](50) NULL,
	[UseUnit] [varchar](50) NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Prescription_Template]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Prescription_Template](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[TypeID] [int] NULL,
	[TypeNo] [varchar](50) NULL,
	[TemplateNo] [varchar](50) NULL,
	[TemplateName] [varchar](50) NULL,
	[BarCode] [varchar](100) NULL,
	[GestID] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Pet]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Pet](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PetCode] [varchar](50) NULL,
	[GestID] [int] NULL,
	[GestCode] [varchar](50) NULL,
	[GestName] [varchar](50) NULL,
	[PetName] [varchar](50) NULL,
	[PetSex] [varchar](50) NULL,
	[PetBirthday] [datetime] NULL,
	[Age] [varchar](50) NULL,
	[PetSkinColor] [varchar](50) NULL,
	[PetRace] [varchar](50) NULL,
	[PetBreed] [varchar](50) NULL,
	[PetWeight] [numeric](18, 2) NULL,
	[PetHeight] [numeric](18, 2) NULL,
	[PetSWidth] [numeric](18, 2) NULL,
	[PetBodyLong] [numeric](18, 2) NULL,
	[SickFileCode] [varchar](50) NULL,
	[BirthStatus] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
	[PetHead] [image] NULL,
	[PetHeadID] [int] NULL,
	[DogBandID] [varchar](50) NULL,
	[MdicTypeName] [varchar](50) NULL,
	[Remark] [text] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_PersonsCMApp]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_PersonsCMApp](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RequestID] [varchar](36) NOT NULL,
	[PersonID] [int] NOT NULL,
	[FocusDate] [date] NOT NULL,
	[AM] [varchar](50) NULL,
	[PM] [varchar](50) NULL,
	[Remark] [varchar](500) NULL,
	[IsDeleted] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[ModifiedBy] [varchar](50) NOT NULL,
 CONSTRAINT [PK_M_PersonCMApps] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_PersonsAppointment]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_PersonsAppointment](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RequestID] [uniqueidentifier] NOT NULL,
	[PersonsCMAppRequestID] [uniqueidentifier] NOT NULL,
	[PetName] [varchar](50) NULL,
	[PetAge] [varchar](50) NULL,
	[Symptom] [varchar](500) NULL,
	[WantHelp] [varchar](500) NULL,
	[Status] [int] NOT NULL,
	[IsDeleted] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[ModifiedBy] [varchar](50) NOT NULL,
 CONSTRAINT [PK_M_PersonsAppointment] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Persons]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Persons](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PersonCode] [varchar](50) NOT NULL,
	[PersonName] [varchar](200) NOT NULL,
	[Password] [varchar](100) NOT NULL,
	[LoginAppType] [int] NOT NULL,
	[LoginAccountType] [int] NOT NULL,
	[PWDFailedCount] [int] NULL,
	[ChangeStartReason] [varchar](400) NULL,
	[OrgID] [int] NOT NULL,
	[IDCardType] [varchar](40) NULL,
	[Sex] [varchar](50) NOT NULL,
	[IDCardNumber] [varchar](100) NULL,
	[MobilePhone] [varchar](50) NULL,
	[EmergencyPhone] [varchar](50) NULL,
	[OfficeEmail] [varchar](50) NULL,
	[Address] [varchar](400) NULL,
	[OfficeAddress] [varchar](400) NULL,
	[PersonStatus] [int] NULL,
	[IsDoctor] [varchar](50) NULL,
	[IsNurse] [varchar](50) NULL,
	[IsSeller] [varchar](50) NULL,
	[RoleID] [varchar](max) NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[AuthorizationCode] [varchar](100) NULL,
	[IsSyncEAS] [int] NOT NULL,
	[Status] [varchar](50) NULL,
	[Birthday] [datetime] NULL,
	[PersonRight] [text] NULL,
	[IsDeleted] [int] NOT NULL,
	[Images] [image] NULL,
	[descibe] [varchar](max) NULL,
	[IsnoAppoInt] [bit] NULL,
	[EmploeeHeadID] [int] NULL,
 CONSTRAINT [PK__M_Persons__34E8D562] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[M_Persons] ON
INSERT [dbo].[M_Persons] ([ID], [PersonCode], [PersonName], [Password], [LoginAppType], [LoginAccountType], [PWDFailedCount], [ChangeStartReason], [OrgID], [IDCardType], [Sex], [IDCardNumber], [MobilePhone], [EmergencyPhone], [OfficeEmail], [Address], [OfficeAddress], [PersonStatus], [IsDoctor], [IsNurse], [IsSeller], [RoleID], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [AuthorizationCode], [IsSyncEAS], [Status], [Birthday], [PersonRight], [IsDeleted], [Images], [descibe], [IsnoAppoInt], [EmploeeHeadID]) VALUES (1, N'1', N'院长', N'50c5269b59782f32', 2, 2, NULL, N'', 41, N'', N'DM00001', N'', N'13077984685', N'', N'', N'', N'', 0, N'是', N'否', N'是', N',YGJS000000001,YGJS000000002,YGJS000000003,YGJS000', N'chenmin', CAST(0x0000A3480114EA3C AS DateTime), N'院长', CAST(0x0000A4E200F371D9 AS DateTime), N'', 0, N'SM00001', CAST(0x0000A3F600000000 AS DateTime), N',FM0000,FM0300,FM0350,FM0100,FM0900,FM1000,FM0200,FM0800,FM0380,FM0390,FM0600,FM0400,FM0500,FM0901,FM0306,FM0307,FM0308,FM0309,FM0310,FM0311,FM0312,FM1001,FM0102,FM0201,FM0202,FM0203,FM0204,FM0205,FM0206,FM0601,FM0602,FM0603,FM0604,FM0605,FM0606,FM0607,FM0608,FM0609,FM0501,FM0502,FM0504,FM0505,FM0801,FM0803,FM0902,FM0610,FM0903,FM0101,FM1002,FM0802,FM0403,FM0318,FM0404,FM0402,FM0319,FM0301,FM0304,FM0401,FM0302,FM0303,FM0317,FM0315,FM0313,FM0314,FM0305,FM0316,FM0503,BTC10101,BTC10102,BTC10103,BTC10104,BTC10201,BTC10202,BTC10203,BTC10204,BTC20101,BTC20102,BTC20103,BTC20201,BTC20202,BTC20203,BTC20204,BTC20301,BTC20302,BTC20303,BTC20304,BTC20401,BTC20402,BTC20403,BTC20404,BTC20601,BTC20602,BTC20603,BTC20604,BTC30101,BTC30102,BTC30103,BTC30301,BTC30302,BTC30303,BTC30304,BTC30401,BTC30402,BTC30403,BTC30404,BTC30501,BTC30502,BTC30701,BTC30702,BTC30801,BTC30802,BTC30901,BTC30902,BTC30903,BTC30904,BTC31001,BTC31002,BTC31003,BTC31004,BTC31201,BTC31202,BTC31301,BTC31302,BTC31303,BTC31304,BTC31401,BTC31402,BTC31403,BTC31404,BTC31601,BTC31602,BTC31603,BTC31604,BTC31701,BTC31702,BTC40201,BTC40301,BTC60101,BTC60102,BTC60103,BTC60104,BTC60201,BTC60202,BTC60203,BTC60204,BTC60301,BTC60302,BTC60303,BTC60304,BTC60401,BTC60402,BTC60403,BTC60404,BTC60501,BTC60502,BTC60601,BTC60602,BTC60603,BTC60604,BTC60801,BTC60802,BTC60803,BTC60804,BTC60901,BTC60902,BTC61001,BTC61002,BTC61003,BTC61004,BTC31005,BTC10105,BTC10106,BTC10107,BTC10108,BTC10109,BTC61005,BTC61006,BTC60305,BTC60306,BTC60307,BTC60605,BTC60805,BTC60806,BTC60807,BTC60903,BTC60904,BTC60905,BTC60906,BTC60907,FM050401,FM050402,FM050403,FM050404,BTC10110,BTC30104,BTC20205,BTC20305,BTC20405,BTC20605,BTC60308,BTC60309,BTC20104,BTC20105,BTC10111,BTC10205,', 0, NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[M_Persons] OFF
/****** Object:  Table [dbo].[M_OperationLog]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_OperationLog](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FunDesc] [varchar](500) NULL,
	[MFMCode] [varchar](100) NULL,
	[TalbeName] [varchar](100) NULL,
	[PrimKey] [varchar](100) NULL,
	[OpType] [smallint] NULL,
	[Content] [text] NULL,
	[DealerOrgID] [int] NULL,
	[OperationBy] [varchar](50) NULL,
	[AppType] [smallint] NULL,
	[OperationOn] [datetime] NULL,
	[CreatedOn] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK__M_OperationLog__33008CF0] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[M_OperationLog] ON
INSERT [dbo].[M_OperationLog] ([ID], [FunDesc], [MFMCode], [TalbeName], [PrimKey], [OpType], [Content], [DealerOrgID], [OperationBy], [AppType], [OperationOn], [CreatedOn], [IsDeleted], [ModifiedOn]) VALUES (1, N'登录', NULL, NULL, NULL, NULL, N'登录页面', 1, N'院长', NULL, NULL, CAST(0x0000A6130105CA5C AS DateTime), 0, CAST(0x0000A6130105CA5C AS DateTime))
SET IDENTITY_INSERT [dbo].[M_OperationLog] OFF
/****** Object:  Table [dbo].[M_MenuFunModule]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_MenuFunModule](
	[MFMCode] [varchar](100) NOT NULL,
	[MFMName] [varchar](100) NULL,
	[ParentCode] [varchar](100) NULL,
	[MFMLocation] [varchar](500) NULL,
	[MFMLevel] [int] NOT NULL,
	[MFMType] [smallint] NULL,
	[MFMDesc] [varchar](1000) NULL,
	[MFMStatus] [smallint] NULL,
	[IsModalWindow] [bit] NULL,
	[Sort] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [int] NOT NULL
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0901', N'短信查询', N'FM0900', N'SMSManagement/SMSManage.xaml', 3, 1, N'', 1, 0, 0, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CC8 AS DateTime), 0)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0000', N'系统应用模块', N'0', N'#', 1, 1, N'', 1, 0, 0, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0300', N'前台服务', N'FM0000', N'#', 2, 1, N'', 1, 0, 0, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0350', N'诊疗服务', N'FM0000', N'#', 2, 1, N'', 1, 0, 1, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0380', N'化验影像', N'FM0000', N'#', 2, 1, N'', 1, 0, 6, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0390', N'护士工作站', N'FM0000', N'#', 2, 1, N'', 1, 0, 7, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0301', N'门诊挂号', N'FM0300', N'MedicBusiness/ApplyRegisterPage.xaml', 3, 1, N'', 0, 0, 3, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 1)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0302', N'门诊收费', N'FM0300', N'Business/PatientCharge.xaml', 3, 1, N'', 0, 0, 4, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 1)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0303', N'直接销售', N'FM0300', N'StoreBusiness/DirectSell.xaml', 3, 1, N'', 1, 0, 5, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0304', N'挂号查询', N'FM0300', N'MedicBusiness/RegisterQueryList.xaml', 3, 1, N'', 1, 0, 3, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0305', N'收费管理', N'FM0300', N'StoreBusiness/CashManageList.xaml', 3, 1, N'', 1, 0, 9, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0306', N'就诊管理', N'FM0350', N'MedicBusiness/MedicTreatment.xaml', 3, 1, N'', 1, 0, 0, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0307', N'化验管理', N'FM0380', N'MedicBusiness/ChemistResultManage.xaml', 3, 1, N'', 1, 0, 0, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0308', N'影像管理', N'FM0380', N'MedicBusiness/VedioResultManage.xaml', 3, 1, N'', 1, 0, 0, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0309', N'处方执行', N'FM0390', N'MedicBusiness/PrescriptionManage.xaml', 3, 1, N'', 1, 0, 0, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0310', N'驱虫疫苗', N'FM0350', N'MedicBusiness/VaccineManage.xaml', 3, 1, N'', 1, 0, 0, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0311', N'拓瑞检测', N'FM0350', N'Business/TRTest.xaml', 3, 1, N'', 0, 0, 0, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 1)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0312', N'病案管理', N'FM0350', N'MedicBusiness/SickFileManagement.xaml', 3, 1, N'', 1, 0, 0, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0313', N'寄养管理', N'FM0300', N'HotelBusiness/FosterManage.xaml', 3, 1, N'', 1, 0, 7, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0314', N'住院管理', N'FM0300', N'HotelBusiness/HospitalizedManage.xaml', 3, 1, N'', 1, 0, 8, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0315', N'自助短信', N'FM0300', N'Business/SMSBySelf.xaml', 3, 1, N'', 0, 0, 6, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 1)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0100', N'会员信息', N'FM0000', N'#', 2, 1, N'', 1, 0, 2, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM1001', N'会员关注', N'FM0900', N'MicroSMS/VIPSMSManageList.xaml', 3, 1, N'', 1, 0, 0, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0102', N'宠物管理', N'FM0100', N'GestManagement/PetManageList.xaml', 3, 1, N'', 1, 0, 0, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0200', N'仓库管理', N'FM0000', N'#', 2, 1, N'', 1, 0, 5, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0201', N'库存查询', N'FM0200', N'WarehouseManagement/WarehouseItemCount.xaml', 3, 1, N'', 1, 0, 0, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0202', N'入库管理', N'FM0200', N'WarehouseManagement/InWarehouseList.xaml', 3, 1, N'', 1, 0, 0, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0203', N'出库管理', N'FM0200', N'WarehouseManagement/OutWarehouseList.xaml', 3, 1, N'', 1, 0, 0, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0204', N'移库管理', N'FM0200', N'WarehouseManagement/MoveWarehouseList.xaml', 3, 1, N'', 1, 0, 0, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0205', N'盘点管理', N'FM0200', N'WarehouseManagement/CheckWarehouseList.xaml', 3, 1, N'', 0, 0, 0, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 1)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0206', N'退货管理', N'FM0200', N'WarehouseManagement/BackWarehouseList.xaml', 3, 1, N'', 1, 0, 0, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0400', N'统计报表', N'FM0000', N'#', 2, 1, N'', 1, 0, 10, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0600', N'基础数据', N'FM0000', N'#', 2, 1, N'""', 1, 0, 9, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0601', N'经销商与生产商', N'FM0600', N'BaseDataManagement/DealerManageList.xaml', 3, 1, N'', 1, 0, 0, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F68029 AS DateTime), 0)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0602', N'仓库信息管理', N'FM0600', N'BaseDataManagement/WarehouseManagementList.xaml', 3, 1, N'', 1, 0, 0, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0603', N'商品与服务管理', N'FM0600', N'BaseDataManagement/ItemTypeManageList.xaml', 3, 1, N'', 1, 0, 0, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0604', N'会员等级管理', N'FM0600', N'BaseDataManagement/VIPLevel.xaml', 3, 1, N'', 1, 0, 0, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0605', N'数据字典管理', N'FM0600', N'BaseDataManagement/DataDictmanageList.xaml', 3, 1, N'', 1, 0, 0, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0606', N'员工管理', N'FM0600', N'BaseDataManagement/Employee.xaml', 3, 1, N'', 1, 0, 0, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0607', N'按钮配置', N'FM0600', N'SetButton.xaml', 3, 1, N'', 0, 0, 0, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 1)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0608', N'处方模板管理', N'FM0350', N'MedicBusiness/PrescriptionTemplateManage.xaml', 3, 1, N'', 1, 0, 0, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0609', N'化验项目管理', N'FM0600', N'BaseDataManagement/CheMistTestTypeManageList.xaml', 3, 1, N'', 1, 0, 0, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0500', N'系统管理', N'FM0000', N'#', 2, 1, N'', 0, 0, 7, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0501', N'登录日志', N'FM0500', N'Maintain/LoginLog.xaml', 3, 1, N'', 0, 0, 0, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 1)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0502', N'医院信息', N'FM0600', N'TR.PHM.WPFClient.WinHospitalInfo', 3, 1, N'', 1, 1, 0, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0503', N'应用参数', N'FM0600', N'BaseDataManagement/ConfigPage.xaml', 3, 1, N'', 1, 0, 10, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0504', N'角色管理', N'FM0600', N'BaseDataManagement/RoleManageList.xaml', 3, 1, N'', 1, 0, 0, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0505', N'密码变更', N'FM0500', N'TR.PHM.WpfClient.Maintain.PWChange', 3, 1, N'', 0, 1, 0, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 1)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0800', N'拓瑞检测', N'FM0000', N'#', 2, 1, N'', 1, 0, 4, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0801', N'检测申报', N'FM0800', N'TR.PHM.WPFClient.WinApplyTRCheck', 3, 1, N'', 1, 1, 0, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A53801084C91 AS DateTime), 0)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0802', N'检测查询', N'FM0800', N'TRSearch/TRCheckFileManage.xaml', 3, 1, N'', 1, 0, 1, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0803', N'费用统计', N'FM0800', N'#', 3, 1, N'', 0, 0, 0, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 1)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0317', N'销售查询', N'FM0300', N'StoreBusiness/SellSearchManage.xaml', 3, 1, N'', 1, 0, 5, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0316', N'结算单管理', N'FM0300', N'StoreBusiness/CashSearchList.xaml', 3, 1, N'', 1, 0, 9, N'', CAST(0xFFFFFFFE00000000 AS DateTime), N'', CAST(0xFFFFFFFE00000000 AS DateTime), 0)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0401', N'库存资产统计', N'FM0400', N'StatisticsBusiness/CurrentProperty.xaml', 3, 1, N'', 1, 0, 3, N'', CAST(0xFFFFFFFE00000000 AS DateTime), N'', CAST(0xFFFFFFFE00000000 AS DateTime), 0)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0402', N'营业收入统计', N'FM0400', N'StatisticsBusiness/TotalEarnMoney.xaml', 3, 1, N'', 1, 0, 2, N'', CAST(0xFFFFFFFE00000000 AS DateTime), N'', CAST(0xFFFFFFFE00000000 AS DateTime), 0)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0403', N'挂号就诊统计', N'FM0400', N'StatisticsBusiness/TotalRegisterRecord.xaml', 3, 1, N'', 1, 0, 1, N'', CAST(0xFFFFFFFE00000000 AS DateTime), N'', CAST(0xFFFFFFFE00000000 AS DateTime), 0)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0900', N'短信&微信营销', N'FM0000', N'#', 2, 1, N'""', 1, 0, 3, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'""', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0902', N'自助短信', N'FM0900', N'SMSManagement/SMSSendList.xaml', 3, 1, N'""', 1, 0, 0, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'""', CAST(0x0000A53801084C91 AS DateTime), 0)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0610', N'宠物品种管理', N'FM0600', N'BaseDataManagement/PetRaceManage.xaml', 3, 1, N'""', 1, 0, 0, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'""', CAST(0x0000A3DA00F67CC8 AS DateTime), 0)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0318', N'会员挂号', N'FM0300', N'TR.PHM.WPFClient.MedicBusiness.Register.AddRegister', 3, 1, N'""', 1, 1, 1, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'""', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0319', N'快捷挂号', N'FM0300', N'TR.PHM.WPFClient.WinRandomGestRegist', 3, 1, N'""""""', 1, 1, 2, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'""""""', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0903', N'短信设置', N'FM0900', N'SMSManagement/SMSConfigPage.xaml', 3, 1, N'""', 1, 0, 0, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'""', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM1000', N'微信营销', N'FM0000', N'#', 2, 1, N'""""""', 0, 0, 3, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'""""""', CAST(0x0000A3DA00F67CE2 AS DateTime), 1)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0101', N'会员管理', N'FM0100', N'GestManagement/VIPManageList.xaml', 3, 1, N'""', 1, 0, 0, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'""', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM1002', N'微信设置', N'FM0900', N'MicroSMS/MicroSMSConfigPage.xaml', 3, 1, N'""""""', 1, 0, 0, N'admin', CAST(0x0000A3DA00000000 AS DateTime), N'""""""', CAST(0x0000A3DA00F67CE2 AS DateTime), 0)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0404', N'就诊分期统计', N'FM0400', N'StatisticsBusiness/RegisterRecordCount.xaml', 3, 1, N'""', 1, 0, 1, N'""', CAST(0xFFFFFFFE00000000 AS DateTime), N'""', CAST(0xFFFFFFFE00000000 AS DateTime), 0)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0320', N'美容服务', N'FM0300', N'HotelBusiness/ServiceManage.xaml', 3, 1, N'', 1, 0, 6, N'admin', CAST(0x0000A56C012BC5F7 AS DateTime), N'', CAST(0x0000A56C012BC5F7 AS DateTime), 0)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0506', N'备份还原', N'FM0500', N'TR.PHM.WPFClient.DBChooseMenu', 3, 1, N'', 0, 1, 1, N'admin', CAST(0x0000A56C012BC601 AS DateTime), N'', CAST(0x0000A56C012BC601 AS DateTime), 0)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0507', N'设置向导', N'FM0500', N'TR.PHM.WPFClient.WinNavigation', 3, 1, N'', 0, 1, 1, N'admin', CAST(0x0000A575013457D3 AS DateTime), N'', CAST(0x0000A575013457D3 AS DateTime), 0)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM1011', N'微网站管理', N'FM0900', N'MicroSMS/MicroWeb.xaml', 3, 1, N'', 1, 0, 20, N'admin', CAST(0x0000A58500F028B6 AS DateTime), N'admin', CAST(0x0000A58500F028B6 AS DateTime), 0)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0370', N'预约管理', N'FM0300', N'MicroSMS/AppointmentList.xaml', 3, 1, N'', 1, 0, -20, N'admin', CAST(0x0000A58500F028B6 AS DateTime), N'admin', CAST(0x0000A58500F028B6 AS DateTime), 0)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0321', N'销售退货', N'FM0300', N'StoreBusiness/ReturnCommodityManage.xaml', 3, 1, N'', 1, 0, 10, N'admin', CAST(0x0000A58500F028B6 AS DateTime), N'admin', CAST(0x0000A58500F028B6 AS DateTime), 0)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0700', N'经营管理', N'FM0000', N'#', 2, 1, N'', 1, 0, 8, N'admin', CAST(0x0000A59C00EDD1F8 AS DateTime), N'admin', CAST(0x0000A59C00EDD1F8 AS DateTime), 0)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0701', N'支出管理', N'FM0700', N'OperateManagement/ExpenseManageList.xaml', 3, 1, N'', 1, 0, 0, N'admin', CAST(0x0000A59C00EDD1F8 AS DateTime), N'admin', CAST(0x0000A59C00EDD1F8 AS DateTime), 0)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0702', N'效绩考核统计', N'FM0400', N'StatisticsBusiness/CountAchievement.xaml', 3, 1, N'', 1, 0, 1, N'admin', CAST(0x0000A59C00EDD1F8 AS DateTime), N'admin', CAST(0x0000A59C00EDD1F8 AS DateTime), 0)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0703', N'门店收支统计', N'FM0400', N'StatisticsBusiness/CountInCome.xaml', 3, 1, N'', 1, 0, 2, N'admin', CAST(0x0000A59C00EDD1F8 AS DateTime), N'admin', CAST(0x0000A59C00EDD1F8 AS DateTime), 0)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0704', N'会员消费统计', N'FM0400', N'StatisticsBusiness/CountVIPCost.xaml', 3, 1, N'', 1, 0, 3, N'admin', CAST(0x0000A59C00EDD1F8 AS DateTime), N'admin', CAST(0x0000A59C00EDD1F8 AS DateTime), 0)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0405', N'病例统计', N'FM0400', N'StatisticsBusiness/TotalMedicalRecord.xaml', 3, 1, N'', 1, 0, 4, N'admin', CAST(0x0000A5B8012CA6EF AS DateTime), N'admin', CAST(0x0000A5B8012CA6EF AS DateTime), 0)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0707', N'毛利统计', N'FM0400', N'StatisticsBusiness/CountMargin.xaml', 3, 1, N'', 1, 0, 5, N'admin', CAST(0x0000A5B8012CA6EF AS DateTime), N'admin', CAST(0x0000A5B8012CA6EF AS DateTime), 0)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0708', N'商品销售统计', N'FM0400', N'StatisticsBusiness/CountItemSell.xaml', 3, 1, N'""', 1, 0, 7, N'admin', CAST(0x0000A5B8012CA6EF AS DateTime), N'admin', CAST(0x0000A5B8012CA6EF AS DateTime), 0)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0709', N'商品采购统计', N'FM0400', N'StatisticsBusiness/CountItemPurchase.xaml', 3, 1, N'""', 1, 0, 6, N'admin', CAST(0x0000A5B8012CA6EF AS DateTime), N'admin', CAST(0x0000A5B8012CA6EF AS DateTime), 0)
INSERT [dbo].[M_MenuFunModule] ([MFMCode], [MFMName], [ParentCode], [MFMLocation], [MFMLevel], [MFMType], [MFMDesc], [MFMStatus], [IsModalWindow], [Sort], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (N'FM0804', N'尿检设备', N'FM0800', N'Equipment/UrineInstrument.xaml', 3, 1, N'', 1, 0, 3, N'admin', CAST(0x0000A619010C77FE AS DateTime), N'admin', CAST(0x0000A619010C77FE AS DateTime), 0)
/****** Object:  Table [dbo].[M_MenuButton]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_MenuButton](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MFMCode] [varchar](100) NOT NULL,
	[MFMName] [varchar](100) NULL,
	[ButtonName] [varchar](500) NULL,
	[ButtonCode] [varchar](50) NULL,
	[ButtonDesc] [varchar](1000) NULL,
	[Status] [smallint] NULL,
	[IsDeleted] [int] NOT NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[M_MenuButton] ON
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (2, N'FM0101', N'会员管理', N'btn_Add;dg_Main.dg_Main_MouseDoubleClick', N'BTC10102', N'会员管理会员增加', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (3, N'FM0101', N'会员管理', N'dg_Main.dt_Operation.dg_Edit', N'BTC10103', N'会员管理会员编辑', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (4, N'FM0101', N'会员管理', N'btn_Delete;dg_Main.dt_Operation.dg_Delete', N'BTC10104', N'会员管理会员删除', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (6, N'FM0102', N'宠物管理', N'btn_AddPet', N'BTC10202', N'宠物管理增加', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (7, N'FM0102', N'宠物管理', N'dg_Pet.dt_Operation.dg_PetEdit;dg_Pet.dg_Pet_MouseDoubleClick', N'BTC10203', N'宠物管理编辑', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (8, N'FM0102', N'宠物管理', N'btn_DeletePet;dg_Pet.dt_Operation.dg_PetEdit.dg_PetDelete', N'BTC10204', N'宠物管理删除', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (10, N'FM0201', N'库存查询', N'dg_Main.dg_Main_MouseDoubleClick;dg_Main.dt_Operation.dg_Edit', N'BTC20102', N'修改', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (11, N'FM0201', N'库存查询', N'dg_Main.dt_Operation.dg_View', N'BTC20103', N'日志查看', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (13, N'FM0202', N'入库管理', N'btn_Add;dg_Main.dg_Main_MouseDoubleClick', N'BTC20202', N'入库管理增加', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (14, N'FM0202', N'入库管理', N'dg_Main.dt_Operation.dg_Edit', N'BTC20203', N'入库管理编辑', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (15, N'FM0202', N'入库管理', N'btn_Delete;dg_Main.dt_Operation.dg_Delete', N'BTC20204', N'入库管理删除', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (17, N'FM0203', N'出库管理', N'btn_Add;dg_Main.dg_Main_MouseDoubleClick', N'BTC20302', N'出库管理增加', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (18, N'FM0203', N'出库管理', N'dg_Main.dt_Operation.dg_Edit', N'BTC20303', N'出库管理编辑', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (19, N'FM0203', N'出库管理', N'btn_Delete;dg_Main.dt_Operation.dg_Delete', N'BTC20304', N'出库管理删除', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (21, N'FM0204', N'移库管理', N'btn_Add;dg_Main.dg_Main_MouseDoubleClick', N'BTC20402', N'移库管理增加', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (22, N'FM0204', N'移库管理', N'dg_Main.dt_Operation.dg_Edit', N'BTC20403', N'移库管理编辑', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (23, N'FM0204', N'移库管理', N'btn_Delete;dg_Main.dt_Operation.dg_Delete', N'BTC20404', N'移库管理删除', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (25, N'FM0206', N'退货管理', N'btn_Add;dg_Main.dg_Main_MouseDoubleClick', N'BTC20602', N'退货管理增加', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (26, N'FM0206', N'退货管理', N'dg_Main.dt_Operation.dg_Edit', N'BTC20603', N'退货管理编辑', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (27, N'FM0206', N'退货管理', N'btn_Delete;dg_Main.dt_Operation.dg_Delete', N'BTC20604', N'退货管理删除', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (28, N'FM0301', N'门诊挂号', N'btn_Search', N'BTC30101', N'门诊挂号查询宠物', NULL, 1)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (29, N'FM0301', N'门诊挂号', N'btn_AddRegister;dg_Main.dg_Main_MouseDoubleClick', N'BTC30102', N'门诊挂号增加', NULL, 1)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (30, N'FM0301', N'门诊挂号', N'btn_AddRandonGest', N'BTC30103', N'门诊挂号散客挂号', NULL, 1)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (36, N'FM0304', N'挂号查询', N'btn_Add', N'BTC30402', N'挂号查询增加', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (37, N'FM0304', N'挂号查询', N'dg_Main.dt_Operator.dg_Edit;dg_Main.dg_Main_MouseDoubleClick', N'BTC30403', N'挂号查询编辑', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (38, N'FM0304', N'挂号查询', N'btn_Delete;dg_Main.dt_Operator.dg_Delete', N'BTC30404', N'挂号查询删除', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (40, N'FM0305', N'收费管理', N'dg_End', N'BTC30502', N'收费管理结算', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (42, N'FM0307', N'化验管理', N'dg_Main.dt_Operator.dg_Edit;dg_Main.dg_Main_MouseDoubleClick', N'BTC30702', N'化验管理检查', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (44, N'FM0308', N'影像管理', N'dg_Main.dt_Operator.dg_Edit;dg_Main.dg_Main_MouseDoubleClick', N'BTC30802', N'影像管理检查', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (46, N'FM0309', N'药房管理', N'dg_Main.dt_Operator.dg_Print', N'BTC30902', N'药房管理打印', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (47, N'FM0309', N'药房管理', N'dg_Main.dt_Operator.dg_Edit;dg_Main.dg_Main_MouseDoubleClick', N'BTC30903', N'药房管理取药', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (48, N'FM0309', N'药房管理', N'btn_Delete;dg_Main.dt_Operator.dg_Delete', N'BTC30904', N'药房管理退回医生', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (50, N'FM0310', N'疫苗登记', N'btn_Add;dg_Main.dg_Main_MouseDoubleClick', N'BTC31002', N'疫苗登记增加', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (51, N'FM0310', N'疫苗登记', N'dg_Main.dt_Operation.dg_Edit', N'BTC31003', N'疫苗登记编辑', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (52, N'FM0310', N'疫苗登记', N'btn_Delete;dg_Main.dt_Operation.dg_Delete', N'BTC31004', N'疫苗登记删除', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (54, N'FM0312', N'病案管理', N'dg_Main.dt_Operation.dg_Edit;dg_Main.dg_Main_MouseDoubleClick', N'BTC31202', N'病案管理查看', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (56, N'FM0313', N'寄养管理', N'btn_Add;dg_Main.dg_Main_MouseDoubleClick', N'BTC31302', N'寄养管理增加', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (57, N'FM0313', N'寄养管理', N'dg_Main.dt_Operation.dg_Edit', N'BTC31303', N'寄养管理编辑', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (58, N'FM0313', N'寄养管理', N'btn_Delete;dg_Main.dt_Operation.dg_Edit.dg_Delete', N'BTC31304', N'寄养管理删除', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (60, N'FM0314', N'住院管理', N'btn_Add;dg_Main.dg_Main_MouseDoubleClick', N'BTC31402', N'住院管理增加', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (61, N'FM0314', N'住院管理', N'dg_Main.dt_Operation.dg_Edit', N'BTC31403', N'住院管理编辑', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (62, N'FM0314', N'住院管理', N'btn_Delete;dg_Main.dt_Operation.dg_Edit.dg_Delete', N'BTC31404', N'住院管理删除', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (65, N'FM0316', N'结算单管理', N'dg_Main.dt_Operation.dg_End', N'BTC31603', N'结算单查看', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (72, N'FM0601', N'供应商信息管理', N'btn_Add;dg_Main.dg_Main_MouseDoubleClick', N'BTC60102', N'供应商信息管理增加', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (73, N'FM0601', N'供应商信息管理', N'dg_Main.dt_Operation.dg_Edit', N'BTC60103', N'供应商信息管理编辑', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (74, N'FM0601', N'供应商信息管理', N'btn_Delete;dg_Main.dt_Operation.dg_Delete', N'BTC60104', N'供应商信息管理删除', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (76, N'FM0602', N'仓库信息管理', N'btn_Add', N'BTC60202', N'仓库信息管理增加', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (77, N'FM0602', N'仓库信息管理', N'dg_Main.dt_Operation.dg_Edit;dg_Main.dg_Main_MouseDoubleClick', N'BTC60203', N'仓库信息管理编辑', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (78, N'FM0602', N'仓库信息管理', N'btn_Delete;dg_Main.dt_Operation.dg_Delete', N'BTC60204', N'仓库信息管理删除', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (80, N'FM0603', N'商品与服务管理', N'btn_Add', N'BTC60302', N'商品与服务管理增加商品与服务', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (81, N'FM0603', N'商品与服务管理', N'dg_Main.dt_Operator.dg_Edit;dg_Main.dg_Main_MouseDoubleClick', N'BTC60303', N'商品与服务管理编辑商品与服务', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (82, N'FM0603', N'商品与服务管理', N'btn_Delete;dg_Main.dt_Operator.dg_Delete', N'BTC60304', N'商品与服务管理删除商品与服务', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (83, N'FM0604', N'会员等级管理', N'btn_Search', N'BTC60401', N'会员等级管理查询', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (84, N'FM0604', N'会员等级管理', N'btn_Add', N'BTC60402', N'会员等级管理增加', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (85, N'FM0604', N'会员等级管理', N'dg_Main.dt_Operation.dg_Edit;dg_Main.dg_Main_MouseDoubleClick', N'BTC60403', N'会员等级管理编辑', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (86, N'FM0604', N'会员等级管理', N'btn_Delete;dg_Main.dt_Operation.dg_Delete', N'BTC60404', N'会员等级管理删除', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (88, N'FM0605', N'数据字典管理', N'btn_Add', N'BTC60502', N'数据字典管理增加', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (90, N'FM0606', N'员工管理', N'btn_Add', N'BTC60602', N'员工管理增加', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (91, N'FM0606', N'员工管理', N'dg_Main.dt_Operation.dg_Edit;dg_Main.dg_Main_MouseDoubleClick', N'BTC60603', N'员工管理编辑', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (92, N'FM0606', N'员工管理', N'btn_Delete;dg_Main.dt_Operation.dg_Delete', N'BTC60604', N'员工管理删除', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (94, N'FM0608', N'处方模板管理', N'btn_Add', N'BTC60802', N'处方模板管理增加', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (95, N'FM0608', N'处方模板管理', N'dg_MainTemplate.dt_Operator.dg_EditTemplate;dg_MainTemplate.dg_MainTemplate_MouseDoubleClick', N'BTC60803', N'处方模板管理编辑', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (96, N'FM0608', N'处方模板管理', N'btn_Delete;dg_MainTemplate.dt_Operator.dg_DeleteTemplate', N'BTC60804', N'处方模板管理删除', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (97, N'FM0609', N'化验项目管理', N'btn_AddType', N'BTC60901', N'化验项目管理增加化验项目', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (98, N'FM0609', N'化验项目管理', N'btn_DeleteType', N'BTC60902', N'化验项目管理删除化验项目', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (100, N'FM0610', N'宠物品种管理', N'btn_Add', N'BTC61002', N'宠物品种管理增加', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (101, N'FM0610', N'宠物品种管理', N'dg_Main.dt_Operator.dg_Edit;dg_Main.dg_Main_MouseDoubleClick', N'BTC61003', N'宠物品种管理编辑', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (102, N'FM0610', N'宠物品种管理', N'btn_Delete;dg_Main.dt_Operator.dg_Delete', N'BTC61004', N'宠物品种管理删除', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (103, N'FM0310', N'疫苗登记', N'btn_ShootAll;dg_Main.dt_Operation.dg_Shoot', N'BTC31005', N'疫苗登记完成注射', NULL, 1)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (104, N'FM0101', N'会员管理', N'btn_Stop;dg_Main.dt_Operation.dg_Stop', N'BTC10105', N'会员管理会员停用', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (105, N'FM0101', N'会员管理', N'dg_Main.dt_Operation.dg_InputMoney', N'BTC10106', N'会员管理会员充值', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (106, N'FM0101', N'会员管理', N'btn_AddPet;dg_Main.dt_Operation2.dg_Pet_MouseDoubleClick', N'BTC10107', N'会员管理宠物增加', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (107, N'FM0101', N'会员管理', N'btn_DeletePet;dg_Main.dt_Operation2.dg_PetDelete', N'BTC10108', N'会员管理宠物删除', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (108, N'FM0101', N'会员管理', N'dg_Main.dt_Operation2.dg_PetEdit', N'BTC10109', N'会员管理宠物编辑', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (109, N'FM0610', N'宠物品种管理', N'btn_AddRace', N'BTC61005', N'宠物品种管理增加种类', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (110, N'FM0610', N'宠物品种管理', N'btn_DeleteRace', N'BTC61006', N'宠物品种管理删除种类', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (111, N'FM0603', N'商品与服务管理', N'btn_AddCate', N'BTC60305', N'商品与服务管理增加类型', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (112, N'FM0603', N'商品与服务管理', N'btn_DeleteCate', N'BTC60306', N'商品与服务管理删除类型', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (113, N'FM0603', N'商品与服务管理', N'btn_EditCate', N'BTC60307', N'商品与服务管理修改类型', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (114, N'FM0606', N'员工管理', N'btn_Stop;dg_Main.dt_Operation.dg_Stop', N'BTC60605', N'员工管理停用', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (115, N'FM0608', N'处方模板管理', N'btn_AddTemplate_tree', N'BTC60805', N'处方模板管理增加模板类型', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (116, N'FM0608', N'处方模板管理', N'btn_DeleteTemplate_tree', N'BTC60806', N'处方模板管理删除模板类型', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (117, N'FM0608', N'处方模板管理', N'btn_EditTemplate_tree', N'BTC60807', N'处方模板管理修改模板类型', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (118, N'FM0609', N'化验项目管理', N'btn_AddDetail', N'BTC60903', N'化验项目管理增加化验项目明细', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (119, N'FM0609', N'化验项目管理', N'btn_DeleteDetail;gd_Main.dt_Operator.dg_DeleteType', N'BTC60904', N'化验项目管理编辑化验项目明细', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (120, N'FM0609', N'化验项目管理', N'gd_Detail.dt_Operator2.dg_Edit;gd_Detail.gd_Detail_MouseDoubleClick', N'BTC60905', N'化验项目管理删除化验项目明细', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (121, N'FM0609', N'化验项目管理', N'gd_Detail.dt_Operator2.dg_Delete', N'BTC60906', N'化验项目管理编辑化验项目明细参考值', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (122, N'FM0609', N'化验项目管理', N'gd_Main.dt_Operator.dg_EditType;gd_Main.gd_Main_MouseDoubleClick', N'BTC60907', N'化验项目管理删除化验项目明细参考值', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (124, N'FM0504', N'权限配置', N'btn_Add;', N'FM050402', N'权限设置增加', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (125, N'FM0504', N'权限配置', N'dg_Main.dt_Operation.dg_Edit;dg_Main.dg_Main_MouseDoubleClick', N'FM050403', N'权限设置编辑', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (126, N'FM0504', N'权限配置', N'btn_Delete;dg_Main.dt_Operation.dg_Delete', N'FM050404', N'权限设置删除', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (127, N'FM0101', N'会员管理', N'', N'BTC10110', N'会员管理查看充值记录', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (128, N'FM0301', N'门诊挂号', N'', N'BTC30104', N'门诊挂号编辑挂号信息', NULL, 1)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (129, N'FM0202', N'入库管理', N'', N'BTC20205', N'入库管理审核', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (130, N'FM0203', N'出库管理', N'', N'BTC20305', N'出库管理审核', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (131, N'FM0204', N'移库管理', N'', N'BTC20405', N'移库管理审核', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (132, N'FM0206', N'退货管理', N'', N'BTC20605', N'退货管理审核', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (133, N'FM0603', N'商品与服务管理', N'btn_InputModel', N'BTC60308', N'商品与服务管理导入数据', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (134, N'FM0603', N'商品与服务管理', N'btn_OutPutModel', N'BTC60309', N'商品与服务管理导出模板', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (135, N'FM0201', N'库存查询', N'btn_Input', N'BTC20104', N'导入数据', NULL, 0)
GO
print 'Processed 100 total records'
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (136, N'FM0201', N'库存查询', N'btn_OutPut', N'BTC20105', N'导出数据', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (140, N'FM0320', N'增加', N'btn_Add', N'BTC70002', N'增加', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (141, N'FM0320', N'删除', N'btn_Delete;dg_Main.dt_Operator.dg_Delete', N'BTC70003', N'删除', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (142, N'FM0320', N'编辑', N'dg_Main.dt_Operator.dg_Edit', N'BTC70004', N'编辑', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (143, N'FM0506', N'备份', N'btn_BackUp', N'BTC90001', N'数据备份', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (144, N'FM0506', N'还原', N'btn_Restore', N'BTC90002', N'数据还原', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (145, N'FM0316', N'结算单管理', N'btn_PrintAgain', N'BTC31605', N'重打小票', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (146, N'FM0201', N'库存查询', N'btn_UpdateItemCount', N'BTC20106', N'更新账面库存', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (147, N'FM0201', N'库存查询', N'dg_Delete', N'BTC20107', N'删除', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (148, N'FM0321', N'退货管理', N'btn_Add', N'BTC31801', N'退货管理增加', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (149, N'FM0305', N'收费管理', N'btnZK', N'BTC30503', N'收费管理折扣', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (150, N'FM0603', N'商品与服务管理', N'btn_OutPutData', N'BTC60310', N'商品与服务管理导出数据', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (151, N'FM0605', N'商品与服务管理', N'btn_Edit', N'BTC60503', N'数据字典管理修改', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (152, N'FM0605', N'商品与服务管理', N'btn_Edit', N'BTC60504', N'数据字典管理修改', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (153, N'FM0606', N'员工管理', N'btn_Input', N'BTC60606', N'预约设置', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (154, N'FM0609', N'化验项目管理', N'', N'BTC60908', N'化验项目管理增加化验项目明细参考值', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (155, N'FM0609', N'化验项目管理', N'', N'BTC60909', N'化验项目管理编辑化验项目', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (156, N'FM0101', N'会员管理', N'', N'BTC10112', N'会员管理会员导入', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (157, N'FM0101', N'会员管理', N'', N'BTC10113', N'会员管理导出模板', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (158, N'FM0102', N'宠物管理', N'', N'BTC10206', N'宠物管理宠物导入', NULL, 0)
INSERT [dbo].[M_MenuButton] ([ID], [MFMCode], [MFMName], [ButtonName], [ButtonCode], [ButtonDesc], [Status], [IsDeleted]) VALUES (159, N'FM0102', N'宠物管理', N'', N'BTC10207', N'宠物管理导出模板', NULL, 0)
SET IDENTITY_INSERT [dbo].[M_MenuButton] OFF
/****** Object:  Table [dbo].[M_LoginLog]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_LoginLog](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[UserAccount] [varchar](50) NULL,
	[CPUToken] [varchar](500) NULL,
	[DealerOrgID] [int] NULL,
	[HostIP] [varchar](200) NULL,
	[IsSucceed] [bit] NULL,
	[AppType] [smallint] NULL,
	[Browser] [varchar](100) NULL,
	[LoginTime] [datetime] NULL,
	[CreateOn] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_ItemType]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_ItemType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ItemCode] [varchar](50) NULL,
	[ItemName] [varchar](100) NULL,
	[CateNo] [varchar](50) NULL,
	[PackageUnit] [varchar](50) NULL,
	[RecipeUnit] [varchar](50) NULL,
	[ItemStandard] [varchar](50) NULL,
	[ItemStyle] [varchar](50) NULL,
	[BarCode] [varchar](50) NULL,
	[BusiTypeID] [int] NULL,
	[ItemBulk] [int] NULL,
	[InputPrice] [numeric](18, 2) NULL,
	[DealerCode] [varchar](50) NULL,
	[DealerName] [varchar](100) NULL,
	[SellPrice] [numeric](18, 2) NULL,
	[IsVIPDiscount] [varchar](50) NULL,
	[IsSell] [varchar](50) NULL,
	[IsCount] [varchar](50) NULL,
	[VIPSellPrice] [numeric](18, 2) NULL,
	[RecipePrice] [numeric](18, 2) NULL,
	[DrugForm] [varchar](50) NULL,
	[WareUpLimit] [int] NULL,
	[WareDownLimit] [int] NULL,
	[SafeDay] [int] NULL,
	[UseWay] [varchar](max) NULL,
	[GroupName] [varchar](50) NULL,
	[Remark] [text] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
	[InputCode] [varchar](50) NULL,
	[IsScattered] [bit] NULL,
	[Location] [varchar](200) NULL,
	[IsCanExchange] [varchar](50) NULL,
	[ExchangeRewardPoint] [int] NULL,
 CONSTRAINT [PK__M_ItemType__2C538F61] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[M_ItemType] ON
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (1, N'WF000000001', N'X光', N'ICate05', N'DM00011', N'DM00011', N'1', N'影像项目', N'WF000000001', 5, 1, CAST(0.00 AS Numeric(18, 2)), N'', N'', CAST(0.00 AS Numeric(18, 2)), N'否', N'是', N'否', CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'DM00008', 999, 0, 365, N'', N'', N'', N'院长', NULL, N'院长', NULL, 0, N'XG', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (2, N'WF000000002', N'B超', N'ICate05', N'DM00011', N'DM00011', N'1', N'影像项目', N'WF000000002', 5, 1, CAST(0.00 AS Numeric(18, 2)), N'', N'', CAST(0.00 AS Numeric(18, 2)), N'是', N'是', N'否', CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'DM00008', 999, 0, 365, N'', N'', N'', N'院长', NULL, N'院长', NULL, 0, N'BC', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (3, N'WF000000003', N'血常规', N'ICate04', N'DM00011', N'DM00011', N'1', N'化验项目', N'WF000000003', 4, 1, CAST(0.00 AS Numeric(18, 2)), N'', N'', CAST(0.00 AS Numeric(18, 2)), N'否', N'是', N'否', CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'DM00008', 999, 0, 365, N'', N'', N'', N'院长', NULL, N'院长', NULL, 0, N'XCG', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (4, N'WF000000004', N'血生化', N'ICate04', N'DM00011', N'DM00011', N'1', N'化验项目', N'WF000000004', 4, 1, CAST(0.00 AS Numeric(18, 2)), N'', N'', CAST(0.00 AS Numeric(18, 2)), N'否', N'是', N'否', CAST(0.00 AS Numeric(18, 2)), CAST(0.00 AS Numeric(18, 2)), N'DM00008', 999, 0, 365, N'', N'', N'', N'院长', NULL, N'院长', NULL, 0, N'XSH', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (5, N'WF000000005', N'阿莫西林', N'ICate01', N'DM00038', N'DM00015', N'14', N'宠物药品', N'WF000000005', 1, 10, CAST(35.00 AS Numeric(18, 2)), N'JXS0000000001', N'北京龙科生物制药有限公司', CAST(100.00 AS Numeric(18, 2)), N'是', N'是', N'是', CAST(0.00 AS Numeric(18, 2)), CAST(10.00 AS Numeric(18, 2)), N'DM00008', 999, 0, 0, NULL, NULL, NULL, N'院长', NULL, N'院长', CAST(0x0000A53401457C1E AS DateTime), 0, N'AMXL', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (6, N'WF000000007', N'住院服务', N'ICate06', N'DM00018', N'DM00018', N'', N'住院项目', N'WF000000007', 6, 1, CAST(0.00 AS Numeric(18, 2)), N'', N'', CAST(200.00 AS Numeric(18, 2)), N'是', N'是', N'否', CAST(0.00 AS Numeric(18, 2)), CAST(200.00 AS Numeric(18, 2)), N'DM00008', 999, 0, 365, N'', N'', N'', N'院长', NULL, N'院长', NULL, 0, N'ZYFW', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (7, N'WF000000008', N'手术', N'ICate07', N'DM00013', N'DM00013', N'', N'宠物手术', N'WF000000008', 7, 1, CAST(0.00 AS Numeric(18, 2)), N'', N'', CAST(350.00 AS Numeric(18, 2)), N'是', N'是', N'否', CAST(0.00 AS Numeric(18, 2)), CAST(350.00 AS Numeric(18, 2)), N'DM00008', 999, 0, 365, N'', N'', N'', N'院长', NULL, N'院长', NULL, 0, N'SS', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (8, N'WF000000009', N'犬五联弱毒疫苗', N'ICate09', N'DM00030', N'DM00030', N'', N'宠物疫苗', N'WF000000009', 9, 1, CAST(200.00 AS Numeric(18, 2)), N'JXS0000000001', N'北京龙科生物制药有限公司', CAST(1000.00 AS Numeric(18, 2)), N'是', N'是', N'是', CAST(0.00 AS Numeric(18, 2)), CAST(1000.00 AS Numeric(18, 2)), N'DM00008', 999, 2, 0, N'', N'', N'', N'院长', NULL, N'院长', NULL, 0, N'QWLRDYM', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (9, N'WF000000010', N'挂号服务', N'ICate10', N'DM00013', N'DM00013', NULL, N'挂号项目', N'WF000000010', 10, 1, CAST(20.00 AS Numeric(18, 2)), NULL, NULL, CAST(20.00 AS Numeric(18, 2)), N'否', N'是', N'否', CAST(0.00 AS Numeric(18, 2)), CAST(20.00 AS Numeric(18, 2)), N'DM00008', 999, 0, 365, NULL, NULL, NULL, N'院长', NULL, N'院长', CAST(0x0000A53801223DBF AS DateTime), 0, N'GHFW', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (10, N'WF000000011', N'寄养服务', N'ICate11', N'DM00018', N'DM00018', N'', N'寄养项目', N'WF000000011', 11, 1, CAST(300.00 AS Numeric(18, 2)), N'', N'', CAST(500.00 AS Numeric(18, 2)), N'是', N'是', N'否', CAST(0.00 AS Numeric(18, 2)), CAST(500.00 AS Numeric(18, 2)), N'DM00008', 999, 0, 365, N'', N'', N'', N'院长', NULL, N'院长', NULL, 0, N'JYFW', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (11, N'WF000000013', N'头孢拉定', N'ICate01', N'DM00038', N'DM00038', N'', N'宠物药品', N'WF000000013', 1, 10, CAST(0.00 AS Numeric(18, 2)), N'JXS0000000001', N'北京龙科生物制药有限公司', CAST(100.00 AS Numeric(18, 2)), N'是', N'是', N'是', CAST(0.00 AS Numeric(18, 2)), CAST(10.00 AS Numeric(18, 2)), N'DM00009', 999, 0, 0, N'', N'', N'', N'院长', NULL, N'院长', NULL, 0, N'TBLD', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (12, N'WF0000000023', N'雪莲美', N'ICate01', N'DM00038', N'DM00050', N'10ml X 10支', N'宠物药品', N'WF0000000023', 1, 10, CAST(45.00 AS Numeric(18, 2)), N'JXS0000000002', N'湖南丹维生物科技有限公司', CAST(120.00 AS Numeric(18, 2)), N'是', N'是', N'是', CAST(0.00 AS Numeric(18, 2)), CAST(12.00 AS Numeric(18, 2)), N'DM00008', 300, 10, 999, N'肌内或皮下注射 每次每1kg体重 马、牛0.05ml 羊、猪、犬、猫0.05-0.1ml 家禽0.5ml 1次/日 连用2～3日 重症性疾患、久治不愈者或首次使用时 可2次/日', N'', N'', N'院长', NULL, N'院长', NULL, 0, N'XLM', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (13, N'WF0000000024', N'双黄连口服液', N'ICate01', N'DM00014', N'DM00014', N'200ml：黄芩苷不少于1.60g', N'宠物药品', N'WF0000000024', 1, 1, CAST(20.00 AS Numeric(18, 2)), N'JXS0000000002', N'湖南丹维生物科技有限公司', CAST(35.00 AS Numeric(18, 2)), N'是', N'是', N'是', CAST(0.00 AS Numeric(18, 2)), CAST(35.00 AS Numeric(18, 2)), N'DM00008', 300, 30, 999, N'内服 一次量，犬、猫1～5ml；鸡0.5～1ml。一日1次，连用3～5日。混饮 禽，本品500ml兑水250kg，一日1次，连用3～5日。', N'', N'', N'院长', NULL, N'院长', NULL, 0, N'SHLKFY', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (14, N'WF0000000025', N'口炎速食核黄素注射液', N'ICate01', N'DM00038', N'DM00050', N'10ml X 10支', N'宠物药品', N'WF0000000025', 1, 10, CAST(50.00 AS Numeric(18, 2)), N'JXS0000000002', N'湖南丹维生物科技有限公司', CAST(100.00 AS Numeric(18, 2)), N'是', N'是', N'是', CAST(0.00 AS Numeric(18, 2)), CAST(10.00 AS Numeric(18, 2)), N'DM00022', 300, 30, 999, N'皮下、肌内注射或口服：一次量，马、牛20ml～30ml；羊、猪5ml；犬、兔、狐、猫等2ml～4ml。一天一次，连用2-3天。', N'', N'', N'院长', NULL, N'院长', NULL, 0, N'KYSSHHSZSY', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (15, N'WF0000000026', N'肽诺康(犬白介素冻干粉）', N'ICate01', N'DM00038', N'DM00014', N'200mg/瓶×10瓶/盒', N'宠物药品', N'WF0000000026', 1, 10, CAST(100.00 AS Numeric(18, 2)), N'JXS0000000002', N'湖南丹维生物科技有限公司', CAST(200.00 AS Numeric(18, 2)), N'是', N'是', N'是', CAST(0.00 AS Numeric(18, 2)), CAST(20.00 AS Numeric(18, 2)), N'DM00008', 400, 20, 999, N'肌肉注射每瓶可供20公斤体重使用，每天一次，连用2-3日。', N'', N'', N'院长', NULL, N'院长', NULL, 0, N'TNK(QBJSDGF）', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (16, N'WF0000000027', N'混感炎毒清', N'ICate01', N'DM00038', N'DM00014', N'10ml X 10支', N'宠物药品', N'WF0000000027', 1, 10, CAST(20.00 AS Numeric(18, 2)), N'JXS0000000002', N'湖南丹维生物科技有限公司', CAST(50.00 AS Numeric(18, 2)), N'是', N'是', N'是', CAST(0.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(18, 2)), N'DM00008', 300, 30, 999, N'[INVALID_DATA]', N'', N'', N'院长', NULL, N'院长', NULL, 0, N'HGYDQ', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (17, N'WF0000000028', N'益生菌', N'ICate01', N'DM00038', N'DM00047', N'5克/包，10包/盒', N'宠物药品', N'WF0000000028', 1, 10, CAST(50.00 AS Numeric(18, 2)), N'JXS0000000002', N'湖南丹维生物科技有限公司', CAST(80.00 AS Numeric(18, 2)), N'是', N'是', N'是', CAST(0.00 AS Numeric(18, 2)), CAST(8.00 AS Numeric(18, 2)), N'DM00008', 100, 10, 999, N'[INVALID_DATA]', N'', N'', N'院长', NULL, N'院长', NULL, 0, N'YSJ', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (18, N'WF0000000029', N'肤立康', N'ICate01', N'DM00038', N'DM00038', N'60ml/盒', N'宠物药品', N'WF0000000029', 1, 1, CAST(20.00 AS Numeric(18, 2)), N'JXS0000000002', N'湖南丹维生物科技有限公司', CAST(50.00 AS Numeric(18, 2)), N'是', N'是', N'是', CAST(0.00 AS Numeric(18, 2)), CAST(50.00 AS Numeric(18, 2)), N'DM00008', 100, 10, 999, N'直接喷于宠物表皮患部，一次2～3喷，每日3～5次。', N'', N'', N'院长', NULL, N'院长', NULL, 0, N'FLK', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (19, N'WF0000000030', N'复合维生素', N'ICate01', N'DM00038', N'DM00015', N'30片/盒', N'宠物药品', N'WF0000000030', 1, 30, CAST(10.00 AS Numeric(18, 2)), N'JXS0000000002', N'湖南丹维生物科技有限公司', CAST(30.00 AS Numeric(18, 2)), N'是', N'是', N'是', CAST(0.00 AS Numeric(18, 2)), CAST(1.00 AS Numeric(18, 2)), N'DM00008', 100, 10, 999, N'可混合在食物中。', N'', N'', N'院长', NULL, N'院长', NULL, 0, N'FGWSS', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (20, N'WF0000000031', N'犬细小病毒克隆抗体冻干粉', N'ICate01', N'DM00038', N'DM00050', N'10ml X 10支', N'宠物药品', N'WF0000000031', 1, 10, CAST(20.00 AS Numeric(18, 2)), N'JXS0000000002', N'湖南丹维生物科技有限公司', CAST(40.00 AS Numeric(18, 2)), N'是', N'是', N'是', CAST(0.00 AS Numeric(18, 2)), CAST(4.00 AS Numeric(18, 2)), N'DM00008', 100, 10, 999, N'每10公斤体重肌肉注射一瓶，连续3日为一疗程。重症倍量。配合疫苗紧急接种效果良好', N'', N'', N'院长', NULL, N'院长', NULL, 0, N'QXXBDKLKTDGF', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (21, N'WF0000000032', N'泄痢停', N'ICate01', N'DM00038', N'DM00050', N'10ml/支×10支/盒×40盒/箱', N'宠物药品', N'WF0000000032', 1, 10, CAST(40.00 AS Numeric(18, 2)), N'JXS0000000002', N'湖南丹维生物科技有限公司', CAST(60.00 AS Numeric(18, 2)), N'是', N'是', N'是', CAST(0.00 AS Numeric(18, 2)), CAST(6.00 AS Numeric(18, 2)), N'DM00008', 800, 120, 999, N'肌肉或静脉滴注：一次量，每1Kg体重，马、牛0.1ml；猪、羊0.15ml；犬、猫等其他动物0.2ml；每日一次，连用3-5日。', N'', N'', N'院长', NULL, N'院长', NULL, 0, N'XLT', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (22, N'WF0000000033', N'万能头孢', N'ICate01', N'DM00038', N'DM00015', N'5g/片×20片/盒', N'宠物药品', N'WF0000000033', 1, 20, CAST(50.00 AS Numeric(18, 2)), N'JXS0000000002', N'湖南丹维生物科技有限公司', CAST(100.00 AS Numeric(18, 2)), N'是', N'是', N'是', CAST(0.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(18, 2)), N'DM00008', 100, 10, 999, N'5g含头孢噻呋钠1.5g、头孢拉啶1g等', N'', N'', N'院长', NULL, N'院长', NULL, 0, N'MNTB', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (23, N'WF0000000034', N'白细胞干扰素（犬猫用）', N'ICate01', N'DM00038', N'DM00014', N'10瓶/盒', N'宠物药品', N'WF0000000034', 1, 10, CAST(50.00 AS Numeric(18, 2)), N'JXS0000000002', N'湖南丹维生物科技有限公司', CAST(150.00 AS Numeric(18, 2)), N'是', N'是', N'是', CAST(0.00 AS Numeric(18, 2)), CAST(15.00 AS Numeric(18, 2)), N'DM00008', 100, 10, 999, N'白细胞干扰素—冻干型（犬、猫用）用5ml注射用水稀释，溶解摇匀后肌肉注射。各种类型的宠物犬、猫5ml/只.次，一日一次，1-3天为一疗程。病重者用量略加大。在治疗同群犬、猫时，应迅速隔离未发病犬、猫，并按治疗量对未发病犬、猫进行紧急预防。', N'', N'', N'院长', NULL, N'院长', NULL, 0, N'BXBGRS（QMY）', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (24, N'WF0000000035', N'驱虫净', N'ICate01', N'DM0000000055', N'DM00041', N'100g/袋×10袋/桶', N'宠物药品', N'WF0000000035', 1, 10, CAST(50.00 AS Numeric(18, 2)), N'JXS0000000003', N'美国瑞普斯生物药品集团有限公司', CAST(100.00 AS Numeric(18, 2)), N'是', N'是', N'是', CAST(0.00 AS Numeric(18, 2)), CAST(10.00 AS Numeric(18, 2)), N'DM00008', 100, 10, 999, N'混饲，预防按本品每100g拌料200kg；治疗量按每100g拌料100kg，全群饲喂，连用5-7天。', N'', N'', N'院长', NULL, N'院长', NULL, 0, N'QCJ', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (25, N'WF0000000036', N'健胃增食针', N'ICate01', N'DM00038', N'DM00050', N'10ml/支×10支/盒', N'宠物药品', N'WF0000000036', 1, 10, CAST(50.00 AS Numeric(18, 2)), N'JXS0000000003', N'美国瑞普斯生物药品集团有限公司', CAST(150.00 AS Numeric(18, 2)), N'是', N'是', N'是', CAST(0.00 AS Numeric(18, 2)), CAST(15.00 AS Numeric(18, 2)), N'DM00008', 800, 40, 999, N'肌注：每公斤体重猪、羊0.1-0.2ml、牛0.05-0.1ml；不易加量，每日一次，连用3天。', N'', N'', N'院长', NULL, N'院长', NULL, 0, N'JWZSZ', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (26, N'WF0000000037', N'普通犬粮', N'ICate02', N'DM00041', N'DM00041', N'200g/袋', N'宠物食品', N'WF0000000037', 2, 1, CAST(10.00 AS Numeric(18, 2)), N'JXS0000000002', N'湖南丹维生物科技有限公司', CAST(50.00 AS Numeric(18, 2)), N'是', N'是', N'是', CAST(0.00 AS Numeric(18, 2)), CAST(50.00 AS Numeric(18, 2)), N'DM00008', 100, 10, 999, N'可混合在食物中。', N'', N'', N'院长', NULL, N'院长', NULL, 0, N'PTQL', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (27, N'WF0000000038', N'金犬五联', N'ICate09', N'DM00038', N'DM00014', N'10瓶/盒', N'宠物疫苗', N'WF0000000038', 9, 10, CAST(50.00 AS Numeric(18, 2)), N'JXS0000000003', N'美国瑞普斯生物药品集团有限公司', CAST(150.00 AS Numeric(18, 2)), N'是', N'是', N'是', CAST(0.00 AS Numeric(18, 2)), CAST(15.00 AS Numeric(18, 2)), N'DM00008', 100, 10, 999, N'肌肉注射：0.1ml/kg体重，1次/天，连用2天。预防剂量减半或遵医嘱。', N'', N'', N'院长', NULL, N'院长', NULL, 0, N'JQWL', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (28, N'WF0000000039', N'英特威狂犬', N'ICate09', N'DM00038', N'DM00050', N'', N'宠物疫苗', N'WF0000000039', 9, 10, CAST(50.00 AS Numeric(18, 2)), N'JXS0000000004', N'五湖', CAST(150.00 AS Numeric(18, 2)), N'是', N'是', N'是', CAST(0.00 AS Numeric(18, 2)), CAST(15.00 AS Numeric(18, 2)), N'DM00008', 900, 100, 999, N'肌注：每公斤体重猪、羊0.1-0.2ml、牛0.05-0.1ml；不易加量，每日一次，连用3天。', N'', N'', N'院长', NULL, N'院长', NULL, 0, N'YTWKQ', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (29, N'WF0000000040', N'抗病毒1号注射液', N'ICate09', N'DM00014', N'DM00014', N'100ml/瓶', N'宠物疫苗', N'WF0000000040', 9, 1, CAST(100.00 AS Numeric(18, 2)), N'JXS0000000002', N'湖南丹维生物科技有限公司', CAST(200.00 AS Numeric(18, 2)), N'是', N'是', N'是', CAST(0.00 AS Numeric(18, 2)), CAST(200.00 AS Numeric(18, 2)), N'DM00008', 100, 10, 999, N'[INVALID_DATA]', N'', N'', N'院长', NULL, N'院长', NULL, 0, N'KBD1HZSY', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (30, N'WF0000000042', N'急诊挂号', N'ICate10', N'DM00013', N'DM00013', N'', N'挂号项目', N'WF0000000042', 10, 1, CAST(0.00 AS Numeric(18, 2)), N'', N'', CAST(10.00 AS Numeric(18, 2)), N'否', N'是', N'否', CAST(0.00 AS Numeric(18, 2)), CAST(10.00 AS Numeric(18, 2)), N'DM00008', 999, 0, 999, N'', N'', N'', N'院长', NULL, N'院长', NULL, 0, N'JZGH', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (31, N'WF0000000043', N'普通挂号', N'ICate10', N'DM00013', N'DM00013', N'', N'挂号项目', N'WF0000000043', 10, 1, CAST(0.00 AS Numeric(18, 2)), N'', N'', CAST(5.00 AS Numeric(18, 2)), N'否', N'是', N'否', CAST(0.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(18, 2)), N'DM00008', 999, 0, 999, N'', N'', N'', N'院长', NULL, N'院长', NULL, 0, N'PBGH', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (32, N'WF0000000045', N'大中型', N'ICate11', N'DM00018', N'DM00018', N'', N'寄养项目', N'WF0000000045', 11, 1, CAST(0.00 AS Numeric(18, 2)), N'', N'', CAST(30.00 AS Numeric(18, 2)), N'否', N'是', N'否', CAST(0.00 AS Numeric(18, 2)), CAST(30.00 AS Numeric(18, 2)), N'DM00008', 999, 0, 999, N'', N'', N'', N'院长', NULL, N'院长', NULL, 0, N'DZX', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (33, N'WF0000000046', N'小型', N'ICate11', N'DM00018', N'DM00018', N'', N'寄养项目', N'WF0000000046', 11, 1, CAST(0.00 AS Numeric(18, 2)), N'', N'', CAST(20.00 AS Numeric(18, 2)), N'否', N'是', N'否', CAST(0.00 AS Numeric(18, 2)), CAST(20.00 AS Numeric(18, 2)), N'DM00008', 999, 0, 999, N'', N'', N'', N'院长', NULL, N'院长', NULL, 0, N'XX', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (34, N'WF0000000048', N'公猫去势', N'ICate08', N'DM00013', N'DM0000000056', N'', N'医疗处置', N'WF0000000048', 8, 1, CAST(0.00 AS Numeric(18, 2)), N'', N'', CAST(200.00 AS Numeric(18, 2)), N'否', N'是', N'否', CAST(0.00 AS Numeric(18, 2)), CAST(200.00 AS Numeric(18, 2)), N'DM00008', 999, 0, 999, N'', N'', N'', N'院长', NULL, N'院长', NULL, 0, N'GMQS', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (35, N'WF0000000049', N'公犬去势', N'ICate08', N'DM00013', N'DM0000000056', N'', N'医疗处置', N'WF0000000049', 8, 1, CAST(0.00 AS Numeric(18, 2)), N'', N'', CAST(200.00 AS Numeric(18, 2)), N'否', N'是', N'否', CAST(0.00 AS Numeric(18, 2)), CAST(200.00 AS Numeric(18, 2)), N'DM00008', 999, 0, 999, N'', N'', N'', N'院长', NULL, N'院长', NULL, 0, N'GQQS', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (36, N'WF0000000050', N'幼犬断尾', N'ICate08', N'DM00013', N'DM0000000056', N'', N'医疗处置', N'WF0000000050', 8, 1, CAST(0.00 AS Numeric(18, 2)), N'', N'', CAST(20.00 AS Numeric(18, 2)), N'否', N'是', N'否', CAST(0.00 AS Numeric(18, 2)), CAST(100.00 AS Numeric(18, 2)), N'DM00008', 999, 0, 999, N'', N'', N'', N'院长', NULL, N'院长', NULL, 0, N'YQDW', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (37, N'WF0000000051', N'成仔断尾', N'ICate08', N'DM00013', N'DM0000000056', N'', N'医疗处置', N'WF0000000051', 8, 1, CAST(0.00 AS Numeric(18, 2)), N'', N'', CAST(10.00 AS Numeric(18, 2)), N'否', N'是', N'否', CAST(0.00 AS Numeric(18, 2)), CAST(10.00 AS Numeric(18, 2)), N'DM00008', 999, 0, 999, N'', N'', N'', N'院长', NULL, N'院长', NULL, 0, N'CZDW', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (38, N'WF0000000052', N'公犬隐睾摘除', N'ICate07', N'DM00013', N'DM0000000056', N'', N'宠物手术', N'WF0000000052', 7, 1, CAST(0.00 AS Numeric(18, 2)), N'', N'', CAST(300.00 AS Numeric(18, 2)), N'否', N'是', N'否', CAST(0.00 AS Numeric(18, 2)), CAST(300.00 AS Numeric(18, 2)), N'DM00008', 999, 0, 999, N'', N'', N'', N'院长', NULL, N'院长', NULL, 0, N'GQYGZC', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (39, N'WF0000000053', N'助产', N'ICate07', N'DM00013', N'DM0000000056', N'', N'宠物手术', N'WF0000000053', 7, 1, CAST(0.00 AS Numeric(18, 2)), N'', N'', CAST(100.00 AS Numeric(18, 2)), N'否', N'是', N'否', CAST(0.00 AS Numeric(18, 2)), CAST(100.00 AS Numeric(18, 2)), N'DM00008', 999, 0, 999, N'', N'', N'', N'院长', NULL, N'院长', NULL, 0, N'ZC', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (40, N'WF0000000054', N'母猫绝育', N'ICate07', N'DM00013', N'DM0000000056', N'', N'宠物手术', N'WF0000000054', 7, 1, CAST(0.00 AS Numeric(18, 2)), N'', N'', CAST(300.00 AS Numeric(18, 2)), N'否', N'是', N'否', CAST(0.00 AS Numeric(18, 2)), CAST(300.00 AS Numeric(18, 2)), N'DM00008', 999, 0, 999, N'', N'', N'', N'院长', NULL, N'院长', NULL, 0, N'MMJY', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (41, N'WF0000000055', N'母犬子宫蓄脓', N'ICate07', N'DM00013', N'DM0000000056', N'', N'宠物手术', N'WF0000000055', 7, 1, CAST(0.00 AS Numeric(18, 2)), N'', N'', CAST(400.00 AS Numeric(18, 2)), N'否', N'是', N'否', CAST(0.00 AS Numeric(18, 2)), CAST(400.00 AS Numeric(18, 2)), N'DM00008', 999, 0, 999, N'', N'', N'', N'院长', NULL, N'院长', NULL, 0, N'MQZGXN', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (42, N'WF0000000056', N'母犬绝育', N'ICate07', N'DM00013', N'DM0000000056', N'', N'宠物手术', N'WF0000000056', 7, 1, CAST(0.00 AS Numeric(18, 2)), N'', N'', CAST(300.00 AS Numeric(18, 2)), N'否', N'是', N'否', CAST(0.00 AS Numeric(18, 2)), CAST(300.00 AS Numeric(18, 2)), N'DM00008', 999, 0, 999, N'', N'', N'', N'院长', NULL, N'院长', NULL, 0, N'MQJY', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (43, N'WF0000000057', N'导尿（公）', N'ICate07', N'DM00013', N'DM0000000056', N'', N'宠物手术', N'WF0000000057', 7, 1, CAST(0.00 AS Numeric(18, 2)), N'', N'', CAST(50.00 AS Numeric(18, 2)), N'否', N'是', N'否', CAST(0.00 AS Numeric(18, 2)), CAST(50.00 AS Numeric(18, 2)), N'DM00008', 999, 0, 999, N'', N'', N'', N'院长', NULL, N'院长', NULL, 0, N'DN（G）', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (44, N'WF0000000058', N'大中型猫', N'ICate06', N'DM00011', N'DM00011', N'', N'住院项目', N'WF0000000058', 6, 1, CAST(0.00 AS Numeric(18, 2)), N'', N'', CAST(35.00 AS Numeric(18, 2)), N'否', N'是', N'否', CAST(0.00 AS Numeric(18, 2)), CAST(35.00 AS Numeric(18, 2)), N'DM00008', 999, 0, 999, N'', N'', N'', N'院长', NULL, N'院长', NULL, 0, N'DZXM', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (45, N'WF0000000059', N'小型猫', N'ICate06', N'DM00018', N'DM00018', N'', N'住院项目', N'WF0000000059', 6, 1, CAST(0.00 AS Numeric(18, 2)), N'', N'', CAST(25.00 AS Numeric(18, 2)), N'否', N'是', N'否', CAST(0.00 AS Numeric(18, 2)), CAST(25.00 AS Numeric(18, 2)), N'DM00008', 999, 0, 999, N'', N'', N'', N'院长', NULL, N'院长', NULL, 0, N'XXM', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (46, N'WF0000000060', N'特危监护', N'ICate06', N'DM00018', N'DM00018', N'', N'住院项目', N'WF0000000060', 6, 1, CAST(0.00 AS Numeric(18, 2)), N'', N'', CAST(50.00 AS Numeric(18, 2)), N'否', N'是', N'否', CAST(0.00 AS Numeric(18, 2)), CAST(50.00 AS Numeric(18, 2)), N'DM00008', 999, 0, 999, N'', N'', N'', N'院长', NULL, N'院长', NULL, 0, N'TWJH', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (47, N'WF0000000061', N'大中型犬', N'ICate06', N'DM00018', N'DM00018', N'', N'住院项目', N'WF0000000061', 6, 1, CAST(0.00 AS Numeric(18, 2)), N'', N'', CAST(30.00 AS Numeric(18, 2)), N'否', N'是', N'否', CAST(0.00 AS Numeric(18, 2)), CAST(30.00 AS Numeric(18, 2)), N'DM00008', 999, 0, 999, N'', N'', N'', N'院长', NULL, N'院长', NULL, 0, N'DZXQ', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (48, N'WF0000000062', N'小型犬', N'ICate06', N'DM00018', N'DM00011', N'', N'住院项目', N'WF0000000062', 6, 1, CAST(0.00 AS Numeric(18, 2)), N'', N'', CAST(20.00 AS Numeric(18, 2)), N'否', N'是', N'否', CAST(0.00 AS Numeric(18, 2)), CAST(20.00 AS Numeric(18, 2)), N'DM00008', 999, 0, 999, N'', N'', N'', N'院长', NULL, N'院长', NULL, 0, N'XXQ', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (49, N'WF0000000063', N'美容香波', N'ICate03', N'DM00014', N'DM00014', N'', N'宠物用品', N'WF0000000063', 3, 1, CAST(50.00 AS Numeric(18, 2)), N'JXS0000000004', N'五湖', CAST(145.00 AS Numeric(18, 2)), N'是', N'是', N'是', CAST(0.00 AS Numeric(18, 2)), CAST(145.00 AS Numeric(18, 2)), N'DM00008', 999, 5, 0, N'', N'', N'', N'院长', NULL, N'院长', NULL, 0, N'MRXB', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (50, N'WF0000000064', N'全身洗护', N'ICate12', N'DM00013', N'DM00013', N'', N'美容服务', N'WF0000000064', 12, 1, CAST(0.00 AS Numeric(18, 2)), N'', N'', CAST(100.00 AS Numeric(18, 2)), N'否', N'是', N'否', CAST(0.00 AS Numeric(18, 2)), CAST(100.00 AS Numeric(18, 2)), N'DM00008', 999, 0, 365, N'', N'', N'', N'院长', NULL, N'院长', NULL, 0, N'QSXH', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (51, N'WF0000000065', N'犬干扰素', N'ICate01', N'DM00038', N'DM00050', N'5ml X 10', N'宠物药品', N'WF0000000065', 1, 10, CAST(60.00 AS Numeric(18, 2)), N'JXS0000000001', N'北京龙科生物制药有限公司', CAST(240.00 AS Numeric(18, 2)), N'是', N'是', N'是', CAST(0.00 AS Numeric(18, 2)), CAST(24.00 AS Numeric(18, 2)), N'DM00022', 999, 10, 0, N'每支用1ml灭菌注射用水溶解，肌肉或皮下注射。', N'', N'', N'院长', NULL, N'院长', NULL, 0, N'QGRS', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (52, N'WF0000000066', N'奥美拉唑', N'ICate01', N'DM0000000057', N'DM00015', N'', N'宠物药品', N'WF0000000066', 1, 8, CAST(0.00 AS Numeric(18, 2)), N'JXS0000000003', N'美国瑞普斯生物药品集团有限公司', CAST(40.00 AS Numeric(18, 2)), N'是', N'是', N'是', CAST(0.00 AS Numeric(18, 2)), CAST(5.00 AS Numeric(18, 2)), N'DM00009', 999, 20, 0, N'', N'', N'', N'院长', NULL, N'院长', CAST(0x0000A55300C7E6BD AS DateTime), 0, N'AMLZ', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (53, N'WF0000000067', N'舒一宁', N'ICate01', N'DM00041', N'DM00047', NULL, N'宠物药品', N'WF0000000067', 1, 20, CAST(20.46 AS Numeric(18, 2)), N'JXS0000000001', N'北京龙科生物制药有限公司', CAST(80.46 AS Numeric(18, 2)), N'是', N'是', N'是', CAST(0.00 AS Numeric(18, 2)), CAST(4.02 AS Numeric(18, 2)), N'DM00010', 999, 0, 0, NULL, NULL, NULL, N'院长', NULL, N'院长', CAST(0x0000A5340138CE35 AS DateTime), 0, N'SYN', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (54, N'WF0000000068', N'清热颗粒', N'ICate01', N'DM00041', N'DM00047', N'', N'宠物药品', N'WF0000000068', 1, 20, CAST(0.00 AS Numeric(18, 2)), N'JXS0000000004', N'五湖', CAST(40.00 AS Numeric(18, 2)), N'是', N'是', N'是', CAST(0.00 AS Numeric(18, 2)), CAST(2.00 AS Numeric(18, 2)), N'DM00008', 999, 20, 0, N'', N'', N'', N'院长', NULL, N'院长', NULL, 0, N'QRKL', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (55, N'WF0000000069', N'英特威狂犬疫苗', N'ICate09', N'DM00050', N'DM00050', N'', N'宠物疫苗', N'WF0000000069', 9, 1, CAST(0.00 AS Numeric(18, 2)), N'JXS0000000003', N'美国瑞普斯生物药品集团有限公司', CAST(200.00 AS Numeric(18, 2)), N'是', N'是', N'是', CAST(0.00 AS Numeric(18, 2)), CAST(200.00 AS Numeric(18, 2)), N'DM00022', 999, 10, 0, N'', N'', N'', N'院长', NULL, N'院长', NULL, 0, N'YTWKQYM', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (56, N'WF0000000070', N'四联疫苗', N'ICate09', N'DM00050', N'DM00050', N'', N'宠物疫苗', N'WF0000000070', 9, 1, CAST(0.00 AS Numeric(18, 2)), N'JXS0000000003', N'美国瑞普斯生物药品集团有限公司', CAST(150.00 AS Numeric(18, 2)), N'是', N'是', N'是', CAST(0.00 AS Numeric(18, 2)), CAST(150.00 AS Numeric(18, 2)), N'DM00008', 999, 10, 0, N'', N'', N'', N'院长', NULL, N'院长', NULL, 0, N'SLYM', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (57, N'WF0000000071', N'荷兰英特威', N'ICate09', N'DM00050', N'DM00050', N'', N'宠物疫苗', N'WF0000000071', 9, 1, CAST(0.00 AS Numeric(18, 2)), N'JXS0000000003', N'美国瑞普斯生物药品集团有限公司', CAST(120.00 AS Numeric(18, 2)), N'是', N'是', N'是', CAST(0.00 AS Numeric(18, 2)), CAST(120.00 AS Numeric(18, 2)), N'DM00008', 999, 10, 0, N'', N'', N'', N'院长', NULL, N'院长', NULL, 0, N'HLYTW', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (58, N'WF0000000072', N'青霉素', N'ICate01', N'DM00050', N'DM00050', N'', N'宠物药品', N'WF0000000072', 1, 1, CAST(0.00 AS Numeric(18, 2)), N'JXS0000000001', N'北京龙科生物制药有限公司', CAST(20.00 AS Numeric(18, 2)), N'是', N'是', N'是', CAST(0.00 AS Numeric(18, 2)), CAST(20.00 AS Numeric(18, 2)), N'DM00008', 999, 0, 0, N'八万至二十万单位肌肉注射，每日2次', N'', N'', N'院长', NULL, N'院长', NULL, 0, N'QMS', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (59, N'WF0000000073', N'聚维酮典药膏', N'ICate01', N'DM00050', N'DM00050', N'', N'宠物药品', N'WF0000000073', 1, 1, CAST(0.00 AS Numeric(18, 2)), N'JXS0000000001', N'北京龙科生物制药有限公司', CAST(100.00 AS Numeric(18, 2)), N'是', N'是', N'是', CAST(0.00 AS Numeric(18, 2)), CAST(100.00 AS Numeric(18, 2)), N'DM00008', 999, 0, 0, N'2次/日', N'', N'', N'院长', NULL, N'院长', NULL, 0, N'JWTDYG', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (60, N'WF0000000074', N'伊维菌素', N'ICate01', N'DM00050', N'DM00050', N'', N'宠物药品', N'WF0000000074', 1, 1, CAST(0.00 AS Numeric(18, 2)), N'JXS0000000003', N'美国瑞普斯生物药品集团有限公司', CAST(50.00 AS Numeric(18, 2)), N'是', N'是', N'是', CAST(0.00 AS Numeric(18, 2)), CAST(50.00 AS Numeric(18, 2)), N'DM00008', 999, 0, 0, N'02ml，每周一次', N'', N'', N'院长', NULL, N'院长', NULL, 0, N'YWJS', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (61, N'WF0000000075', N'药浴', N'ICate01', N'DM00014', N'DM00014', N'', N'宠物药品', N'WF0000000075', 1, 1, CAST(0.00 AS Numeric(18, 2)), N'JXS0000000003', N'美国瑞普斯生物药品集团有限公司', CAST(100.00 AS Numeric(18, 2)), N'是', N'是', N'是', CAST(0.00 AS Numeric(18, 2)), CAST(100.00 AS Numeric(18, 2)), N'DM00008', 999, 0, 0, N'每周一次', N'', N'', N'院长', NULL, N'院长', NULL, 0, N'YY', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (66, N'CEX00093', N'康源益生菌', N'ICate01', N'DM00038', N'DM00041', N'5g*5袋/盒', N'宠物药品', N'CEX00093', 1, 5, CAST(0.00 AS Numeric(18, 2)), N'CBU000000001', N'宠儿香', CAST(40.00 AS Numeric(18, 2)), N'是', N'是', N'是', CAST(0.00 AS Numeric(18, 2)), CAST(8.00 AS Numeric(18, 2)), N'DM00008', 999, 0, 0, N'使用方法(用法）：1、细菌性或肠功能紊乱引起的腹泻、便秘等急慢性肠道症状，可以直接使用本品；2、病毒、寄生虫等引起的肠道症状，使用本品做配合治疗，可以缓解症状；3、胃功能弱、食欲不振、厌食、积食，直接使用本品可促进胃功能，缓解症状；4、环境变化、断奶、手术、疫苗接种等情况使用本品，防止应激反应的发生；5、营养不良、体弱多病，口臭、粪便恶臭等情况使用本品，可以有效缓解症状；6、抗生素治疗后使用本品，可以调节肠道菌群平衡，恢复肠道功能；产品用法：宠物自行舔食或溶于约50-100毫升40℃以下水中饮用，也可拌入食物饲喂。产品用量：每天服用1次，5天为1个周期，体重2kg以下的宠物每次半袋，体重2-10kg的宠物每次1袋，体重10kg以上的宠物每次2袋。或遵医嘱。保健量：每周2次。', NULL, N'产品特点：
1.专利优势菌种组合
2.促进胃消化功能
3.控制腹泻、缓解便秘、除臭
4.提高消化吸收率，缓解应激反应', N'院长', CAST(0x0000A579010AC430 AS DateTime), N'院长', CAST(0x0000A57B01471C74 AS DateTime), 0, N'KYYSJ', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (67, N'CEX00094', N'肠乐宝', N'ICate01', N'DM00038', N'DM00041', N'5g*5袋/盒', N'宠物药品', N'CEX00094', 1, 5, CAST(0.00 AS Numeric(18, 2)), N'CBU000000001', N'宠儿香', CAST(55.00 AS Numeric(18, 2)), N'是', N'是', N'是', CAST(0.00 AS Numeric(18, 2)), CAST(11.00 AS Numeric(18, 2)), N'DM00008', 999, 0, 0, N'使用方法(用法）：1、细菌性或肠功能紊乱引起的腹泻、便秘等急慢性肠道症状，可以直接使用本品；2、病毒、寄生虫等引起的肠道症状，使用本品做配合治疗，可以缓解症状；3、肠黏膜损伤、黏膜功能弱等情况，使用本品可以促进黏膜的修复和再生；4、环境变化、断奶、手术、疫苗接种等情况使用本品，防止应激反应的发生；5、营养不良、体弱多病，口臭、粪便恶臭等情况使用本品，可以有效缓解症状；6、抗生素治疗后使用本品，可以调节肠道菌群平衡，恢复肠道功能；产品用法：宠物自行舔食或溶于约50-100毫升40℃以下水中饮用，也可拌入食物饲喂。产品用量：每天服用1次，5天为1个周期，体重2kg以下的宠物每次半袋，体重2～10kg的宠物每次1袋，体重10kg以上的宠物每次2袋；或遵医嘱。保健量：每周2次。', NULL, N'产品特点：
1、专利优势菌种组合
2、修复、再生肠粘膜
3、控制腹泻、缓解便秘、除臭
4、提高消化吸收率，缓解应激反应', N'院长', CAST(0x0000A57B014470A4 AS DateTime), N'院长', CAST(0x0000A57B014712FC AS DateTime), 0, N'CLB', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (68, N'CEX00095', N'敏舒平', N'ICate01', N'DM00038', N'DM00041', N'5g*5袋/盒', N'宠物药品', N'CEX00095', 1, 5, CAST(0.00 AS Numeric(18, 2)), N'CBU000000001', N'宠儿香', CAST(55.00 AS Numeric(18, 2)), N'是', N'是', N'是', CAST(0.00 AS Numeric(18, 2)), CAST(11.00 AS Numeric(18, 2)), N'DM00008', 999, 0, 0, N'使用方法(用法）：1、发生过敏反应的宠物，直接使用本品可以缓解过敏症状；2、患皮肤病的宠物，使用本品配合治疗，可以缓解红肿、瘙痒的症状；3、常发性过敏及过敏体质的宠物，使用本品，可以调节机体免疫平衡，改善过敏体质，降低过敏的发生率；产品用法：宠物自行舔食或溶于约50-100毫升40℃以下水中饮用，也可拌入食物饲喂。产品用量：每天服用1次，5天为1个周期，体重2kg以下的宠物每次半袋，体重2～10kg的宠物每次1袋，体重10kg以上的宠物每次2袋。或遵医嘱。保健量：每周2次。', NULL, N'产品特点：
1、专利优势菌种组合
2、阻止致敏过程，缓解过敏症状
3、调节免疫平衡，完善免疫功能
4、可长期使用，安全无副作用', N'院长', CAST(0x0000A57B0144AB3C AS DateTime), N'院长', CAST(0x0000A57B014708CA AS DateTime), 0, N'MSP', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (69, N'CEX00096', N'防石灵', N'ICate01', N'DM00011', N'DM00041', N'5g*5袋/盒', N'宠物药品', N'CEX00096', 1, 5, CAST(0.00 AS Numeric(18, 2)), N'CBU000000001', N'宠儿香', CAST(55.00 AS Numeric(18, 2)), N'是', N'是', N'是', CAST(0.00 AS Numeric(18, 2)), CAST(11.00 AS Numeric(18, 2)), N'DM00008', 999, 0, 0, N'使用方法(用法）：1、草酸钙类型的结石可以直接使用本品，从根本上防治该类型结石的发生；2、含草酸钙的混合型结石，可以使用本品做配合治疗；3、泌尿道感染疾病，使用本品可防止草酸盐结晶的发生，防止感染反复复发；4、草酸钙类型的结石术后使用，降低结石复发率；产品用法：宠物自行舔食或溶于约50-100毫升40℃以下水中饮用，也可拌入食物饲喂。  产品用量：每天服用1次，5天为1个周期，体重2kg以下的宠物每次半袋，体重2～10kg的宠物每次1袋，体重10kg以上的宠物每次2袋。或遵医嘱。保健量：每周2次。', NULL, N'产品特点：
1、专利优势菌种组合
2、分解草酸
3、降低草酸浓度
4、防治草酸钙结石
5、调节肠道功能', N'院长', CAST(0x0000A57B01450A28 AS DateTime), N'院长', CAST(0x0000A57B0146FD36 AS DateTime), 0, N'FDL', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (70, N'CEX00097', N'强力多维', N'ICate01', N'DM0000000061', N'DM0000000061', N'130g/支', N'宠物药品', N'CEX00097', 1, 1, CAST(0.00 AS Numeric(18, 2)), N'CBU000000001', N'宠儿香', CAST(78.00 AS Numeric(18, 2)), N'是', N'是', N'是', CAST(0.00 AS Numeric(18, 2)), CAST(78.00 AS Numeric(18, 2)), N'DM00008', 999, 0, 0, N'使用方法(用法）：1、各个年龄阶段犬的营养快速补充；2、特殊时期（疾病、怀孕、哺乳等）犬的营养特殊补充；3、偏食、厌食、异食癖、饮食不规律的犬，有助于恢复其正常饮食习惯；4、体弱多病，神态不佳等犬，可以强化营养，增强体质；用法用量：直接涂于宠物的鼻或嘴处舔食，也可以混合在食物中。体重10Kg以下的宠物每日饲喂5g(约5cm）的膏体，体重10Kg以上的宠物用量加倍或遵医嘱。', NULL, N'产品特点：
1、全营养配方，配比科学合理
2、强化犬必需氨基酸，营养更丰富
3、低油脂配方，易消化吸收', N'院长', CAST(0x0000A57B0145DE44 AS DateTime), N'院长', CAST(0x0000A57B0146F3C8 AS DateTime), 0, N'JLDW', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (71, N'CEX00098', N'猫多维', N'ICate01', N'DM0000000061', N'DM0000000061', N'80g/支', N'宠物药品', N'CEX00098', 1, 1, CAST(0.00 AS Numeric(18, 2)), N'CBU000000001', N'宠儿香', CAST(69.00 AS Numeric(18, 2)), N'是', N'是', N'是', CAST(0.00 AS Numeric(18, 2)), CAST(69.00 AS Numeric(18, 2)), N'DM00008', 999, 0, 0, N'使用方法(用法）：1、各个年龄阶段缺钙症状的宠物，使用本品可以快速、高效补钙；2、特殊时期（怀孕、哺乳、疾病时期等）宠物的补钙；3、软骨病、骨质疏松、产后瘫痪、骨折等疾病的支持治疗；用法用量：直接涂于宠物的鼻或嘴处舔食，也可以混合在食物中。10Kg以下的宠物每日饲喂5g(约5cm）的膏体，10Kg以上的宠物用量加倍或遵医嘱。', NULL, N'产品特点：1、专为猫设计，适口性好
2、强化猫必需氨基酸、不饱和脂肪酸
3、高效补充体能，提高免疫力
4、低脂配方，易消化', N'院长', CAST(0x0000A57B01465E56 AS DateTime), N'院长', CAST(0x0000A57B01465E56 AS DateTime), 0, N'MDW', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (72, N'CEX00099', N'牛乳钙胶', N'ICate01', N'DM0000000061', N'DM0000000061', N'145g/支', N'宠物药品', N'CEX00099', 1, 1, CAST(0.00 AS Numeric(18, 2)), N'CBU000000001', N'宠儿香', CAST(99.00 AS Numeric(18, 2)), N'是', N'是', N'是', CAST(0.00 AS Numeric(18, 2)), CAST(99.00 AS Numeric(18, 2)), N'DM00008', 999, 0, 0, N'使用方法(用法）：1、各个年龄阶段缺钙症状的宠物，使用本品可以快速、高效补钙；2、特殊时期（怀孕、哺乳、疾病时期等）宠物的补钙；3、软骨病、骨质疏松、产后瘫痪、骨折等疾病的支持治疗；用法用量：直接涂于宠物的鼻或嘴处舔食，也可以混合在食物中。10Kg以下的宠物每日饲喂5g(约5cm）的膏体，10Kg以上的宠物用量加倍或遵医嘱。', NULL, N'产品特点：
1、天然黄金钙源—牛乳钙
2、生物利用率高
3、含CPP、维生素D等，促进钙吸收
4、钙磷同补，补钙效果更明显
', N'院长', CAST(0x0000A57B0146A6CE AS DateTime), N'院长', CAST(0x0000A57B0146A6CE AS DateTime), 0, N'NRGJ', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (73, N'CEX00100', N'生血宝', N'ICate01', N'DM0000000061', N'DM0000000061', N'80g/支', N'宠物药品', N'CEX00100', 1, 1, CAST(0.00 AS Numeric(18, 2)), N'CBU000000001', N'宠儿香', CAST(78.00 AS Numeric(18, 2)), N'是', N'是', N'是', CAST(0.00 AS Numeric(18, 2)), CAST(78.00 AS Numeric(18, 2)), N'DM00008', 999, 0, 0, N'使用方法(用法）：1、营养性贫血或者铁吸收不良引起的贫血，可直接使用本品防治；2、其他类型的贫血（失血性贫血、溶血性贫血、造血功能障碍、肾性贫血等），可以使用本品做配合治疗；3、特殊情况（术后、妊娠、哺乳、幼年、老年等）引起的贫血症状；用法用量：直接涂于宠物的鼻或嘴处舔食，也可以混合在食物中。体重10Kg以下的宠物每日饲喂5g(约5cm）的膏体，10Kg以上的宠物用量加倍或遵医嘱。', N'', N'产品特点：
1、生物铁源—吸收率高，不刺激肠胃
2、补铁、造血双重功能
3、富含多种血液营养素
', N'院长', CAST(0x0000A57B01472998 AS DateTime), N'院长', CAST(0x0000A57B01472998 AS DateTime), 0, N'SXB', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (74, N'CEX00101', N'生元康', N'ICate01', N'DM0000000061', N'DM0000000061', N'80g/支', N'宠物药品', N'CEX00101', 1, 1, CAST(0.00 AS Numeric(18, 2)), N'CBU000000001', N'宠儿香', CAST(69.00 AS Numeric(18, 2)), N'是', N'是', N'是', CAST(0.00 AS Numeric(18, 2)), CAST(69.00 AS Numeric(18, 2)), N'DM00008', 999, 0, 0, N'使用方法(用法）：1、溃疡（皮肤黏膜、口腔等），术后伤口等，使用本品可以促进愈合；2、坏血病，氧化损伤疾病（退行性病变、脏器损伤等），使用本品可做配合治疗；3、比赛犬、大量运动的犬，使用本品可以迅速恢复体能；4、皮肤疾病的宠物，可保证皮肤黏膜的完整性，缓解红肿、瘙痒症状；5、铁吸收不良，免疫力低下，衰老的的宠物，可直接使用本产品；用法用量：直接涂于宠物的鼻或嘴处舔食，也可以混合在食物中饲喂。10Kg以下宠物每日饲喂5g(约5cm）的膏体，10Kg以上宠物用量加倍或遵医嘱，本品不含任何激素，长期服用无副作用。', NULL, N'产品特点：
1、高效抗氧化组方，延缓衰老
2、高稳定性维生素C抗氧化因子
 3、加速代谢，促进伤口愈合
', N'院长', CAST(0x0000A57B01477A20 AS DateTime), N'院长', CAST(0x0000A57B01477A20 AS DateTime), 0, N'SYK', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (75, N'CEX00102', N'糖适康', N'ICate01', N'DM0000000061', N'DM0000000061', N'80g/支', N'宠物药品', N'CEX00102', 1, 1, CAST(0.00 AS Numeric(18, 2)), N'CBU000000001', N'宠儿香', CAST(69.00 AS Numeric(18, 2)), N'是', N'是', N'是', CAST(0.00 AS Numeric(18, 2)), CAST(69.00 AS Numeric(18, 2)), N'DM00008', 999, 0, 0, N'使用方法（用法）:1、Ⅰ型糖尿病的宠物，可以配合胰岛素使用，降低胰岛素使用量和频率；2、Ⅱ型糖尿病可以直接使用或者配合降糖药使用，抑制餐后血糖升高；3、应激性血糖升高的宠物，可以直接使用，预防皮肤伤口溃烂不易愈合；4、肥胖犬猫，可以直接使用，降低胆固醇、甘油三酯等，预防三高症；用法用量: 请于喂食前饲喂，可直接涂于宠物的鼻或嘴处供其舔食。10Kg以下宠物每日饲喂5g(约5cm）的膏体，10Kg以上宠物用量加倍。以上是推荐用量，具体可酌情使用或遵医嘱。', NULL, N'产品特点：
1、抑制餐后血糖升高
2、修复胰岛损伤
3、调节血糖代谢
4、控制血脂
', N'院长', CAST(0x0000A57B01488114 AS DateTime), N'院长', CAST(0x0000A57B01488114 AS DateTime), 0, N'TKK', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (76, N'CEX00103', N'维生素AD', N'ICate01', N'DM0000000061', N'DM0000000061', N'80g/支', N'宠物药品', N'CEX00103', 1, 1, CAST(0.00 AS Numeric(18, 2)), N'CBU000000001', N'宠儿香', CAST(48.00 AS Numeric(18, 2)), N'是', N'是', N'是', CAST(0.00 AS Numeric(18, 2)), CAST(48.00 AS Numeric(18, 2)), N'DM00008', 999, 0, 0, N'使用方法（用法）:1、促进钙的吸收，防治佝偻病、骨质疏松症、软骨病等；2、促进软骨再生，促进骨骼更新，强骨健齿；3、配合补钙产品使用，可以增强补钙产品补钙效果；4、维生素A缺乏引起的视力减退，角膜软化、变厚等眼病；5、皮肤干燥、皮肤角化不全，呼吸道、消化道黏膜反复感染等症状； 用法用量：直接涂于宠物的鼻或嘴处供其舔食，也可混合在食物中。10Kg以下宠物每日饲喂5g(约5cm）的膏体，10Kg以上宠物用量加倍或遵医嘱。', NULL, N'产品特点：
1、促进无机钙的吸收
2、提高视觉功能
3、保持黏膜的完整性
', N'院长', CAST(0x0000A57B01494F77 AS DateTime), N'院长', CAST(0x0000A57B01494F77 AS DateTime), 0, N'WSSAD', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (77, N'CEX00104', N'保肤康', N'ICate01', N'DM00014', N'DM00053', N'800mg/粒 10粒/盒 60粒/瓶', N'宠物药品', N'CEX00104', 1, 60, CAST(0.00 AS Numeric(18, 2)), N'CBU000000001', N'宠儿香', CAST(180.00 AS Numeric(18, 2)), N'是', N'是', N'是', CAST(0.00 AS Numeric(18, 2)), CAST(3.00 AS Numeric(18, 2)), N'DM00008', 999, 0, 0, N'使用方法（用法）:1、用于各种原因引起皮肤病的支持治疗，提高皮肤黏膜屏障，提高治愈率，降低复发率；2、本产品含有中药止痒成分，可以缓解皮肤瘙痒症状；3、针对鳞屑、溃疡糜烂、红疹、角化异常等症状，配合治疗，效果显著；4、脱毛、毛色不良、皮屑增多、干燥等症状，直接使用本品，效果显著；产品用法：直接饲喂或将胶囊刺破混入食物中喂食。产品用量：体重10公斤以下宠物每天1粒，10公斤以上宠物按每10公斤1粒比例增加饲喂量，最高可增至4粒。以上是建议用量。具体使用请遵医嘱。', NULL, N'产品特点：
1、富含不饱和脂肪酸
2、添加了中药止痒成分—三萜皂苷
3、含丰富皮肤营养素
4、修复皮肤损伤
', N'院长', CAST(0x0000A57B0149D74D AS DateTime), N'院长', CAST(0x0000A57B0149D74D AS DateTime), 0, N'BFK', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (78, N'CEX00105', N'肝舒宝', N'ICate01', N'DM00038', N'DM00053', N'500mg/粒 20粒/盒', N'宠物药品', N'CEX00105', 1, 20, CAST(0.00 AS Numeric(18, 2)), N'CBU000000001', N'宠儿香', CAST(95.00 AS Numeric(18, 2)), N'是', N'是', N'是', CAST(0.00 AS Numeric(18, 2)), CAST(4.75 AS Numeric(18, 2)), N'DM00008', 999, 0, 0, N'使用方法（用法）:1、修复再生肝细胞，对于急慢性肝炎、肝损伤、肝功能异常等，可直接使用本品；2、清除氧自由基，阻止脂质过氧化，对于中毒或长期用药的宠物，预防肝细胞损伤产生的病变；3、调节胆汁分泌，支持治疗胆管炎、胆石症以及肝脏或胆囊手术性疾病；产品用法: 可直接饲喂或刺破胶囊将内容物混入食物中喂食。  产品用量：可直接饲喂或刺破胶囊将内容物混入食物中喂食。', NULL, N'产品特点：
1、保护肝细胞膜
2、修复与再生肝细胞
3、解毒，无毒副作用
', N'院长', CAST(0x0000A57B014A7F26 AS DateTime), N'院长', CAST(0x0000A57B014A7F26 AS DateTime), 0, N'GSB', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (79, N'CEX00106', N'内舒安', N'ICate01', N'DM0000000061', N'DM0000000061', N'80g/支', N'宠物药品', N'CEX00106', 1, 1, CAST(0.00 AS Numeric(18, 2)), N'CBU000000001', N'宠儿香', CAST(66.00 AS Numeric(18, 2)), N'是', N'是', N'是', CAST(0.00 AS Numeric(18, 2)), CAST(66.00 AS Numeric(18, 2)), N'DM00008', 999, 0, 0, N'使用方法（用法）:1、用于因梳理毛发产生的毛球，造成呕吐、食欲不振、便秘等症状的宠物；2、宠物便秘，使用本品可起到润肠通便的作用；3、宠物误食异物，使用本品可促进异物通过肠道排出；用法用量: 直接涂于猫的鼻或嘴处舔食，也可以混合在食物中。体重3Kg以下的猫每日饲喂5g(约6.5cm）的膏体，体重3Kg以上的猫用量加倍或遵医嘱。长期服用无副作用。', NULL, N'产品特点：
1、天然纤维核，促毛成球
2、作用温和，不刺激肠胃
', N'院长', CAST(0x0000A57B014B9AE1 AS DateTime), N'院长', CAST(0x0000A57B014B9AE1 AS DateTime), 0, N'NSA', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (80, N'CEX00107', N'尿石净', N'ICate01', N'DM0000000061', N'DM0000000061', N'80g/支', N'宠物药品', N'CEX00107', 1, 1, CAST(0.00 AS Numeric(18, 2)), N'CBU000000001', N'宠儿香', CAST(76.00 AS Numeric(18, 2)), N'是', N'是', N'是', CAST(0.00 AS Numeric(18, 2)), CAST(76.00 AS Numeric(18, 2)), N'DM00008', 999, 0, 0, N'使用方法（用法）:1、犬猫早期草酸钙、磷酸钙类结，可以直接使用，有利于晶体的提早排出；2、犬猫鸟粪石结石类型，可以配合酸化剂使用，提高治愈率；3、手术治疗后的结石病例，可以直接使用，预防结石病的复发；用法用量：直接涂于宠物的鼻或嘴处舔食，也可混合在食物中饲喂。体重10Kg以下的犬每次饲喂5g(约5cm）的膏体，10Kg以上的犬用量加倍或遵医嘱。成年猫每次饲喂5g(约5cm）的膏体，小猫减少用量或遵医嘱。每天2-3次；保健用量，每天1次。使用本产品期间，保证宠物有充足的饮水。', NULL, N'产品特点：
1、包裹结石晶体，抑制晶体生成
2、润滑结石晶体，促进晶体排出
', N'院长', CAST(0x0000A57B014C03B6 AS DateTime), N'院长', CAST(0x0000A57B014C03B6 AS DateTime), 0, N'NDJ', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (81, N'CEX00108', N'关节保', N'ICate01', N'DM0000000061', N'DM0000000061', N'130g/支', N'宠物药品', N'CEX00108', 1, 1, CAST(0.00 AS Numeric(18, 2)), N'CBU000000001', N'宠儿香', CAST(88.00 AS Numeric(18, 2)), N'是', N'是', N'是', CAST(0.00 AS Numeric(18, 2)), CAST(88.00 AS Numeric(18, 2)), N'DM00008', 999, 0, 0, N'使用方法（用法）:1、患有关节疾病宠物的保守治疗，使用本品可以缓解症状，控制疾病的发展；2、患有关节疾病宠物的手术治疗，使用本品可以促进术后恢复，防止复发；3、老年宠物，使用本品可防止关节老化，预防关节组织损伤4、幼年宠物特别是先天性关节疾病常发品种的宠物，使用本品可降低关节疾病的发生率；用法用量：直接涂于宠物的鼻或嘴处舔食，也可混合在食物中使用。体重10Kg以下的犬每次饲喂5g(约5cm）的膏体，10Kg以上的犬用量加倍或遵医嘱。成年猫每次饲喂5g(约5cm）的膏体，小猫减少用量或尊医嘱。每天2次，使用4-6周；保健用量：每天1次，可长期使用。', NULL, N'产品特点：
1、修复、再生软骨细胞
2、增强骨骼韧性
3、合成关节液、保证关节润滑
', N'院长', CAST(0x0000A57B014C77FD AS DateTime), N'院长', CAST(0x0000A57B014C77FD AS DateTime), 0, N'GJB', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (82, N'CEX00109', N'免疫多糖', N'ICate01', N'DM0000000061', N'DM0000000061', N'80g/支', N'宠物药品', N'CEX00109', 1, 1, CAST(0.00 AS Numeric(18, 2)), N'CBU000000001', N'宠儿香', CAST(78.00 AS Numeric(18, 2)), N'是', N'是', N'是', CAST(0.00 AS Numeric(18, 2)), CAST(78.00 AS Numeric(18, 2)), N'DM00008', 999, 0, 0, N'使用方法（用法）:1、患有病毒性疾病的宠物，可以辅助治理，提高疾病治愈率，缩短治疗周期；2、患有肿瘤疾病的宠物，可抑制肿瘤生长，延缓疾病的发展；3、疫苗接种前后的宠物，使用本品可以提高疫苗免疫效果，预防副反应的发生；4、体弱多病，免疫力低下的宠物，可以增强体质，预防疾病的发生；5、顽固性皮肤病以及其他免疫抑制性疾病，配合使用本品，可提高治疗效果；用法用量：直接涂于宠物的鼻或嘴处舔食，也可以混合在食物中。体重10Kg以下的宠物每日饲喂5g(约5cm）的膏体，体重10Kg以上的宠物用量加倍或遵医嘱。', NULL, N'产品特点：
1、复合多糖，专利技术
2、增强机体免疫功能
3、口服膏体制剂，安全、方便
', N'院长', CAST(0x0000A57B014CE19D AS DateTime), N'院长', CAST(0x0000A57B014CE19D AS DateTime), 0, N'MYDT', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (83, N'CEX00110', N'优繁素', N'ICate01', N'DM00038', N'DM00041', N'5g*24袋/盒', N'宠物药品', N'CEX00110', 1, 24, CAST(0.00 AS Numeric(18, 2)), N'CBU000000001', N'宠儿香', CAST(95.00 AS Numeric(18, 2)), N'是', N'是', N'是', CAST(0.00 AS Numeric(18, 2)), CAST(3.96 AS Numeric(18, 2)), N'DM00008', 999, 0, 0, N'使用方法（用法）:1、用于繁殖能力弱，卵巢机能下降，发情周期异常，受孕率低，胚胎发育异常及出现死胎等病症的雌性宠物。2、用于性能力减弱，睾丸、附睾及副性腺重量减轻，精液量不足，精子畸形，活力下降等病症的雄性宠物。3、用于肌营养不良症（硒－维生素E缺乏症）；营养性肝病（肝营养不良）。4、对于内分泌紊乱，肝损伤的宠物，可以使用本品支持治疗；产品用法：可溶于约100ml水中直接饮用；拌入食物饲喂或自行舔食。产品用量：每天服用1次，每次1袋；体重10公斤以上宠物每天2次，每次1袋', NULL, N'产品特点：
1、营养手段调节内分泌，促进繁育；
2、雌雄均可使用，调节繁育性能；
3、无激素添加，无毒副作用；
', N'院长', CAST(0x0000A57B014D60FA AS DateTime), N'院长', CAST(0x0000A57B014D60FA AS DateTime), 0, N'YFS', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (84, N'CEX00111', N'发育素', N'ICate01', N'DM00038', N'DM00041', N'5g*24袋/盒', N'宠物药品', N'CEX00111', 1, 24, CAST(0.00 AS Numeric(18, 2)), N'CBU000000001', N'宠儿香', CAST(78.00 AS Numeric(18, 2)), N'是', N'是', N'是', CAST(0.00 AS Numeric(18, 2)), CAST(3.25 AS Numeric(18, 2)), N'DM00008', 999, 0, 0, N'使用方法（用法）:1、发育迟缓、胃肠功能弱的幼宠，使用本品可促进成长，健全胃肠消化系统；2、食欲不振，厌食、挑食的宠物，使用本品可促进进食和消化；3、离乳期的宠物，使用本品可以平稳过渡，预防断奶应激不适症状的发生用法用量：可拌入食物中喂养，也可溶于水中或奶中饮用。断奶期宠物，每天服用2次，每次半袋。成长期宠物，体重2Kg以下每天服用1次，每次半袋；体重2-10Kg每天服用1次，每次1袋；体重10Kg以上宠物，用量需加倍。成年宠物保健，每周服用2次，每次1袋。特殊情况使用请遵医嘱。', NULL, N'产品特点：
1、补充营养，促进幼宠的成长发育；
2、补充和激活消化酶，促进消化与吸收；
3、科学比配，改善肠胃功能，增强食欲；
', N'院长', CAST(0x0000A57B014DD309 AS DateTime), N'院长', CAST(0x0000A57B014DD309 AS DateTime), 0, N'FYS', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (85, N'CEX00112', N'眼舒净', N'ICate01', N'DM00014', N'DM00014', N'10ml/瓶', N'宠物药品', N'CEX00112', 1, 1, CAST(0.00 AS Numeric(18, 2)), N'CBU000000001', N'宠儿香', CAST(35.00 AS Numeric(18, 2)), N'是', N'是', N'是', CAST(0.00 AS Numeric(18, 2)), CAST(35.00 AS Numeric(18, 2)), N'DM00008', 999, 0, 0, N'使用方法（用法）:1、病毒（犬瘟热病毒、腺病毒、猫疱疹病毒等）性疾病引起的眼部症状，可直接使用本品，广谱抗病毒，有效缓解症状；2、轻度细菌感染引起的眼部症状，可直接使用本品，严重感染需配合其他抗菌素使用；3、顽固性眼部疾病，使用本品可调节免疫系统，作为支持治疗，提高治愈率； 用法用量：药物滴入眼内，一天3～5次， 一次2～3滴。', NULL, N'产品特点：
1、专利抗病毒成分，广谱抗病毒；
2、广谱杀菌；
3、低毒性、刺激性弱
', N'院长', CAST(0x0000A57B014E4B60 AS DateTime), N'院长', CAST(0x0000A57B014E4B60 AS DateTime), 0, N'YSJ', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (86, N'CEX00113', N'眼美净', N'ICate01', N'DM00014', N'DM00014', N'10ml/瓶', N'宠物药品', N'CEX00113', 1, 1, CAST(0.00 AS Numeric(18, 2)), N'CBU000000001', N'宠儿香', CAST(35.00 AS Numeric(18, 2)), N'是', N'是', N'是', CAST(0.00 AS Numeric(18, 2)), CAST(35.00 AS Numeric(18, 2)), N'DM00008', 999, 0, 0, N'使用方法（用法）:1、用于病毒、细菌感染引起的分泌物增症，防治其产生的泪痕；2、对于炎性分泌物堵塞鼻泪管的情况，有一定疏通鼻泪管的作用；3、眼干、眼涩等不适症状的宠物，使用本品可改善眼部微循环，提高抗感染能力；用法用量：用无菌棉球蘸凉开水（或2%硼酸）对宠物由眼内角向外轻轻擦拭干净，然后将药物滴入眼内，用手使患犬（猫）闭目片刻，1-2滴/次，2-3次/天，或遵医嘱。', NULL, N'产品特点：
1、广谱抗病毒、杀菌，控制眼睛分泌物；
2、增强角膜自我修复功能，促进感光细胞分化和发育；
3、含丰富营养素，改善的眼部微循环营养素，提高抗感染能力；
', N'院长', CAST(0x0000A57B014EC624 AS DateTime), N'院长', CAST(0x0000A57B014EC624 AS DateTime), 0, N'YMJ', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (87, N'CEX00114', N'咳喘平', N'ICate01', N'DM00014', N'DM00014', N'10ml/瓶', N'宠物药品', N'CEX00114', 1, 1, CAST(0.00 AS Numeric(18, 2)), N'CBU000000001', N'宠儿香', CAST(68.00 AS Numeric(18, 2)), N'是', N'是', N'是', CAST(0.00 AS Numeric(18, 2)), CAST(68.00 AS Numeric(18, 2)), N'DM00008', 999, 0, 0, N'使用方法（用法）:1、针对病毒引起的咽炎、急慢性支气管炎、肺炎等呼吸系统疾病，无继发感染或炎症现象，可直接使用本品；2、针对过敏性支气管炎、咽炎等引起的咳嗽、哮喘，可直接使用本品；3、针对犬瘟热、犬窝咳、猫鼻支等病毒性呼吸道疾病，初期可直接使用本品，若出现继发感染，可按医嘱结合抗生素进行治疗；4、在病毒性疾病高发期，可按医嘱直接使用本品以预防交叉感染。用法用量：1、针对过敏性支气管炎、咽炎等引起的咳嗽、哮喘，可直接使用本品；2、针对病毒引起的咽炎、急慢性支气管炎、肺炎等，临床表现为咳嗽、哮喘，且无继发感染或炎症现象，可直接使用本品；3、针对犬猫瘟热、犬窝咳等病毒性呼吸道疾病，初期可直接使用本品，若出现继发感染，可按医嘱结合抗生素进行治疗；4、在病毒性疾病高发期，可按医嘱直接使用本品以预防交叉感染。用量：将药物喷入口中，按下表推荐剂量使用；或遵医嘱。体重范围①＜3kg 1喷/次，2～3次/天②3kg～6kg  2喷/次，3～4次/天  ③＞6kg  2～3喷/次，4～5次/天', NULL, N'产品特点：
1、快速祛痰，镇咳平喘；
2、广谱抗病毒，缓解症状；
', N'院长', CAST(0x0000A57B014F419C AS DateTime), N'院长', CAST(0x0000A57B014F419C AS DateTime), 0, N'HCP', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (88, N'CEX00115', N'卫眼明', N'ICate01', N'DM00014', N'DM00014', N'10ml/瓶', N'宠物药品', N'CEX00115', 1, 1, CAST(0.00 AS Numeric(18, 2)), N'CBU000000001', N'宠儿香', CAST(69.00 AS Numeric(18, 2)), N'是', N'是', N'是', CAST(0.00 AS Numeric(18, 2)), CAST(69.00 AS Numeric(18, 2)), N'DM00008', 999, 0, 0, N'使用方法（用法）:1、宠物早期白内障，使用本品可以早期干预治疗，缓解白内障发展；2、糖尿病性白内障宠物，使用本品可以抑制晶状体蛋白变性；3、白内障手术治疗的宠物，使用本品可以有助于术后快速恢复；用法用量：药物滴入眼结膜内，一天3～4次，一次2～3滴', NULL, N'产品特点：
1、早期白内障的干预治疗；
2、抑制晶状体蛋白变性；
3、高效抗氧化，保护角膜；
', N'院长', CAST(0x0000A57B014FCEF6 AS DateTime), N'院长', CAST(0x0000A57B014FCEF6 AS DateTime), 0, N'WYM', NULL, NULL, NULL, NULL)
INSERT [dbo].[M_ItemType] ([ID], [ItemCode], [ItemName], [CateNo], [PackageUnit], [RecipeUnit], [ItemStandard], [ItemStyle], [BarCode], [BusiTypeID], [ItemBulk], [InputPrice], [DealerCode], [DealerName], [SellPrice], [IsVIPDiscount], [IsSell], [IsCount], [VIPSellPrice], [RecipePrice], [DrugForm], [WareUpLimit], [WareDownLimit], [SafeDay], [UseWay], [GroupName], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [InputCode], [IsScattered], [Location], [IsCanExchange], [ExchangeRewardPoint]) VALUES (89, N'CEX00116', N'溶菌宁', N'ICate01', N'DM00014', N'DM00014', N'25ml/瓶', N'宠物药品', N'CEX00116', 1, 1, CAST(0.00 AS Numeric(18, 2)), N'CBU000000001', N'宠儿香', CAST(49.00 AS Numeric(18, 2)), N'是', N'是', N'是', CAST(0.00 AS Numeric(18, 2)), CAST(49.00 AS Numeric(18, 2)), N'DM00008', 999, 0, 0, N'使用方法（用法）:1、皮肤伤口（外伤、术创等）、溃疡面等，直接使用本品，抗感染，促进愈合；2、细菌（含耐药菌株）、部分真菌感染引起的宠物皮肤病、外耳炎等，配合使用本品可抗感染；3、其他感染性疾病（脓皮症、口角炎等）的支持治疗，广谱高效杀菌；用法用量：1、细菌、真菌感染引起的犬、猫皮肤病：均匀喷于患处，以充分湿润患处为宜，2-3次/天，或遵医嘱。2、犬、猫外耳炎：喷在耳内，然后用手捂住耳朵，轻柔数次后松开，使液体均匀分布于耳道，2-3次/日，1-2喷/次，或遵医嘱。3、犬、猫口腔溃疡：喷于溃疡处，4-5次/天，1-2喷/次。4、犬、猫皮肤刮伤、擦伤等创面的杀菌消炎：先用0.9%的无菌生理盐水将创面洗净，然后喷于创面，2-3次/天，或遵医嘱。5、手术后伤口表面的护理：喷于伤口表面，2-3次/天，或遵医嘱。', NULL, N'产品特点：
1、基因工程溶菌酶，广谱杀菌；
2、天然相容性，无刺激性、无毒性；
3、抗菌活性稳定，无耐药性
', N'院长', CAST(0x0000A57B01502D4C AS DateTime), N'院长', CAST(0x0000A57B01502D4C AS DateTime), 0, N'RJN', NULL, NULL, NULL, NULL)
SET IDENTITY_INSERT [dbo].[M_ItemType] OFF
/****** Object:  Table [dbo].[M_ItemDiscountRate]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_ItemDiscountRate](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LevelCode] [varchar](50) NULL,
	[CateNo] [varchar](50) NULL,
	[DiscountRate] [decimal](18, 0) NULL,
	[IsDeleted] [int] NOT NULL,
 CONSTRAINT [PK_M_ItemDiscountRate] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_ItemCate]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_ItemCate](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CateNo] [varchar](50) NULL,
	[PNo] [varchar](50) NULL,
	[CateName] [varchar](50) NULL,
	[BusiTypeID] [int] NULL,
	[SingleProfit] [numeric](18, 0) NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[M_ItemCate] ON
INSERT [dbo].[M_ItemCate] ([ID], [CateNo], [PNo], [CateName], [BusiTypeID], [SingleProfit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1, N'ICate01', NULL, N'宠物药品', 1, NULL, N'院长', CAST(0x0000A4C100B73AA3 AS DateTime), N'院长', CAST(0x0000A4C100B73AA3 AS DateTime), 0)
INSERT [dbo].[M_ItemCate] ([ID], [CateNo], [PNo], [CateName], [BusiTypeID], [SingleProfit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (2, N'ICate02', NULL, N'宠物食品', 2, NULL, N'院长', CAST(0x0000A4C100B742A9 AS DateTime), N'院长', CAST(0x0000A4C100B742A9 AS DateTime), 0)
INSERT [dbo].[M_ItemCate] ([ID], [CateNo], [PNo], [CateName], [BusiTypeID], [SingleProfit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (3, N'ICate03', NULL, N'宠物用品', 3, NULL, N'院长', CAST(0x0000A4C100B74C50 AS DateTime), N'院长', CAST(0x0000A4C100B74C50 AS DateTime), 0)
INSERT [dbo].[M_ItemCate] ([ID], [CateNo], [PNo], [CateName], [BusiTypeID], [SingleProfit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (4, N'ICate04', NULL, N'化验项目', 4, NULL, N'院长', CAST(0x0000A4C100B75643 AS DateTime), N'院长', CAST(0x0000A4C100B75643 AS DateTime), 0)
INSERT [dbo].[M_ItemCate] ([ID], [CateNo], [PNo], [CateName], [BusiTypeID], [SingleProfit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (5, N'ICate05', NULL, N'影像项目', 5, NULL, N'院长', CAST(0x0000A4C100B75F71 AS DateTime), N'院长', CAST(0x0000A4C100B75F71 AS DateTime), 0)
INSERT [dbo].[M_ItemCate] ([ID], [CateNo], [PNo], [CateName], [BusiTypeID], [SingleProfit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (6, N'ICate06', NULL, N'住院项目', 6, NULL, N'院长', CAST(0x0000A4C100B7696F AS DateTime), N'院长', CAST(0x0000A4C100B7696F AS DateTime), 0)
INSERT [dbo].[M_ItemCate] ([ID], [CateNo], [PNo], [CateName], [BusiTypeID], [SingleProfit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (7, N'ICate07', NULL, N'宠物手术', 7, NULL, N'院长', CAST(0x0000A4C100B776E2 AS DateTime), N'院长', CAST(0x0000A4C100B776E2 AS DateTime), 0)
INSERT [dbo].[M_ItemCate] ([ID], [CateNo], [PNo], [CateName], [BusiTypeID], [SingleProfit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (8, N'ICate08', NULL, N'医疗处置', 8, NULL, N'院长', CAST(0x0000A4C100B781CA AS DateTime), N'院长', CAST(0x0000A4C100B781CA AS DateTime), 0)
INSERT [dbo].[M_ItemCate] ([ID], [CateNo], [PNo], [CateName], [BusiTypeID], [SingleProfit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (9, N'ICate09', NULL, N'驱虫疫苗', 9, NULL, N'院长', CAST(0x0000A4C100B78C3C AS DateTime), N'院长', CAST(0x0000A4C100B78C3C AS DateTime), 0)
INSERT [dbo].[M_ItemCate] ([ID], [CateNo], [PNo], [CateName], [BusiTypeID], [SingleProfit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (10, N'ICate10', NULL, N'挂号项目', 10, NULL, N'院长', CAST(0x0000A4C100B795E5 AS DateTime), N'院长', CAST(0x0000A4C100B795E5 AS DateTime), 0)
INSERT [dbo].[M_ItemCate] ([ID], [CateNo], [PNo], [CateName], [BusiTypeID], [SingleProfit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (11, N'ICate11', NULL, N'寄养项目', 11, NULL, N'院长', CAST(0x0000A4C100B7A9DC AS DateTime), N'院长', CAST(0x0000A4C100B7A9DC AS DateTime), 0)
INSERT [dbo].[M_ItemCate] ([ID], [CateNo], [PNo], [CateName], [BusiTypeID], [SingleProfit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (12, N'ICate12', NULL, N'美容服务', 12, NULL, N'院长', CAST(0x0000A4C100B7B3D1 AS DateTime), N'院长', CAST(0x0000A4C100B7B3D1 AS DateTime), 0)
INSERT [dbo].[M_ItemCate] ([ID], [CateNo], [PNo], [CateName], [BusiTypeID], [SingleProfit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (13, N'FWLX00013', NULL, N'测试', 1, NULL, N'院长', CAST(0x0000A538011DDF64 AS DateTime), N'院长', CAST(0x0000A538011DE612 AS DateTime), 1)
INSERT [dbo].[M_ItemCate] ([ID], [CateNo], [PNo], [CateName], [BusiTypeID], [SingleProfit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (14, N'ICate0201', N'ICate02', N'宠儿香家庭专用系列 美健膳食罐头', 2, CAST(12 AS Numeric(18, 0)), N'院长', CAST(0x0000A53901575FAD AS DateTime), N'院长', CAST(0x0000A53901596949 AS DateTime), 1)
INSERT [dbo].[M_ItemCate] ([ID], [CateNo], [PNo], [CateName], [BusiTypeID], [SingleProfit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (15, N'ICate0202', N'ICate02', N'海鲜类', 2, CAST(20 AS Numeric(18, 0)), N'院长', CAST(0x0000A539015A194D AS DateTime), N'院长', CAST(0x0000A55300C7CF09 AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[M_ItemCate] OFF
/****** Object:  Table [dbo].[M_Images]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Images](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PetCode] [varchar](50) NULL,
	[PetID] [int] NULL,
	[ImageName] [varchar](50) NULL,
	[ImageData] [image] NULL,
	[ImageIndex] [varchar](50) NULL,
	[ImageUrl] [varchar](100) NULL,
	[ImageDescipt] [text] NULL,
	[ImageStyle] [varchar](50) NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_GestLevel]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_GestLevel](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[LevelCode] [varchar](50) NULL,
	[LevelName] [varchar](50) NULL,
	[IsCredit] [varchar](50) NULL,
	[IsDiscount] [varchar](50) NULL,
	[DiscountRate] [decimal](18, 0) NULL,
	[Remark] [text] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[M_GestLevel] ON
INSERT [dbo].[M_GestLevel] ([ID], [LevelCode], [LevelName], [IsCredit], [IsDiscount], [DiscountRate], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1, N'HYDJ000000001', N'普通会员', N'否', N'否', CAST(100 AS Decimal(18, 0)), NULL, N'院长', CAST(0x0000A4C100B7C792 AS DateTime), N'院长', CAST(0x0000A4C100B7C792 AS DateTime), 0)
INSERT [dbo].[M_GestLevel] ([ID], [LevelCode], [LevelName], [IsCredit], [IsDiscount], [DiscountRate], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (2, N'HYDJ000000002', N'银卡会员', N'否', N'是', CAST(95 AS Decimal(18, 0)), NULL, N'院长', CAST(0x0000A4C100B7CF95 AS DateTime), N'院长', CAST(0x0000A4C100B7CF95 AS DateTime), 0)
INSERT [dbo].[M_GestLevel] ([ID], [LevelCode], [LevelName], [IsCredit], [IsDiscount], [DiscountRate], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (3, N'HYDJ000000003', N'金卡会员', N'否', N'是', CAST(92 AS Decimal(18, 0)), NULL, N'院长', CAST(0x0000A4C100B7DA04 AS DateTime), N'院长', CAST(0x0000A53401434527 AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[M_GestLevel] OFF
/****** Object:  Table [dbo].[M_Gest]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Gest](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[GestCode] [varchar](50) NULL,
	[LoseRightDate] [datetime] NULL,
	[GestName] [varchar](100) NULL,
	[GestSex] [varchar](50) NULL,
	[GestBirthday] [datetime] NULL,
	[MobilePhone] [varchar](50) NULL,
	[TelPhone] [varchar](50) NULL,
	[EMail] [varchar](50) NULL,
	[GestAddress] [varchar](100) NULL,
	[IsVIP] [varchar](50) NULL,
	[VIPNo] [varchar](50) NULL,
	[VIPAccount] [numeric](18, 2) NULL,
	[LastPaidTime] [datetime] NULL,
	[GestStyle] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
	[PaidStatus] [varchar](50) NULL,
	[Remark] [text] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
	[RewardPoint] [int] NULL,
	[PrepayMoney] [decimal](18, 2) NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_ExpensesCate]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_ExpensesCate](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CateNo] [varchar](50) NULL,
	[CateName] [varchar](50) NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[M_ExpensesCate] ON
INSERT [dbo].[M_ExpensesCate] ([ID], [CateNo], [CateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (4, N'EC0001', N'办公', N'admin', CAST(0x0000A58D00E1AA1A AS DateTime), N'admin', CAST(0x0000A58D00FB6A6C AS DateTime), 0)
INSERT [dbo].[M_ExpensesCate] ([ID], [CateNo], [CateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (5, N'EC0002', N'房水电', N'admin', CAST(0x0000A58D00E1AA1A AS DateTime), N'admin', CAST(0x0000A58D00FB6A6C AS DateTime), 0)
INSERT [dbo].[M_ExpensesCate] ([ID], [CateNo], [CateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (6, N'EC0003', N'工资及保险', N'admin', CAST(0x0000A58D00E1AA1A AS DateTime), N'admin', CAST(0x0000A58D00FB6A6C AS DateTime), 0)
INSERT [dbo].[M_ExpensesCate] ([ID], [CateNo], [CateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (7, N'EC0004', N'固定资产', N'admin', CAST(0x0000A58D00E1A9EC AS DateTime), N'院长', CAST(0x0000A58E01199710 AS DateTime), 0)
INSERT [dbo].[M_ExpensesCate] ([ID], [CateNo], [CateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (8, N'EC0005', N'广告', N'admin', CAST(0x0000A58D00E1AA1A AS DateTime), N'admin', CAST(0x0000A58D00FB6A6C AS DateTime), 0)
INSERT [dbo].[M_ExpensesCate] ([ID], [CateNo], [CateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (9, N'EC0006', N'化验', N'admin', CAST(0x0000A58D00E1AA1A AS DateTime), N'admin', CAST(0x0000A58D00FB6A6C AS DateTime), 0)
INSERT [dbo].[M_ExpensesCate] ([ID], [CateNo], [CateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (10, N'EC0007', N'机械', N'admin', CAST(0x0000A58D00E1A9EC AS DateTime), N'院长', CAST(0x0000A58E011843C4 AS DateTime), 0)
INSERT [dbo].[M_ExpensesCate] ([ID], [CateNo], [CateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (11, N'EC0008', N'交通', N'admin', CAST(0x0000A58D00E1AA1A AS DateTime), N'admin', CAST(0x0000A58D00FB6A6C AS DateTime), 0)
INSERT [dbo].[M_ExpensesCate] ([ID], [CateNo], [CateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (13, N'EC0009', N'美容', N'admin', CAST(0x0000A58D00E1AA1A AS DateTime), N'admin', CAST(0x0000A58D01039755 AS DateTime), 0)
INSERT [dbo].[M_ExpensesCate] ([ID], [CateNo], [CateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (14, N'EC0010', N'培训', N'admin', CAST(0x0000A58D00E1A9EC AS DateTime), N'院长', CAST(0x0000A58E01185DD4 AS DateTime), 0)
INSERT [dbo].[M_ExpensesCate] ([ID], [CateNo], [CateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (15, N'EC0011', N'其他', N'admin', CAST(0x0000A58D00E1AA1A AS DateTime), N'admin', CAST(0x0000A58D00FB6A6C AS DateTime), 0)
INSERT [dbo].[M_ExpensesCate] ([ID], [CateNo], [CateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (16, N'EC0012', N'日用卫生', N'admin', CAST(0x0000A58D00E1AA1A AS DateTime), N'admin', CAST(0x0000A58D00FB6A6C AS DateTime), 0)
INSERT [dbo].[M_ExpensesCate] ([ID], [CateNo], [CateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (17, N'EC0013', N'税金', N'admin', CAST(0x0000A58D00E1AA1A AS DateTime), N'admin', CAST(0x0000A58D00FB6A6C AS DateTime), 0)
INSERT [dbo].[M_ExpensesCate] ([ID], [CateNo], [CateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (18, N'EC0014', N'维修', N'admin', CAST(0x0000A58D00E1AA1A AS DateTime), N'admin', CAST(0x0000A58D0103A8F8 AS DateTime), 0)
INSERT [dbo].[M_ExpensesCate] ([ID], [CateNo], [CateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (19, N'EC0015', N'药品', N'admin', CAST(0x0000A58D00E1AA1A AS DateTime), N'admin', CAST(0x0000A58D00FB6A6C AS DateTime), 0)
INSERT [dbo].[M_ExpensesCate] ([ID], [CateNo], [CateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (20, N'EC0016', N'医耗', N'admin', CAST(0x0000A58D00E1AA1A AS DateTime), N'admin', CAST(0x0000A58D00FB6A6C AS DateTime), 0)
INSERT [dbo].[M_ExpensesCate] ([ID], [CateNo], [CateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (22, N'EC0017', N'医械', N'admin', CAST(0x0000A58D00E1AA1A AS DateTime), N'admin', CAST(0x0000A58D00FB6A6C AS DateTime), 0)
INSERT [dbo].[M_ExpensesCate] ([ID], [CateNo], [CateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (23, N'EC0018', N'招待费', N'admin', CAST(0x0000A58D00E1AA1A AS DateTime), N'admin', CAST(0x0000A58D00FB6A6C AS DateTime), 0)
INSERT [dbo].[M_ExpensesCate] ([ID], [CateNo], [CateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (24, N'EC0019', N'职工餐', N'admin', CAST(0x0000A58D00E1AA1A AS DateTime), N'admin', CAST(0x0000A58D00FB6A6C AS DateTime), 0)
INSERT [dbo].[M_ExpensesCate] ([ID], [CateNo], [CateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (25, N'EC0020', N'住寄', N'admin', CAST(0x0000A58D00E1AA1A AS DateTime), N'admin', CAST(0x0000A58D00FB6A6C AS DateTime), 0)
INSERT [dbo].[M_ExpensesCate] ([ID], [CateNo], [CateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (27, N'EC0021', N'销售', N'admin', CAST(0x0000A58D00E1A9EC AS DateTime), N'院长', CAST(0x0000A58E011742D2 AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[M_ExpensesCate] OFF
/****** Object:  Table [dbo].[M_ErrorLog]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_ErrorLog](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FunDesc] [varchar](500) NULL,
	[MFMCode] [varchar](100) NULL,
	[ObjError] [text] NULL,
	[TargetSite] [text] NULL,
	[ErrorMsg] [text] NULL,
	[StackTrace] [text] NULL,
	[HostIP] [varchar](200) NULL,
	[AppType] [smallint] NULL,
	[DealerOrgID] [int] NULL,
	[OperationBy] [varchar](50) NULL,
	[OperationOn] [datetime] NULL,
	[CreatedOn] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[M_Dealer]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_Dealer](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DealerCode] [varchar](50) NULL,
	[DealerName] [varchar](500) NULL,
	[ContractMan] [varchar](50) NULL,
	[MobilePhone] [varchar](50) NULL,
	[TelPhone] [varchar](50) NULL,
	[EMail] [varchar](50) NULL,
	[DealerAddress] [varchar](200) NULL,
	[Fax] [varchar](50) NULL,
	[WebSite] [varchar](50) NULL,
	[TaxNo] [varchar](50) NULL,
	[BankName] [varchar](50) NULL,
	[DealerBankName] [varchar](50) NULL,
	[AccountNo] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
	[Remark] [text] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
	[CompanyType] [int] NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[M_Dealer] ON
INSERT [dbo].[M_Dealer] ([ID], [DealerCode], [DealerName], [ContractMan], [MobilePhone], [TelPhone], [EMail], [DealerAddress], [Fax], [WebSite], [TaxNo], [BankName], [DealerBankName], [AccountNo], [Status], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [CompanyType]) VALUES (1, N'JXS0000000001', N'北京龙科生物制药有限公司', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2)
INSERT [dbo].[M_Dealer] ([ID], [DealerCode], [DealerName], [ContractMan], [MobilePhone], [TelPhone], [EMail], [DealerAddress], [Fax], [WebSite], [TaxNo], [BankName], [DealerBankName], [AccountNo], [Status], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [CompanyType]) VALUES (2, N'JXS0000000002', N'湖南丹维生物科技有限公司', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2)
INSERT [dbo].[M_Dealer] ([ID], [DealerCode], [DealerName], [ContractMan], [MobilePhone], [TelPhone], [EMail], [DealerAddress], [Fax], [WebSite], [TaxNo], [BankName], [DealerBankName], [AccountNo], [Status], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [CompanyType]) VALUES (3, N'JXS0000000003', N'美国瑞普斯生物药品集团有限公司', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2)
INSERT [dbo].[M_Dealer] ([ID], [DealerCode], [DealerName], [ContractMan], [MobilePhone], [TelPhone], [EMail], [DealerAddress], [Fax], [WebSite], [TaxNo], [BankName], [DealerBankName], [AccountNo], [Status], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [CompanyType]) VALUES (4, N'JXS0000000004', N'五湖', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2)
INSERT [dbo].[M_Dealer] ([ID], [DealerCode], [DealerName], [ContractMan], [MobilePhone], [TelPhone], [EMail], [DealerAddress], [Fax], [WebSite], [TaxNo], [BankName], [DealerBankName], [AccountNo], [Status], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [CompanyType]) VALUES (5, N'CBU000000001', N'宠儿香', NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 0, 2)
SET IDENTITY_INSERT [dbo].[M_Dealer] OFF
/****** Object:  Table [dbo].[M_ChemicalExamCate]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[M_ChemicalExamCate](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CateNo] [varchar](50) NULL,
	[PNo] [varchar](50) NULL,
	[CateName] [varchar](50) NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
	[Source] [varchar](50) NULL,
	[SourceChangedReason] [varchar](200) NULL,
	[Describe] [varchar](8000) NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[M_ChemicalExamCate] ON
INSERT [dbo].[M_ChemicalExamCate] ([ID], [CateNo], [PNo], [CateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Source], [SourceChangedReason], [Describe]) VALUES (1, N'C0001', N'', N'血常规', NULL, CAST(0x0000A6130105C930 AS DateTime), NULL, CAST(0x0000A6130105C930 AS DateTime), 0, N'authority', NULL, N'')
INSERT [dbo].[M_ChemicalExamCate] ([ID], [CateNo], [PNo], [CateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Source], [SourceChangedReason], [Describe]) VALUES (2, N'C0002', N'', N'生化分析', NULL, CAST(0x0000A6130105CB88 AS DateTime), NULL, CAST(0x0000A6130105CB88 AS DateTime), 0, N'authority', NULL, N'')
INSERT [dbo].[M_ChemicalExamCate] ([ID], [CateNo], [PNo], [CateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Source], [SourceChangedReason], [Describe]) VALUES (3, N'C0003', N'', N'凝血实验', NULL, CAST(0x0000A6130105CCB4 AS DateTime), NULL, CAST(0x0000A6130105CCB4 AS DateTime), 0, N'authority', NULL, N'')
INSERT [dbo].[M_ChemicalExamCate] ([ID], [CateNo], [PNo], [CateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Source], [SourceChangedReason], [Describe]) VALUES (4, N'C0004', N'', N'电解质分析', NULL, CAST(0x0000A6130105CCB4 AS DateTime), NULL, CAST(0x0000A6130105CCB4 AS DateTime), 0, N'authority', NULL, N'')
INSERT [dbo].[M_ChemicalExamCate] ([ID], [CateNo], [PNo], [CateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Source], [SourceChangedReason], [Describe]) VALUES (5, N'C0005', N'', N'血气分析', NULL, CAST(0x0000A6130105CCB4 AS DateTime), NULL, CAST(0x0000A6130105CCB4 AS DateTime), 0, N'authority', NULL, N'')
INSERT [dbo].[M_ChemicalExamCate] ([ID], [CateNo], [PNo], [CateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Source], [SourceChangedReason], [Describe]) VALUES (6, N'C0006', N'', N'激素分析', NULL, CAST(0x0000A6130105CDE0 AS DateTime), NULL, CAST(0x0000A6130105CDE0 AS DateTime), 0, N'authority', NULL, N'')
INSERT [dbo].[M_ChemicalExamCate] ([ID], [CateNo], [PNo], [CateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Source], [SourceChangedReason], [Describe]) VALUES (7, N'C0007', N'', N'尿检', NULL, CAST(0x0000A6130105CF0C AS DateTime), NULL, CAST(0x0000A6130105CF0C AS DateTime), 0, N'authority', NULL, N'')
INSERT [dbo].[M_ChemicalExamCate] ([ID], [CateNo], [PNo], [CateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Source], [SourceChangedReason], [Describe]) VALUES (8, N'C0008', N'', N'粪检', NULL, CAST(0x0000A6130105CF0C AS DateTime), NULL, CAST(0x0000A6130105CF0C AS DateTime), 0, N'authority', NULL, N'')
INSERT [dbo].[M_ChemicalExamCate] ([ID], [CateNo], [PNo], [CateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Source], [SourceChangedReason], [Describe]) VALUES (9, N'C0009', N'', N'显微镜检查', NULL, CAST(0x0000A6130105CF0C AS DateTime), NULL, CAST(0x0000A6130105CF0C AS DateTime), 0, N'authority', NULL, N'')
INSERT [dbo].[M_ChemicalExamCate] ([ID], [CateNo], [PNo], [CateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Source], [SourceChangedReason], [Describe]) VALUES (10, N'C0009001', N'C0009', N'便检验', NULL, CAST(0x0000A6130105CF0C AS DateTime), NULL, CAST(0x0000A6130105CF0C AS DateTime), 0, N'authority', NULL, N'')
INSERT [dbo].[M_ChemicalExamCate] ([ID], [CateNo], [PNo], [CateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Source], [SourceChangedReason], [Describe]) VALUES (11, N'C0009002', N'C0009', N'尿检验', NULL, CAST(0x0000A6130105D038 AS DateTime), NULL, CAST(0x0000A6130105D038 AS DateTime), 0, N'authority', NULL, N'')
INSERT [dbo].[M_ChemicalExamCate] ([ID], [CateNo], [PNo], [CateName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Source], [SourceChangedReason], [Describe]) VALUES (12, N'C0009003', N'C0009', N'皮肤损伤检验', NULL, CAST(0x0000A6130105D038 AS DateTime), NULL, CAST(0x0000A6130105D038 AS DateTime), 0, N'authority', NULL, N'')
SET IDENTITY_INSERT [dbo].[M_ChemicalExamCate] OFF
/****** Object:  Table [dbo].[Evt_PdfFile]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Evt_PdfFile](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SheetNo] [varchar](50) NULL,
	[FileName] [varchar](50) NULL,
	[FileUrl] [varchar](500) NULL,
	[IsDeleted] [int] NOT NULL,
 CONSTRAINT [PK__Evt_PdfFile__1EF99443] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Evt_Medic_VedioExam]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Evt_Medic_VedioExam](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EnterpriseNo] [varchar](50) NULL,
	[MedicRecordCode] [varchar](50) NULL,
	[MedicRecordID] [int] NULL,
	[ItemCode] [varchar](50) NULL,
	[VedioExamCost] [numeric](18, 2) NULL,
	[VedioTestName] [varchar](50) NULL,
	[VedioResult] [text] NULL,
	[Doctor] [varchar](50) NULL,
	[CheckTime] [datetime] NULL,
	[Status] [varchar](50) NULL,
	[PaidStatus] [varchar](50) NULL,
	[PaidTime] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
 CONSTRAINT [PK_Evt_Medic_VedioExam] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Evt_Medic_PrescriptionDetail]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Evt_Medic_PrescriptionDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EnterpriseNo] [varchar](50) NULL,
	[PrescriptionID] [int] NULL,
	[ItemCode] [varchar](50) NULL,
	[ItemName] [varchar](50) NULL,
	[ItemCost] [numeric](18, 2) NULL,
	[ItemNum] [int] NULL,
	[RecipeUnit] [varchar](50) NULL,
	[UseWay] [varchar](max) NULL,
	[GroupName] [varchar](50) NULL,
	[PaidStatus] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
	[ItemCountStatus] [varchar](50) NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[PaidTime] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
	[ExecutorID] [int] NULL,
	[ExecutorName] [varchar](50) NULL,
	[Frequency] [varchar](200) NULL,
	[Dose] [varchar](50) NULL,
	[UseUnit] [varchar](50) NULL,
 CONSTRAINT [PK_Evt_Medic_PrescriptionDetail] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Evt_Medic_Prescription]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Evt_Medic_Prescription](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EnterpriseNo] [varchar](50) NULL,
	[MedicRecordCode] [varchar](50) NULL,
	[MedicRecordID] [int] NULL,
	[PrescriptionCode] [varchar](50) NULL,
	[PrescriptionCost] [numeric](18, 2) NULL,
	[GestName] [varchar](50) NULL,
	[PetName] [varchar](50) NULL,
	[SickFileCode] [varchar](50) NULL,
	[Doctor] [varchar](50) NULL,
	[PaidStatus] [varchar](50) NULL,
	[PaidTime] [datetime] NULL,
	[Status] [varchar](50) NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
 CONSTRAINT [PK_Evt_Medic_Prescription] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Evt_Medic_ChemicalExamDetail]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Evt_Medic_ChemicalExamDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EnterpriseNo] [varchar](50) NULL,
	[ExamTypeID] [int] NULL,
	[ChemicalExamID] [int] NULL,
	[ChemicalExamName] [varchar](50) NULL,
	[ExamName] [varchar](50) NULL,
	[ExamValue] [numeric](18, 2) NULL,
	[ExamUpLimit] [numeric](18, 2) NULL,
	[ExamDownlimit] [numeric](18, 2) NULL,
	[CheTestWord] [varchar](50) NULL,
	[ExamPiece] [varchar](50) NULL,
	[ExamAge] [varchar](50) NULL,
	[ExamSign] [int] NULL,
	[Status] [varchar](50) NULL,
	[PaidStatus] [varchar](50) NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
 CONSTRAINT [PK_Evt_Medic_ChemicalExamDetail] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Evt_Medic_ChemicalExam]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Evt_Medic_ChemicalExam](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EnterpriseNo] [varchar](1) NULL,
	[MedicRecordCode] [varchar](50) NULL,
	[MedicRecordID] [int] NULL,
	[ChemicalExamCode] [varchar](50) NULL,
	[ChemicalExamCost] [numeric](18, 2) NULL,
	[CheTestName] [varchar](50) NULL,
	[CheTestUnit] [varchar](50) NULL,
	[ChemicalResult] [text] NULL,
	[ItemCode] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
	[PaidStatus] [varchar](50) NULL,
	[GestName] [varchar](50) NULL,
	[Doctor] [varchar](50) NULL,
	[ExamTime] [datetime] NULL,
	[PetName] [varchar](50) NULL,
	[PaidTime] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
 CONSTRAINT [PK_Evt_Medic_ChemicalExam] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Evt_Images]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Evt_Images](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[EnterpriseNo] [varchar](50) NULL,
	[PetCode] [varchar](50) NULL,
	[PetID] [int] NULL,
	[ImageName] [varchar](50) NULL,
	[ImageData] [image] NULL,
	[ImageIndex] [varchar](50) NULL,
	[ImageUrl] [varchar](100) NULL,
	[ImageDescipt] [text] NULL,
	[ImageStyle] [varchar](50) NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
 CONSTRAINT [PK_Evt_Images] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Evt_CheckProcessSheet]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Evt_CheckProcessSheet](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SheetNo] [varchar](50) NOT NULL,
	[ResourceSheetNo] [varchar](50) NULL,
	[LibCenterRequestID] [varchar](50) NULL,
	[HospitalNo] [varchar](50) NULL,
	[HospitalName] [varchar](50) NULL,
	[DoctorNo] [varchar](50) NULL,
	[DoctorName] [varchar](50) NULL,
	[SamplingDate] [datetime] NULL,
	[GuestName] [varchar](50) NULL,
	[GuestPhone] [varchar](50) NULL,
	[PetMode] [varchar](50) NULL,
	[PetName] [varchar](50) NULL,
	[PetPZ] [varchar](50) NULL,
	[PetAge] [varchar](50) NULL,
	[PetSex] [varchar](50) NULL,
	[PetJY] [varchar](50) NULL,
	[SamplingPart] [varchar](50) NULL,
	[SampleItem] [text] NULL,
	[CheckItem] [text] NULL,
	[MedicinalHistory] [varchar](500) NULL,
	[Status] [varchar](50) NOT NULL,
	[SendToLibraryAddress] [text] NULL,
	[PetID] [int] NULL,
	[SampleStr] [text] NULL,
	[SampleValue] [text] NULL,
	[NormalCheckStr] [text] NULL,
	[NormalCheckValue] [text] NULL,
	[AdvCheckStr] [text] NULL,
	[AdvCheckValue] [text] NULL,
	[MedicTreatmentCode] [varchar](50) NULL,
	[LastSheetNo] [varchar](50) NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[ModifiedBy] [varchar](50) NOT NULL,
	[QueryStatus] [varchar](50) NULL,
	[GuestID] [int] NULL,
	[SentToLibrary] [text] NULL,
	[GestCode] [varchar](50) NULL,
	[IsDeleted] [int] NOT NULL,
	[IsUrgent] [bit] NOT NULL,
 CONSTRAINT [PK__Evt_CheckProcess__1758727B] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Evt_ApproveStatusEntity]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Evt_ApproveStatusEntity](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SheetNo] [varchar](50) NULL,
	[ActivityName] [varchar](50) NULL,
	[ApproveStatus] [varchar](10) NULL,
	[ApprovedAt] [datetime] NULL,
	[Description] [text] NULL,
	[IsDeleted] [int] NOT NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[B_Warehouse_OutRecordDetail]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[B_Warehouse_OutRecordDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OutWarehouseCode] [varchar](50) NULL,
	[ItemCode] [varchar](50) NULL,
	[BarCode] [varchar](50) NULL,
	[ItemName] [varchar](100) NULL,
	[PackageUnit] [varchar](50) NULL,
	[ItemStandard] [varchar](50) NULL,
	[ItemBulk] [int] NULL,
	[InputPrice] [numeric](18, 2) NULL,
	[DrugForm] [varchar](50) NULL,
	[ItemStyle] [varchar](50) NULL,
	[SellPrice] [numeric](18, 2) NULL,
	[InputCount] [int] NULL,
	[InputCost] [numeric](18, 2) NULL,
	[ProduceDate] [datetime] NULL,
	[InputDate] [datetime] NULL,
	[OutDateTime] [datetime] NULL,
	[SafeDay] [int] NULL,
	[WareUpLimit] [int] NULL,
	[WareDownLimit] [int] NULL,
	[Remark] [varchar](100) NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
	[ManufacturerCode] [varchar](50) NULL,
	[ManufacturerName] [varchar](200) NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[B_Warehouse_OutRecord]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[B_Warehouse_OutRecord](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[OutWarehouseCode] [varchar](50) NULL,
	[OutWarehouseMan] [varchar](50) NULL,
	[OutWarehouseTotalCost] [numeric](18, 2) NULL,
	[OutWarehouse] [varchar](50) NULL,
	[OutReason] [varchar](100) NULL,
	[OutContent] [text] NULL,
	[TotalCount] [int] NULL,
	[WarehouseID] [int] NULL,
	[CheckDate] [datetime] NULL,
	[CheckMan] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
	[OutWarehouseDate] [datetime] NULL,
	[Remark] [text] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[B_Warehouse_MoveRecordDetail]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[B_Warehouse_MoveRecordDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MoveWarehouseCode] [varchar](50) NULL,
	[ItemCode] [varchar](50) NULL,
	[BarCode] [varchar](50) NULL,
	[ItemName] [varchar](100) NULL,
	[PackageUnit] [varchar](50) NULL,
	[ItemStandard] [varchar](50) NULL,
	[ItemBulk] [int] NULL,
	[InputPrice] [numeric](18, 2) NULL,
	[DrugForm] [varchar](50) NULL,
	[ItemStyle] [varchar](50) NULL,
	[SellPrice] [numeric](18, 2) NULL,
	[InputCount] [int] NULL,
	[InputCost] [numeric](18, 2) NULL,
	[ProduceDate] [datetime] NULL,
	[InputDate] [datetime] NULL,
	[OutDateTime] [datetime] NULL,
	[SafeDay] [int] NULL,
	[WareUpLimit] [int] NULL,
	[WareDownLimit] [int] NULL,
	[Remark] [varchar](100) NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
	[BatchNumber] [varchar](50) NULL,
	[ManufacturerCode] [varchar](50) NULL,
	[ManufacturerName] [varchar](200) NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[B_Warehouse_MoveRecord]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[B_Warehouse_MoveRecord](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MoveWarehouseCode] [varchar](50) NULL,
	[MoveWarehouseMan] [varchar](50) NULL,
	[MoveWarehouseDate] [datetime] NULL,
	[FromWarehouse] [varchar](50) NULL,
	[ToWarehouse] [varchar](50) NULL,
	[FromWarehouseID] [int] NULL,
	[ToWarehouseID] [int] NULL,
	[InWarehouseTotalCost] [numeric](18, 2) NULL,
	[CheckDate] [datetime] NULL,
	[CheckMan] [varchar](50) NULL,
	[TotalCount] [int] NULL,
	[MoveContent] [text] NULL,
	[Status] [varchar](50) NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
	[Remark] [varchar](500) NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[B_Warehouse_Inventory]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[B_Warehouse_Inventory](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[InventoryCode] [varchar](50) NULL,
	[InventoryMan] [varchar](50) NULL,
	[InventoryDate] [datetime] NULL,
	[InventoryWare] [varchar](50) NULL,
	[WarehouseID] [int] NULL,
	[InventoryContent] [text] NULL,
	[Status] [varchar](50) NULL,
	[Remark] [text] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[B_Warehouse_InRecordDetail]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[B_Warehouse_InRecordDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[InWarehouseCode] [varchar](50) NULL,
	[ItemCode] [varchar](50) NULL,
	[BarCode] [varchar](50) NULL,
	[ItemName] [varchar](100) NULL,
	[PackageUnit] [varchar](50) NULL,
	[ItemStandard] [varchar](50) NULL,
	[ItemBulk] [int] NULL,
	[InputPrice] [numeric](18, 2) NULL,
	[DrugForm] [varchar](50) NULL,
	[ItemStyle] [varchar](50) NULL,
	[SellPrice] [numeric](18, 2) NULL,
	[InputCount] [int] NULL,
	[InputCost] [numeric](18, 2) NULL,
	[ProduceDate] [datetime] NULL,
	[InputDate] [datetime] NULL,
	[OutDateTime] [datetime] NULL,
	[SafeDay] [int] NULL,
	[WareUpLimit] [int] NULL,
	[WareDownLimit] [int] NULL,
	[Remark] [varchar](100) NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
	[BatchNumber] [varchar](50) NULL,
	[ManufacturerCode] [varchar](50) NULL,
	[ManufacturerName] [varchar](200) NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[B_Warehouse_InRecord]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[B_Warehouse_InRecord](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[InWarehouseCode] [varchar](50) NULL,
	[InWarehouseMan] [varchar](50) NULL,
	[InWarehouseTotalCost] [numeric](18, 2) NULL,
	[InWarehouse] [varchar](50) NULL,
	[WarehouseID] [int] NULL,
	[InReason] [varchar](100) NULL,
	[TotalCount] [int] NULL,
	[InContent] [text] NULL,
	[CheckDate] [datetime] NULL,
	[CheckMan] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
	[InWarehouseDate] [datetime] NULL,
	[ToWarehouseName] [varchar](50) NULL,
	[ToWarehouseCode] [varchar](50) NULL,
	[Remark] [varchar](200) NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
	[DealerName] [varchar](200) NULL,
	[DealerCode] [varchar](50) NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[B_Warehouse_BackRecordDetail]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[B_Warehouse_BackRecordDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BackWarehouseCode] [varchar](50) NULL,
	[ItemCode] [varchar](50) NULL,
	[BarCode] [varchar](50) NULL,
	[ItemName] [varchar](100) NULL,
	[PackageUnit] [varchar](50) NULL,
	[ItemStandard] [varchar](50) NULL,
	[ItemBulk] [int] NULL,
	[InputPrice] [numeric](18, 2) NULL,
	[DrugForm] [varchar](50) NULL,
	[ItemStyle] [varchar](50) NULL,
	[SellPrice] [numeric](18, 2) NULL,
	[InputCount] [int] NULL,
	[InputCost] [numeric](18, 2) NULL,
	[ProduceDate] [datetime] NULL,
	[InputDate] [datetime] NULL,
	[OutDateTime] [datetime] NULL,
	[SafeDay] [int] NULL,
	[WareUpLimit] [int] NULL,
	[WareDownLimit] [int] NULL,
	[Remark] [varchar](100) NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
	[BatchNumber] [varchar](50) NULL,
	[ManufacturerCode] [varchar](50) NULL,
	[ManufacturerName] [varchar](200) NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[B_Warehouse_BackRecord]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[B_Warehouse_BackRecord](
	[WarehouseID] [int] NULL,
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BackWarehouseCode] [varchar](50) NULL,
	[BackWarehouseMan] [varchar](50) NULL,
	[BackWarehouseTotalCost] [numeric](18, 2) NULL,
	[DealerName] [varchar](50) NULL,
	[DealerCode] [varchar](50) NULL,
	[BackReason] [varchar](100) NULL,
	[BackContent] [text] NULL,
	[TotalCount] [int] NULL,
	[CheckDate] [datetime] NULL,
	[CheckMan] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
	[BackWarehouseDate] [datetime] NULL,
	[Remark] [text] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
 CONSTRAINT [PK__B_Warehouse_Back__04459E07] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[B_VIPInputTem]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[B_VIPInputTem](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[NO] [varchar](50) NULL,
	[BatchNumber] [varchar](50) NULL,
	[RowNumber] [int] NOT NULL,
	[Code] [varchar](50) NOT NULL,
	[Name] [varchar](500) NOT NULL,
	[Sex] [varchar](50) NULL,
	[Birthday] [datetime] NULL,
	[MobilePhone] [varchar](50) NULL,
	[Phone] [varchar](50) NULL,
	[Email] [varchar](100) NULL,
	[Level] [varchar](50) NOT NULL,
	[Adress] [varchar](50) NULL,
	[Sign] [int] NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[CreatedBy] [varchar](50) NOT NULL,
	[ModifiedBy] [varchar](50) NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[B_Store_DirectSellDetail]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[B_Store_DirectSellDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DirectSellID] [int] NULL,
	[DirectSellCode] [varchar](50) NULL,
	[BarCode] [varchar](50) NULL,
	[ItemCode] [varchar](50) NULL,
	[ItemName] [varchar](50) NULL,
	[BusiTypeID] [int] NULL,
	[SellPrice] [numeric](18, 2) NULL,
	[SellUnit] [varchar](50) NULL,
	[ItemNum] [numeric](18, 2) NULL,
	[ItemStandard] [varchar](50) NULL,
	[TotalCost] [decimal](20, 6) NULL,
	[SellContent] [varchar](50) NULL,
	[IsBulk] [varchar](50) NULL,
	[PaidStatus] [varchar](50) NULL,
	[PaidTime] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
	[ManufacturerCode] [varchar](50) NULL,
	[ManufacturerName] [varchar](200) NULL,
	[WarehouseID] [int] NULL,
 CONSTRAINT [PK__B_Store_DirectSe__025D5595] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[B_Store_DirectSell]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[B_Store_DirectSell](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[DirectSellCode] [varchar](50) NULL,
	[TotalNum] [int] NULL,
	[TotalCost] [decimal](20, 6) NULL,
	[GestID] [int] NULL,
	[GestName] [varchar](50) NULL,
	[PetID] [int] NULL,
	[PetName] [varchar](50) NULL,
	[GestCode] [varchar](50) NULL,
	[MobilePhone] [varchar](50) NULL,
	[Discount] [decimal](18, 4) NULL,
	[PaidStatus] [varchar](50) NULL,
	[PaidTime] [datetime] NULL,
	[remark] [text] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
 CONSTRAINT [PK__B_Store_DirectSe__00750D23] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[B_ServiceDetail]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[B_ServiceDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ServiceID] [int] NULL,
	[ItemCode] [varchar](50) NULL,
	[ItemName] [varchar](100) NULL,
	[ItemStandard] [varchar](50) NULL,
	[BarCode] [varchar](50) NULL,
	[SellPrice] [decimal](18, 2) NULL,
	[InputCount] [int] NULL,
	[TotalCost] [decimal](20, 6) NULL,
	[PackageUnit] [varchar](50) NULL,
	[PaidStatus] [varchar](50) NULL,
	[PaidTime] [datetime] NULL,
	[Remark] [varchar](200) NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
 CONSTRAINT [PK_B_ServiceDetail] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[B_Service]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[B_Service](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ServiceCode] [varchar](50) NOT NULL,
	[GestID] [int] NULL,
	[GestName] [varchar](100) NULL,
	[PetID] [int] NULL,
	[PetName] [varchar](100) NULL,
	[GestCode] [varchar](50) NULL,
	[MobilePhone] [varchar](50) NULL,
	[HairdresserID] [int] NULL,
	[AssistantID] [int] NULL,
	[AssistantName] [varchar](50) NULL,
	[HairdresserName] [varchar](50) NULL,
	[TotalNum] [int] NULL,
	[TotalCost] [decimal](20, 6) NULL,
	[PaidStatus] [varchar](50) NULL,
	[PaidTime] [datetime] NULL,
	[Remark] [varchar](200) NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
 CONSTRAINT [PK_B_Service] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[B_SerialNumber]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[B_SerialNumber](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SerialNumberStyle] [varchar](50) NULL,
	[SerialNum] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[B_SerialNumber] ON
INSERT [dbo].[B_SerialNumber] ([ID], [SerialNumberStyle], [SerialNum], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1, N'字典项目', 78, NULL, CAST(0x0000A532012EA300 AS DateTime), NULL, CAST(0x0000A53800EF891C AS DateTime), 0)
INSERT [dbo].[B_SerialNumber] ([ID], [SerialNumberStyle], [SerialNum], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (2, N'员工编号', 1, NULL, CAST(0x0000A532012EA300 AS DateTime), NULL, CAST(0x0000A538011E3486 AS DateTime), 0)
INSERT [dbo].[B_SerialNumber] ([ID], [SerialNumberStyle], [SerialNum], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (3, N'仓库编号', 4, NULL, CAST(0x0000A532012EA300 AS DateTime), NULL, CAST(0x0000A538011DCEA1 AS DateTime), 0)
INSERT [dbo].[B_SerialNumber] ([ID], [SerialNumberStyle], [SerialNum], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (4, N'服务类型', 0, NULL, CAST(0x0000A532012EA300 AS DateTime), NULL, CAST(0x0000A538011DE343 AS DateTime), 0)
INSERT [dbo].[B_SerialNumber] ([ID], [SerialNumberStyle], [SerialNum], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (5, N'会员等级', 4, NULL, CAST(0x0000A532012EA300 AS DateTime), NULL, CAST(0x0000A538011E17B9 AS DateTime), 0)
INSERT [dbo].[B_SerialNumber] ([ID], [SerialNumberStyle], [SerialNum], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (6, N'员工角色', 5, NULL, CAST(0x0000A532012EA300 AS DateTime), NULL, CAST(0x0000A538011E6267 AS DateTime), 0)
INSERT [dbo].[B_SerialNumber] ([ID], [SerialNumberStyle], [SerialNum], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (7, N'商品与服务', 0, NULL, CAST(0x0000A532012EA300 AS DateTime), NULL, CAST(0x0000A538011E0445 AS DateTime), 0)
INSERT [dbo].[B_SerialNumber] ([ID], [SerialNumberStyle], [SerialNum], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (8, N'经销商', 5, NULL, CAST(0x0000A532012EA300 AS DateTime), NULL, CAST(0x0000A538011DBFDF AS DateTime), 0)
INSERT [dbo].[B_SerialNumber] ([ID], [SerialNumberStyle], [SerialNum], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (9, N'处置处方', 1, NULL, CAST(0x0000A532012EA300 AS DateTime), NULL, CAST(0x0000A5390153CEC2 AS DateTime), 0)
INSERT [dbo].[B_SerialNumber] ([ID], [SerialNumberStyle], [SerialNum], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (10, N'疫苗登记', 1, NULL, CAST(0x0000A532012EA300 AS DateTime), NULL, CAST(0x0000A55300B84C72 AS DateTime), 0)
INSERT [dbo].[B_SerialNumber] ([ID], [SerialNumberStyle], [SerialNum], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (11, N'化验项目', 1, NULL, CAST(0x0000A532012EA300 AS DateTime), NULL, CAST(0x0000A5390153C613 AS DateTime), 0)
INSERT [dbo].[B_SerialNumber] ([ID], [SerialNumberStyle], [SerialNum], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (12, N'会员编号', 1, NULL, CAST(0x0000A532012EA300 AS DateTime), NULL, CAST(0x0000A55300C8A51E AS DateTime), 0)
INSERT [dbo].[B_SerialNumber] ([ID], [SerialNumberStyle], [SerialNum], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (13, N'宠物编号', 1, NULL, CAST(0x0000A532012EA300 AS DateTime), NULL, CAST(0x0000A55300C8A535 AS DateTime), 0)
INSERT [dbo].[B_SerialNumber] ([ID], [SerialNumberStyle], [SerialNum], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (14, N'宠物病历号', 1, NULL, CAST(0x0000A532012EA300 AS DateTime), NULL, CAST(0x0000A55300C8A54C AS DateTime), 0)
INSERT [dbo].[B_SerialNumber] ([ID], [SerialNumberStyle], [SerialNum], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (15, N'拓瑞检测申请', 1, NULL, CAST(0x0000A532012EA300 AS DateTime), NULL, CAST(0x0000A55300C87EF7 AS DateTime), 0)
INSERT [dbo].[B_SerialNumber] ([ID], [SerialNumberStyle], [SerialNum], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (16, N'入库单', 1, NULL, CAST(0x0000A53400000000 AS DateTime), NULL, CAST(0x0000A539015A3FF6 AS DateTime), 0)
INSERT [dbo].[B_SerialNumber] ([ID], [SerialNumberStyle], [SerialNum], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (17, N'直接销售', 1, NULL, CAST(0x0000A53400000000 AS DateTime), NULL, CAST(0x0000A539014C5C01 AS DateTime), 0)
INSERT [dbo].[B_SerialNumber] ([ID], [SerialNumberStyle], [SerialNum], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (18, N'结费单', 1, NULL, CAST(0x0000A53400000000 AS DateTime), NULL, CAST(0x0000A5390153A558 AS DateTime), 0)
INSERT [dbo].[B_SerialNumber] ([ID], [SerialNumberStyle], [SerialNum], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (19, N'寄养管理', 1, NULL, CAST(0x0000A53400000000 AS DateTime), NULL, CAST(0x0000A539013A98CD AS DateTime), 0)
INSERT [dbo].[B_SerialNumber] ([ID], [SerialNumberStyle], [SerialNum], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (20, N'住院管理', 1, NULL, CAST(0x0000A53400000000 AS DateTime), NULL, CAST(0x0000A539014B9CAE AS DateTime), 0)
INSERT [dbo].[B_SerialNumber] ([ID], [SerialNumberStyle], [SerialNum], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (21, N'门诊挂号', 1, NULL, CAST(0x0000A53400000000 AS DateTime), NULL, CAST(0x0000A53901539D00 AS DateTime), 0)
INSERT [dbo].[B_SerialNumber] ([ID], [SerialNumberStyle], [SerialNum], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (22, N'病历', 1, NULL, CAST(0x0000A53400000000 AS DateTime), NULL, CAST(0x0000A5390153AB57 AS DateTime), 0)
INSERT [dbo].[B_SerialNumber] ([ID], [SerialNumberStyle], [SerialNum], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (23, N'出库单', 1, NULL, CAST(0x0000A53700000000 AS DateTime), NULL, CAST(0x0000A538011BE69D AS DateTime), 0)
INSERT [dbo].[B_SerialNumber] ([ID], [SerialNumberStyle], [SerialNum], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (24, N'调拨单', 1, NULL, CAST(0x0000A53700000000 AS DateTime), NULL, CAST(0x0000A538011CA367 AS DateTime), 0)
INSERT [dbo].[B_SerialNumber] ([ID], [SerialNumberStyle], [SerialNum], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (25, N'退货单', 1, NULL, CAST(0x0000A53700000000 AS DateTime), NULL, CAST(0x0000A538011D0464 AS DateTime), 0)
INSERT [dbo].[B_SerialNumber] ([ID], [SerialNumberStyle], [SerialNum], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (26, N'个人处方模板', 1, NULL, CAST(0x0000A537012E7C54 AS DateTime), NULL, CAST(0x0000A5380115E5FE AS DateTime), 0)
INSERT [dbo].[B_SerialNumber] ([ID], [SerialNumberStyle], [SerialNum], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (27, N'个人处方', 1, NULL, CAST(0x0000A537012E9748 AS DateTime), NULL, CAST(0x0000A5380118C5E0 AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[B_SerialNumber] OFF
/****** Object:  Table [dbo].[B_RewardPoint_Log]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[B_RewardPoint_Log](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[GestID] [int] NULL,
	[SettleId] [int] NULL,
	[DetailId] [int] NULL,
	[ItemCode] [varchar](50) NULL,
	[SellPrice] [numeric](18, 2) NULL,
	[InfactPrice] [numeric](18, 2) NULL,
	[DiscountMoney] [numeric](18, 2) NULL,
	[ItemNum] [numeric](18, 2) NULL,
	[SumOriginalMoney] [numeric](18, 2) NULL,
	[TotalCost] [numeric](18, 2) NULL,
	[SumDiscountMoney] [numeric](18, 2) NULL,
	[ExchangePointPrice] [int] NULL,
	[ExchangePointTotal] [int] NULL,
	[Sign] [int] NULL,
	[UniqueSign] [uniqueidentifier] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[B_RewardPoint_ExchangeDetail]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[B_RewardPoint_ExchangeDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ParentID] [int] NULL,
	[ItemCode] [varchar](50) NULL,
	[ItemName] [varchar](100) NULL,
	[Unit] [varchar](50) NULL,
	[BusiTypeID] [int] NULL,
	[SellPrice] [numeric](18, 2) NULL,
	[RewardPointPrice] [int] NULL,
	[TotalRewardPoint] [int] NULL,
	[TotalNum] [numeric](18, 2) NULL,
	[PaidStatus] [varchar](50) NULL,
	[PaidTime] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[B_RewardPoint_Exchange]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[B_RewardPoint_Exchange](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[GestID] [int] NULL,
	[GestCode] [varchar](50) NULL,
	[GestName] [varchar](100) NULL,
	[TotalRewardPoint] [int] NULL,
	[ItemNum] [int] NULL,
	[PaidStatus] [varchar](50) NULL,
	[PaidTime] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[B_ReturnCommodityDetail]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[B_ReturnCommodityDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RCID] [int] NULL,
	[BusiTypeID] [int] NULL,
	[SellDetailID] [int] NULL,
	[ItemCode] [varchar](50) NULL,
	[BarCode] [varchar](50) NULL,
	[ItemName] [varchar](50) NULL,
	[ItemStandard] [varchar](50) NULL,
	[ManufacturerCode] [varchar](50) NULL,
	[ManufacturerName] [varchar](50) NULL,
	[BatchNumber] [varchar](50) NULL,
	[OutDateTime] [datetime] NULL,
	[PackageUnit] [varchar](50) NULL,
	[SellPrice] [numeric](18, 2) NULL,
	[RealPay] [numeric](18, 2) NULL,
	[SellCountNum] [int] NULL,
	[ReturnPrice] [numeric](18, 4) NULL,
	[ReturnCountNum] [numeric](18, 2) NULL,
	[ReturnTotalCost] [decimal](20, 6) NULL,
	[WarehouseID] [int] NULL,
	[WarehouseName] [varchar](50) NULL,
	[PaidStatus] [varchar](50) NULL,
	[PaidTime] [datetime] NULL,
	[Remark] [text] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[B_ReturnCommodity]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[B_ReturnCommodity](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RCCode] [varchar](50) NULL,
	[CashID] [int] NULL,
	[CashCode] [varchar](50) NULL,
	[CountNum] [int] NULL,
	[TotalCost] [decimal](20, 6) NULL,
	[GestID] [int] NULL,
	[GestName] [varchar](50) NULL,
	[GestPhone] [varchar](50) NULL,
	[HandlerID] [int] NULL,
	[HandlerName] [varchar](50) NULL,
	[HandOn] [datetime] NULL,
	[PaidStatus] [varchar](50) NULL,
	[PaidTime] [datetime] NULL,
	[Remark] [text] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[B_Prompt]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[B_Prompt](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ConfigID] [int] NULL,
	[KeyCode] [varchar](50) NULL,
	[RelationID] [int] NULL,
	[GestID] [int] NULL,
	[GestName] [varchar](100) NULL,
	[Sex] [varchar](50) NULL,
	[PetID] [varchar](50) NULL,
	[PetName] [varchar](50) NULL,
	[Birthday] [datetime] NULL,
	[Birthdate] [datetime] NULL,
	[Days] [int] NULL,
	[CageNo] [varchar](50) NULL,
	[PackageUnit] [varchar](50) NULL,
	[ItemName] [varchar](100) NULL,
	[TotalMoney] [numeric](18, 2) NULL,
	[InputMoney] [numeric](18, 2) NULL,
	[StartTime] [datetime] NULL,
	[EndTime] [datetime] NULL,
	[ShootProcess] [varchar](50) NULL,
	[MobilePhone] [varchar](20) NULL,
	[SendStatus] [varchar](50) NULL,
	[PromptType] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
	[ItemCount] [varchar](50) NULL,
	[WareHouse] [varchar](50) NULL,
	[UpLimit] [int] NULL,
	[DownLimit] [int] NULL,
	[ShootStatus] [varchar](50) NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[B_PrepayMoney]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[B_PrepayMoney](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[GestID] [int] NULL,
	[BusinessType] [int] NULL,
	[OptionType] [int] NULL,
	[RelationID] [int] NULL,
	[InputMoney] [decimal](18, 2) NULL,
	[Status] [varchar](50) NULL,
	[RecordTime] [datetime] NULL,
	[Remark] [varchar](max) NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[B_PhoneMessage]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[B_PhoneMessage](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[GestID] [int] NULL,
	[GestName] [varchar](50) NULL,
	[MobilePhone] [varchar](50) NULL,
	[Content] [text] NULL,
	[PromptType] [varchar](50) NULL,
	[RelationID] [int] NULL,
	[SendStatus] [varchar](50) NULL,
	[Birthday] [datetime] NULL,
	[SendTime] [datetime] NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
 CONSTRAINT [PK__B_PhoneMessage__7ABC33CD] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[B_PetSmallRace]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[B_PetSmallRace](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[RaceID] [int] NULL,
	[PetRaceName] [varchar](50) NULL,
	[PetType] [varchar](50) NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[B_PetSmallRace] ON
INSERT [dbo].[B_PetSmallRace] ([ID], [RaceID], [PetRaceName], [PetType], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1, 1, N'小型犬', N'吉娃娃', N'管理员', CAST(0x0000A451012F1B26 AS DateTime), N'管理员', CAST(0x0000A451012F1B26 AS DateTime), 0)
INSERT [dbo].[B_PetSmallRace] ([ID], [RaceID], [PetRaceName], [PetType], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (2, 1, N'小型犬', N'博美犬', N'管理员', CAST(0x0000A451012F211B AS DateTime), N'管理员', CAST(0x0000A451012F211B AS DateTime), 0)
INSERT [dbo].[B_PetSmallRace] ([ID], [RaceID], [PetRaceName], [PetType], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (3, 1, N'小型犬', N'马尔济斯犬', N'管理员', CAST(0x0000A451012F2CD2 AS DateTime), N'管理员', CAST(0x0000A451012F2CD2 AS DateTime), 0)
INSERT [dbo].[B_PetSmallRace] ([ID], [RaceID], [PetRaceName], [PetType], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (4, 1, N'小型犬', N'约克夏梗', N'管理员', CAST(0x0000A451012F33FA AS DateTime), N'管理员', CAST(0x0000A451012F33FA AS DateTime), 0)
INSERT [dbo].[B_PetSmallRace] ([ID], [RaceID], [PetRaceName], [PetType], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (5, 1, N'小型犬', N'贵宾犬', N'管理员', CAST(0x0000A451012F67C1 AS DateTime), N'管理员', CAST(0x0000A451012F67C1 AS DateTime), 0)
INSERT [dbo].[B_PetSmallRace] ([ID], [RaceID], [PetRaceName], [PetType], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (6, 1, N'小型犬', N'京巴犬', N'管理员', CAST(0x0000A451012F6E8F AS DateTime), N'管理员', CAST(0x0000A451012F6E8F AS DateTime), 0)
INSERT [dbo].[B_PetSmallRace] ([ID], [RaceID], [PetRaceName], [PetType], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (7, 1, N'小型犬', N'蝴蝶犬', N'管理员', CAST(0x0000A451012F76C7 AS DateTime), N'管理员', CAST(0x0000A451012F76C7 AS DateTime), 0)
INSERT [dbo].[B_PetSmallRace] ([ID], [RaceID], [PetRaceName], [PetType], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (8, 1, N'小型犬', N'巴哥犬', N'管理员', CAST(0x0000A451012F8639 AS DateTime), N'管理员', CAST(0x0000A451012F8639 AS DateTime), 0)
INSERT [dbo].[B_PetSmallRace] ([ID], [RaceID], [PetRaceName], [PetType], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (9, 1, N'小型犬', N'比格犬', N'管理员', CAST(0x0000A451012F9D1C AS DateTime), N'管理员', CAST(0x0000A451012F9D1C AS DateTime), 0)
INSERT [dbo].[B_PetSmallRace] ([ID], [RaceID], [PetRaceName], [PetType], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (10, 2, N'中型犬', N'哈士奇', N'管理员', CAST(0x0000A451012FD2C3 AS DateTime), N'管理员', CAST(0x0000A451012FD2C3 AS DateTime), 0)
INSERT [dbo].[B_PetSmallRace] ([ID], [RaceID], [PetRaceName], [PetType], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (11, 2, N'中型犬', N'松狮', N'管理员', CAST(0x0000A451012FDD20 AS DateTime), N'管理员', CAST(0x0000A451012FDD20 AS DateTime), 0)
INSERT [dbo].[B_PetSmallRace] ([ID], [RaceID], [PetRaceName], [PetType], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (12, 2, N'中型犬', N'萨摩耶', N'管理员', CAST(0x0000A451012FE256 AS DateTime), N'管理员', CAST(0x0000A451012FE256 AS DateTime), 0)
INSERT [dbo].[B_PetSmallRace] ([ID], [RaceID], [PetRaceName], [PetType], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (13, 2, N'中型犬', N'喜乐蒂', N'管理员', CAST(0x0000A451012FF14F AS DateTime), N'管理员', CAST(0x0000A451012FF14F AS DateTime), 0)
INSERT [dbo].[B_PetSmallRace] ([ID], [RaceID], [PetRaceName], [PetType], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (14, 2, N'中型犬', N'柴犬', N'管理员', CAST(0x0000A451012FF7B6 AS DateTime), N'管理员', CAST(0x0000A451012FF7B6 AS DateTime), 0)
INSERT [dbo].[B_PetSmallRace] ([ID], [RaceID], [PetRaceName], [PetType], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (15, 2, N'中型犬', N'腊肠犬', N'管理员', CAST(0x0000A451013009CD AS DateTime), N'管理员', CAST(0x0000A451013009CD AS DateTime), 0)
INSERT [dbo].[B_PetSmallRace] ([ID], [RaceID], [PetRaceName], [PetType], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (16, 2, N'中型犬', N'拉布拉多犬', N'管理员', CAST(0x0000A451013021E6 AS DateTime), N'管理员', CAST(0x0000A451013021E6 AS DateTime), 0)
INSERT [dbo].[B_PetSmallRace] ([ID], [RaceID], [PetRaceName], [PetType], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (17, 2, N'中型犬', N'中国沙皮犬', N'管理员', CAST(0x0000A45101302C7A AS DateTime), N'管理员', CAST(0x0000A45101302C7A AS DateTime), 0)
INSERT [dbo].[B_PetSmallRace] ([ID], [RaceID], [PetRaceName], [PetType], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (18, 3, N'大型犬', N'金毛寻回犬', N'管理员', CAST(0x0000A45101307450 AS DateTime), N'管理员', CAST(0x0000A45101307450 AS DateTime), 0)
INSERT [dbo].[B_PetSmallRace] ([ID], [RaceID], [PetRaceName], [PetType], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (19, 3, N'大型犬', N'苏格兰牧羊犬', N'管理员', CAST(0x0000A45101308148 AS DateTime), N'管理员', CAST(0x0000A45101308148 AS DateTime), 0)
INSERT [dbo].[B_PetSmallRace] ([ID], [RaceID], [PetRaceName], [PetType], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (20, 4, N'猫', N'美国短毛猫', N'院长', CAST(0x0000A451014334D2 AS DateTime), N'院长', CAST(0x0000A451014334D2 AS DateTime), 0)
INSERT [dbo].[B_PetSmallRace] ([ID], [RaceID], [PetRaceName], [PetType], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (21, 4, N'猫', N'布偶猫', N'院长', CAST(0x0000A451014397AB AS DateTime), N'院长', CAST(0x0000A451014397AB AS DateTime), 0)
INSERT [dbo].[B_PetSmallRace] ([ID], [RaceID], [PetRaceName], [PetType], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (22, 3, N'大型犬', N'古代牧羊犬', N'院长', CAST(0x0000A4510143D737 AS DateTime), N'院长', CAST(0x0000A4510143D737 AS DateTime), 0)
INSERT [dbo].[B_PetSmallRace] ([ID], [RaceID], [PetRaceName], [PetType], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (23, 1, N'小型犬', N'雪纳瑞', N'院长', CAST(0x0000A4510144ABF5 AS DateTime), N'院长', CAST(0x0000A4510144ABF5 AS DateTime), 0)
INSERT [dbo].[B_PetSmallRace] ([ID], [RaceID], [PetRaceName], [PetType], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (24, 3, N'大型犬', N'法牛', N'院长', CAST(0x0000A480015344ED AS DateTime), N'院长', CAST(0x0000A480015344ED AS DateTime), 0)
INSERT [dbo].[B_PetSmallRace] ([ID], [RaceID], [PetRaceName], [PetType], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (25, 4, N'猫', N'波斯猫', N'院长', CAST(0x0000A534013799DA AS DateTime), N'院长', CAST(0x0000A534013799DA AS DateTime), 0)
INSERT [dbo].[B_PetSmallRace] ([ID], [RaceID], [PetRaceName], [PetType], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (26, 6, N'兔', N'流氓兔', N'院长', CAST(0x0000A53800F00834 AS DateTime), N'院长', CAST(0x0000A53800F00834 AS DateTime), 0)
INSERT [dbo].[B_PetSmallRace] ([ID], [RaceID], [PetRaceName], [PetType], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (27, 6, N'兔', N'测试1', N'院长', CAST(0x0000A538011E7366 AS DateTime), N'院长', CAST(0x0000A538011E7FB8 AS DateTime), 1)
INSERT [dbo].[B_PetSmallRace] ([ID], [RaceID], [PetRaceName], [PetType], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (28, 6, N'兔', N'测试2', N'院长', CAST(0x0000A538011E7942 AS DateTime), N'院长', CAST(0x0000A538011E8372 AS DateTime), 1)
SET IDENTITY_INSERT [dbo].[B_PetSmallRace] OFF
/****** Object:  Table [dbo].[B_PetRace]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[B_PetRace](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[BigTypeName] [varchar](50) NULL,
	[MdicTypeName] [varchar](50) NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[B_PetRace] ON
INSERT [dbo].[B_PetRace] ([ID], [BigTypeName], [MdicTypeName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1, N'小型犬', N'DM00016', N'管理员', CAST(0x0000A451012EC932 AS DateTime), N'管理员', CAST(0x0000A451012EC932 AS DateTime), 0)
INSERT [dbo].[B_PetRace] ([ID], [BigTypeName], [MdicTypeName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (2, N'中型犬', N'DM00016', N'管理员', CAST(0x0000A451012ED1F4 AS DateTime), N'管理员', CAST(0x0000A451012ED1F4 AS DateTime), 0)
INSERT [dbo].[B_PetRace] ([ID], [BigTypeName], [MdicTypeName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (3, N'大型犬', N'DM00016', N'管理员', CAST(0x0000A451012ED7E9 AS DateTime), N'管理员', CAST(0x0000A451012ED7E9 AS DateTime), 0)
INSERT [dbo].[B_PetRace] ([ID], [BigTypeName], [MdicTypeName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (4, N'猫', N'DM00017', N'管理员', CAST(0x0000A451012EDC62 AS DateTime), N'管理员', CAST(0x0000A451012EDC62 AS DateTime), 0)
INSERT [dbo].[B_PetRace] ([ID], [BigTypeName], [MdicTypeName], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (6, N'兔', N'DM0000000060', N'院长', CAST(0x0000A53800EFF57B AS DateTime), N'院长', CAST(0x0000A53800EFF57B AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[B_PetRace] OFF
/****** Object:  Table [dbo].[B_MicroSMSConfig]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[B_MicroSMSConfig](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ConfigName] [varchar](50) NULL,
	[ConfigValue] [varchar](256) NULL,
	[Description] [varchar](256) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[B_MicroSMSConfig] ON
INSERT [dbo].[B_MicroSMSConfig] ([ID], [ConfigName], [ConfigValue], [Description], [ModifiedOn], [IsDeleted]) VALUES (1, N'下发医生信息', N'是', N'下发医生信息', CAST(0x0000A539015D4E4B AS DateTime), 0)
INSERT [dbo].[B_MicroSMSConfig] ([ID], [ConfigName], [ConfigValue], [Description], [ModifiedOn], [IsDeleted]) VALUES (2, N'下发处方信息', N'是', N'下发处方信息', CAST(0x0000A53801211BA7 AS DateTime), 0)
INSERT [dbo].[B_MicroSMSConfig] ([ID], [ConfigName], [ConfigValue], [Description], [ModifiedOn], [IsDeleted]) VALUES (3, N'下发用药提醒信息', N'是', N'下发用药提醒信息', CAST(0x0000A53801211C55 AS DateTime), 0)
INSERT [dbo].[B_MicroSMSConfig] ([ID], [ConfigName], [ConfigValue], [Description], [ModifiedOn], [IsDeleted]) VALUES (4, N'下发寄养信息', N'是', N'下发寄养信息', CAST(0x0000A53801211D11 AS DateTime), 0)
INSERT [dbo].[B_MicroSMSConfig] ([ID], [ConfigName], [ConfigValue], [Description], [ModifiedOn], [IsDeleted]) VALUES (5, N'下发住院信息', N'是', N'下发住院信息', CAST(0x0000A53801211E1F AS DateTime), 0)
INSERT [dbo].[B_MicroSMSConfig] ([ID], [ConfigName], [ConfigValue], [Description], [ModifiedOn], [IsDeleted]) VALUES (6, N'下发病历信息', N'是', N'下发病历信息', CAST(0x0000A53801211EB0 AS DateTime), 0)
INSERT [dbo].[B_MicroSMSConfig] ([ID], [ConfigName], [ConfigValue], [Description], [ModifiedOn], [IsDeleted]) VALUES (7, N'允许微信问诊', N'是', N'允许微信问诊', CAST(0x0000A53801211FEE AS DateTime), 0)
INSERT [dbo].[B_MicroSMSConfig] ([ID], [ConfigName], [ConfigValue], [Description], [ModifiedOn], [IsDeleted]) VALUES (8, N'会员生日提醒是否发送信息', N'是', NULL, CAST(0x0000A4D800DD5C5C AS DateTime), 0)
INSERT [dbo].[B_MicroSMSConfig] ([ID], [ConfigName], [ConfigValue], [Description], [ModifiedOn], [IsDeleted]) VALUES (9, N'宠物生日提醒是否发送信息', N'是', NULL, CAST(0x0000A4D800DD7E58 AS DateTime), 0)
INSERT [dbo].[B_MicroSMSConfig] ([ID], [ConfigName], [ConfigValue], [Description], [ModifiedOn], [IsDeleted]) VALUES (10, N'寄养预付不足提醒是否发送信息', N'是', NULL, CAST(0x0000A4D800DDA054 AS DateTime), 0)
INSERT [dbo].[B_MicroSMSConfig] ([ID], [ConfigName], [ConfigValue], [Description], [ModifiedOn], [IsDeleted]) VALUES (11, N'住院预付不足提醒是否发送信息', N'是', NULL, CAST(0x0000A4D800DDC124 AS DateTime), 0)
INSERT [dbo].[B_MicroSMSConfig] ([ID], [ConfigName], [ConfigValue], [Description], [ModifiedOn], [IsDeleted]) VALUES (12, N'寄养到期提醒是否发送信息', N'是', NULL, CAST(0x0000A4D800DDEED8 AS DateTime), 0)
INSERT [dbo].[B_MicroSMSConfig] ([ID], [ConfigName], [ConfigValue], [Description], [ModifiedOn], [IsDeleted]) VALUES (13, N'住院到期提醒是否发送信息', N'是', NULL, CAST(0x0000A4D800DE0648 AS DateTime), 0)
INSERT [dbo].[B_MicroSMSConfig] ([ID], [ConfigName], [ConfigValue], [Description], [ModifiedOn], [IsDeleted]) VALUES (14, N'驱虫疫苗提醒是否发送信息', N'是', NULL, CAST(0x0000A5D70145BB78 AS DateTime), 0)
INSERT [dbo].[B_MicroSMSConfig] ([ID], [ConfigName], [ConfigValue], [Description], [ModifiedOn], [IsDeleted]) VALUES (15, N'会员生日提醒微信模板', N'这是模板', NULL, CAST(0x0000A4D800DE6D68 AS DateTime), 0)
INSERT [dbo].[B_MicroSMSConfig] ([ID], [ConfigName], [ConfigValue], [Description], [ModifiedOn], [IsDeleted]) VALUES (16, N'宠物生日提醒微信模板', N'这是模板', NULL, CAST(0x0000A4D800DE8280 AS DateTime), 0)
INSERT [dbo].[B_MicroSMSConfig] ([ID], [ConfigName], [ConfigValue], [Description], [ModifiedOn], [IsDeleted]) VALUES (17, N'寄养预付不足提醒微信模板', N'这是模板', NULL, CAST(0x0000A4D800DE9B1C AS DateTime), 0)
INSERT [dbo].[B_MicroSMSConfig] ([ID], [ConfigName], [ConfigValue], [Description], [ModifiedOn], [IsDeleted]) VALUES (18, N'住院预付不足提醒微信模板', N'这是模板', NULL, CAST(0x0000A4D800DEB3B8 AS DateTime), 0)
INSERT [dbo].[B_MicroSMSConfig] ([ID], [ConfigName], [ConfigValue], [Description], [ModifiedOn], [IsDeleted]) VALUES (19, N'寄养到期提醒微信模板', N'这是模板', NULL, CAST(0x0000A4D800DEBAC0 AS DateTime), 0)
INSERT [dbo].[B_MicroSMSConfig] ([ID], [ConfigName], [ConfigValue], [Description], [ModifiedOn], [IsDeleted]) VALUES (20, N'住院到期提醒微信模板', N'这是模板', NULL, CAST(0x0000A4D800DEDDE8 AS DateTime), 0)
INSERT [dbo].[B_MicroSMSConfig] ([ID], [ConfigName], [ConfigValue], [Description], [ModifiedOn], [IsDeleted]) VALUES (21, N'驱虫疫苗提醒微信模板', N'这是模板', NULL, CAST(0x0000A5D70145BB78 AS DateTime), 0)
INSERT [dbo].[B_MicroSMSConfig] ([ID], [ConfigName], [ConfigValue], [Description], [ModifiedOn], [IsDeleted]) VALUES (22, N'会员生日提醒', N'30', NULL, CAST(0x0000A4D800DF695C AS DateTime), 0)
INSERT [dbo].[B_MicroSMSConfig] ([ID], [ConfigName], [ConfigValue], [Description], [ModifiedOn], [IsDeleted]) VALUES (23, N'宠物生日提醒', N'30', NULL, CAST(0x0000A4D800DF6F38 AS DateTime), 0)
INSERT [dbo].[B_MicroSMSConfig] ([ID], [ConfigName], [ConfigValue], [Description], [ModifiedOn], [IsDeleted]) VALUES (24, N'寄养预付不足提醒', N'5', NULL, CAST(0x0000A4D800DF7E74 AS DateTime), 0)
INSERT [dbo].[B_MicroSMSConfig] ([ID], [ConfigName], [ConfigValue], [Description], [ModifiedOn], [IsDeleted]) VALUES (25, N'住院预付不足提醒', N'5', NULL, CAST(0x0000A4D800DF9F44 AS DateTime), 0)
INSERT [dbo].[B_MicroSMSConfig] ([ID], [ConfigName], [ConfigValue], [Description], [ModifiedOn], [IsDeleted]) VALUES (26, N'寄养到期提醒', N'5', NULL, CAST(0x0000A4D800DFB6B4 AS DateTime), 0)
INSERT [dbo].[B_MicroSMSConfig] ([ID], [ConfigName], [ConfigValue], [Description], [ModifiedOn], [IsDeleted]) VALUES (27, N'住院到期提醒', N'5', NULL, CAST(0x0000A4D800DFC4C4 AS DateTime), 0)
INSERT [dbo].[B_MicroSMSConfig] ([ID], [ConfigName], [ConfigValue], [Description], [ModifiedOn], [IsDeleted]) VALUES (28, N'驱虫疫苗提醒', N'5', NULL, CAST(0x0000A5D70145BB78 AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[B_MicroSMSConfig] OFF
/****** Object:  Table [dbo].[B_Medic_VedioExam]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[B_Medic_VedioExam](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MedicRecordCode] [varchar](50) NULL,
	[MedicRecordID] [int] NULL,
	[ItemCode] [varchar](50) NULL,
	[VedioExamCost] [numeric](18, 2) NULL,
	[VedioTestName] [varchar](50) NULL,
	[VedioResult] [text] NULL,
	[Doctor] [varchar](50) NULL,
	[CheckTime] [datetime] NULL,
	[Status] [varchar](50) NULL,
	[PaidStatus] [varchar](50) NULL,
	[PaidTime] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[B_Medic_Vaccine]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[B_Medic_Vaccine](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[VaccineGroupCode] [varchar](50) NULL,
	[PetName] [varchar](50) NULL,
	[GestID] [int] NULL,
	[GestName] [varchar](50) NULL,
	[GestCode] [varchar](50) NULL,
	[PetID] [int] NULL,
	[MobilePhone] [varchar](50) NULL,
	[ItemName] [varchar](50) NULL,
	[ItemCode] [varchar](50) NULL,
	[ItemCost] [numeric](18, 2) NULL,
	[ItemStandard] [varchar](50) NULL,
	[EstimateTime] [datetime] NULL,
	[FactShootTime] [datetime] NULL,
	[ShootLevelNum] [varchar](50) NULL,
	[ShootProcess] [varchar](50) NULL,
	[IntervalDay] [int] NULL,
	[AddType] [varchar](50) NULL,
	[Remark] [varchar](256) NULL,
	[PaidStatus] [varchar](50) NULL,
	[WarnStatus] [varchar](50) NULL,
	[ShootStatus] [varchar](50) NULL,
	[PaidTime] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
	[BatchNumber] [varchar](50) NULL,
	[OutDateTime] [datetime] NULL,
	[ManufacturerCode] [varchar](50) NULL,
	[ManufacturerName] [varchar](200) NULL,
	[ExecutorID] [int] NULL,
	[ExecutorName] [varchar](50) NULL,
	[DoctorID] [int] NULL,
	[DoctorName] [varchar](50) NULL,
	[AssistantDoctorID] [int] NULL,
	[AssistantDoctorName] [varchar](50) NULL,
	[ItemNum] [decimal](18, 2) NULL,
	[TotalCost] [decimal](20, 6) NULL,
	[Sign] [int] NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[B_Medic_Supplies]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[B_Medic_Supplies](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MedicRecordCode] [varchar](50) NULL,
	[MedicRecordID] [int] NULL,
	[ExamID] [int] NOT NULL,
	[ItemCode] [varchar](50) NULL,
	[ItemName] [varchar](100) NULL,
	[ItemNum] [decimal](18, 2) NULL,
	[ItemStandard] [varchar](50) NULL,
	[IsCount] [varchar](50) NULL,
	[Unit] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
	[PaidStatus] [varchar](50) NULL,
	[PaidTime] [datetime] NULL,
	[Sign] [varchar](50) NULL,
	[IsDeleted] [int] NOT NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_B_Medic_Supplies] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[B_Medic_RegisterRecord]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[B_Medic_RegisterRecord](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Register_No] [varchar](50) NULL,
	[Register_Style] [varchar](50) NULL,
	[ItemCode] [varchar](50) NULL,
	[ItemName] [varchar](50) NULL,
	[Register_Price] [numeric](18, 2) NULL,
	[SickFileCode] [varchar](50) NULL,
	[GestName] [varchar](50) NULL,
	[PetName] [varchar](50) NULL,
	[PetID] [int] NULL,
	[Operator_Man] [varchar](50) NULL,
	[Doctor] [varchar](50) NULL,
	[DoctorID] [int] NULL,
	[Status] [varchar](50) NULL,
	[PaidStatus] [varchar](50) NULL,
	[PaidTime] [datetime] NULL,
	[PauseReason] [text] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
	[AssistantDoctorID] [int] NULL,
	[AssistantDoctorName] [varchar](50) NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[B_Medic_PrescriptionDetail]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[B_Medic_PrescriptionDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PrescriptionID] [int] NULL,
	[ItemCode] [varchar](50) NULL,
	[ItemName] [varchar](50) NULL,
	[ItemCost] [decimal](18, 2) NULL,
	[ItemNum] [numeric](18, 2) NULL,
	[RecipeUnit] [varchar](50) NULL,
	[UseWay] [varchar](max) NULL,
	[GroupName] [varchar](50) NULL,
	[PaidStatus] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
	[ItemCountStatus] [varchar](50) NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[PaidTime] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
	[ManufacturerCode] [varchar](50) NULL,
	[ManufacturerName] [varchar](200) NULL,
	[ExecutorID] [int] NULL,
	[ExecutorName] [varchar](50) NULL,
	[Frequency] [varchar](200) NULL,
	[Dose] [varchar](50) NULL,
	[UseUnit] [varchar](50) NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[B_Medic_Prescription]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[B_Medic_Prescription](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MedicRecordCode] [varchar](50) NULL,
	[MedicRecordID] [int] NULL,
	[PrescriptionCode] [varchar](50) NULL,
	[PrescriptionCost] [decimal](20, 6) NULL,
	[GestName] [varchar](50) NULL,
	[PetName] [varchar](50) NULL,
	[SickFileCode] [varchar](50) NULL,
	[Doctor] [varchar](50) NULL,
	[PaidStatus] [varchar](50) NULL,
	[PaidTime] [datetime] NULL,
	[Status] [varchar](50) NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[B_Medic_MedicTreatRecord]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[B_Medic_MedicTreatRecord](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PetID] [int] NULL,
	[MedicTreatmentCode] [varchar](50) NULL,
	[Register_No] [varchar](50) NULL,
	[Temperature] [varchar](50) NULL,
	[Heartbeat] [varchar](50) NULL,
	[Breath] [varchar](50) NULL,
	[BloodPressure] [varchar](50) NULL,
	[Rheme] [text] NULL,
	[Examination] [text] NULL,
	[Diagnosed] [text] NULL,
	[DoctorAdvice] [text] NULL,
	[Status] [varchar](50) NULL,
	[PaidStatus] [varchar](50) NULL,
	[GestName] [varchar](50) NULL,
	[Doctor] [varchar](50) NULL,
	[PetName] [varchar](50) NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
	[AssistantDoctorName] [varchar](50) NULL,
	[AssistantDoctorID] [int] NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[B_Medic_ChemicalExamTypeDetail]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[B_Medic_ChemicalExamTypeDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CheTestTypdID] [int] NULL,
	[PetRaceName] [varchar](50) NULL,
	[PetAgeMothFrom] [int] NULL,
	[PetAgeMothTo] [int] NULL,
	[ReferenceValueUp] [float] NULL,
	[ReferenceValueDonw] [float] NULL,
	[PetAgeWord] [varchar](50) NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
	[Result] [varchar](200) NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ON
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (1, 1, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CAAF AS DateTime), NULL, CAST(0x0000A6130105CAAF AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (2, 1, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CAAF AS DateTime), NULL, CAST(0x0000A6130105CAAF AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (3, 1, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CAAF AS DateTime), NULL, CAST(0x0000A6130105CAAF AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (4, 2, N'DM00017', 0, 12000, 45, 12, N'0个月以后', NULL, CAST(0x0000A6130105CAB5 AS DateTime), NULL, CAST(0x0000A6130105CAB5 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (5, 2, N'DM00016', 0, 12000, 30, 12, N'0个月以后', NULL, CAST(0x0000A6130105CAB5 AS DateTime), NULL, CAST(0x0000A6130105CAB5 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (6, 2, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CAB5 AS DateTime), NULL, CAST(0x0000A6130105CAB5 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (7, 3, N'DM00017', 0, 12000, 380, 300, N'0个月以后', NULL, CAST(0x0000A6130105CABA AS DateTime), NULL, CAST(0x0000A6130105CABA AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (8, 3, N'DM00016', 0, 12000, 380, 300, N'0个月以后', NULL, CAST(0x0000A6130105CABA AS DateTime), NULL, CAST(0x0000A6130105CABA AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (9, 3, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CABA AS DateTime), NULL, CAST(0x0000A6130105CABA AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (10, 4, N'DM00017', 0, 12000, 1.9, 0, N'0个月以后', NULL, CAST(0x0000A6130105CAC4 AS DateTime), NULL, CAST(0x0000A6130105CAC4 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (11, 4, N'DM00016', 0, 12000, 1.8, 0, N'0个月以后', NULL, CAST(0x0000A6130105CAC4 AS DateTime), NULL, CAST(0x0000A6130105CAC4 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (12, 4, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CAC4 AS DateTime), NULL, CAST(0x0000A6130105CAC4 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (13, 5, N'DM00017', 0, 12000, 11.8, 5, N'0个月以后', NULL, CAST(0x0000A6130105CAC9 AS DateTime), NULL, CAST(0x0000A6130105CAC9 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (14, 5, N'DM00016', 0, 12000, 12.9, 7, N'0个月以后', NULL, CAST(0x0000A6130105CAC9 AS DateTime), NULL, CAST(0x0000A6130105CAC9 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (15, 5, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CAC9 AS DateTime), NULL, CAST(0x0000A6130105CAC9 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (16, 6, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CACD AS DateTime), NULL, CAST(0x0000A6130105CACD AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (17, 6, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CACD AS DateTime), NULL, CAST(0x0000A6130105CACD AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (18, 6, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CACD AS DateTime), NULL, CAST(0x0000A6130105CACD AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (19, 7, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CAD4 AS DateTime), NULL, CAST(0x0000A6130105CAD4 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (20, 7, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CAD4 AS DateTime), NULL, CAST(0x0000A6130105CAD4 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (21, 7, N'DM00000', 0, 12000, 19, 11, N'0个月以后', NULL, CAST(0x0000A6130105CAD4 AS DateTime), NULL, CAST(0x0000A6130105CAD4 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (22, 8, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CADA AS DateTime), NULL, CAST(0x0000A6130105CADA AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (23, 8, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CADA AS DateTime), NULL, CAST(0x0000A6130105CADA AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (24, 8, N'DM00000', 0, 12000, 10, 2, N'0个月以后', NULL, CAST(0x0000A6130105CADA AS DateTime), NULL, CAST(0x0000A6130105CADA AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (25, 9, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CADF AS DateTime), NULL, CAST(0x0000A6130105CADF AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (26, 9, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CADF AS DateTime), NULL, CAST(0x0000A6130105CADF AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (27, 9, N'DM00000', 0, 12000, 15, 3, N'0个月以后', NULL, CAST(0x0000A6130105CADF AS DateTime), NULL, CAST(0x0000A6130105CADF AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (28, 10, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CAE9 AS DateTime), NULL, CAST(0x0000A6130105CAE9 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (29, 10, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CAE9 AS DateTime), NULL, CAST(0x0000A6130105CAE9 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (30, 10, N'DM00000', 0, 12000, 3.4, 0.1, N'0个月以后', NULL, CAST(0x0000A6130105CAE9 AS DateTime), NULL, CAST(0x0000A6130105CAE9 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (31, 11, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CAEF AS DateTime), NULL, CAST(0x0000A6130105CAEF AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (32, 11, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CAEF AS DateTime), NULL, CAST(0x0000A6130105CAEF AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (33, 11, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CAEF AS DateTime), NULL, CAST(0x0000A6130105CAEF AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (34, 12, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CAF7 AS DateTime), NULL, CAST(0x0000A6130105CAF7 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (35, 12, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CAF7 AS DateTime), NULL, CAST(0x0000A6130105CAF7 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (36, 12, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CAF7 AS DateTime), NULL, CAST(0x0000A6130105CAF7 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (37, 13, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CAFB AS DateTime), NULL, CAST(0x0000A6130105CAFB AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (38, 13, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CAFB AS DateTime), NULL, CAST(0x0000A6130105CAFB AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (39, 13, N'DM00000', 0, 12000, 99.9, 0.1, N'0个月以后', NULL, CAST(0x0000A6130105CAFB AS DateTime), NULL, CAST(0x0000A6130105CAFB AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (40, 14, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CB01 AS DateTime), NULL, CAST(0x0000A6130105CB01 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (41, 14, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CB01 AS DateTime), NULL, CAST(0x0000A6130105CB01 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (42, 14, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CB01 AS DateTime), NULL, CAST(0x0000A6130105CB01 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (43, 15, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CB06 AS DateTime), NULL, CAST(0x0000A6130105CB06 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (44, 15, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CB06 AS DateTime), NULL, CAST(0x0000A6130105CB06 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (45, 15, N'DM00000', 0, 12000, 9, 2, N'0个月以后', NULL, CAST(0x0000A6130105CB06 AS DateTime), NULL, CAST(0x0000A6130105CB06 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (46, 16, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CB0B AS DateTime), NULL, CAST(0x0000A6130105CB0B AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (47, 16, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CB0B AS DateTime), NULL, CAST(0x0000A6130105CB0B AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (48, 16, N'DM00000', 0, 12000, 1.12, 0.16, N'0个月以后', NULL, CAST(0x0000A6130105CB0B AS DateTime), NULL, CAST(0x0000A6130105CB0B AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (49, 17, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CB10 AS DateTime), NULL, CAST(0x0000A6130105CB10 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (50, 17, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CB10 AS DateTime), NULL, CAST(0x0000A6130105CB10 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (51, 17, N'DM00000', 0, 12000, 6.3, 1.1, N'0个月以后', NULL, CAST(0x0000A6130105CB10 AS DateTime), NULL, CAST(0x0000A6130105CB10 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (52, 18, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CB14 AS DateTime), NULL, CAST(0x0000A6130105CB14 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (53, 18, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CB14 AS DateTime), NULL, CAST(0x0000A6130105CB14 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (54, 18, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CB14 AS DateTime), NULL, CAST(0x0000A6130105CB14 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (55, 19, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CB1D AS DateTime), NULL, CAST(0x0000A6130105CB1D AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (56, 19, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CB1D AS DateTime), NULL, CAST(0x0000A6130105CB1D AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (57, 19, N'DM00000', 0, 12000, 8.87, 5.65, N'0个月以后', NULL, CAST(0x0000A6130105CB1D AS DateTime), NULL, CAST(0x0000A6130105CB1D AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (58, 20, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CB21 AS DateTime), NULL, CAST(0x0000A6130105CB21 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (59, 20, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CB21 AS DateTime), NULL, CAST(0x0000A6130105CB21 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (60, 20, N'DM00000', 0, 12000, 15.5, 11, N'0个月以后', NULL, CAST(0x0000A6130105CB21 AS DateTime), NULL, CAST(0x0000A6130105CB21 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (61, 21, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CB26 AS DateTime), NULL, CAST(0x0000A6130105CB26 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (62, 21, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CB26 AS DateTime), NULL, CAST(0x0000A6130105CB26 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (63, 21, N'DM00000', 0, 12000, 54, 37, N'0个月以后', NULL, CAST(0x0000A6130105CB26 AS DateTime), NULL, CAST(0x0000A6130105CB26 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (64, 22, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CB2A AS DateTime), NULL, CAST(0x0000A6130105CB2A AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (65, 22, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CB2A AS DateTime), NULL, CAST(0x0000A6130105CB2A AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (66, 22, N'DM00000', 0, 12000, 8.5, 5.5, N'0个月以后', NULL, CAST(0x0000A6130105CB2A AS DateTime), NULL, CAST(0x0000A6130105CB2A AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (67, 23, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CB2F AS DateTime), NULL, CAST(0x0000A6130105CB2F AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (68, 23, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CB2F AS DateTime), NULL, CAST(0x0000A6130105CB2F AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (69, 23, N'DM00000', 0, 12000, 77, 60, N'0个月以后', NULL, CAST(0x0000A6130105CB2F AS DateTime), NULL, CAST(0x0000A6130105CB2F AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (70, 24, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CB34 AS DateTime), NULL, CAST(0x0000A6130105CB34 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (71, 24, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CB34 AS DateTime), NULL, CAST(0x0000A6130105CB34 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (72, 24, N'DM00000', 0, 12000, 37.5, 28.9, N'0个月以后', NULL, CAST(0x0000A6130105CB34 AS DateTime), NULL, CAST(0x0000A6130105CB34 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (73, 25, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CB39 AS DateTime), NULL, CAST(0x0000A6130105CB39 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (74, 25, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CB39 AS DateTime), NULL, CAST(0x0000A6130105CB39 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (75, 25, N'DM00000', 0, 12000, 10.8, 4, N'0个月以后', NULL, CAST(0x0000A6130105CB39 AS DateTime), NULL, CAST(0x0000A6130105CB39 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (76, 26, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CB3D AS DateTime), NULL, CAST(0x0000A6130105CB3D AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (77, 26, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CB3D AS DateTime), NULL, CAST(0x0000A6130105CB3D AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (78, 26, N'DM00000', 0, 12000, 83, 60, N'0个月以后', NULL, CAST(0x0000A6130105CB3D AS DateTime), NULL, CAST(0x0000A6130105CB3D AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (79, 27, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CB42 AS DateTime), NULL, CAST(0x0000A6130105CB42 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (80, 27, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CB42 AS DateTime), NULL, CAST(0x0000A6130105CB42 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (81, 27, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CB42 AS DateTime), NULL, CAST(0x0000A6130105CB42 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (82, 28, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CB47 AS DateTime), NULL, CAST(0x0000A6130105CB47 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (83, 28, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CB47 AS DateTime), NULL, CAST(0x0000A6130105CB47 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (84, 28, N'DM00000', 0, 12000, 4.9, 0.5, N'0个月以后', NULL, CAST(0x0000A6130105CB47 AS DateTime), NULL, CAST(0x0000A6130105CB47 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (85, 29, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CB4C AS DateTime), NULL, CAST(0x0000A6130105CB4C AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (86, 29, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CB4C AS DateTime), NULL, CAST(0x0000A6130105CB4C AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (87, 29, N'DM00000', 0, 12000, 4.8, 1, N'0个月以后', NULL, CAST(0x0000A6130105CB4C AS DateTime), NULL, CAST(0x0000A6130105CB4C AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (88, 30, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CB51 AS DateTime), NULL, CAST(0x0000A6130105CB51 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (89, 30, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CB51 AS DateTime), NULL, CAST(0x0000A6130105CB51 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (90, 30, N'DM00000', 0, 12000, 77, 66, N'0个月以后', NULL, CAST(0x0000A6130105CB51 AS DateTime), NULL, CAST(0x0000A6130105CB51 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (91, 31, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CB55 AS DateTime), NULL, CAST(0x0000A6130105CB55 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (92, 31, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CB55 AS DateTime), NULL, CAST(0x0000A6130105CB55 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (93, 31, N'DM00000', 0, 12000, 24.5, 19.9, N'0个月以后', NULL, CAST(0x0000A6130105CB55 AS DateTime), NULL, CAST(0x0000A6130105CB55 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (94, 32, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CB5E AS DateTime), NULL, CAST(0x0000A6130105CB5E AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (95, 32, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CB5E AS DateTime), NULL, CAST(0x0000A6130105CB5E AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (96, 32, N'DM00000', 0, 12000, 360, 320, N'0个月以后', NULL, CAST(0x0000A6130105CB5E AS DateTime), NULL, CAST(0x0000A6130105CB5E AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (97, 33, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CB63 AS DateTime), NULL, CAST(0x0000A6130105CB63 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (98, 33, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CB63 AS DateTime), NULL, CAST(0x0000A6130105CB63 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (99, 33, N'DM00000', 0, 12000, 35.7, 33.5, N'0个月以后', NULL, CAST(0x0000A6130105CB63 AS DateTime), NULL, CAST(0x0000A6130105CB63 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (100, 34, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CB67 AS DateTime), NULL, CAST(0x0000A6130105CB67 AS DateTime), 0, N'')
GO
print 'Processed 100 total records'
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (101, 34, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CB67 AS DateTime), NULL, CAST(0x0000A6130105CB67 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (102, 34, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CB67 AS DateTime), NULL, CAST(0x0000A6130105CB67 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (103, 35, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CB6C AS DateTime), NULL, CAST(0x0000A6130105CB6C AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (104, 35, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CB6C AS DateTime), NULL, CAST(0x0000A6130105CB6C AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (105, 35, N'DM00000', 0, 12000, 12, 7, N'0个月以后', NULL, CAST(0x0000A6130105CB6C AS DateTime), NULL, CAST(0x0000A6130105CB6C AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (106, 36, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CB71 AS DateTime), NULL, CAST(0x0000A6130105CB71 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (107, 36, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CB71 AS DateTime), NULL, CAST(0x0000A6130105CB71 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (108, 36, N'DM00000', 0, 12000, 2.5, 0, N'0个月以后', NULL, CAST(0x0000A6130105CB71 AS DateTime), NULL, CAST(0x0000A6130105CB71 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (109, 37, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CB79 AS DateTime), NULL, CAST(0x0000A6130105CB79 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (110, 37, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CB79 AS DateTime), NULL, CAST(0x0000A6130105CB79 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (111, 37, N'DM00000', 0, 12000, 0.1, 0, N'0个月以后', NULL, CAST(0x0000A6130105CB79 AS DateTime), NULL, CAST(0x0000A6130105CB79 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (112, 38, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CB7F AS DateTime), NULL, CAST(0x0000A6130105CB7F AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (113, 38, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CB7F AS DateTime), NULL, CAST(0x0000A6130105CB7F AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (114, 38, N'DM00000', 0, 12000, 1.5, 0.5, N'0个月以后', NULL, CAST(0x0000A6130105CB7F AS DateTime), NULL, CAST(0x0000A6130105CB7F AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (115, 39, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CB85 AS DateTime), NULL, CAST(0x0000A6130105CB85 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (116, 39, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CB85 AS DateTime), NULL, CAST(0x0000A6130105CB85 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (117, 39, N'DM00000', 0, 12000, 1.23, 0.06, N'0个月以后', NULL, CAST(0x0000A6130105CB85 AS DateTime), NULL, CAST(0x0000A6130105CB85 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (118, 40, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CB8B AS DateTime), NULL, CAST(0x0000A6130105CB8B AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (119, 40, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CB8B AS DateTime), NULL, CAST(0x0000A6130105CB8B AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (120, 40, N'DM00000', 0, 12000, 1, 0, N'0个月以后', NULL, CAST(0x0000A6130105CB8B AS DateTime), NULL, CAST(0x0000A6130105CB8B AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (121, 41, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CB93 AS DateTime), NULL, CAST(0x0000A6130105CB93 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (122, 41, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CB93 AS DateTime), NULL, CAST(0x0000A6130105CB93 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (123, 41, N'DM00000', 0, 12000, 110, 10, N'0个月以后', NULL, CAST(0x0000A6130105CB93 AS DateTime), NULL, CAST(0x0000A6130105CB93 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (124, 42, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CB9B AS DateTime), NULL, CAST(0x0000A6130105CB9B AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (125, 42, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CB9B AS DateTime), NULL, CAST(0x0000A6130105CB9B AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (126, 42, N'DM00000', 0, 12000, 400, 200, N'0个月以后', NULL, CAST(0x0000A6130105CB9B AS DateTime), NULL, CAST(0x0000A6130105CB9B AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (127, 43, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CBA0 AS DateTime), NULL, CAST(0x0000A6130105CBA0 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (128, 43, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CBA0 AS DateTime), NULL, CAST(0x0000A6130105CBA0 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (129, 43, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CBA0 AS DateTime), NULL, CAST(0x0000A6130105CBA0 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (130, 44, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CBA4 AS DateTime), NULL, CAST(0x0000A6130105CBA4 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (131, 44, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CBA4 AS DateTime), NULL, CAST(0x0000A6130105CBA4 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (132, 44, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CBA4 AS DateTime), NULL, CAST(0x0000A6130105CBA4 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (133, 45, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CBA9 AS DateTime), NULL, CAST(0x0000A6130105CBA9 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (134, 45, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CBA9 AS DateTime), NULL, CAST(0x0000A6130105CBA9 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (135, 45, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CBAA AS DateTime), NULL, CAST(0x0000A6130105CBAA AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (136, 46, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CBAE AS DateTime), NULL, CAST(0x0000A6130105CBAE AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (137, 46, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CBAE AS DateTime), NULL, CAST(0x0000A6130105CBAE AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (138, 46, N'DM00000', 0, 12000, 18, 12, N'0个月以后', NULL, CAST(0x0000A6130105CBAE AS DateTime), NULL, CAST(0x0000A6130105CBAE AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (139, 47, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CBB3 AS DateTime), NULL, CAST(0x0000A6130105CBB3 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (140, 47, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CBB3 AS DateTime), NULL, CAST(0x0000A6130105CBB3 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (141, 47, N'DM00000', 0, 12000, 13.4, 9.9, N'0个月以后', NULL, CAST(0x0000A6130105CBB3 AS DateTime), NULL, CAST(0x0000A6130105CBB3 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (142, 48, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CBB8 AS DateTime), NULL, CAST(0x0000A6130105CBB8 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (143, 48, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CBB8 AS DateTime), NULL, CAST(0x0000A6130105CBB8 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (144, 48, N'DM00000', 0, 12000, 460, 117, N'0个月以后', NULL, CAST(0x0000A6130105CBB8 AS DateTime), NULL, CAST(0x0000A6130105CBB8 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (145, 49, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CBBF AS DateTime), NULL, CAST(0x0000A6130105CBBF AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (146, 49, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CBBF AS DateTime), NULL, CAST(0x0000A6130105CBBF AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (147, 49, N'DM00000', 0, 12000, 500, 175, N'0个月以后', NULL, CAST(0x0000A6130105CBBF AS DateTime), NULL, CAST(0x0000A6130105CBBF AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (148, 50, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CBC4 AS DateTime), NULL, CAST(0x0000A6130105CBC4 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (149, 50, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CBC4 AS DateTime), NULL, CAST(0x0000A6130105CBC4 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (150, 50, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CBC4 AS DateTime), NULL, CAST(0x0000A6130105CBC4 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (151, 51, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CBC8 AS DateTime), NULL, CAST(0x0000A6130105CBC8 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (152, 51, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CBC8 AS DateTime), NULL, CAST(0x0000A6130105CBC8 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (153, 51, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CBC8 AS DateTime), NULL, CAST(0x0000A6130105CBC8 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (154, 52, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CBCD AS DateTime), NULL, CAST(0x0000A6130105CBCD AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (155, 52, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CBCD AS DateTime), NULL, CAST(0x0000A6130105CBCD AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (156, 52, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CBCD AS DateTime), NULL, CAST(0x0000A6130105CBCD AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (157, 53, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CBD2 AS DateTime), NULL, CAST(0x0000A6130105CBD2 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (158, 53, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CBD2 AS DateTime), NULL, CAST(0x0000A6130105CBD2 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (159, 53, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CBD2 AS DateTime), NULL, CAST(0x0000A6130105CBD2 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (160, 54, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CBD7 AS DateTime), NULL, CAST(0x0000A6130105CBD7 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (161, 54, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CBD7 AS DateTime), NULL, CAST(0x0000A6130105CBD7 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (162, 54, N'DM00000', 0, 12000, 0.46, 0.14, N'0个月以后', NULL, CAST(0x0000A6130105CBD7 AS DateTime), NULL, CAST(0x0000A6130105CBD7 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (163, 55, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CBDC AS DateTime), NULL, CAST(0x0000A6130105CBDC AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (164, 55, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CBDC AS DateTime), NULL, CAST(0x0000A6130105CBDC AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (165, 55, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CBDC AS DateTime), NULL, CAST(0x0000A6130105CBDC AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (166, 56, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CBE0 AS DateTime), NULL, CAST(0x0000A6130105CBE0 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (167, 56, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CBE0 AS DateTime), NULL, CAST(0x0000A6130105CBE0 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (168, 56, N'DM00000', 0, 12000, 10.5, 2.8, N'0个月以后', NULL, CAST(0x0000A6130105CBE0 AS DateTime), NULL, CAST(0x0000A6130105CBE0 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (169, 57, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CBE5 AS DateTime), NULL, CAST(0x0000A6130105CBE5 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (170, 57, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CBE5 AS DateTime), NULL, CAST(0x0000A6130105CBE5 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (171, 57, N'DM00000', 0, 12000, 77, 60, N'0个月以后', NULL, CAST(0x0000A6130105CBE5 AS DateTime), NULL, CAST(0x0000A6130105CBE5 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (172, 58, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CBEA AS DateTime), NULL, CAST(0x0000A6130105CBEA AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (173, 58, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CBEA AS DateTime), NULL, CAST(0x0000A6130105CBEA AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (174, 58, N'DM00000', 0, 12000, 11.64, 2.95, N'0个月以后', NULL, CAST(0x0000A6130105CBEA AS DateTime), NULL, CAST(0x0000A6130105CBEA AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (175, 59, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CBEF AS DateTime), NULL, CAST(0x0000A6130105CBEF AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (176, 59, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CBEF AS DateTime), NULL, CAST(0x0000A6130105CBEF AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (177, 59, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CBEF AS DateTime), NULL, CAST(0x0000A6130105CBEF AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (178, 60, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CBF4 AS DateTime), NULL, CAST(0x0000A6130105CBF4 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (179, 60, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CBF4 AS DateTime), NULL, CAST(0x0000A6130105CBF4 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (180, 60, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CBF4 AS DateTime), NULL, CAST(0x0000A6130105CBF4 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (181, 61, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CBF8 AS DateTime), NULL, CAST(0x0000A6130105CBF8 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (182, 61, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CBF8 AS DateTime), NULL, CAST(0x0000A6130105CBF8 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (183, 61, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CBF8 AS DateTime), NULL, CAST(0x0000A6130105CBF8 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (184, 62, N'DM00017', 0, 12000, 19.5, 5.5, N'0个月以后', NULL, CAST(0x0000A6130105CBFD AS DateTime), NULL, CAST(0x0000A6130105CBFD AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (185, 62, N'DM00016', 0, 12000, 17, 6, N'0个月以后', NULL, CAST(0x0000A6130105CBFD AS DateTime), NULL, CAST(0x0000A6130105CBFD AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (186, 62, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CBFD AS DateTime), NULL, CAST(0x0000A6130105CBFD AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (187, 63, N'DM00017', 0, 12000, 85, 35, N'0个月以后', NULL, CAST(0x0000A6130105CC02 AS DateTime), NULL, CAST(0x0000A6130105CC02 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (188, 63, N'DM00016', 0, 12000, 83, 60, N'0个月以后', NULL, CAST(0x0000A6130105CC02 AS DateTime), NULL, CAST(0x0000A6130105CC02 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (189, 63, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CC02 AS DateTime), NULL, CAST(0x0000A6130105CC02 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (190, 64, N'DM00017', 0, 12000, 153, 93, N'0个月以后', NULL, CAST(0x0000A6130105CC06 AS DateTime), NULL, CAST(0x0000A6130105CC06 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (191, 64, N'DM00016', 0, 12000, 190, 110, N'0个月以后', NULL, CAST(0x0000A6130105CC06 AS DateTime), NULL, CAST(0x0000A6130105CC06 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (192, 64, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CC06 AS DateTime), NULL, CAST(0x0000A6130105CC06 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (193, 65, N'DM00017', 0, 12000, 52, 39, N'0个月以后', NULL, CAST(0x0000A6130105CC0B AS DateTime), NULL, CAST(0x0000A6130105CC0B AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (194, 65, N'DM00016', 0, 12000, 72, 62, N'0个月以后', NULL, CAST(0x0000A6130105CC0B AS DateTime), NULL, CAST(0x0000A6130105CC0B AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (195, 65, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CC0B AS DateTime), NULL, CAST(0x0000A6130105CC0B AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (196, 66, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CC0F AS DateTime), NULL, CAST(0x0000A6130105CC0F AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (197, 66, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CC0F AS DateTime), NULL, CAST(0x0000A6130105CC0F AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (198, 66, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CC0F AS DateTime), NULL, CAST(0x0000A6130105CC0F AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (199, 67, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CC14 AS DateTime), NULL, CAST(0x0000A6130105CC14 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (200, 67, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CC14 AS DateTime), NULL, CAST(0x0000A6130105CC14 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (201, 67, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CC14 AS DateTime), NULL, CAST(0x0000A6130105CC14 AS DateTime), 0, N'')
GO
print 'Processed 200 total records'
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (202, 68, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CC19 AS DateTime), NULL, CAST(0x0000A6130105CC19 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (203, 68, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CC19 AS DateTime), NULL, CAST(0x0000A6130105CC19 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (204, 68, N'DM00000', 0, 12000, 10, 2, N'0个月以后', NULL, CAST(0x0000A6130105CC19 AS DateTime), NULL, CAST(0x0000A6130105CC19 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (205, 69, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CC1D AS DateTime), NULL, CAST(0x0000A6130105CC1D AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (206, 69, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CC1D AS DateTime), NULL, CAST(0x0000A6130105CC1D AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (207, 69, N'DM00000', 0, 12000, 1.25, 0.1, N'0个月以后', NULL, CAST(0x0000A6130105CC1D AS DateTime), NULL, CAST(0x0000A6130105CC1D AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (208, 70, N'DM00017', 0, 12000, 7, 0.8, N'0个月以后', NULL, CAST(0x0000A6130105CC22 AS DateTime), NULL, CAST(0x0000A6130105CC22 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (209, 70, N'DM00016', 0, 12000, 5.1, 0.8, N'0个月以后', NULL, CAST(0x0000A6130105CC22 AS DateTime), NULL, CAST(0x0000A6130105CC22 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (210, 70, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CC22 AS DateTime), NULL, CAST(0x0000A6130105CC22 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (211, 71, N'DM00017', 0, 12000, 15, 2.1, N'0个月以后', NULL, CAST(0x0000A6130105CC26 AS DateTime), NULL, CAST(0x0000A6130105CC26 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (212, 71, N'DM00016', 0, 12000, 12.6, 4, N'0个月以后', NULL, CAST(0x0000A6130105CC26 AS DateTime), NULL, CAST(0x0000A6130105CC26 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (213, 71, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CC27 AS DateTime), NULL, CAST(0x0000A6130105CC27 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (214, 72, N'DM00017', 0, 12000, 21, 13, N'0个月以后', NULL, CAST(0x0000A6130105CC2B AS DateTime), NULL, CAST(0x0000A6130105CC2B AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (215, 72, N'DM00016', 0, 12000, 25, 20, N'0个月以后', NULL, CAST(0x0000A6130105CC2B AS DateTime), NULL, CAST(0x0000A6130105CC2B AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (216, 72, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CC2B AS DateTime), NULL, CAST(0x0000A6130105CC2B AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (217, 73, N'DM00017', 0, 12000, 514, 100, N'0个月以后', NULL, CAST(0x0000A6130105CC30 AS DateTime), NULL, CAST(0x0000A6130105CC30 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (218, 73, N'DM00016', 0, 12000, 460, 117, N'0个月以后', NULL, CAST(0x0000A6130105CC30 AS DateTime), NULL, CAST(0x0000A6130105CC30 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (219, 73, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CC30 AS DateTime), NULL, CAST(0x0000A6130105CC30 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (220, 74, N'DM00017', 0, 12000, 9, 2, N'0个月以后', NULL, CAST(0x0000A6130105CC35 AS DateTime), NULL, CAST(0x0000A6130105CC35 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (221, 74, N'DM00016', 0, 12000, 9, 2, N'0个月以后', NULL, CAST(0x0000A6130105CC35 AS DateTime), NULL, CAST(0x0000A6130105CC35 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (222, 74, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CC35 AS DateTime), NULL, CAST(0x0000A6130105CC35 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (223, 75, N'DM00017', 0, 12000, 10, 4.6, N'0个月以后', NULL, CAST(0x0000A6130105CC39 AS DateTime), NULL, CAST(0x0000A6130105CC39 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (224, 75, N'DM00016', 0, 12000, 8.5, 5.5, N'0个月以后', NULL, CAST(0x0000A6130105CC39 AS DateTime), NULL, CAST(0x0000A6130105CC39 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (225, 75, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CC39 AS DateTime), NULL, CAST(0x0000A6130105CC39 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (226, 76, N'DM00017', 0, 12000, 49, 28, N'0个月以后', NULL, CAST(0x0000A6130105CC3E AS DateTime), NULL, CAST(0x0000A6130105CC3E AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (227, 76, N'DM00016', 0, 12000, 56, 39, N'0个月以后', NULL, CAST(0x0000A6130105CC3E AS DateTime), NULL, CAST(0x0000A6130105CC3E AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (228, 76, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CC3E AS DateTime), NULL, CAST(0x0000A6130105CC3E AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (229, 77, N'DM00017', 0, 12000, 18, 14, N'0个月以后', NULL, CAST(0x0000A6130105CC42 AS DateTime), NULL, CAST(0x0000A6130105CC42 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (230, 77, N'DM00016', 0, 12000, 15.5, 11, N'0个月以后', NULL, CAST(0x0000A6130105CC42 AS DateTime), NULL, CAST(0x0000A6130105CC42 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (231, 77, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CC42 AS DateTime), NULL, CAST(0x0000A6130105CC42 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (232, 78, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CC79 AS DateTime), NULL, CAST(0x0000A6130105CC79 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (233, 78, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CC79 AS DateTime), NULL, CAST(0x0000A6130105CC79 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (234, 78, N'DM00000', 0, 12000, 200, 10, N'0个月以后', NULL, CAST(0x0000A6130105CC79 AS DateTime), NULL, CAST(0x0000A6130105CC79 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (235, 79, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CC7E AS DateTime), NULL, CAST(0x0000A6130105CC7E AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (236, 79, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CC7E AS DateTime), NULL, CAST(0x0000A6130105CC7E AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (237, 79, N'DM00000', 0, 12000, 50, 0, N'0个月以后', NULL, CAST(0x0000A6130105CC7E AS DateTime), NULL, CAST(0x0000A6130105CC7E AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (238, 80, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CC82 AS DateTime), NULL, CAST(0x0000A6130105CC82 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (239, 80, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CC82 AS DateTime), NULL, CAST(0x0000A6130105CC82 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (240, 80, N'DM00000', 0, 12000, 100, 10, N'0个月以后', NULL, CAST(0x0000A6130105CC82 AS DateTime), NULL, CAST(0x0000A6130105CC82 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (241, 81, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CC87 AS DateTime), NULL, CAST(0x0000A6130105CC87 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (242, 81, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CC87 AS DateTime), NULL, CAST(0x0000A6130105CC87 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (243, 81, N'DM00000', 0, 12000, 160, 144, N'0个月以后', NULL, CAST(0x0000A6130105CC87 AS DateTime), NULL, CAST(0x0000A6130105CC87 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (244, 82, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CC8C AS DateTime), NULL, CAST(0x0000A6130105CC8C AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (245, 82, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CC8C AS DateTime), NULL, CAST(0x0000A6130105CC8C AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (246, 82, N'DM00000', 0, 12000, 122, 109, N'0个月以后', NULL, CAST(0x0000A6130105CC8C AS DateTime), NULL, CAST(0x0000A6130105CC8C AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (247, 83, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CC91 AS DateTime), NULL, CAST(0x0000A6130105CC91 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (248, 83, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CC91 AS DateTime), NULL, CAST(0x0000A6130105CC91 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (249, 83, N'DM00000', 0, 12000, 2.5, 0.5, N'0个月以后', NULL, CAST(0x0000A6130105CC91 AS DateTime), NULL, CAST(0x0000A6130105CC91 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (250, 84, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CC96 AS DateTime), NULL, CAST(0x0000A6130105CC96 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (251, 84, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CC96 AS DateTime), NULL, CAST(0x0000A6130105CC96 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (252, 84, N'DM00000', 0, 12000, 212, 23, N'0个月以后', NULL, CAST(0x0000A6130105CC96 AS DateTime), NULL, CAST(0x0000A6130105CC96 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (253, 85, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CC9B AS DateTime), NULL, CAST(0x0000A6130105CC9B AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (254, 85, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CC9B AS DateTime), NULL, CAST(0x0000A6130105CC9B AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (255, 85, N'DM00000', 0, 12000, 7, 0, N'0个月以后', NULL, CAST(0x0000A6130105CC9B AS DateTime), NULL, CAST(0x0000A6130105CC9B AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (256, 86, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CC9F AS DateTime), NULL, CAST(0x0000A6130105CC9F AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (257, 86, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CC9F AS DateTime), NULL, CAST(0x0000A6130105CC9F AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (258, 86, N'DM00000', 0, 12000, 8.27, 2.84, N'0个月以后', NULL, CAST(0x0000A6130105CC9F AS DateTime), NULL, CAST(0x0000A6130105CC9F AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (259, 87, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CCA5 AS DateTime), NULL, CAST(0x0000A6130105CCA5 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (260, 87, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CCA5 AS DateTime), NULL, CAST(0x0000A6130105CCA5 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (261, 87, N'DM00000', 0, 12000, 400, 40, N'0个月以后', NULL, CAST(0x0000A6130105CCA5 AS DateTime), NULL, CAST(0x0000A6130105CCA5 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (262, 88, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CCA9 AS DateTime), NULL, CAST(0x0000A6130105CCA9 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (263, 88, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CCAA AS DateTime), NULL, CAST(0x0000A6130105CCAA AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (264, 88, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CCAA AS DateTime), NULL, CAST(0x0000A6130105CCAA AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (265, 89, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CCAE AS DateTime), NULL, CAST(0x0000A6130105CCAE AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (266, 89, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CCAE AS DateTime), NULL, CAST(0x0000A6130105CCAE AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (267, 89, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CCAE AS DateTime), NULL, CAST(0x0000A6130105CCAE AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (268, 90, N'DM00017', 0, 12000, 2.83, 1.95, N'0个月以后', NULL, CAST(0x0000A6130105CCB4 AS DateTime), NULL, CAST(0x0000A6130105CCB4 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (269, 90, N'DM00016', 0, 12000, 3, 1.98, N'0个月以后', NULL, CAST(0x0000A6130105CCB4 AS DateTime), NULL, CAST(0x0000A6130105CCB4 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (270, 90, N'DM00000', 0, 12000, 3, 1.98, N'0个月以后', NULL, CAST(0x0000A6130105CCB4 AS DateTime), NULL, CAST(0x0000A6130105CCB4 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (271, 91, N'DM00017', 0, 12000, 2.42, 1, N'0个月以后', NULL, CAST(0x0000A6130105CCB8 AS DateTime), NULL, CAST(0x0000A6130105CCB8 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (272, 91, N'DM00016', 0, 12000, 2.19, 0.81, N'0个月以后', NULL, CAST(0x0000A6130105CCB8 AS DateTime), NULL, CAST(0x0000A6130105CCB8 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (273, 91, N'DM00000', 0, 12000, 2.19, 0.81, N'0个月以后', NULL, CAST(0x0000A6130105CCB8 AS DateTime), NULL, CAST(0x0000A6130105CCB8 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (274, 92, N'DM00017', 0, 12000, 89, 57, N'0个月以后', NULL, CAST(0x0000A6130105CCBE AS DateTime), NULL, CAST(0x0000A6130105CCBE AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (275, 92, N'DM00016', 0, 12000, 82, 52, N'0个月以后', NULL, CAST(0x0000A6130105CCBE AS DateTime), NULL, CAST(0x0000A6130105CCBE AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (276, 92, N'DM00000', 0, 12000, 82, 52, N'0个月以后', NULL, CAST(0x0000A6130105CCBE AS DateTime), NULL, CAST(0x0000A6130105CCBE AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (277, 93, N'DM00017', 0, 12000, 111, 14, N'0个月以后', NULL, CAST(0x0000A6130105CCC2 AS DateTime), NULL, CAST(0x0000A6130105CCC2 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (278, 93, N'DM00016', 0, 12000, 212, 23, N'0个月以后', NULL, CAST(0x0000A6130105CCC2 AS DateTime), NULL, CAST(0x0000A6130105CCC2 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (279, 93, N'DM00000', 0, 12000, 212, 23, N'0个月以后', NULL, CAST(0x0000A6130105CCC2 AS DateTime), NULL, CAST(0x0000A6130105CCC2 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (280, 94, N'DM00017', 0, 12000, 5.81, 1.68, N'0个月以后', NULL, CAST(0x0000A6130105CCC7 AS DateTime), NULL, CAST(0x0000A6130105CCC7 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (281, 94, N'DM00016', 0, 12000, 8.27, 2.84, N'0个月以后', NULL, CAST(0x0000A6130105CCC7 AS DateTime), NULL, CAST(0x0000A6130105CCC7 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (282, 94, N'DM00000', 0, 12000, 8.27, 2.84, N'0个月以后', NULL, CAST(0x0000A6130105CCC7 AS DateTime), NULL, CAST(0x0000A6130105CCC7 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (283, 95, N'DM00017', 0, 12000, 15, 0, N'0个月以后', NULL, CAST(0x0000A6130105CCCC AS DateTime), NULL, CAST(0x0000A6130105CCCC AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (284, 95, N'DM00016', 0, 12000, 15, 0, N'0个月以后', NULL, CAST(0x0000A6130105CCCC AS DateTime), NULL, CAST(0x0000A6130105CCCC AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (285, 95, N'DM00000', 0, 12000, 15, 0, N'0个月以后', NULL, CAST(0x0000A6130105CCCC AS DateTime), NULL, CAST(0x0000A6130105CCCC AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (286, 96, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CCD0 AS DateTime), NULL, CAST(0x0000A6130105CCD0 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (287, 96, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CCD0 AS DateTime), NULL, CAST(0x0000A6130105CCD0 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (288, 96, N'DM00000', 0, 12000, 10.4, 5.1, N'0个月以后', NULL, CAST(0x0000A6130105CCD0 AS DateTime), NULL, CAST(0x0000A6130105CCD0 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (289, 97, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CCD6 AS DateTime), NULL, CAST(0x0000A6130105CCD6 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (290, 97, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CCD6 AS DateTime), NULL, CAST(0x0000A6130105CCD6 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (291, 97, N'DM00000', 0, 12000, 3.6, 2.1, N'0个月以后', NULL, CAST(0x0000A6130105CCD6 AS DateTime), NULL, CAST(0x0000A6130105CCD6 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (292, 98, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CCDD AS DateTime), NULL, CAST(0x0000A6130105CCDD AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (293, 98, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CCDD AS DateTime), NULL, CAST(0x0000A6130105CCDD AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (294, 98, N'DM00000', 0, 12000, 1.2, 0.3, N'0个月以后', NULL, CAST(0x0000A6130105CCDD AS DateTime), NULL, CAST(0x0000A6130105CCDD AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (295, 99, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CCE2 AS DateTime), NULL, CAST(0x0000A6130105CCE2 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (296, 99, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CCE2 AS DateTime), NULL, CAST(0x0000A6130105CCE2 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (297, 99, N'DM00000', 0, 12000, 7.2, 4.8, N'0个月以后', NULL, CAST(0x0000A6130105CCE2 AS DateTime), NULL, CAST(0x0000A6130105CCE2 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (298, 100, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CCE6 AS DateTime), NULL, CAST(0x0000A6130105CCE6 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (299, 100, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CCE6 AS DateTime), NULL, CAST(0x0000A6130105CCE6 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (300, 100, N'DM00000', 0, 12000, 45, 25, N'0个月以后', NULL, CAST(0x0000A6130105CCE6 AS DateTime), NULL, CAST(0x0000A6130105CCE6 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (301, 101, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CCEB AS DateTime), NULL, CAST(0x0000A6130105CCEB AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (302, 101, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CCEB AS DateTime), NULL, CAST(0x0000A6130105CCEB AS DateTime), 0, N'')
GO
print 'Processed 300 total records'
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (303, 101, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CCEB AS DateTime), NULL, CAST(0x0000A6130105CCEB AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (304, 102, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CCF0 AS DateTime), NULL, CAST(0x0000A6130105CCF0 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (305, 102, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CCF0 AS DateTime), NULL, CAST(0x0000A6130105CCF0 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (306, 102, N'DM00000', 0, 12000, 9.6, 2.5, N'0个月以后', NULL, CAST(0x0000A6130105CCF0 AS DateTime), NULL, CAST(0x0000A6130105CCF0 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (307, 103, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CCF8 AS DateTime), NULL, CAST(0x0000A6130105CCF8 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (308, 103, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CCF8 AS DateTime), NULL, CAST(0x0000A6130105CCF8 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (309, 103, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CCF8 AS DateTime), NULL, CAST(0x0000A6130105CCF8 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (310, 104, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CCFD AS DateTime), NULL, CAST(0x0000A6130105CCFD AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (311, 104, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CCFD AS DateTime), NULL, CAST(0x0000A6130105CCFD AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (312, 104, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CCFD AS DateTime), NULL, CAST(0x0000A6130105CCFD AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (313, 105, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CD02 AS DateTime), NULL, CAST(0x0000A6130105CD02 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (314, 105, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CD02 AS DateTime), NULL, CAST(0x0000A6130105CD02 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (315, 105, N'DM00000', 0, 12000, 1500, 100, N'0个月以后', NULL, CAST(0x0000A6130105CD02 AS DateTime), NULL, CAST(0x0000A6130105CD02 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (316, 106, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CD07 AS DateTime), NULL, CAST(0x0000A6130105CD07 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (317, 106, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CD07 AS DateTime), NULL, CAST(0x0000A6130105CD07 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (318, 106, N'DM00000', 0, 12000, 0.9, 0, N'0个月以后', NULL, CAST(0x0000A6130105CD07 AS DateTime), NULL, CAST(0x0000A6130105CD07 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (319, 107, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CD0A AS DateTime), NULL, CAST(0x0000A6130105CD0A AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (320, 107, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CD0A AS DateTime), NULL, CAST(0x0000A6130105CD0A AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (321, 107, N'DM00000', 0, 12000, 0.5, 0, N'0个月以后', NULL, CAST(0x0000A6130105CD0A AS DateTime), NULL, CAST(0x0000A6130105CD0A AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (322, 108, N'DM00017', 0, 12000, 130, 12, N'0个月以后', NULL, CAST(0x0000A6130105CD0F AS DateTime), NULL, CAST(0x0000A6130105CD0F AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (323, 108, N'DM00016', 0, 12000, 100, 10, N'0个月以后', NULL, CAST(0x0000A6130105CD0F AS DateTime), NULL, CAST(0x0000A6130105CD0F AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (324, 108, N'DM00000', 0, 12000, 100, 10, N'0个月以后', NULL, CAST(0x0000A6130105CD0F AS DateTime), NULL, CAST(0x0000A6130105CD0F AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (325, 109, N'DM00017', 0, 12000, 212, 71, N'0个月以后', NULL, CAST(0x0000A6130105CD14 AS DateTime), NULL, CAST(0x0000A6130105CD14 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (326, 109, N'DM00016', 0, 12000, 159, 44, N'0个月以后', NULL, CAST(0x0000A6130105CD14 AS DateTime), NULL, CAST(0x0000A6130105CD14 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (327, 109, N'DM00000', 0, 12000, 159, 44, N'0个月以后', NULL, CAST(0x0000A6130105CD14 AS DateTime), NULL, CAST(0x0000A6130105CD14 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (328, 110, N'DM00017', 0, 12000, 12.9, 5.7, N'0个月以后', NULL, CAST(0x0000A6130105CD19 AS DateTime), NULL, CAST(0x0000A6130105CD19 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (329, 110, N'DM00016', 0, 12000, 9.6, 2.5, N'0个月以后', NULL, CAST(0x0000A6130105CD19 AS DateTime), NULL, CAST(0x0000A6130105CD19 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (330, 110, N'DM00000', 0, 12000, 9.6, 2.5, N'0个月以后', NULL, CAST(0x0000A6130105CD19 AS DateTime), NULL, CAST(0x0000A6130105CD19 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (331, 111, N'DM00017', 0, 12000, 40, 22, N'0个月以后', NULL, CAST(0x0000A6130105CD1E AS DateTime), NULL, CAST(0x0000A6130105CD1E AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (332, 111, N'DM00016', 0, 12000, 40, 23, N'0个月以后', NULL, CAST(0x0000A6130105CD1E AS DateTime), NULL, CAST(0x0000A6130105CD1E AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (333, 111, N'DM00000', 0, 12000, 40, 23, N'0个月以后', NULL, CAST(0x0000A6130105CD1E AS DateTime), NULL, CAST(0x0000A6130105CD1E AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (334, 112, N'DM00017', 0, 12000, 1500, 500, N'0个月以后', NULL, CAST(0x0000A6130105CD23 AS DateTime), NULL, CAST(0x0000A6130105CD23 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (335, 112, N'DM00016', 0, 12000, 1500, 500, N'0个月以后', NULL, CAST(0x0000A6130105CD23 AS DateTime), NULL, CAST(0x0000A6130105CD23 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (336, 112, N'DM00000', 0, 12000, 1500, 500, N'0个月以后', NULL, CAST(0x0000A6130105CD23 AS DateTime), NULL, CAST(0x0000A6130105CD23 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (337, 113, N'DM00017', 0, 12000, 8.83, 4.11, N'0个月以后', NULL, CAST(0x0000A6130105CD28 AS DateTime), NULL, CAST(0x0000A6130105CD28 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (338, 113, N'DM00016', 0, 12000, 7.94, 4.11, N'0个月以后', NULL, CAST(0x0000A6130105CD28 AS DateTime), NULL, CAST(0x0000A6130105CD28 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (339, 113, N'DM00000', 0, 12000, 7.94, 4.11, N'0个月以后', NULL, CAST(0x0000A6130105CD28 AS DateTime), NULL, CAST(0x0000A6130105CD28 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (340, 114, N'DM00017', 0, 12000, 51, 28, N'0个月以后', NULL, CAST(0x0000A6130105CD2D AS DateTime), NULL, CAST(0x0000A6130105CD2D AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (341, 114, N'DM00016', 0, 12000, 45, 25, N'0个月以后', NULL, CAST(0x0000A6130105CD2D AS DateTime), NULL, CAST(0x0000A6130105CD2D AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (342, 114, N'DM00000', 0, 12000, 45, 25, N'0个月以后', NULL, CAST(0x0000A6130105CD2D AS DateTime), NULL, CAST(0x0000A6130105CD2D AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (343, 115, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CD62 AS DateTime), NULL, CAST(0x0000A6130105CD62 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (344, 115, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CD62 AS DateTime), NULL, CAST(0x0000A6130105CD62 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (345, 115, N'DM00000', 0, 12000, 17, 11, N'0个月以后', NULL, CAST(0x0000A6130105CD62 AS DateTime), NULL, CAST(0x0000A6130105CD62 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (346, 116, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CD67 AS DateTime), NULL, CAST(0x0000A6130105CD67 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (347, 116, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CD67 AS DateTime), NULL, CAST(0x0000A6130105CD67 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (348, 116, N'DM00000', 0, 12000, 14, 11, N'0个月以后', NULL, CAST(0x0000A6130105CD67 AS DateTime), NULL, CAST(0x0000A6130105CD67 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (349, 117, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CD6C AS DateTime), NULL, CAST(0x0000A6130105CD6C AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (350, 117, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CD6C AS DateTime), NULL, CAST(0x0000A6130105CD6C AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (351, 117, N'DM00000', 0, 12000, 93, 60, N'0个月以后', NULL, CAST(0x0000A6130105CD6C AS DateTime), NULL, CAST(0x0000A6130105CD6C AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (352, 118, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CD71 AS DateTime), NULL, CAST(0x0000A6130105CD71 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (353, 118, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CD71 AS DateTime), NULL, CAST(0x0000A6130105CD71 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (354, 118, N'DM00000', 0, 12000, 102, 72, N'0个月以后', NULL, CAST(0x0000A6130105CD71 AS DateTime), NULL, CAST(0x0000A6130105CD71 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (355, 119, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CD9B AS DateTime), NULL, CAST(0x0000A6130105CD9B AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (356, 119, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CD9B AS DateTime), NULL, CAST(0x0000A6130105CD9B AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (357, 119, N'DM00000', 0, 12000, 122, 106, N'0个月以后', NULL, CAST(0x0000A6130105CD9B AS DateTime), NULL, CAST(0x0000A6130105CD9B AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (358, 120, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CDA0 AS DateTime), NULL, CAST(0x0000A6130105CDA0 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (359, 120, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CDA0 AS DateTime), NULL, CAST(0x0000A6130105CDA0 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (360, 120, N'DM00000', 0, 12000, 5.8, 3.5, N'0个月以后', NULL, CAST(0x0000A6130105CDA0 AS DateTime), NULL, CAST(0x0000A6130105CDA0 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (361, 121, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CDA5 AS DateTime), NULL, CAST(0x0000A6130105CDA5 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (362, 121, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CDA5 AS DateTime), NULL, CAST(0x0000A6130105CDA5 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (363, 121, N'DM00000', 0, 12000, 1.5, 1.25, N'0个月以后', NULL, CAST(0x0000A6130105CDA5 AS DateTime), NULL, CAST(0x0000A6130105CDA5 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (364, 122, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CDAA AS DateTime), NULL, CAST(0x0000A6130105CDAA AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (365, 122, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CDAA AS DateTime), NULL, CAST(0x0000A6130105CDAA AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (366, 122, N'DM00000', 0, 12000, 3.15, 1.95, N'0个月以后', NULL, CAST(0x0000A6130105CDAA AS DateTime), NULL, CAST(0x0000A6130105CDAA AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (367, 123, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CDAF AS DateTime), NULL, CAST(0x0000A6130105CDAF AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (368, 123, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CDAF AS DateTime), NULL, CAST(0x0000A6130105CDAF AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (369, 123, N'DM00000', 0, 12000, 156, 142, N'0个月以后', NULL, CAST(0x0000A6130105CDAF AS DateTime), NULL, CAST(0x0000A6130105CDAF AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (370, 124, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CDB4 AS DateTime), NULL, CAST(0x0000A6130105CDB4 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (371, 124, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CDB4 AS DateTime), NULL, CAST(0x0000A6130105CDB4 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (372, 124, N'DM00000', 0, 12000, 1.5, 1.25, N'0个月以后', NULL, CAST(0x0000A6130105CDB4 AS DateTime), NULL, CAST(0x0000A6130105CDB4 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (373, 125, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CDB9 AS DateTime), NULL, CAST(0x0000A6130105CDB9 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (374, 125, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CDB9 AS DateTime), NULL, CAST(0x0000A6130105CDB9 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (375, 125, N'DM00000', 0, 12000, 7.45, 7.35, N'0个月以后', NULL, CAST(0x0000A6130105CDB9 AS DateTime), NULL, CAST(0x0000A6130105CDB9 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (376, 126, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CDF4 AS DateTime), NULL, CAST(0x0000A6130105CDF4 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (377, 126, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CDF5 AS DateTime), NULL, CAST(0x0000A6130105CDF5 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (378, 126, N'DM00000', 0, 12000, 44, 36, N'0个月以后', NULL, CAST(0x0000A6130105CDF5 AS DateTime), NULL, CAST(0x0000A6130105CDF5 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (379, 127, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CDFA AS DateTime), NULL, CAST(0x0000A6130105CDFA AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (380, 127, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CDFA AS DateTime), NULL, CAST(0x0000A6130105CDFA AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (381, 127, N'DM00000', 0, 12000, 1.5, 1.25, N'0个月以后', NULL, CAST(0x0000A6130105CDFA AS DateTime), NULL, CAST(0x0000A6130105CDFA AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (382, 128, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CDFE AS DateTime), NULL, CAST(0x0000A6130105CDFE AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (383, 128, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CDFE AS DateTime), NULL, CAST(0x0000A6130105CDFE AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (384, 128, N'DM00000', 0, 12000, 7.46, 7.34, N'0个月以后', NULL, CAST(0x0000A6130105CDFE AS DateTime), NULL, CAST(0x0000A6130105CDFE AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (385, 129, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CE03 AS DateTime), NULL, CAST(0x0000A6130105CE03 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (386, 129, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CE05 AS DateTime), NULL, CAST(0x0000A6130105CE05 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (387, 129, N'DM00000', 0, 12000, 122, 109, N'0个月以后', NULL, CAST(0x0000A6130105CE05 AS DateTime), NULL, CAST(0x0000A6130105CE05 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (388, 130, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CE08 AS DateTime), NULL, CAST(0x0000A6130105CE08 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (389, 130, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CE08 AS DateTime), NULL, CAST(0x0000A6130105CE08 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (390, 130, N'DM00000', 0, 12000, 25, 15, N'0个月以后', NULL, CAST(0x0000A6130105CE08 AS DateTime), NULL, CAST(0x0000A6130105CE08 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (391, 131, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CE0E AS DateTime), NULL, CAST(0x0000A6130105CE0E AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (392, 131, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CE0E AS DateTime), NULL, CAST(0x0000A6130105CE0E AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (393, 131, N'DM00000', 0, 12000, 100, 90, N'0个月以后', NULL, CAST(0x0000A6130105CE0E AS DateTime), NULL, CAST(0x0000A6130105CE0E AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (394, 132, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CE13 AS DateTime), NULL, CAST(0x0000A6130105CE13 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (395, 132, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CE13 AS DateTime), NULL, CAST(0x0000A6130105CE13 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (396, 132, N'DM00000', 0, 12000, 7.94, 4.11, N'0个月以后', NULL, CAST(0x0000A6130105CE13 AS DateTime), NULL, CAST(0x0000A6130105CE13 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (397, 133, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CE17 AS DateTime), NULL, CAST(0x0000A6130105CE17 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (398, 133, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CE17 AS DateTime), NULL, CAST(0x0000A6130105CE17 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (399, 133, N'DM00000', 0, 12000, 26, 24, N'0个月以后', NULL, CAST(0x0000A6130105CE17 AS DateTime), NULL, CAST(0x0000A6130105CE17 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (400, 134, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CE1C AS DateTime), NULL, CAST(0x0000A6130105CE1C AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (401, 134, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CE1C AS DateTime), NULL, CAST(0x0000A6130105CE1C AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (402, 134, N'DM00000', 0, 12000, 48, 24, N'0个月以后', NULL, CAST(0x0000A6130105CE1C AS DateTime), NULL, CAST(0x0000A6130105CE1C AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (403, 135, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CE24 AS DateTime), NULL, CAST(0x0000A6130105CE24 AS DateTime), 0, N'')
GO
print 'Processed 400 total records'
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (404, 135, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CE24 AS DateTime), NULL, CAST(0x0000A6130105CE24 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (405, 135, N'DM00000', 0, 12000, 31, 21, N'0个月以后', NULL, CAST(0x0000A6130105CE25 AS DateTime), NULL, CAST(0x0000A6130105CE25 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (406, 136, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CE29 AS DateTime), NULL, CAST(0x0000A6130105CE29 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (407, 136, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CE29 AS DateTime), NULL, CAST(0x0000A6130105CE29 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (408, 136, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CE29 AS DateTime), NULL, CAST(0x0000A6130105CE29 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (409, 137, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CE2D AS DateTime), NULL, CAST(0x0000A6130105CE2D AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (410, 137, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CE2D AS DateTime), NULL, CAST(0x0000A6130105CE2D AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (411, 137, N'DM00000', 0, 12000, 7.44, 7.36, N'0个月以后', NULL, CAST(0x0000A6130105CE2D AS DateTime), NULL, CAST(0x0000A6130105CE2D AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (412, 138, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CE30 AS DateTime), NULL, CAST(0x0000A6130105CE30 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (413, 138, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CE30 AS DateTime), NULL, CAST(0x0000A6130105CE30 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (414, 138, N'DM00000', 0, 12000, 7.42, 7.31, N'0个月以后', NULL, CAST(0x0000A6130105CE30 AS DateTime), NULL, CAST(0x0000A6130105CE30 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (415, 139, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CE35 AS DateTime), NULL, CAST(0x0000A6130105CE35 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (416, 139, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CE35 AS DateTime), NULL, CAST(0x0000A6130105CE35 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (417, 139, N'DM00000', 0, 12000, 160, 144, N'0个月以后', NULL, CAST(0x0000A6130105CE35 AS DateTime), NULL, CAST(0x0000A6130105CE35 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (418, 140, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CE3A AS DateTime), NULL, CAST(0x0000A6130105CE3A AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (419, 140, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CE3A AS DateTime), NULL, CAST(0x0000A6130105CE3A AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (420, 140, N'DM00000', 0, 12000, 1.5, 1.25, N'0个月以后', NULL, CAST(0x0000A6130105CE3A AS DateTime), NULL, CAST(0x0000A6130105CE3A AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (421, 141, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CE3F AS DateTime), NULL, CAST(0x0000A6130105CE3F AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (422, 141, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CE3F AS DateTime), NULL, CAST(0x0000A6130105CE3F AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (423, 141, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CE3F AS DateTime), NULL, CAST(0x0000A6130105CE3F AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (424, 142, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CE44 AS DateTime), NULL, CAST(0x0000A6130105CE44 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (425, 142, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CE44 AS DateTime), NULL, CAST(0x0000A6130105CE44 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (426, 142, N'DM00000', 0, 12000, 122, 109, N'0个月以后', NULL, CAST(0x0000A6130105CE44 AS DateTime), NULL, CAST(0x0000A6130105CE44 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (427, 143, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CE48 AS DateTime), NULL, CAST(0x0000A6130105CE48 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (428, 143, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CE49 AS DateTime), NULL, CAST(0x0000A6130105CE49 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (429, 143, N'DM00000', 0, 12000, 5.8, 3.5, N'0个月以后', NULL, CAST(0x0000A6130105CE49 AS DateTime), NULL, CAST(0x0000A6130105CE49 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (430, 144, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CE4E AS DateTime), NULL, CAST(0x0000A6130105CE4E AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (431, 144, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CE4E AS DateTime), NULL, CAST(0x0000A6130105CE4E AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (432, 144, N'DM00000', 0, 12000, 49, 32, N'0个月以后', NULL, CAST(0x0000A6130105CE4E AS DateTime), NULL, CAST(0x0000A6130105CE4E AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (433, 145, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CE54 AS DateTime), NULL, CAST(0x0000A6130105CE54 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (434, 145, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CE54 AS DateTime), NULL, CAST(0x0000A6130105CE54 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (435, 145, N'DM00000', 0, 12000, 100, 93, N'0个月以后', NULL, CAST(0x0000A6130105CE54 AS DateTime), NULL, CAST(0x0000A6130105CE54 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (436, 146, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CE58 AS DateTime), NULL, CAST(0x0000A6130105CE58 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (437, 146, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CE58 AS DateTime), NULL, CAST(0x0000A6130105CE58 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (438, 146, N'DM00000', 0, 12000, 29, 20, N'0个月以后', NULL, CAST(0x0000A6130105CE58 AS DateTime), NULL, CAST(0x0000A6130105CE58 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (439, 147, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CE85 AS DateTime), NULL, CAST(0x0000A6130105CE85 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (440, 147, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CE85 AS DateTime), NULL, CAST(0x0000A6130105CE85 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (441, 147, N'DM00000', 0, 12000, 2.9, 1.3, N'0个月以后', NULL, CAST(0x0000A6130105CE85 AS DateTime), NULL, CAST(0x0000A6130105CE85 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (442, 148, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CE8B AS DateTime), NULL, CAST(0x0000A6130105CE8B AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (443, 148, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CE8B AS DateTime), NULL, CAST(0x0000A6130105CE8B AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (444, 148, N'DM00000', 0, 12000, 10, 0.5, N'0个月以后', NULL, CAST(0x0000A6130105CE8B AS DateTime), NULL, CAST(0x0000A6130105CE8B AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (445, 149, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CE8F AS DateTime), NULL, CAST(0x0000A6130105CE8F AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (446, 149, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CE8F AS DateTime), NULL, CAST(0x0000A6130105CE8F AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (447, 149, N'DM00000', 0, 12000, 10, 0.5, N'0个月以后', NULL, CAST(0x0000A6130105CE8F AS DateTime), NULL, CAST(0x0000A6130105CE8F AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (448, 150, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CE94 AS DateTime), NULL, CAST(0x0000A6130105CE94 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (449, 150, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CE94 AS DateTime), NULL, CAST(0x0000A6130105CE94 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (450, 150, N'DM00000', 0, 12000, 10, 0.5, N'0个月以后', NULL, CAST(0x0000A6130105CE94 AS DateTime), NULL, CAST(0x0000A6130105CE94 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (451, 151, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CE98 AS DateTime), NULL, CAST(0x0000A6130105CE98 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (452, 151, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CE98 AS DateTime), NULL, CAST(0x0000A6130105CE98 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (453, 151, N'DM00000', 0, 12000, 10, 0.5, N'0个月以后', NULL, CAST(0x0000A6130105CE99 AS DateTime), NULL, CAST(0x0000A6130105CE99 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (454, 152, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CE9E AS DateTime), NULL, CAST(0x0000A6130105CE9E AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (455, 152, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CE9E AS DateTime), NULL, CAST(0x0000A6130105CE9E AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (456, 152, N'DM00000', 0, 12000, 10, 0.5, N'0个月以后', NULL, CAST(0x0000A6130105CE9E AS DateTime), NULL, CAST(0x0000A6130105CE9E AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (457, 153, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CEA3 AS DateTime), NULL, CAST(0x0000A6130105CEA3 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (458, 153, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CEA3 AS DateTime), NULL, CAST(0x0000A6130105CEA3 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (459, 153, N'DM00000', 0, 12000, 30, 5, N'0个月以后', NULL, CAST(0x0000A6130105CEA3 AS DateTime), NULL, CAST(0x0000A6130105CEA3 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (460, 154, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CEA6 AS DateTime), NULL, CAST(0x0000A6130105CEA6 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (461, 154, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CEA6 AS DateTime), NULL, CAST(0x0000A6130105CEA6 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (462, 154, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CEA6 AS DateTime), NULL, CAST(0x0000A6130105CEA6 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (463, 155, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CEA9 AS DateTime), NULL, CAST(0x0000A6130105CEA9 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (464, 155, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CEA9 AS DateTime), NULL, CAST(0x0000A6130105CEA9 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (465, 155, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CEA9 AS DateTime), NULL, CAST(0x0000A6130105CEA9 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (466, 156, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CEAC AS DateTime), NULL, CAST(0x0000A6130105CEAC AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (467, 156, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CEAC AS DateTime), NULL, CAST(0x0000A6130105CEAC AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (468, 156, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CEAC AS DateTime), NULL, CAST(0x0000A6130105CEAC AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (469, 157, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CEB1 AS DateTime), NULL, CAST(0x0000A6130105CEB1 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (470, 157, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CEB1 AS DateTime), NULL, CAST(0x0000A6130105CEB1 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (471, 157, N'DM00000', 0, 12000, 30, 5, N'0个月以后', NULL, CAST(0x0000A6130105CEB1 AS DateTime), NULL, CAST(0x0000A6130105CEB1 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (472, 158, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CEB6 AS DateTime), NULL, CAST(0x0000A6130105CEB6 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (473, 158, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CEB6 AS DateTime), NULL, CAST(0x0000A6130105CEB6 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (474, 158, N'DM00000', 0, 12000, 10, 0.5, N'0个月以后', NULL, CAST(0x0000A6130105CEB6 AS DateTime), NULL, CAST(0x0000A6130105CEB6 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (475, 159, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CEBB AS DateTime), NULL, CAST(0x0000A6130105CEBB AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (476, 159, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CEBB AS DateTime), NULL, CAST(0x0000A6130105CEBB AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (477, 159, N'DM00000', 0, 12000, 10, 0.5, N'0个月以后', NULL, CAST(0x0000A6130105CEBB AS DateTime), NULL, CAST(0x0000A6130105CEBB AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (478, 160, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CEC0 AS DateTime), NULL, CAST(0x0000A6130105CEC0 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (479, 160, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CEC0 AS DateTime), NULL, CAST(0x0000A6130105CEC0 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (480, 160, N'DM00000', 0, 12000, 10, 0.5, N'0个月以后', NULL, CAST(0x0000A6130105CEC0 AS DateTime), NULL, CAST(0x0000A6130105CEC0 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (481, 161, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CEC4 AS DateTime), NULL, CAST(0x0000A6130105CEC4 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (482, 161, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CEC4 AS DateTime), NULL, CAST(0x0000A6130105CEC4 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (483, 161, N'DM00000', 0, 12000, 4, 1, N'0个月以后', NULL, CAST(0x0000A6130105CEC4 AS DateTime), NULL, CAST(0x0000A6130105CEC4 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (484, 162, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CEC9 AS DateTime), NULL, CAST(0x0000A6130105CEC9 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (485, 162, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CEC9 AS DateTime), NULL, CAST(0x0000A6130105CEC9 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (486, 162, N'DM00000', 0, 12000, 10, 0.5, N'0个月以后', NULL, CAST(0x0000A6130105CEC9 AS DateTime), NULL, CAST(0x0000A6130105CEC9 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (487, 163, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CECE AS DateTime), NULL, CAST(0x0000A6130105CECE AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (488, 163, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CECE AS DateTime), NULL, CAST(0x0000A6130105CECE AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (489, 163, N'DM00000', 0, 12000, 10, 0.5, N'0个月以后', NULL, CAST(0x0000A6130105CECE AS DateTime), NULL, CAST(0x0000A6130105CECE AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (490, 164, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CED3 AS DateTime), NULL, CAST(0x0000A6130105CED3 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (491, 164, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CED3 AS DateTime), NULL, CAST(0x0000A6130105CED3 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (492, 164, N'DM00000', 0, 12000, 30, 5, N'0个月以后', NULL, CAST(0x0000A6130105CED3 AS DateTime), NULL, CAST(0x0000A6130105CED3 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (493, 165, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CED6 AS DateTime), NULL, CAST(0x0000A6130105CED6 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (494, 165, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CED6 AS DateTime), NULL, CAST(0x0000A6130105CED6 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (495, 165, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CED6 AS DateTime), NULL, CAST(0x0000A6130105CED6 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (496, 166, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CEDB AS DateTime), NULL, CAST(0x0000A6130105CEDB AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (497, 166, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CEDB AS DateTime), NULL, CAST(0x0000A6130105CEDB AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (498, 166, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CEDB AS DateTime), NULL, CAST(0x0000A6130105CEDB AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (499, 167, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CEE0 AS DateTime), NULL, CAST(0x0000A6130105CEE0 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (500, 167, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CEE0 AS DateTime), NULL, CAST(0x0000A6130105CEE0 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (501, 167, N'DM00000', 0, 12000, 30, 5, N'0个月以后', NULL, CAST(0x0000A6130105CEE0 AS DateTime), NULL, CAST(0x0000A6130105CEE0 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (502, 168, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CEE5 AS DateTime), NULL, CAST(0x0000A6130105CEE5 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (503, 168, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CEE5 AS DateTime), NULL, CAST(0x0000A6130105CEE5 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (504, 168, N'DM00000', 0, 12000, 10, 0.5, N'0个月以后', NULL, CAST(0x0000A6130105CEE5 AS DateTime), NULL, CAST(0x0000A6130105CEE5 AS DateTime), 0, N'')
GO
print 'Processed 500 total records'
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (505, 169, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CEEA AS DateTime), NULL, CAST(0x0000A6130105CEEA AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (506, 169, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CEEA AS DateTime), NULL, CAST(0x0000A6130105CEEA AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (507, 169, N'DM00000', 0, 12000, 10, 0.5, N'0个月以后', NULL, CAST(0x0000A6130105CEEA AS DateTime), NULL, CAST(0x0000A6130105CEEA AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (508, 170, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CEEE AS DateTime), NULL, CAST(0x0000A6130105CEEE AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (509, 170, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CEEF AS DateTime), NULL, CAST(0x0000A6130105CEEF AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (510, 170, N'DM00000', 0, 12000, 10, 0.5, N'0个月以后', NULL, CAST(0x0000A6130105CEEF AS DateTime), NULL, CAST(0x0000A6130105CEEF AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (511, 171, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CEF3 AS DateTime), NULL, CAST(0x0000A6130105CEF3 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (512, 171, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CEF3 AS DateTime), NULL, CAST(0x0000A6130105CEF3 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (513, 171, N'DM00000', 0, 12000, 10, 0.5, N'0个月以后', NULL, CAST(0x0000A6130105CEF4 AS DateTime), NULL, CAST(0x0000A6130105CEF4 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (514, 172, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CEF8 AS DateTime), NULL, CAST(0x0000A6130105CEF8 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (515, 172, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CEF8 AS DateTime), NULL, CAST(0x0000A6130105CEF8 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (516, 172, N'DM00000', 0, 12000, 30, 5, N'0个月以后', NULL, CAST(0x0000A6130105CEF8 AS DateTime), NULL, CAST(0x0000A6130105CEF8 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (517, 173, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CEFC AS DateTime), NULL, CAST(0x0000A6130105CEFC AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (518, 173, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CEFC AS DateTime), NULL, CAST(0x0000A6130105CEFC AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (519, 173, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CEFC AS DateTime), NULL, CAST(0x0000A6130105CEFC AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (520, 174, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF00 AS DateTime), NULL, CAST(0x0000A6130105CF00 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (521, 174, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF00 AS DateTime), NULL, CAST(0x0000A6130105CF00 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (522, 174, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF00 AS DateTime), NULL, CAST(0x0000A6130105CF00 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (523, 175, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF03 AS DateTime), NULL, CAST(0x0000A6130105CF03 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (524, 175, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF03 AS DateTime), NULL, CAST(0x0000A6130105CF03 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (525, 175, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF03 AS DateTime), NULL, CAST(0x0000A6130105CF03 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (526, 176, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF06 AS DateTime), NULL, CAST(0x0000A6130105CF06 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (527, 176, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF06 AS DateTime), NULL, CAST(0x0000A6130105CF06 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (528, 176, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF06 AS DateTime), NULL, CAST(0x0000A6130105CF06 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (529, 177, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF0B AS DateTime), NULL, CAST(0x0000A6130105CF0B AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (530, 177, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF0B AS DateTime), NULL, CAST(0x0000A6130105CF0B AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (531, 177, N'DM00000', 0, 12000, 30, 5, N'0个月以后', NULL, CAST(0x0000A6130105CF0B AS DateTime), NULL, CAST(0x0000A6130105CF0B AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (532, 178, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF10 AS DateTime), NULL, CAST(0x0000A6130105CF10 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (533, 178, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF10 AS DateTime), NULL, CAST(0x0000A6130105CF10 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (534, 178, N'DM00000', 0, 12000, 10, 0.5, N'0个月以后', NULL, CAST(0x0000A6130105CF10 AS DateTime), NULL, CAST(0x0000A6130105CF10 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (535, 179, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF15 AS DateTime), NULL, CAST(0x0000A6130105CF15 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (536, 179, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF15 AS DateTime), NULL, CAST(0x0000A6130105CF15 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (537, 179, N'DM00000', 0, 12000, 10, 0.5, N'0个月以后', NULL, CAST(0x0000A6130105CF15 AS DateTime), NULL, CAST(0x0000A6130105CF15 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (538, 180, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF1A AS DateTime), NULL, CAST(0x0000A6130105CF1A AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (539, 180, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF1A AS DateTime), NULL, CAST(0x0000A6130105CF1A AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (540, 180, N'DM00000', 0, 12000, 10, 0.5, N'0个月以后', NULL, CAST(0x0000A6130105CF1A AS DateTime), NULL, CAST(0x0000A6130105CF1A AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (541, 181, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF1F AS DateTime), NULL, CAST(0x0000A6130105CF1F AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (542, 181, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF1F AS DateTime), NULL, CAST(0x0000A6130105CF1F AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (543, 181, N'DM00000', 0, 12000, 10, 0.5, N'0个月以后', NULL, CAST(0x0000A6130105CF1F AS DateTime), NULL, CAST(0x0000A6130105CF1F AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (544, 182, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF24 AS DateTime), NULL, CAST(0x0000A6130105CF24 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (545, 182, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF24 AS DateTime), NULL, CAST(0x0000A6130105CF24 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (546, 182, N'DM00000', 0, 12000, 10, 0.5, N'0个月以后', NULL, CAST(0x0000A6130105CF24 AS DateTime), NULL, CAST(0x0000A6130105CF24 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (547, 183, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF27 AS DateTime), NULL, CAST(0x0000A6130105CF27 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (548, 183, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF27 AS DateTime), NULL, CAST(0x0000A6130105CF27 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (549, 183, N'DM00000', 0, 12000, 30, 5, N'0个月以后', NULL, CAST(0x0000A6130105CF27 AS DateTime), NULL, CAST(0x0000A6130105CF27 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (550, 184, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF2A AS DateTime), NULL, CAST(0x0000A6130105CF2A AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (551, 184, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF2A AS DateTime), NULL, CAST(0x0000A6130105CF2A AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (552, 184, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF2A AS DateTime), NULL, CAST(0x0000A6130105CF2A AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (553, 185, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF2E AS DateTime), NULL, CAST(0x0000A6130105CF2E AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (554, 185, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF2E AS DateTime), NULL, CAST(0x0000A6130105CF2E AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (555, 185, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF2E AS DateTime), NULL, CAST(0x0000A6130105CF2E AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (556, 186, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF31 AS DateTime), NULL, CAST(0x0000A6130105CF31 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (557, 186, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF31 AS DateTime), NULL, CAST(0x0000A6130105CF31 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (558, 186, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF31 AS DateTime), NULL, CAST(0x0000A6130105CF31 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (559, 187, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF5C AS DateTime), NULL, CAST(0x0000A6130105CF5C AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (560, 187, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF5C AS DateTime), NULL, CAST(0x0000A6130105CF5C AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (561, 187, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF5C AS DateTime), NULL, CAST(0x0000A6130105CF5C AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (562, 188, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF60 AS DateTime), NULL, CAST(0x0000A6130105CF60 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (563, 188, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF60 AS DateTime), NULL, CAST(0x0000A6130105CF60 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (564, 188, N'DM00000', 0, 12000, 7.5, 6, N'0个月以后', NULL, CAST(0x0000A6130105CF60 AS DateTime), NULL, CAST(0x0000A6130105CF60 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (565, 189, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF64 AS DateTime), NULL, CAST(0x0000A6130105CF64 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (566, 189, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF64 AS DateTime), NULL, CAST(0x0000A6130105CF64 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (567, 189, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF64 AS DateTime), NULL, CAST(0x0000A6130105CF64 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (568, 190, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF69 AS DateTime), NULL, CAST(0x0000A6130105CF69 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (569, 190, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF69 AS DateTime), NULL, CAST(0x0000A6130105CF69 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (570, 190, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF69 AS DateTime), NULL, CAST(0x0000A6130105CF69 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (571, 191, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF6C AS DateTime), NULL, CAST(0x0000A6130105CF6C AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (572, 191, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF6C AS DateTime), NULL, CAST(0x0000A6130105CF6C AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (573, 191, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF6C AS DateTime), NULL, CAST(0x0000A6130105CF6C AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (574, 192, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF70 AS DateTime), NULL, CAST(0x0000A6130105CF70 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (575, 192, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF70 AS DateTime), NULL, CAST(0x0000A6130105CF70 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (576, 192, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF70 AS DateTime), NULL, CAST(0x0000A6130105CF70 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (577, 193, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF74 AS DateTime), NULL, CAST(0x0000A6130105CF74 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (578, 193, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF74 AS DateTime), NULL, CAST(0x0000A6130105CF74 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (579, 193, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF74 AS DateTime), NULL, CAST(0x0000A6130105CF74 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (580, 194, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF77 AS DateTime), NULL, CAST(0x0000A6130105CF77 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (581, 194, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF77 AS DateTime), NULL, CAST(0x0000A6130105CF77 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (582, 194, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF78 AS DateTime), NULL, CAST(0x0000A6130105CF78 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (583, 195, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF7B AS DateTime), NULL, CAST(0x0000A6130105CF7B AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (584, 195, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF7B AS DateTime), NULL, CAST(0x0000A6130105CF7B AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (585, 195, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF7B AS DateTime), NULL, CAST(0x0000A6130105CF7B AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (586, 196, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF7E AS DateTime), NULL, CAST(0x0000A6130105CF7E AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (587, 196, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF7E AS DateTime), NULL, CAST(0x0000A6130105CF7E AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (588, 196, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF7E AS DateTime), NULL, CAST(0x0000A6130105CF7E AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (589, 197, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF82 AS DateTime), NULL, CAST(0x0000A6130105CF82 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (590, 197, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF82 AS DateTime), NULL, CAST(0x0000A6130105CF82 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (591, 197, N'DM00000', 0, 12000, 1.03, 1.001, N'0个月以后', NULL, CAST(0x0000A6130105CF82 AS DateTime), NULL, CAST(0x0000A6130105CF82 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (592, 198, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF89 AS DateTime), NULL, CAST(0x0000A6130105CF89 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (593, 198, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF89 AS DateTime), NULL, CAST(0x0000A6130105CF89 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (594, 198, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF89 AS DateTime), NULL, CAST(0x0000A6130105CF89 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (595, 199, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF8F AS DateTime), NULL, CAST(0x0000A6130105CF8F AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (596, 199, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF8F AS DateTime), NULL, CAST(0x0000A6130105CF8F AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (597, 199, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF8F AS DateTime), NULL, CAST(0x0000A6130105CF8F AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (598, 200, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF93 AS DateTime), NULL, CAST(0x0000A6130105CF93 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (599, 200, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF93 AS DateTime), NULL, CAST(0x0000A6130105CF93 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (600, 200, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF93 AS DateTime), NULL, CAST(0x0000A6130105CF93 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (601, 201, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF9B AS DateTime), NULL, CAST(0x0000A6130105CF9B AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (602, 201, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF9B AS DateTime), NULL, CAST(0x0000A6130105CF9B AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (603, 201, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF9B AS DateTime), NULL, CAST(0x0000A6130105CF9B AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (604, 202, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF9E AS DateTime), NULL, CAST(0x0000A6130105CF9E AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (605, 202, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF9E AS DateTime), NULL, CAST(0x0000A6130105CF9E AS DateTime), 0, N'')
GO
print 'Processed 600 total records'
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (606, 202, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CF9E AS DateTime), NULL, CAST(0x0000A6130105CF9E AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (607, 203, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CFA1 AS DateTime), NULL, CAST(0x0000A6130105CFA1 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (608, 203, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CFA1 AS DateTime), NULL, CAST(0x0000A6130105CFA1 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (609, 203, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CFA2 AS DateTime), NULL, CAST(0x0000A6130105CFA2 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (610, 204, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CFA5 AS DateTime), NULL, CAST(0x0000A6130105CFA5 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (611, 204, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CFA5 AS DateTime), NULL, CAST(0x0000A6130105CFA5 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (612, 204, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CFA6 AS DateTime), NULL, CAST(0x0000A6130105CFA6 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (613, 205, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CFA9 AS DateTime), NULL, CAST(0x0000A6130105CFA9 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (614, 205, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CFA9 AS DateTime), NULL, CAST(0x0000A6130105CFA9 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (615, 205, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CFA9 AS DateTime), NULL, CAST(0x0000A6130105CFA9 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (616, 206, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CFAC AS DateTime), NULL, CAST(0x0000A6130105CFAC AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (617, 206, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CFAC AS DateTime), NULL, CAST(0x0000A6130105CFAC AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (618, 206, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CFAC AS DateTime), NULL, CAST(0x0000A6130105CFAC AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (619, 207, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CFB0 AS DateTime), NULL, CAST(0x0000A6130105CFB0 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (620, 207, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CFB0 AS DateTime), NULL, CAST(0x0000A6130105CFB0 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (621, 207, N'DM00000', 0, 12000, 7.45, 7.2, N'0个月以后', NULL, CAST(0x0000A6130105CFB0 AS DateTime), NULL, CAST(0x0000A6130105CFB0 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (622, 208, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CFB3 AS DateTime), NULL, CAST(0x0000A6130105CFB3 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (623, 208, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CFB4 AS DateTime), NULL, CAST(0x0000A6130105CFB4 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (624, 208, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CFB4 AS DateTime), NULL, CAST(0x0000A6130105CFB4 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (625, 209, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CFDB AS DateTime), NULL, CAST(0x0000A6130105CFDB AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (626, 209, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CFDB AS DateTime), NULL, CAST(0x0000A6130105CFDB AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (627, 209, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CFDB AS DateTime), NULL, CAST(0x0000A6130105CFDB AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (628, 210, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CFDF AS DateTime), NULL, CAST(0x0000A6130105CFDF AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (629, 210, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CFDF AS DateTime), NULL, CAST(0x0000A6130105CFDF AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (630, 210, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CFDF AS DateTime), NULL, CAST(0x0000A6130105CFDF AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (631, 211, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CFE3 AS DateTime), NULL, CAST(0x0000A6130105CFE3 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (632, 211, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CFE3 AS DateTime), NULL, CAST(0x0000A6130105CFE3 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (633, 211, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CFE3 AS DateTime), NULL, CAST(0x0000A6130105CFE3 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (634, 212, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CFE6 AS DateTime), NULL, CAST(0x0000A6130105CFE6 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (635, 212, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CFE6 AS DateTime), NULL, CAST(0x0000A6130105CFE6 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (636, 212, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CFE6 AS DateTime), NULL, CAST(0x0000A6130105CFE6 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (637, 213, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CFE9 AS DateTime), NULL, CAST(0x0000A6130105CFE9 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (638, 213, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CFEA AS DateTime), NULL, CAST(0x0000A6130105CFEA AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (639, 213, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CFEA AS DateTime), NULL, CAST(0x0000A6130105CFEA AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (640, 214, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CFED AS DateTime), NULL, CAST(0x0000A6130105CFED AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (641, 214, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CFED AS DateTime), NULL, CAST(0x0000A6130105CFED AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (642, 214, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CFED AS DateTime), NULL, CAST(0x0000A6130105CFED AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (643, 215, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CFF1 AS DateTime), NULL, CAST(0x0000A6130105CFF1 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (644, 215, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CFF1 AS DateTime), NULL, CAST(0x0000A6130105CFF1 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (645, 215, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CFF1 AS DateTime), NULL, CAST(0x0000A6130105CFF1 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (646, 216, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CFF4 AS DateTime), NULL, CAST(0x0000A6130105CFF4 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (647, 216, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CFF4 AS DateTime), NULL, CAST(0x0000A6130105CFF4 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (648, 216, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CFF4 AS DateTime), NULL, CAST(0x0000A6130105CFF4 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (649, 217, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CFF8 AS DateTime), NULL, CAST(0x0000A6130105CFF8 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (650, 217, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CFF8 AS DateTime), NULL, CAST(0x0000A6130105CFF8 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (651, 217, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105CFF8 AS DateTime), NULL, CAST(0x0000A6130105CFF8 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (652, 218, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D04E AS DateTime), NULL, CAST(0x0000A6130105D04E AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (653, 218, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D04E AS DateTime), NULL, CAST(0x0000A6130105D04E AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (654, 218, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D04E AS DateTime), NULL, CAST(0x0000A6130105D04E AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (655, 219, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D052 AS DateTime), NULL, CAST(0x0000A6130105D052 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (656, 219, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D052 AS DateTime), NULL, CAST(0x0000A6130105D052 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (657, 219, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D052 AS DateTime), NULL, CAST(0x0000A6130105D052 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (658, 220, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D055 AS DateTime), NULL, CAST(0x0000A6130105D055 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (659, 220, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D055 AS DateTime), NULL, CAST(0x0000A6130105D055 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (660, 220, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D055 AS DateTime), NULL, CAST(0x0000A6130105D055 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (661, 221, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D059 AS DateTime), NULL, CAST(0x0000A6130105D059 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (662, 221, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D059 AS DateTime), NULL, CAST(0x0000A6130105D059 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (663, 221, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D059 AS DateTime), NULL, CAST(0x0000A6130105D059 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (664, 222, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D05C AS DateTime), NULL, CAST(0x0000A6130105D05C AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (665, 222, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D05C AS DateTime), NULL, CAST(0x0000A6130105D05C AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (666, 222, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D05C AS DateTime), NULL, CAST(0x0000A6130105D05C AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (667, 223, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D05F AS DateTime), NULL, CAST(0x0000A6130105D05F AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (668, 223, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D05F AS DateTime), NULL, CAST(0x0000A6130105D05F AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (669, 223, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D05F AS DateTime), NULL, CAST(0x0000A6130105D05F AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (670, 224, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D063 AS DateTime), NULL, CAST(0x0000A6130105D063 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (671, 224, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D063 AS DateTime), NULL, CAST(0x0000A6130105D063 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (672, 224, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D063 AS DateTime), NULL, CAST(0x0000A6130105D063 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (673, 225, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D066 AS DateTime), NULL, CAST(0x0000A6130105D066 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (674, 225, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D066 AS DateTime), NULL, CAST(0x0000A6130105D066 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (675, 225, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D066 AS DateTime), NULL, CAST(0x0000A6130105D066 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (676, 226, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D06A AS DateTime), NULL, CAST(0x0000A6130105D06A AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (677, 226, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D06A AS DateTime), NULL, CAST(0x0000A6130105D06A AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (678, 226, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D06A AS DateTime), NULL, CAST(0x0000A6130105D06A AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (679, 227, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D06E AS DateTime), NULL, CAST(0x0000A6130105D06E AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (680, 227, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D06E AS DateTime), NULL, CAST(0x0000A6130105D06E AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (681, 227, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D06E AS DateTime), NULL, CAST(0x0000A6130105D06E AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (682, 228, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D071 AS DateTime), NULL, CAST(0x0000A6130105D071 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (683, 228, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D071 AS DateTime), NULL, CAST(0x0000A6130105D071 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (684, 228, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D071 AS DateTime), NULL, CAST(0x0000A6130105D071 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (685, 229, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D075 AS DateTime), NULL, CAST(0x0000A6130105D075 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (686, 229, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D075 AS DateTime), NULL, CAST(0x0000A6130105D075 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (687, 229, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D075 AS DateTime), NULL, CAST(0x0000A6130105D075 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (688, 230, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D078 AS DateTime), NULL, CAST(0x0000A6130105D078 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (689, 230, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D078 AS DateTime), NULL, CAST(0x0000A6130105D078 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (690, 230, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D078 AS DateTime), NULL, CAST(0x0000A6130105D078 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (691, 231, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D0B7 AS DateTime), NULL, CAST(0x0000A6130105D0B7 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (692, 231, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D0B8 AS DateTime), NULL, CAST(0x0000A6130105D0B8 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (693, 231, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D0B8 AS DateTime), NULL, CAST(0x0000A6130105D0B8 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (694, 232, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D0BD AS DateTime), NULL, CAST(0x0000A6130105D0BD AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (695, 232, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D0BD AS DateTime), NULL, CAST(0x0000A6130105D0BD AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (696, 232, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D0BE AS DateTime), NULL, CAST(0x0000A6130105D0BE AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (697, 233, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D0C3 AS DateTime), NULL, CAST(0x0000A6130105D0C3 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (698, 233, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D0C3 AS DateTime), NULL, CAST(0x0000A6130105D0C3 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (699, 233, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D0C3 AS DateTime), NULL, CAST(0x0000A6130105D0C3 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (700, 234, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D0C8 AS DateTime), NULL, CAST(0x0000A6130105D0C8 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (701, 234, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D0C8 AS DateTime), NULL, CAST(0x0000A6130105D0C8 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (702, 234, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D0C8 AS DateTime), NULL, CAST(0x0000A6130105D0C8 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (703, 235, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D0CD AS DateTime), NULL, CAST(0x0000A6130105D0CD AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (704, 235, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D0CD AS DateTime), NULL, CAST(0x0000A6130105D0CD AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (705, 235, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D0CD AS DateTime), NULL, CAST(0x0000A6130105D0CD AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (706, 236, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D0D1 AS DateTime), NULL, CAST(0x0000A6130105D0D1 AS DateTime), 0, N'')
GO
print 'Processed 700 total records'
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (707, 236, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D0D1 AS DateTime), NULL, CAST(0x0000A6130105D0D1 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (708, 236, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D0D1 AS DateTime), NULL, CAST(0x0000A6130105D0D1 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (709, 237, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D0D4 AS DateTime), NULL, CAST(0x0000A6130105D0D4 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (710, 237, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D0D4 AS DateTime), NULL, CAST(0x0000A6130105D0D4 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (711, 237, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D0D4 AS DateTime), NULL, CAST(0x0000A6130105D0D4 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (712, 238, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D0D8 AS DateTime), NULL, CAST(0x0000A6130105D0D8 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (713, 238, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D0D8 AS DateTime), NULL, CAST(0x0000A6130105D0D8 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (714, 238, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D0D8 AS DateTime), NULL, CAST(0x0000A6130105D0D8 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (715, 239, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D0DB AS DateTime), NULL, CAST(0x0000A6130105D0DB AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (716, 239, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D0DB AS DateTime), NULL, CAST(0x0000A6130105D0DB AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (717, 239, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D0DB AS DateTime), NULL, CAST(0x0000A6130105D0DB AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (718, 240, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D0DF AS DateTime), NULL, CAST(0x0000A6130105D0DF AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (719, 240, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D0DF AS DateTime), NULL, CAST(0x0000A6130105D0DF AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (720, 240, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D0DF AS DateTime), NULL, CAST(0x0000A6130105D0DF AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (721, 241, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D0E2 AS DateTime), NULL, CAST(0x0000A6130105D0E2 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (722, 241, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D0E2 AS DateTime), NULL, CAST(0x0000A6130105D0E2 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (723, 241, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D0E2 AS DateTime), NULL, CAST(0x0000A6130105D0E2 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (724, 242, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D0E5 AS DateTime), NULL, CAST(0x0000A6130105D0E5 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (725, 242, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D0E5 AS DateTime), NULL, CAST(0x0000A6130105D0E5 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (726, 242, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D0E6 AS DateTime), NULL, CAST(0x0000A6130105D0E6 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (727, 243, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D0E9 AS DateTime), NULL, CAST(0x0000A6130105D0E9 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (728, 243, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D0E9 AS DateTime), NULL, CAST(0x0000A6130105D0E9 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (729, 243, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D0E9 AS DateTime), NULL, CAST(0x0000A6130105D0E9 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (730, 244, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D11B AS DateTime), NULL, CAST(0x0000A6130105D11B AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (731, 244, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D11B AS DateTime), NULL, CAST(0x0000A6130105D11B AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (732, 244, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D11B AS DateTime), NULL, CAST(0x0000A6130105D11B AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (733, 245, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D11F AS DateTime), NULL, CAST(0x0000A6130105D11F AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (734, 245, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D11F AS DateTime), NULL, CAST(0x0000A6130105D11F AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (735, 245, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D11F AS DateTime), NULL, CAST(0x0000A6130105D11F AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (736, 246, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D122 AS DateTime), NULL, CAST(0x0000A6130105D122 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (737, 246, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D122 AS DateTime), NULL, CAST(0x0000A6130105D122 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (738, 246, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D122 AS DateTime), NULL, CAST(0x0000A6130105D122 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (739, 247, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D125 AS DateTime), NULL, CAST(0x0000A6130105D125 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (740, 247, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D125 AS DateTime), NULL, CAST(0x0000A6130105D125 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (741, 247, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D125 AS DateTime), NULL, CAST(0x0000A6130105D125 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (742, 248, N'DM00017', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D129 AS DateTime), NULL, CAST(0x0000A6130105D129 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (743, 248, N'DM00016', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D129 AS DateTime), NULL, CAST(0x0000A6130105D129 AS DateTime), 0, N'')
INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] ([ID], [CheTestTypdID], [PetRaceName], [PetAgeMothFrom], [PetAgeMothTo], [ReferenceValueUp], [ReferenceValueDonw], [PetAgeWord], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [Result]) VALUES (744, 248, N'DM00000', 0, 12000, 0, 0, N'0个月以后', NULL, CAST(0x0000A6130105D129 AS DateTime), NULL, CAST(0x0000A6130105D129 AS DateTime), 0, N'')
SET IDENTITY_INSERT [dbo].[B_Medic_ChemicalExamTypeDetail] OFF
/****** Object:  Table [dbo].[B_Medic_ChemicalExamType]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[B_Medic_ChemicalExamType](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ItemCode] [varchar](50) NULL,
	[ItemName] [varchar](50) NULL,
	[CheTestName] [varchar](50) NULL,
	[CheTestUnit] [varchar](50) NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
	[IndexType] [varchar](50) NOT NULL,
	[CateNo] [varchar](50) NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[B_Medic_ChemicalExamType] ON
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (1, NULL, NULL, N'EOS%嗜酸细胞百分比', N'DM00024', NULL, CAST(0x0000A6130105CAAF AS DateTime), NULL, CAST(0x0000A6130105CAAF AS DateTime), 0, N'NUM', N'C0001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (2, NULL, NULL, N'LYMPH%淋巴细胞百分比', N'DM00024', NULL, CAST(0x0000A6130105CAB5 AS DateTime), NULL, CAST(0x0000A6130105CAB5 AS DateTime), 0, N'NUM', N'C0001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (3, NULL, NULL, N'MCHC平均红细胞血红蛋白浓度', N'DM00026', NULL, CAST(0x0000A6130105CABA AS DateTime), NULL, CAST(0x0000A6130105CABA AS DateTime), 0, N'NUM', N'C0001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (4, NULL, NULL, N'MON#单核细胞数目', N'DM00078', NULL, CAST(0x0000A6130105CAC4 AS DateTime), NULL, CAST(0x0000A6130105CAC4 AS DateTime), 0, N'NUM', N'C0001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (5, NULL, NULL, N'MPV平均血小板体积', N'DM00040', NULL, CAST(0x0000A6130105CAC9 AS DateTime), NULL, CAST(0x0000A6130105CAC9 AS DateTime), 0, N'NUM', N'C0001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (6, NULL, NULL, N'THT', N'', NULL, CAST(0x0000A6130105CACD AS DateTime), NULL, CAST(0x0000A6130105CACD AS DateTime), 0, N'NUM', N'C0001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (7, NULL, NULL, N'白细胞（WBC）', N'DM00078', NULL, CAST(0x0000A6130105CAD4 AS DateTime), NULL, CAST(0x0000A6130105CAD4 AS DateTime), 0, N'NUM', N'C0001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (8, NULL, NULL, N'白细胞-嗜酸粒细胞比率（%）', N'DM00024', NULL, CAST(0x0000A6130105CADA AS DateTime), NULL, CAST(0x0000A6130105CADA AS DateTime), 0, N'NUM', N'C0001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (9, NULL, NULL, N'白细胞-中间细胞比率（%）', N'DM00024', NULL, CAST(0x0000A6130105CADF AS DateTime), NULL, CAST(0x0000A6130105CADF AS DateTime), 0, N'NUM', N'C0001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (10, NULL, NULL, N'白细胞-中间细胞数量（#）', N'DM00079', NULL, CAST(0x0000A6130105CAE9 AS DateTime), NULL, CAST(0x0000A6130105CAE9 AS DateTime), 0, N'NUM', N'C0001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (11, NULL, NULL, N'大型红细胞比率(%)[Macro-RBC(%)]', N'DM00024', NULL, CAST(0x0000A6130105CAEF AS DateTime), NULL, CAST(0x0000A6130105CAEF AS DateTime), 0, N'NUM', N'C0001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (12, NULL, NULL, N'大型红细胞数量(#)[Macro-RBC(#)]', N'DM00080', NULL, CAST(0x0000A6130105CAF7 AS DateTime), NULL, CAST(0x0000A6130105CAF7 AS DateTime), 0, N'NUM', N'C0001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (13, NULL, NULL, N'大型血小板比率', N'DM00040', NULL, CAST(0x0000A6130105CAFB AS DateTime), NULL, CAST(0x0000A6130105CAFB AS DateTime), 0, N'NUM', N'C0001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (14, NULL, NULL, N'大型血小板数量(#)[Macro-Platelet(#)]', N'DM00079', NULL, CAST(0x0000A6130105CB01 AS DateTime), NULL, CAST(0x0000A6130105CB01 AS DateTime), 0, N'NUM', N'C0001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (15, NULL, NULL, N'单核细胞百分比（%MONO）', N'DM00024', NULL, CAST(0x0000A6130105CB06 AS DateTime), NULL, CAST(0x0000A6130105CB06 AS DateTime), 0, N'NUM', N'C0001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (16, NULL, NULL, N'单核细胞计数（MONO）', N'DM00078', NULL, CAST(0x0000A6130105CB0B AS DateTime), NULL, CAST(0x0000A6130105CB0B AS DateTime), 0, N'NUM', N'C0001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (17, NULL, NULL, N'非颗粒细胞（L/M）', N'DM00078', NULL, CAST(0x0000A6130105CB10 AS DateTime), NULL, CAST(0x0000A6130105CB10 AS DateTime), 0, N'NUM', N'C0001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (18, NULL, NULL, N'非颗粒细胞比（L/M%）', N'DM00078', NULL, CAST(0x0000A6130105CB14 AS DateTime), NULL, CAST(0x0000A6130105CB14 AS DateTime), 0, N'NUM', N'C0001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (19, NULL, NULL, N'红细胞（RBC）', N'DM00081', NULL, CAST(0x0000A6130105CB1D AS DateTime), NULL, CAST(0x0000A6130105CB1D AS DateTime), 0, N'NUM', N'C0001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (20, NULL, NULL, N'红细胞分布宽度(RDW)', N'DM00024', NULL, CAST(0x0000A6130105CB21 AS DateTime), NULL, CAST(0x0000A6130105CB21 AS DateTime), 0, N'NUM', N'C0001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (21, NULL, NULL, N'红细胞分布宽度-标准差', N'DM00040', NULL, CAST(0x0000A6130105CB26 AS DateTime), NULL, CAST(0x0000A6130105CB26 AS DateTime), 0, N'NUM', N'C0001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (22, NULL, NULL, N'红细胞计数[RBC]', N'DM00081', NULL, CAST(0x0000A6130105CB2A AS DateTime), NULL, CAST(0x0000A6130105CB2A AS DateTime), 0, N'NUM', N'C0001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (23, NULL, NULL, N'红细胞平均体积[MCV]', N'DM00040', NULL, CAST(0x0000A6130105CB2F AS DateTime), NULL, CAST(0x0000A6130105CB2F AS DateTime), 0, N'NUM', N'C0001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (24, NULL, NULL, N'红细胞压积(HCT)', N'DM00024', NULL, CAST(0x0000A6130105CB34 AS DateTime), NULL, CAST(0x0000A6130105CB34 AS DateTime), 0, N'NUM', N'C0001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (25, NULL, NULL, N'颗粒细胞（GRANS）', N'DM00078', NULL, CAST(0x0000A6130105CB39 AS DateTime), NULL, CAST(0x0000A6130105CB39 AS DateTime), 0, N'NUM', N'C0001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (26, NULL, NULL, N'颗粒细胞百分比（%GRAN）', N'DM00024', NULL, CAST(0x0000A6130105CB3D AS DateTime), NULL, CAST(0x0000A6130105CB3D AS DateTime), 0, N'NUM', N'C0001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (27, NULL, NULL, N'淋巴细胞百分比（%LYM）', N'DM00024', NULL, CAST(0x0000A6130105CB42 AS DateTime), NULL, CAST(0x0000A6130105CB42 AS DateTime), 0, N'NUM', N'C0001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (28, NULL, NULL, N'淋巴细胞计数（LYM）', N'DM00078', NULL, CAST(0x0000A6130105CB47 AS DateTime), NULL, CAST(0x0000A6130105CB47 AS DateTime), 0, N'NUM', N'C0001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (29, NULL, NULL, N'淋巴细胞绝对值（LYM#）', N'DM00078', NULL, CAST(0x0000A6130105CB4C AS DateTime), NULL, CAST(0x0000A6130105CB4C AS DateTime), 0, N'NUM', N'C0001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (30, NULL, NULL, N'平均红细胞体积（MCV）', N'DM00040', NULL, CAST(0x0000A6130105CB51 AS DateTime), NULL, CAST(0x0000A6130105CB51 AS DateTime), 0, N'NUM', N'C0001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (31, NULL, NULL, N'平均红细胞血红蛋白含量[MCH]', N'DM00042', NULL, CAST(0x0000A6130105CB55 AS DateTime), NULL, CAST(0x0000A6130105CB55 AS DateTime), 0, N'NUM', N'C0001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (32, NULL, NULL, N'平均红细胞血红蛋白浓度（MCHC）', N'DM00082', NULL, CAST(0x0000A6130105CB5E AS DateTime), NULL, CAST(0x0000A6130105CB5E AS DateTime), 0, N'NUM', N'C0001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (33, NULL, NULL, N'平均红细胞血红蛋白浓度[MCHC]', N'DM00082', NULL, CAST(0x0000A6130105CB63 AS DateTime), NULL, CAST(0x0000A6130105CB63 AS DateTime), 0, N'NUM', N'C0001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (34, NULL, NULL, N'平均血小板体积（MPV）', N'DM00040', NULL, CAST(0x0000A6130105CB67 AS DateTime), NULL, CAST(0x0000A6130105CB67 AS DateTime), 0, N'NUM', N'C0001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (35, NULL, NULL, N'平均血小板体积[MPV]', N'DM00040', NULL, CAST(0x0000A6130105CB6C AS DateTime), NULL, CAST(0x0000A6130105CB6C AS DateTime), 0, N'NUM', N'C0001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (36, NULL, NULL, N'嗜碱性粒细胞百分比（%BASO）', N'DM00024', NULL, CAST(0x0000A6130105CB71 AS DateTime), NULL, CAST(0x0000A6130105CB71 AS DateTime), 0, N'NUM', N'C0001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (37, NULL, NULL, N'嗜碱性粒细胞计数（BASO）', N'DM00078', NULL, CAST(0x0000A6130105CB79 AS DateTime), NULL, CAST(0x0000A6130105CB79 AS DateTime), 0, N'NUM', N'C0001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (38, NULL, NULL, N'嗜酸性粒细胞（EOS）', N'DM00078', NULL, CAST(0x0000A6130105CB7F AS DateTime), NULL, CAST(0x0000A6130105CB7F AS DateTime), 0, N'NUM', N'C0001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (39, NULL, NULL, N'嗜酸性粒细胞计数（EOS）', N'DM00078', NULL, CAST(0x0000A6130105CB85 AS DateTime), NULL, CAST(0x0000A6130105CB85 AS DateTime), 0, N'NUM', N'C0001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (40, NULL, NULL, N'网织红细胞百分比（%Retic）', N'DM00024', NULL, CAST(0x0000A6130105CB8B AS DateTime), NULL, CAST(0x0000A6130105CB8B AS DateTime), 0, N'NUM', N'C0001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (41, NULL, NULL, N'网织红细胞计数（RETIC）', N'DM00083', NULL, CAST(0x0000A6130105CB93 AS DateTime), NULL, CAST(0x0000A6130105CB93 AS DateTime), 0, N'NUM', N'C0001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (42, NULL, NULL, N'纤维蛋白原[Fib]', N'DM00084', NULL, CAST(0x0000A6130105CB9B AS DateTime), NULL, CAST(0x0000A6130105CB9B AS DateTime), 0, N'NUM', N'C0001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (43, NULL, NULL, N'小型-红细胞比率（%）', N'DM00024', NULL, CAST(0x0000A6130105CBA0 AS DateTime), NULL, CAST(0x0000A6130105CBA0 AS DateTime), 0, N'NUM', N'C0001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (44, NULL, NULL, N'小型-红细胞数量（#）', N'DM00080', NULL, CAST(0x0000A6130105CBA4 AS DateTime), NULL, CAST(0x0000A6130105CBA4 AS DateTime), 0, N'NUM', N'C0001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (45, NULL, NULL, N'小型-血小板比率（%）', N'DM00024', NULL, CAST(0x0000A6130105CBA9 AS DateTime), NULL, CAST(0x0000A6130105CBA9 AS DateTime), 0, N'NUM', N'C0001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (46, NULL, NULL, N'血红蛋白（HGB）', N'DM00082', NULL, CAST(0x0000A6130105CBAE AS DateTime), NULL, CAST(0x0000A6130105CBAE AS DateTime), 0, N'NUM', N'C0001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (47, NULL, NULL, N'血红蛋白[HGB]', N'DM00082', NULL, CAST(0x0000A6130105CBB3 AS DateTime), NULL, CAST(0x0000A6130105CBB3 AS DateTime), 0, N'NUM', N'C0001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (48, NULL, NULL, N'血小板（PLT）', N'DM00083', NULL, CAST(0x0000A6130105CBB8 AS DateTime), NULL, CAST(0x0000A6130105CBB8 AS DateTime), 0, N'NUM', N'C0001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (49, NULL, NULL, N'血小板[PLT]', N'DM00085', NULL, CAST(0x0000A6130105CBBF AS DateTime), NULL, CAST(0x0000A6130105CBBF AS DateTime), 0, N'NUM', N'C0001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (50, NULL, NULL, N'血小板分布宽度（PDW）', N'DM00040', NULL, CAST(0x0000A6130105CBC4 AS DateTime), NULL, CAST(0x0000A6130105CBC4 AS DateTime), 0, N'NUM', N'C0001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (51, NULL, NULL, N'血小板模式[Platelet Mode]', N'DM00040', NULL, CAST(0x0000A6130105CBC8 AS DateTime), NULL, CAST(0x0000A6130105CBC8 AS DateTime), 0, N'NUM', N'C0001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (52, NULL, NULL, N'血小板体积分布宽度比率', N'DM00024', NULL, CAST(0x0000A6130105CBCD AS DateTime), NULL, CAST(0x0000A6130105CBCD AS DateTime), 0, N'NUM', N'C0001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (53, NULL, NULL, N'血小板压积（PCT）', N'DM00024', NULL, CAST(0x0000A6130105CBD2 AS DateTime), NULL, CAST(0x0000A6130105CBD2 AS DateTime), 0, N'NUM', N'C0001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (54, NULL, NULL, N'血小板压积[PCT]', N'DM00024', NULL, CAST(0x0000A6130105CBD7 AS DateTime), NULL, CAST(0x0000A6130105CBD7 AS DateTime), 0, N'NUM', N'C0001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (55, NULL, NULL, N'有核红细胞（NRBC）', N'DM00079', NULL, CAST(0x0000A6130105CBDC AS DateTime), NULL, CAST(0x0000A6130105CBDC AS DateTime), 0, N'NUM', N'C0001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (56, NULL, NULL, N'中性粒细胞（NEUT）', N'DM00078', NULL, CAST(0x0000A6130105CBE0 AS DateTime), NULL, CAST(0x0000A6130105CBE0 AS DateTime), 0, N'NUM', N'C0001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (57, NULL, NULL, N'中性粒细胞百分比（%NEU）', N'DM00024', NULL, CAST(0x0000A6130105CBE5 AS DateTime), NULL, CAST(0x0000A6130105CBE5 AS DateTime), 0, N'NUM', N'C0001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (58, NULL, NULL, N'中性粒细胞计数（NEU）', N'DM00078', NULL, CAST(0x0000A6130105CBEA AS DateTime), NULL, CAST(0x0000A6130105CBEA AS DateTime), 0, N'NUM', N'C0001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (59, NULL, NULL, N'中性粒细胞绝对值（Othr#）', N'DM00078', NULL, CAST(0x0000A6130105CBEF AS DateTime), NULL, CAST(0x0000A6130105CBEF AS DateTime), 0, N'NUM', N'C0001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (60, NULL, NULL, N'RDW-SD', N'DM00040', NULL, CAST(0x0000A6130105CBF4 AS DateTime), NULL, CAST(0x0000A6130105CBF4 AS DateTime), 0, N'NUM', N'C0001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (61, NULL, NULL, N'P-LCR', N'DM00024', NULL, CAST(0x0000A6130105CBF8 AS DateTime), NULL, CAST(0x0000A6130105CBF8 AS DateTime), 0, N'NUM', N'C0001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (62, NULL, NULL, N'WBC白细胞数目', N'DM00078', NULL, CAST(0x0000A6130105CBFD AS DateTime), NULL, CAST(0x0000A6130105CBFD AS DateTime), 0, N'NUM', N'C0001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (63, NULL, NULL, N'GRAN%中性粒细胞百分比', N'DM00024', NULL, CAST(0x0000A6130105CC02 AS DateTime), NULL, CAST(0x0000A6130105CC02 AS DateTime), 0, N'NUM', N'C0001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (64, NULL, NULL, N'HGB血红蛋白 ', N'DM00026', NULL, CAST(0x0000A6130105CC06 AS DateTime), NULL, CAST(0x0000A6130105CC06 AS DateTime), 0, N'NUM', N'C0001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (65, NULL, NULL, N'MCV平均红细胞体积', N'DM00040', NULL, CAST(0x0000A6130105CC0B AS DateTime), NULL, CAST(0x0000A6130105CC0B AS DateTime), 0, N'NUM', N'C0001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (66, NULL, NULL, N'PCT血小板体积', N'', NULL, CAST(0x0000A6130105CC0F AS DateTime), NULL, CAST(0x0000A6130105CC0F AS DateTime), 0, N'NUM', N'C0001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (67, NULL, NULL, N'有核红细胞比率(%)[N-RBC(%)]', N'DM00024', NULL, CAST(0x0000A6130105CC14 AS DateTime), NULL, CAST(0x0000A6130105CC14 AS DateTime), 0, N'NUM', N'C0001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (68, NULL, NULL, N'嗜酸性粒细胞百分比（Eos%）', N'DM00024', NULL, CAST(0x0000A6130105CC19 AS DateTime), NULL, CAST(0x0000A6130105CC19 AS DateTime), 0, N'NUM', N'C0001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (69, NULL, NULL, N'嗜酸性粒细胞绝对值（Eos#）', N'DM00078', NULL, CAST(0x0000A6130105CC1D AS DateTime), NULL, CAST(0x0000A6130105CC1D AS DateTime), 0, N'NUM', N'C0001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (70, NULL, NULL, N'LYMPH#淋巴细胞数目', N'DM00078', NULL, CAST(0x0000A6130105CC22 AS DateTime), NULL, CAST(0x0000A6130105CC22 AS DateTime), 0, N'NUM', N'C0001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (71, NULL, NULL, N'GRAN#中性粒细胞', N'DM00078', NULL, CAST(0x0000A6130105CC26 AS DateTime), NULL, CAST(0x0000A6130105CC26 AS DateTime), 0, N'NUM', N'C0001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (72, NULL, NULL, N'MCH平均红细胞血红蛋白含量', N'DM00024', NULL, CAST(0x0000A6130105CC2B AS DateTime), NULL, CAST(0x0000A6130105CC2B AS DateTime), 0, N'NUM', N'C0001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (73, NULL, NULL, N'PLT血小板数目', N'DM00078', NULL, CAST(0x0000A6130105CC30 AS DateTime), NULL, CAST(0x0000A6130105CC30 AS DateTime), 0, N'NUM', N'C0001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (74, NULL, NULL, N'MON%单核细胞百分比', N'DM00024', NULL, CAST(0x0000A6130105CC35 AS DateTime), NULL, CAST(0x0000A6130105CC35 AS DateTime), 0, N'NUM', N'C0001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (75, NULL, NULL, N'RBC红细胞数目', N'DM00081', NULL, CAST(0x0000A6130105CC39 AS DateTime), NULL, CAST(0x0000A6130105CC39 AS DateTime), 0, N'NUM', N'C0001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (76, NULL, NULL, N'HCT红细胞压积', N'DM00024', NULL, CAST(0x0000A6130105CC3E AS DateTime), NULL, CAST(0x0000A6130105CC3E AS DateTime), 0, N'NUM', N'C0001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (77, NULL, NULL, N'RDW红细胞分布宽度', N'DM00024', NULL, CAST(0x0000A6130105CC42 AS DateTime), NULL, CAST(0x0000A6130105CC42 AS DateTime), 0, N'NUM', N'C0001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (78, NULL, NULL, N'肌酸肌酶（CK）', N'DM00028', NULL, CAST(0x0000A6130105CC79 AS DateTime), NULL, CAST(0x0000A6130105CC79 AS DateTime), 0, N'NUM', N'C0002')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (79, NULL, NULL, N'天门冬酸氨基转移酶（AST）', N'DM00028', NULL, CAST(0x0000A6130105CC7E AS DateTime), NULL, CAST(0x0000A6130105CC7E AS DateTime), 0, N'NUM', N'C0002')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (80, NULL, NULL, N'丙氨酸氨基转移酶（ALT）', N'DM00028', NULL, CAST(0x0000A6130105CC82 AS DateTime), NULL, CAST(0x0000A6130105CC82 AS DateTime), 0, N'NUM', N'C0002')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (81, NULL, NULL, N'钠（Na+）', N'DM00027', NULL, CAST(0x0000A6130105CC87 AS DateTime), NULL, CAST(0x0000A6130105CC87 AS DateTime), 0, N'NUM', N'C0002')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (82, NULL, NULL, N'氯（Cl）', N'DM00027', NULL, CAST(0x0000A6130105CC8C AS DateTime), NULL, CAST(0x0000A6130105CC8C AS DateTime), 0, N'NUM', N'C0002')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (83, NULL, NULL, N'乳酸（LAC）', N'DM00027', NULL, CAST(0x0000A6130105CC91 AS DateTime), NULL, CAST(0x0000A6130105CC91 AS DateTime), 0, N'NUM', N'C0002')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (84, NULL, NULL, N'碱性磷酸酶（ALKP）', N'DM00028', NULL, CAST(0x0000A6130105CC96 AS DateTime), NULL, CAST(0x0000A6130105CC96 AS DateTime), 0, N'NUM', N'C0002')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (85, NULL, NULL, N'伽马谷氨酰胺转肽酶（GGT）', N'DM00028', NULL, CAST(0x0000A6130105CC9B AS DateTime), NULL, CAST(0x0000A6130105CC9B AS DateTime), 0, N'NUM', N'C0002')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (86, NULL, NULL, N'胆固醇（CHOL）', N'DM00027', NULL, CAST(0x0000A6130105CC9F AS DateTime), NULL, CAST(0x0000A6130105CC9F AS DateTime), 0, N'NUM', N'C0002')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (87, NULL, NULL, N'乳酸脱氢酶（LDH）', N'DM00028', NULL, CAST(0x0000A6130105CCA5 AS DateTime), NULL, CAST(0x0000A6130105CCA5 AS DateTime), 0, N'NUM', N'C0002')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (88, NULL, NULL, N'血红蛋白（Hb）', N'DM00082', NULL, CAST(0x0000A6130105CCA9 AS DateTime), NULL, CAST(0x0000A6130105CCA9 AS DateTime), 0, N'NUM', N'C0002')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (89, NULL, NULL, N'尿蛋白(UPRO)', N'DM00026', NULL, CAST(0x0000A6130105CCAE AS DateTime), NULL, CAST(0x0000A6130105CCAE AS DateTime), 0, N'NUM', N'C0002')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (90, NULL, NULL, N'Ca', N'DM00027', NULL, CAST(0x0000A6130105CCB4 AS DateTime), NULL, CAST(0x0000A6130105CCB4 AS DateTime), 0, N'NUM', N'C0002')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (91, NULL, NULL, N'PHOS', N'DM00027', NULL, CAST(0x0000A6130105CCB8 AS DateTime), NULL, CAST(0x0000A6130105CCB8 AS DateTime), 0, N'NUM', N'C0002')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (92, NULL, NULL, N'TP', N'DM00026', NULL, CAST(0x0000A6130105CCBE AS DateTime), NULL, CAST(0x0000A6130105CCBE AS DateTime), 0, N'NUM', N'C0002')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (93, NULL, NULL, N'ALKP', N'DM00028', NULL, CAST(0x0000A6130105CCC2 AS DateTime), NULL, CAST(0x0000A6130105CCC2 AS DateTime), 0, N'NUM', N'C0002')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (94, NULL, NULL, N'CHOL', N'DM00027', NULL, CAST(0x0000A6130105CCC7 AS DateTime), NULL, CAST(0x0000A6130105CCC7 AS DateTime), 0, N'NUM', N'C0002')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (95, NULL, NULL, N'TBIL', N'DM00029', NULL, CAST(0x0000A6130105CCCC AS DateTime), NULL, CAST(0x0000A6130105CCCC AS DateTime), 0, N'NUM', N'C0002')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (96, NULL, NULL, N'无机磷（PHOS）', N'DM00027', NULL, CAST(0x0000A6130105CCD0 AS DateTime), NULL, CAST(0x0000A6130105CCD0 AS DateTime), 0, N'NUM', N'C0002')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (97, NULL, NULL, N'总蛋白（TP）', N'DM00026', NULL, CAST(0x0000A6130105CCD6 AS DateTime), NULL, CAST(0x0000A6130105CCD6 AS DateTime), 0, N'NUM', N'C0002')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (98, NULL, NULL, N'肌酐（CREA）', N'DM00086', NULL, CAST(0x0000A6130105CCDD AS DateTime), NULL, CAST(0x0000A6130105CCDD AS DateTime), 0, N'NUM', N'C0002')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (99, NULL, NULL, N'白蛋白（ALB）', N'DM00026', NULL, CAST(0x0000A6130105CCE2 AS DateTime), NULL, CAST(0x0000A6130105CCE2 AS DateTime), 0, N'NUM', N'C0002')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (100, NULL, NULL, N'球蛋白（GLOB）', N'DM00026', NULL, CAST(0x0000A6130105CCE6 AS DateTime), NULL, CAST(0x0000A6130105CCE6 AS DateTime), 0, N'NUM', N'C0002')
GO
print 'Processed 100 total records'
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (101, NULL, NULL, N'D-二聚体', N'DM00084', NULL, CAST(0x0000A6130105CCEB AS DateTime), NULL, CAST(0x0000A6130105CCEB AS DateTime), 0, N'NUM', N'C0002')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (102, NULL, NULL, N'尿素', N'DM00027', NULL, CAST(0x0000A6130105CCF0 AS DateTime), NULL, CAST(0x0000A6130105CCF0 AS DateTime), 0, N'NUM', N'C0002')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (103, NULL, NULL, N'溶血', N'DM00087', NULL, CAST(0x0000A6130105CCF8 AS DateTime), NULL, CAST(0x0000A6130105CCF8 AS DateTime), 0, N'NUM', N'C0002')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (104, NULL, NULL, N'胆汁酸', N'DM00086', NULL, CAST(0x0000A6130105CCFD AS DateTime), NULL, CAST(0x0000A6130105CCFD AS DateTime), 0, N'NUM', N'C0002')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (105, NULL, NULL, N'脂肪酶（LIPA)', N'DM00028', NULL, CAST(0x0000A6130105CD02 AS DateTime), NULL, CAST(0x0000A6130105CD02 AS DateTime), 0, N'NUM', N'C0002')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (106, NULL, NULL, N'总胆红素(TBIL)', N'DM00086', NULL, CAST(0x0000A6130105CD07 AS DateTime), NULL, CAST(0x0000A6130105CD07 AS DateTime), 0, N'NUM', N'C0002')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (107, NULL, NULL, N'尿蛋白/肌酐比（*UPRO/UCREA）', N'', NULL, CAST(0x0000A6130105CD0A AS DateTime), NULL, CAST(0x0000A6130105CD0A AS DateTime), 0, N'NUM', N'C0002')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (108, NULL, NULL, N'ALT', N'DM00028', NULL, CAST(0x0000A6130105CD0F AS DateTime), NULL, CAST(0x0000A6130105CD0F AS DateTime), 0, N'NUM', N'C0002')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (109, NULL, NULL, N'CREA', N'DM00029', NULL, CAST(0x0000A6130105CD14 AS DateTime), NULL, CAST(0x0000A6130105CD14 AS DateTime), 0, N'NUM', N'C0002')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (110, NULL, NULL, N'UREA', N'DM00027', NULL, CAST(0x0000A6130105CD19 AS DateTime), NULL, CAST(0x0000A6130105CD19 AS DateTime), 0, N'NUM', N'C0002')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (111, NULL, NULL, N'ALB', N'DM00026', NULL, CAST(0x0000A6130105CD1D AS DateTime), NULL, CAST(0x0000A6130105CD1D AS DateTime), 0, N'NUM', N'C0002')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (112, NULL, NULL, N'AMYL', N'DM00028', NULL, CAST(0x0000A6130105CD23 AS DateTime), NULL, CAST(0x0000A6130105CD23 AS DateTime), 0, N'NUM', N'C0002')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (113, NULL, NULL, N'GLU', N'DM00027', NULL, CAST(0x0000A6130105CD28 AS DateTime), NULL, CAST(0x0000A6130105CD28 AS DateTime), 0, N'NUM', N'C0002')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (114, NULL, NULL, N'GLOB', N'DM00026', NULL, CAST(0x0000A6130105CD2D AS DateTime), NULL, CAST(0x0000A6130105CD2D AS DateTime), 0, N'NUM', N'C0002')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (115, NULL, NULL, N'柠檬酸钠抗凝血酶原时间', N'DM00088', NULL, CAST(0x0000A6130105CD62 AS DateTime), NULL, CAST(0x0000A6130105CD62 AS DateTime), 0, N'NUM', N'C0003')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (116, NULL, NULL, N'全血凝血原时间', N'DM00088', NULL, CAST(0x0000A6130105CD67 AS DateTime), NULL, CAST(0x0000A6130105CD67 AS DateTime), 0, N'NUM', N'C0003')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (117, NULL, NULL, N'部分活化凝血酶原时间', N'DM00088', NULL, CAST(0x0000A6130105CD6C AS DateTime), NULL, CAST(0x0000A6130105CD6C AS DateTime), 0, N'NUM', N'C0003')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (118, NULL, NULL, N'柠檬酸钠抗凝血部分活化凝血酶原时间', N'DM00088', NULL, CAST(0x0000A6130105CD71 AS DateTime), NULL, CAST(0x0000A6130105CD71 AS DateTime), 0, N'NUM', N'C0003')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (119, NULL, NULL, N'氯化物Cl', N'DM00027', NULL, CAST(0x0000A6130105CD9B AS DateTime), NULL, CAST(0x0000A6130105CD9B AS DateTime), 0, N'NUM', N'C0004')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (120, NULL, NULL, N'钾K', N'DM00027', NULL, CAST(0x0000A6130105CDA0 AS DateTime), NULL, CAST(0x0000A6130105CDA0 AS DateTime), 0, N'NUM', N'C0004')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (121, NULL, NULL, N'nCA', N'DM00027', NULL, CAST(0x0000A6130105CDA5 AS DateTime), NULL, CAST(0x0000A6130105CDA5 AS DateTime), 0, N'NUM', N'C0004')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (122, NULL, NULL, N'tCa', N'DM00027', NULL, CAST(0x0000A6130105CDAA AS DateTime), NULL, CAST(0x0000A6130105CDAA AS DateTime), 0, N'NUM', N'C0004')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (123, NULL, NULL, N'钠Na', N'DM00027', NULL, CAST(0x0000A6130105CDAF AS DateTime), NULL, CAST(0x0000A6130105CDAF AS DateTime), 0, N'NUM', N'C0004')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (124, NULL, NULL, N'iCa', N'DM00027', NULL, CAST(0x0000A6130105CDB4 AS DateTime), NULL, CAST(0x0000A6130105CDB4 AS DateTime), 0, N'NUM', N'C0004')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (125, NULL, NULL, N'pH', N'DM00027', NULL, CAST(0x0000A6130105CDB9 AS DateTime), NULL, CAST(0x0000A6130105CDB9 AS DateTime), 0, N'NUM', N'C0004')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (126, NULL, NULL, N'动脉-二氧化碳分压', N'DM00089', NULL, CAST(0x0000A6130105CDF4 AS DateTime), NULL, CAST(0x0000A6130105CDF4 AS DateTime), 0, N'NUM', N'C0005')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (127, NULL, NULL, N'钙离子', N'DM00027', NULL, CAST(0x0000A6130105CDFA AS DateTime), NULL, CAST(0x0000A6130105CDFA AS DateTime), 0, N'NUM', N'C0005')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (128, NULL, NULL, N'静脉-PH值', N'', NULL, CAST(0x0000A6130105CDFE AS DateTime), NULL, CAST(0x0000A6130105CDFE AS DateTime), 0, N'NUM', N'C0005')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (129, NULL, NULL, N'CL-', N'DM00027', NULL, CAST(0x0000A6130105CE03 AS DateTime), NULL, CAST(0x0000A6130105CE03 AS DateTime), 0, N'NUM', N'C0005')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (130, NULL, NULL, N'阴离子间隙（ANGAP）', N'', NULL, CAST(0x0000A6130105CE08 AS DateTime), NULL, CAST(0x0000A6130105CE08 AS DateTime), 0, N'NUM', N'C0005')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (131, NULL, NULL, N'动脉-氧分压', N'DM00027', NULL, CAST(0x0000A6130105CE0E AS DateTime), NULL, CAST(0x0000A6130105CE0E AS DateTime), 0, N'NUM', N'C0005')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (132, NULL, NULL, N'血糖（GLU）', N'DM00027', NULL, CAST(0x0000A6130105CE13 AS DateTime), NULL, CAST(0x0000A6130105CE13 AS DateTime), 0, N'NUM', N'C0005')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (133, NULL, NULL, N'动脉-碳酸氢根离子（HCO3）', N'DM00027', NULL, CAST(0x0000A6130105CE17 AS DateTime), NULL, CAST(0x0000A6130105CE17 AS DateTime), 0, N'NUM', N'C0005')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (134, NULL, NULL, N'静脉-氧分压（pO2）', N'DM00089', NULL, CAST(0x0000A6130105CE1C AS DateTime), NULL, CAST(0x0000A6130105CE1C AS DateTime), 0, N'NUM', N'C0005')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (135, NULL, NULL, N'总二氧化碳（TCO2）', N'DM00090', NULL, CAST(0x0000A6130105CE24 AS DateTime), NULL, CAST(0x0000A6130105CE24 AS DateTime), 0, N'NUM', N'C0005')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (136, NULL, NULL, N'碱剩余（base excess）', N'DM00027', NULL, CAST(0x0000A6130105CE29 AS DateTime), NULL, CAST(0x0000A6130105CE29 AS DateTime), 0, N'NUM', N'C0005')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (137, NULL, NULL, N'动脉-PH值', N'', NULL, CAST(0x0000A6130105CE2C AS DateTime), NULL, CAST(0x0000A6130105CE2C AS DateTime), 0, N'NUM', N'C0005')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (138, NULL, NULL, N'酸碱度', N'', NULL, CAST(0x0000A6130105CE30 AS DateTime), NULL, CAST(0x0000A6130105CE30 AS DateTime), 0, N'NUM', N'C0005')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (139, NULL, NULL, N'钠NA+', N'DM00027', NULL, CAST(0x0000A6130105CE35 AS DateTime), NULL, CAST(0x0000A6130105CE35 AS DateTime), 0, N'NUM', N'C0005')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (140, NULL, NULL, N'游离钙（Ca）', N'DM00027', NULL, CAST(0x0000A6130105CE3A AS DateTime), NULL, CAST(0x0000A6130105CE3A AS DateTime), 0, N'NUM', N'C0005')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (141, NULL, NULL, N'BE', N'DM00027', NULL, CAST(0x0000A6130105CE3F AS DateTime), NULL, CAST(0x0000A6130105CE3F AS DateTime), 0, N'NUM', N'C0005')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (142, NULL, NULL, N'氯（Cl）', N'DM00027', NULL, CAST(0x0000A6130105CE43 AS DateTime), NULL, CAST(0x0000A6130105CE43 AS DateTime), 0, N'NUM', N'C0005')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (143, NULL, NULL, N'钾（K+）', N'DM00027', NULL, CAST(0x0000A6130105CE48 AS DateTime), NULL, CAST(0x0000A6130105CE48 AS DateTime), 0, N'NUM', N'C0005')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (144, NULL, NULL, N'静脉-二氧化碳分压（pCO2）', N'DM00089', NULL, CAST(0x0000A6130105CE4E AS DateTime), NULL, CAST(0x0000A6130105CE4E AS DateTime), 0, N'NUM', N'C0005')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (145, NULL, NULL, N'氧饱和度（SO2）', N'DM00024', NULL, CAST(0x0000A6130105CE54 AS DateTime), NULL, CAST(0x0000A6130105CE54 AS DateTime), 0, N'NUM', N'C0005')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (146, NULL, NULL, N'静脉-碳酸氢根离子（HCO3）', N'DM00090', NULL, CAST(0x0000A6130105CE58 AS DateTime), NULL, CAST(0x0000A6130105CE58 AS DateTime), 0, N'NUM', N'C0005')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (147, NULL, NULL, N'甲状腺素（T4）', N'DM00091', NULL, CAST(0x0000A6130105CE85 AS DateTime), NULL, CAST(0x0000A6130105CE85 AS DateTime), 0, N'NUM', N'C0006')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (148, NULL, NULL, N'基线皮质醇', N'DM00091', NULL, CAST(0x0000A6130105CE8B AS DateTime), NULL, CAST(0x0000A6130105CE8B AS DateTime), 0, N'NUM', N'C0006')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (149, NULL, NULL, N'皮质醇07', N'DM00091', NULL, CAST(0x0000A6130105CE8F AS DateTime), NULL, CAST(0x0000A6130105CE8F AS DateTime), 0, N'NUM', N'C0006')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (150, NULL, NULL, N'Low-Dose Dex Suppression-4hr', N'DM00091', NULL, CAST(0x0000A6130105CE94 AS DateTime), NULL, CAST(0x0000A6130105CE94 AS DateTime), 0, N'NUM', N'C0006')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (151, NULL, NULL, N'Cortisol cushing susp', N'DM00091', NULL, CAST(0x0000A6130105CE98 AS DateTime), NULL, CAST(0x0000A6130105CE98 AS DateTime), 0, N'NUM', N'C0006')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (152, NULL, NULL, N'Cortisol10', N'DM00091', NULL, CAST(0x0000A6130105CE9E AS DateTime), NULL, CAST(0x0000A6130105CE9E AS DateTime), 0, N'NUM', N'C0006')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (153, NULL, NULL, N'Bile Acid03', N'DM00029', NULL, CAST(0x0000A6130105CEA2 AS DateTime), NULL, CAST(0x0000A6130105CEA2 AS DateTime), 0, N'NUM', N'C0006')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (154, NULL, NULL, N'Canine Pancreas Specific Lipase', N'', NULL, CAST(0x0000A6130105CEA6 AS DateTime), NULL, CAST(0x0000A6130105CEA6 AS DateTime), 0, N'NUM', N'C0006')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (155, NULL, NULL, N'FeLV', N'', NULL, CAST(0x0000A6130105CEA9 AS DateTime), NULL, CAST(0x0000A6130105CEA9 AS DateTime), 0, N'NUM', N'C0006')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (156, NULL, NULL, N'Heartworm', N'', NULL, CAST(0x0000A6130105CEAC AS DateTime), NULL, CAST(0x0000A6130105CEAC AS DateTime), 0, N'NUM', N'C0006')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (157, NULL, NULL, N'胆汁酸02', N'DM00029', NULL, CAST(0x0000A6130105CEB1 AS DateTime), NULL, CAST(0x0000A6130105CEB1 AS DateTime), 0, N'NUM', N'C0006')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (158, NULL, NULL, N'皮质醇03', N'DM00091', NULL, CAST(0x0000A6130105CEB6 AS DateTime), NULL, CAST(0x0000A6130105CEB6 AS DateTime), 0, N'NUM', N'C0006')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (159, NULL, NULL, N'皮质醇05', N'DM00091', NULL, CAST(0x0000A6130105CEBB AS DateTime), NULL, CAST(0x0000A6130105CEBB AS DateTime), 0, N'NUM', N'C0006')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (160, NULL, NULL, N'皮质醇09', N'DM00091', NULL, CAST(0x0000A6130105CEC0 AS DateTime), NULL, CAST(0x0000A6130105CEC0 AS DateTime), 0, N'NUM', N'C0006')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (161, NULL, NULL, N'TT4', N'DM00091', NULL, CAST(0x0000A6130105CEC4 AS DateTime), NULL, CAST(0x0000A6130105CEC4 AS DateTime), 0, N'NUM', N'C0006')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (162, NULL, NULL, N'High-Dose Dex Suppression-4hr', N'DM00091', NULL, CAST(0x0000A6130105CEC9 AS DateTime), NULL, CAST(0x0000A6130105CEC9 AS DateTime), 0, N'NUM', N'C0006')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (163, NULL, NULL, N'Addison''s Suspected', N'DM00091', NULL, CAST(0x0000A6130105CECE AS DateTime), NULL, CAST(0x0000A6130105CECE AS DateTime), 0, N'NUM', N'C0006')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (164, NULL, NULL, N'Bile Acid01', N'DM00029', NULL, CAST(0x0000A6130105CED3 AS DateTime), NULL, CAST(0x0000A6130105CED3 AS DateTime), 0, N'NUM', N'C0006')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (165, NULL, NULL, N'Feline Pancreas Specific Lipase', N'', NULL, CAST(0x0000A6130105CED6 AS DateTime), NULL, CAST(0x0000A6130105CED6 AS DateTime), 0, N'NUM', N'C0006')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (166, NULL, NULL, N'IgG', N'DM00084', NULL, CAST(0x0000A6130105CEDB AS DateTime), NULL, CAST(0x0000A6130105CEDB AS DateTime), 0, N'NUM', N'C0006')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (167, NULL, NULL, N'胆汁酸', N'DM00029', NULL, CAST(0x0000A6130105CEE0 AS DateTime), NULL, CAST(0x0000A6130105CEE0 AS DateTime), 0, N'NUM', N'C0006')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (168, NULL, NULL, N'皮质醇02', N'DM00091', NULL, CAST(0x0000A6130105CEE5 AS DateTime), NULL, CAST(0x0000A6130105CEE5 AS DateTime), 0, N'NUM', N'C0006')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (169, NULL, NULL, N'皮质醇08', N'DM00091', NULL, CAST(0x0000A6130105CEEA AS DateTime), NULL, CAST(0x0000A6130105CEEA AS DateTime), 0, N'NUM', N'C0006')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (170, NULL, NULL, N'Low-Dose Dex Suppression-8hr', N'DM00091', NULL, CAST(0x0000A6130105CEEE AS DateTime), NULL, CAST(0x0000A6130105CEEE AS DateTime), 0, N'NUM', N'C0006')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (171, NULL, NULL, N'Therapeutic Monitoring', N'DM00091', NULL, CAST(0x0000A6130105CEF3 AS DateTime), NULL, CAST(0x0000A6130105CEF3 AS DateTime), 0, N'NUM', N'C0006')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (172, NULL, NULL, N'Bile Acid02', N'DM00029', NULL, CAST(0x0000A6130105CEF8 AS DateTime), NULL, CAST(0x0000A6130105CEF8 AS DateTime), 0, N'NUM', N'C0006')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (173, NULL, NULL, N'A. ph', N'', NULL, CAST(0x0000A6130105CEFC AS DateTime), NULL, CAST(0x0000A6130105CEFC AS DateTime), 0, N'NUM', N'C0006')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (174, NULL, NULL, N'Ehrlichia canis', N'', NULL, CAST(0x0000A6130105CF00 AS DateTime), NULL, CAST(0x0000A6130105CF00 AS DateTime), 0, N'NUM', N'C0006')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (175, NULL, NULL, N'FIV', N'', NULL, CAST(0x0000A6130105CF03 AS DateTime), NULL, CAST(0x0000A6130105CF03 AS DateTime), 0, N'NUM', N'C0006')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (176, NULL, NULL, N'Lyme', N'', NULL, CAST(0x0000A6130105CF06 AS DateTime), NULL, CAST(0x0000A6130105CF06 AS DateTime), 0, N'NUM', N'C0006')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (177, NULL, NULL, N'胆汁酸03', N'DM00029', NULL, CAST(0x0000A6130105CF0B AS DateTime), NULL, CAST(0x0000A6130105CF0B AS DateTime), 0, N'NUM', N'C0006')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (178, NULL, NULL, N'皮质醇04', N'DM00091', NULL, CAST(0x0000A6130105CF10 AS DateTime), NULL, CAST(0x0000A6130105CF10 AS DateTime), 0, N'NUM', N'C0006')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (179, NULL, NULL, N'皮质醇06', N'DM00091', NULL, CAST(0x0000A6130105CF15 AS DateTime), NULL, CAST(0x0000A6130105CF15 AS DateTime), 0, N'NUM', N'C0006')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (180, NULL, NULL, N'皮质醇10', N'DM00091', NULL, CAST(0x0000A6130105CF1A AS DateTime), NULL, CAST(0x0000A6130105CF1A AS DateTime), 0, N'NUM', N'C0006')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (181, NULL, NULL, N'Baseline Cortisol', N'DM00091', NULL, CAST(0x0000A6130105CF1F AS DateTime), NULL, CAST(0x0000A6130105CF1F AS DateTime), 0, N'NUM', N'C0006')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (182, NULL, NULL, N'High-Dose Dex Suppression-8hr', N'DM00091', NULL, CAST(0x0000A6130105CF24 AS DateTime), NULL, CAST(0x0000A6130105CF24 AS DateTime), 0, N'NUM', N'C0006')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (183, NULL, NULL, N'Bile Acid', N'', NULL, CAST(0x0000A6130105CF27 AS DateTime), NULL, CAST(0x0000A6130105CF27 AS DateTime), 0, N'NUM', N'C0006')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (184, NULL, NULL, N'CanL', N'', NULL, CAST(0x0000A6130105CF2A AS DateTime), NULL, CAST(0x0000A6130105CF2A AS DateTime), 0, N'NUM', N'C0006')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (185, NULL, NULL, N'Giardia', N'', NULL, CAST(0x0000A6130105CF2E AS DateTime), NULL, CAST(0x0000A6130105CF2E AS DateTime), 0, N'NUM', N'C0006')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (186, NULL, NULL, N'Parvo', N'', NULL, CAST(0x0000A6130105CF31 AS DateTime), NULL, CAST(0x0000A6130105CF31 AS DateTime), 0, N'NUM', N'C0006')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (187, NULL, NULL, N'尿胆原（UBG）', N'DM00084', NULL, CAST(0x0000A6130105CF5C AS DateTime), NULL, CAST(0x0000A6130105CF5C AS DateTime), 0, N'NUM', N'C0007')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (188, NULL, NULL, N'PH值', N'', NULL, CAST(0x0000A6130105CF60 AS DateTime), NULL, CAST(0x0000A6130105CF60 AS DateTime), 0, N'NUM', N'C0007')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (189, NULL, NULL, N'尿胆红素（BIL）', N'DM00084', NULL, CAST(0x0000A6130105CF64 AS DateTime), NULL, CAST(0x0000A6130105CF64 AS DateTime), 0, N'NUM', N'C0007')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (190, NULL, NULL, N'尿糖（GLU）', N'DM00084', NULL, CAST(0x0000A6130105CF69 AS DateTime), NULL, CAST(0x0000A6130105CF69 AS DateTime), 0, N'NUM', N'C0007')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (191, NULL, NULL, N'透明度(Kransparency)', N'', NULL, CAST(0x0000A6130105CF6C AS DateTime), NULL, CAST(0x0000A6130105CF6C AS DateTime), 0, N'NUM', N'C0007')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (192, NULL, NULL, N'胆红素(Bilirubm)', N'', NULL, CAST(0x0000A6130105CF70 AS DateTime), NULL, CAST(0x0000A6130105CF70 AS DateTime), 0, N'NUM', N'C0007')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (193, NULL, NULL, N'潜血(Occult Blood)', N'', NULL, CAST(0x0000A6130105CF74 AS DateTime), NULL, CAST(0x0000A6130105CF74 AS DateTime), 0, N'NUM', N'C0007')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (194, NULL, NULL, N'蛋白(Protcin)', N'', NULL, CAST(0x0000A6130105CF77 AS DateTime), NULL, CAST(0x0000A6130105CF77 AS DateTime), 0, N'NUM', N'C0007')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (195, NULL, NULL, N'亚硝酸盐(Nitnte)', N'', NULL, CAST(0x0000A6130105CF7B AS DateTime), NULL, CAST(0x0000A6130105CF7B AS DateTime), 0, N'NUM', N'C0007')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (196, NULL, NULL, N'尿色（Color）', N'', NULL, CAST(0x0000A6130105CF7E AS DateTime), NULL, CAST(0x0000A6130105CF7E AS DateTime), 0, N'NUM', N'C0007')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (197, NULL, NULL, N'比重', N'', NULL, CAST(0x0000A6130105CF82 AS DateTime), NULL, CAST(0x0000A6130105CF82 AS DateTime), 0, N'NUM', N'C0007')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (198, NULL, NULL, N'白血球(LEU)', N'DM00092', NULL, CAST(0x0000A6130105CF89 AS DateTime), NULL, CAST(0x0000A6130105CF89 AS DateTime), 0, N'NUM', N'C0007')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (199, NULL, NULL, N'尿蛋白（PRO）', N'DM00084', NULL, CAST(0x0000A6130105CF8E AS DateTime), NULL, CAST(0x0000A6130105CF8E AS DateTime), 0, N'NUM', N'C0007')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (200, NULL, NULL, N'酮体（KET）', N'DM00084', NULL, CAST(0x0000A6130105CF93 AS DateTime), NULL, CAST(0x0000A6130105CF93 AS DateTime), 0, N'NUM', N'C0007')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (201, NULL, NULL, N'血细胞（BLD）', N'DM00093', NULL, CAST(0x0000A6130105CF9B AS DateTime), NULL, CAST(0x0000A6130105CF9B AS DateTime), 0, N'NUM', N'C0007')
GO
print 'Processed 200 total records'
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (202, NULL, NULL, N'葡萄糖(Glucose)', N'', NULL, CAST(0x0000A6130105CF9E AS DateTime), NULL, CAST(0x0000A6130105CF9E AS DateTime), 0, N'NUM', N'C0007')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (203, NULL, NULL, N'酮体(Kctones)', N'', NULL, CAST(0x0000A6130105CFA1 AS DateTime), NULL, CAST(0x0000A6130105CFA1 AS DateTime), 0, N'NUM', N'C0007')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (204, NULL, NULL, N'酸碱度(PH)', N'', NULL, CAST(0x0000A6130105CFA5 AS DateTime), NULL, CAST(0x0000A6130105CFA5 AS DateTime), 0, N'NUM', N'C0007')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (205, NULL, NULL, N'尿胆原(Urobi Linogen)', N'', NULL, CAST(0x0000A6130105CFA9 AS DateTime), NULL, CAST(0x0000A6130105CFA9 AS DateTime), 0, N'NUM', N'C0007')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (206, NULL, NULL, N'尿沉渣', N'', NULL, CAST(0x0000A6130105CFAC AS DateTime), NULL, CAST(0x0000A6130105CFAC AS DateTime), 0, N'NUM', N'C0007')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (207, NULL, NULL, N'pH', N'', NULL, CAST(0x0000A6130105CFB0 AS DateTime), NULL, CAST(0x0000A6130105CFB0 AS DateTime), 0, N'NUM', N'C0007')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (208, NULL, NULL, N'尿比重(Specific Gravity)', N'', NULL, CAST(0x0000A6130105CFB3 AS DateTime), NULL, CAST(0x0000A6130105CFB3 AS DateTime), 0, N'NUM', N'C0007')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (209, NULL, NULL, N'性状（Occult Blood）', N'', NULL, CAST(0x0000A6130105CFDB AS DateTime), NULL, CAST(0x0000A6130105CFDB AS DateTime), 0, N'NUM', N'C0008')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (210, NULL, NULL, N'异常菌群（Parasin）', N'', NULL, CAST(0x0000A6130105CFDF AS DateTime), NULL, CAST(0x0000A6130105CFDF AS DateTime), 0, N'NUM', N'C0008')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (211, NULL, NULL, N'粘液', N'', NULL, CAST(0x0000A6130105CFE3 AS DateTime), NULL, CAST(0x0000A6130105CFE3 AS DateTime), 0, N'NUM', N'C0008')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (212, NULL, NULL, N'上皮细胞（Epithelial）', N'', NULL, CAST(0x0000A6130105CFE6 AS DateTime), NULL, CAST(0x0000A6130105CFE6 AS DateTime), 0, N'NUM', N'C0008')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (213, NULL, NULL, N'白细胞(RBC)', N'', NULL, CAST(0x0000A6130105CFE9 AS DateTime), NULL, CAST(0x0000A6130105CFE9 AS DateTime), 0, N'NUM', N'C0008')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (214, NULL, NULL, N'颜色（Color）', N'', NULL, CAST(0x0000A6130105CFED AS DateTime), NULL, CAST(0x0000A6130105CFED AS DateTime), 0, N'NUM', N'C0008')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (215, NULL, NULL, N'肌纤维(Muscle Fibers)', N'', NULL, CAST(0x0000A6130105CFF1 AS DateTime), NULL, CAST(0x0000A6130105CFF1 AS DateTime), 0, N'NUM', N'C0008')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (216, NULL, NULL, N'寄生虫（Parasite）', N'', NULL, CAST(0x0000A6130105CFF4 AS DateTime), NULL, CAST(0x0000A6130105CFF4 AS DateTime), 0, N'NUM', N'C0008')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (217, NULL, NULL, N'中性脂肪(Neutral fats)', N'', NULL, CAST(0x0000A6130105CFF8 AS DateTime), NULL, CAST(0x0000A6130105CFF8 AS DateTime), 0, N'NUM', N'C0008')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (218, NULL, NULL, N'潜血(Occult Blood)', N'', NULL, CAST(0x0000A6130105D04E AS DateTime), NULL, CAST(0x0000A6130105D04E AS DateTime), 0, N'NUM', N'C0009001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (219, NULL, NULL, N'胰蛋白酶(Trypsin)', N'', NULL, CAST(0x0000A6130105D052 AS DateTime), NULL, CAST(0x0000A6130105D052 AS DateTime), 0, N'NUM', N'C0009001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (220, NULL, NULL, N'淀粉(Starch)', N'', NULL, CAST(0x0000A6130105D055 AS DateTime), NULL, CAST(0x0000A6130105D055 AS DateTime), 0, N'NUM', N'C0009001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (221, NULL, NULL, N'犬细小病毒(CPV)', N'', NULL, CAST(0x0000A6130105D059 AS DateTime), NULL, CAST(0x0000A6130105D059 AS DateTime), 0, N'NUM', N'C0009001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (222, NULL, NULL, N'猫瘟病毒(FPV)', N'', NULL, CAST(0x0000A6130105D05C AS DateTime), NULL, CAST(0x0000A6130105D05C AS DateTime), 0, N'NUM', N'C0009001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (223, NULL, NULL, N'犬瘟血(CDV)', N'', NULL, CAST(0x0000A6130105D05F AS DateTime), NULL, CAST(0x0000A6130105D05F AS DateTime), 0, N'NUM', N'C0009001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (224, NULL, NULL, N'猫白血病(FELV)', N'', NULL, CAST(0x0000A6130105D063 AS DateTime), NULL, CAST(0x0000A6130105D063 AS DateTime), 0, N'NUM', N'C0009001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (225, NULL, NULL, N'中性脂肪(Neutral Fats)', N'', NULL, CAST(0x0000A6130105D066 AS DateTime), NULL, CAST(0x0000A6130105D066 AS DateTime), 0, N'NUM', N'C0009001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (226, NULL, NULL, N'肌纤维(Muscle fibers)', N'', NULL, CAST(0x0000A6130105D06A AS DateTime), NULL, CAST(0x0000A6130105D06A AS DateTime), 0, N'NUM', N'C0009001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (227, NULL, NULL, N'冠状病毒(CCV)', N'', NULL, CAST(0x0000A6130105D06E AS DateTime), NULL, CAST(0x0000A6130105D06E AS DateTime), 0, N'NUM', N'C0009001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (228, NULL, NULL, N'传染性腹膜炎(FiPV)', N'', NULL, CAST(0x0000A6130105D071 AS DateTime), NULL, CAST(0x0000A6130105D071 AS DateTime), 0, N'NUM', N'C0009001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (229, NULL, NULL, N'寄生虫(Parasite)', N'', NULL, CAST(0x0000A6130105D075 AS DateTime), NULL, CAST(0x0000A6130105D075 AS DateTime), 0, N'NUM', N'C0009001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (230, NULL, NULL, N'犬瘟分(CDV)', N'', NULL, CAST(0x0000A6130105D078 AS DateTime), NULL, CAST(0x0000A6130105D078 AS DateTime), 0, N'NUM', N'C0009001')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (231, NULL, NULL, N'气味(Odor)', N'', NULL, CAST(0x0000A6130105D0B7 AS DateTime), NULL, CAST(0x0000A6130105D0B7 AS DateTime), 0, N'NUM', N'C0009002')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (232, NULL, NULL, N'尿胆红素(Bilirubin)', N'', NULL, CAST(0x0000A6130105D0BD AS DateTime), NULL, CAST(0x0000A6130105D0BD AS DateTime), 0, N'NUM', N'C0009002')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (233, NULL, NULL, N'潜血(Occult Blood)', N'', NULL, CAST(0x0000A6130105D0C3 AS DateTime), NULL, CAST(0x0000A6130105D0C3 AS DateTime), 0, N'NUM', N'C0009002')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (234, NULL, NULL, N'尿色(Color)', N'', NULL, CAST(0x0000A6130105D0C8 AS DateTime), NULL, CAST(0x0000A6130105D0C8 AS DateTime), 0, N'NUM', N'C0009002')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (235, NULL, NULL, N'葡萄糖(Glucose)', N'', NULL, CAST(0x0000A6130105D0CD AS DateTime), NULL, CAST(0x0000A6130105D0CD AS DateTime), 0, N'NUM', N'C0009002')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (236, NULL, NULL, N'酮体(Ketones)', N'', NULL, CAST(0x0000A6130105D0D1 AS DateTime), NULL, CAST(0x0000A6130105D0D1 AS DateTime), 0, N'NUM', N'C0009002')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (237, NULL, NULL, N'尿沉渣检验(Sediment examination)', N'', NULL, CAST(0x0000A6130105D0D4 AS DateTime), NULL, CAST(0x0000A6130105D0D4 AS DateTime), 0, N'NUM', N'C0009002')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (238, NULL, NULL, N'透明度(Transparency)', N'', NULL, CAST(0x0000A6130105D0D8 AS DateTime), NULL, CAST(0x0000A6130105D0D8 AS DateTime), 0, N'NUM', N'C0009002')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (239, NULL, NULL, N'酸碱反应(Ph)', N'', NULL, CAST(0x0000A6130105D0DB AS DateTime), NULL, CAST(0x0000A6130105D0DB AS DateTime), 0, N'NUM', N'C0009002')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (240, NULL, NULL, N'蛋白(Protein)', N'', NULL, CAST(0x0000A6130105D0DF AS DateTime), NULL, CAST(0x0000A6130105D0DF AS DateTime), 0, N'NUM', N'C0009002')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (241, NULL, NULL, N'尿胆原(Urobilinogen)', N'', NULL, CAST(0x0000A6130105D0E2 AS DateTime), NULL, CAST(0x0000A6130105D0E2 AS DateTime), 0, N'NUM', N'C0009002')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (242, NULL, NULL, N'比重(Specific Gravity)', N'', NULL, CAST(0x0000A6130105D0E5 AS DateTime), NULL, CAST(0x0000A6130105D0E5 AS DateTime), 0, N'NUM', N'C0009002')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (243, NULL, NULL, N'亚硝酸盐(Nitrite)', N'', NULL, CAST(0x0000A6130105D0E9 AS DateTime), NULL, CAST(0x0000A6130105D0E9 AS DateTime), 0, N'NUM', N'C0009002')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (244, NULL, NULL, N'肿瘤(Neoplasms)', N'', NULL, CAST(0x0000A6130105D11B AS DateTime), NULL, CAST(0x0000A6130105D11B AS DateTime), 0, N'NUM', N'C0009003')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (245, NULL, NULL, N'真菌(Fungi)', N'', NULL, CAST(0x0000A6130105D11F AS DateTime), NULL, CAST(0x0000A6130105D11F AS DateTime), 0, N'NUM', N'C0009003')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (246, NULL, NULL, N'疥螨(Sarcoptls)', N'', NULL, CAST(0x0000A6130105D122 AS DateTime), NULL, CAST(0x0000A6130105D122 AS DateTime), 0, N'NUM', N'C0009003')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (247, NULL, NULL, N'细菌(Bacteria)', N'', NULL, CAST(0x0000A6130105D125 AS DateTime), NULL, CAST(0x0000A6130105D125 AS DateTime), 0, N'NUM', N'C0009003')
INSERT [dbo].[B_Medic_ChemicalExamType] ([ID], [ItemCode], [ItemName], [CheTestName], [CheTestUnit], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted], [IndexType], [CateNo]) VALUES (248, NULL, NULL, N'蠕形螨(Demodex)', N'', NULL, CAST(0x0000A6130105D129 AS DateTime), NULL, CAST(0x0000A6130105D129 AS DateTime), 0, N'NUM', N'C0009003')
SET IDENTITY_INSERT [dbo].[B_Medic_ChemicalExamType] OFF
/****** Object:  Table [dbo].[B_Medic_ChemicalExamDetail]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[B_Medic_ChemicalExamDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ExamTypeID] [int] NULL,
	[ChemicalExamID] [int] NULL,
	[ChemicalExamName] [varchar](50) NULL,
	[ExamName] [varchar](50) NULL,
	[ExamValue] [numeric](18, 2) NULL,
	[ExamUpLimit] [numeric](18, 2) NULL,
	[ExamDownlimit] [numeric](18, 2) NULL,
	[CheTestWord] [varchar](50) NULL,
	[ExamPiece] [varchar](50) NULL,
	[ExamAge] [varchar](50) NULL,
	[ExamSign] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
	[PaidStatus] [varchar](50) NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
	[IndexType] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[B_Medic_ChemicalExam]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[B_Medic_ChemicalExam](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MedicRecordCode] [varchar](50) NULL,
	[MedicRecordID] [int] NULL,
	[ChemicalExamCode] [varchar](50) NULL,
	[ChemicalExamCost] [numeric](18, 2) NULL,
	[CheTestName] [varchar](50) NULL,
	[CheTestUnit] [varchar](50) NULL,
	[ChemicalResult] [text] NULL,
	[ItemCode] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
	[PaidStatus] [varchar](50) NULL,
	[GestName] [varchar](50) NULL,
	[Doctor] [varchar](50) NULL,
	[ExamTime] [datetime] NULL,
	[PetName] [varchar](50) NULL,
	[PaidTime] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[B_Medic_Appliance]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[B_Medic_Appliance](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[MedicRecordCode] [varchar](50) NULL,
	[MedicRecordID] [int] NULL,
	[ItemCode] [varchar](50) NULL,
	[ItemName] [varchar](100) NULL,
	[ItemNum] [decimal](18, 2) NULL,
	[ItemStandard] [varchar](50) NULL,
	[SellPrice] [decimal](18, 2) NULL,
	[IsCount] [varchar](50) NULL,
	[Unit] [varchar](50) NULL,
	[ExecutorID] [int] NULL,
	[ExecutorName] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
	[PaidStatus] [varchar](50) NULL,
	[PaidTime] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
 CONSTRAINT [PK_B_Medic_Appliance] PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[B_ItemType_Supplies]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[B_ItemType_Supplies](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ItemCode] [varchar](50) NULL,
	[ItemNum] [decimal](18, 2) NULL,
	[UNIT] [varchar](50) NULL,
	[SuppliesCode] [varchar](50) NULL,
	[IsDeleted] [int] NOT NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreateON] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[Sign] [varchar](50) NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[B_ItemType_ChemicalExam]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[B_ItemType_ChemicalExam](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ItemCode] [varchar](50) NULL,
	[ChemicalExamID] [int] NULL,
	[IsDeleted] [int] NOT NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreateON] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[B_ItemSingleDetail]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[B_ItemSingleDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ItemCode] [varchar](50) NULL,
	[BatchCode] [varchar](100) NULL,
	[BarCode] [varchar](100) NULL,
	[ItemName] [varchar](100) NULL,
	[PackageUnit] [varchar](50) NULL,
	[ItemStandard] [varchar](50) NULL,
	[DrugForm] [varchar](50) NULL,
	[ItemStyle] [varchar](50) NULL,
	[IsVIPDiscount] [int] NULL,
	[VIPSellPrice] [numeric](18, 2) NULL,
	[InputPrice] [numeric](18, 2) NULL,
	[SellPrice] [numeric](18, 2) NULL,
	[InfactProfit] [numeric](18, 0) NULL,
	[ProduceDate] [datetime] NULL,
	[InputDate] [datetime] NULL,
	[KeepDays] [int] NULL,
	[OutDateTime] [datetime] NULL,
	[ItemSellCount] [int] NULL,
	[ItemBulk] [int] NULL,
	[IsStandardize] [int] NULL,
	[DealerCode] [varchar](50) NULL,
	[DealerName] [varchar](100) NULL,
	[SellMan] [varchar](100) NULL,
	[WarehouseCode] [varchar](50) NULL,
	[WarehouseID] [int] NULL,
	[Status] [varchar](50) NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[B_ItemCountChangeReason]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[B_ItemCountChangeReason](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ItemCode] [varchar](50) NULL,
	[ItemName] [varchar](50) NULL,
	[WarehouseID] [int] NULL,
	[WarehouseName] [varchar](50) NULL,
	[SourceCount] [numeric](18, 2) NULL,
	[NewCount] [numeric](18, 2) NULL,
	[SourceScatteredCount] [numeric](18, 2) NULL,
	[NewScatteredCount] [decimal](18, 2) NULL,
	[ChangeReason] [text] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
	[SourceBatchNumber] [varchar](50) NULL,
	[NewBatchNumber] [varchar](200) NULL,
	[SourceOutDateTime] [datetime] NULL,
	[NewOutDateTime] [datetime] NULL,
	[ItemCountID] [int] NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[B_ItemCount]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[B_ItemCount](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ItemCode] [varchar](50) NULL,
	[BarCode] [varchar](50) NULL,
	[ItemName] [varchar](100) NULL,
	[PackageUnit] [varchar](50) NULL,
	[ItemStandard] [varchar](50) NULL,
	[DrugForm] [varchar](50) NULL,
	[ItemStyle] [varchar](50) NULL,
	[ItemBulk] [int] NULL,
	[SellPrice] [numeric](18, 2) NULL,
	[IsVIPDiscount] [varchar](50) NULL,
	[VIPSellPrice] [numeric](18, 2) NULL,
	[ItemCountNum] [numeric](18, 2) NULL,
	[ScatteredCountNum] [numeric](18, 2) NULL,
	[InputPrice] [numeric](18, 2) NULL,
	[WareUpLimit] [int] NULL,
	[WareDownLimit] [int] NULL,
	[WarehouseName] [varchar](50) NULL,
	[WarehouseID] [int] NULL,
	[Status] [varchar](50) NULL,
	[Remark] [text] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
	[ManufacturerCode] [varchar](50) NULL,
	[ManufacturerName] [varchar](200) NULL,
	[BatchNumber] [varchar](50) NOT NULL,
	[OutDateTime] [datetime] NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[B_InventoryLog]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[B_InventoryLog](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[InventoryCode] [varchar](50) NOT NULL,
	[Inventory] [varchar](50) NOT NULL,
	[WarehouseID] [varchar](50) NOT NULL,
	[ItemCode] [varchar](50) NOT NULL,
	[BatchNumber] [varchar](50) NULL,
	[ItemCountNum] [numeric](18, 2) NULL,
	[ScatteredCountNum] [numeric](18, 2) NULL,
	[CreatedBy] [varchar](50) NOT NULL,
	[CreatedOn] [datetime] NOT NULL,
	[ModifiedBy] [varchar](50) NOT NULL,
	[ModifiedOn] [datetime] NOT NULL,
	[IsDeleted] [int] NOT NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[B_InputMoneyRecord]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[B_InputMoneyRecord](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[InputMoneyDate] [datetime] NULL,
	[GestName] [varchar](50) NULL,
	[GestID] [int] NULL,
	[InputMoney] [numeric](18, 2) NULL,
	[VIPAccount] [numeric](18, 0) NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[B_InHospital_RecordDetail]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[B_InHospital_RecordDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[InHospitalID] [int] NULL,
	[InHospitalNo] [varchar](50) NULL,
	[ItemCode] [varchar](50) NULL,
	[ItemName] [varchar](100) NULL,
	[TotalCost] [decimal](20, 6) NULL,
	[ItemNum] [numeric](18, 2) NULL,
	[SellPrice] [numeric](18, 2) NULL,
	[ItemStyle] [varchar](50) NULL,
	[RecipeUnit] [varchar](50) NULL,
	[ItemStandard] [varchar](50) NULL,
	[UseWay] [varchar](max) NULL,
	[ItemCountStatus] [varchar](50) NULL,
	[PaidStatus] [varchar](50) NULL,
	[PaidTime] [datetime] NULL,
	[WarehouseID] [int] NULL,
	[Status] [varchar](50) NULL,
	[RecordTime] [datetime] NULL,
	[Remark] [text] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
	[BatchNumber] [varchar](50) NULL,
	[OutDateTime] [datetime] NULL,
	[ManufacturerCode] [varchar](50) NULL,
	[ManufacturerName] [varchar](200) NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[B_InHospital_Record]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[B_InHospital_Record](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[InHospitalNo] [varchar](50) NULL,
	[GestID] [int] NULL,
	[GestCode] [varchar](50) NULL,
	[GestName] [varchar](100) NULL,
	[VIPNo] [varchar](50) NULL,
	[MobilePhone] [varchar](50) NULL,
	[PetID] [int] NULL,
	[PetName] [varchar](50) NULL,
	[StartTime] [datetime] NULL,
	[EndTime] [datetime] NULL,
	[InputMoney] [numeric](18, 2) NULL,
	[PreDays] [int] NULL,
	[RealDays] [int] NULL,
	[CageNo] [varchar](50) NULL,
	[ItemCode] [varchar](50) NULL,
	[ItemName] [varchar](100) NULL,
	[Price] [numeric](18, 2) NULL,
	[RealPrice] [numeric](18, 2) NULL,
	[TotalMoney] [decimal](20, 6) NULL,
	[Status] [varchar](50) NULL,
	[RecordTime] [datetime] NULL,
	[PaidStatus] [varchar](50) NULL,
	[PaidTime] [datetime] NULL,
	[ManagerBy] [varchar](50) NULL,
	[Remark] [text] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[UpdateTime] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
	[MerchandiserName] [varchar](50) NULL,
	[MerchandiserID] [int] NULL,
	[ManagerID] [int] NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[B_InHospital_PrescriptionDetail]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[B_InHospital_PrescriptionDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[PrescriptionID] [int] NULL,
	[ItemCode] [varchar](50) NULL,
	[ItemName] [varchar](50) NULL,
	[ItemCost] [decimal](18, 2) NULL,
	[ItemNum] [numeric](18, 2) NULL,
	[RecipeUnit] [varchar](50) NULL,
	[UseWay] [varchar](max) NULL,
	[GroupName] [varchar](50) NULL,
	[PaidStatus] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
	[ItemCountStatus] [varchar](50) NULL,
	[Remark] [text] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[PaidTime] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
	[ManufacturerCode] [varchar](50) NULL,
	[ManufacturerName] [varchar](200) NULL,
	[ExecutorID] [int] NULL,
	[ExecutorName] [varchar](50) NULL,
	[Frequency] [varchar](200) NULL,
	[Dose] [varchar](50) NULL,
	[UseUnit] [varchar](50) NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[B_InHospital_Prescription]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[B_InHospital_Prescription](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[InHospitalNo] [varchar](50) NULL,
	[InHospitalID] [int] NULL,
	[PrescriptionCode] [varchar](50) NULL,
	[PrescriptionCost] [decimal](20, 6) NULL,
	[GestName] [varchar](50) NULL,
	[PetName] [varchar](50) NULL,
	[SickFileCode] [varchar](50) NULL,
	[Doctor] [varchar](50) NULL,
	[PaidStatus] [varchar](50) NULL,
	[PaidTime] [datetime] NULL,
	[Status] [varchar](50) NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[B_InHospital_Health]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[B_InHospital_Health](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[InHospitalNo] [varchar](50) NULL,
	[Remark] [text] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[B_GestPaidRecord]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[B_GestPaidRecord](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[GestID] [int] NULL,
	[GestName] [varchar](50) NULL,
	[OperateAction] [varchar](50) NULL,
	[OperateContent] [varchar](50) NULL,
	[SettleAccountsID] [int] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[B_Foster_RecordDetail]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[B_Foster_RecordDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FosterID] [int] NULL,
	[FosterNo] [varchar](50) NULL,
	[ItemCode] [varchar](50) NULL,
	[ItemName] [varchar](100) NULL,
	[TotalCost] [decimal](20, 6) NULL,
	[ItemNum] [numeric](18, 2) NULL,
	[SellPrice] [numeric](18, 2) NULL,
	[ItemStyle] [varchar](50) NULL,
	[RecipeUnit] [varchar](50) NULL,
	[ItemStandard] [varchar](50) NULL,
	[UseWay] [varchar](max) NULL,
	[ItemCountStatus] [varchar](50) NULL,
	[PaidStatus] [varchar](50) NULL,
	[PaidTime] [datetime] NULL,
	[Status] [varchar](50) NULL,
	[RecordTime] [datetime] NULL,
	[Remark] [text] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[WarehouseID] [int] NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
	[ManufacturerCode] [varchar](50) NULL,
	[ManufacturerName] [varchar](200) NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[B_Foster_Record]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[B_Foster_Record](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FosterNo] [varchar](50) NULL,
	[GestID] [int] NULL,
	[GestCode] [varchar](50) NULL,
	[GestName] [varchar](100) NULL,
	[VIPNo] [varchar](50) NULL,
	[MobilePhone] [varchar](50) NULL,
	[PetID] [int] NULL,
	[PetName] [varchar](50) NULL,
	[StartTime] [datetime] NULL,
	[EndTime] [datetime] NULL,
	[InputMoney] [numeric](18, 2) NULL,
	[PreDays] [int] NULL,
	[RealDays] [int] NULL,
	[CageNo] [varchar](50) NULL,
	[ItemCode] [varchar](50) NULL,
	[ItemName] [varchar](100) NULL,
	[Price] [numeric](18, 2) NULL,
	[RealPrice] [numeric](18, 2) NULL,
	[TotalMoney] [decimal](20, 6) NULL,
	[PaidStatus] [varchar](50) NULL,
	[PaidTime] [datetime] NULL,
	[Status] [varchar](50) NULL,
	[RecordTime] [datetime] NULL,
	[ManagerBy] [varchar](50) NULL,
	[Remark] [text] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[UpdateTime] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
	[MerchandiserName] [varchar](50) NULL,
	[MerchandiserID] [int] NULL,
	[ManagerID] [int] NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[B_Foster_Health]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[B_Foster_Health](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FosterNo] [varchar](50) NULL,
	[Remark] [text] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[B_Finance_SettleAccountsDetail]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[B_Finance_SettleAccountsDetail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SettleAccountsDetailID] [int] NULL,
	[ItemCode] [varchar](50) NULL,
	[ItemName] [varchar](100) NULL,
	[PackageUnit] [varchar](50) NULL,
	[ItemStandard] [varchar](50) NULL,
	[ItemBulk] [int] NULL,
	[SellPrice] [numeric](18, 2) NULL,
	[TotalNum] [numeric](18, 2) NULL,
	[TotalCost] [decimal](20, 6) NULL,
	[InfactPrice] [decimal](20, 6) NULL,
	[DiscountMoney] [decimal](20, 6) NULL,
	[BusiTypeID] [int] NULL,
	[RelationID] [int] NULL,
	[ItemDescript] [varchar](100) NULL,
	[PaidStatus] [varchar](50) NULL,
	[PaidTime] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
	[RelationDetailID] [int] NULL,
	[SumDiscountMoney] [decimal](18, 6) NULL,
	[SumOriginalMoney] [decimal](18, 6) NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[B_Finance_SettleAccounts]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[B_Finance_SettleAccounts](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[SettleCode] [varchar](50) NULL,
	[GestID] [int] NULL,
	[GestCode] [varchar](50) NULL,
	[GestName] [varchar](100) NULL,
	[PetCode] [varchar](50) NULL,
	[PetName] [varchar](50) NULL,
	[TotalMoney] [numeric](20, 6) NULL,
	[DisCountMoney] [numeric](20, 6) NULL,
	[ShouldPaidMoney] [numeric](20, 6) NULL,
	[FactPaidMoney] [numeric](20, 6) NULL,
	[BackMoney] [numeric](18, 2) NULL,
	[BackReason] [text] NULL,
	[PaidStatus] [varchar](50) NULL,
	[PaidTime] [datetime] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
	[ChangeMoney] [decimal](18, 2) NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[B_FIFO_Log]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[B_FIFO_Log](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[Type] [varchar](50) NOT NULL,
	[BillCode] [varchar](50) NOT NULL,
	[DetailId] [int] NULL,
	[WarehouseID] [int] NULL,
	[ItemCode] [varchar](50) NOT NULL,
	[BatchNumber] [varchar](50) NULL,
	[OutDateTime] [datetime] NULL,
	[ItemCountNum] [numeric](18, 2) NULL,
	[Sign] [int] NULL,
	[CreatedOn] [datetime] NULL,
	[Unit] [varchar](50) NULL,
	[InputPrice] [decimal](18, 6) NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[B_ExpensesExpend]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[B_ExpensesExpend](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CateNo] [varchar](50) NOT NULL,
	[CateName] [varchar](50) NOT NULL,
	[InputDate] [datetime] NOT NULL,
	[Amount] [decimal](18, 2) NOT NULL,
	[Describe] [varchar](8000) NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[B_Enterprise]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[B_Enterprise](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[FullName] [varchar](50) NULL,
	[ShortName] [varchar](50) NULL,
	[EntNo] [varchar](50) NULL,
	[ResponseMan] [varchar](50) NULL,
	[EmailNO] [varchar](50) NULL,
	[Address] [varchar](50) NULL,
	[TelPhone] [varchar](50) NULL,
	[Fax] [varchar](50) NULL,
	[EMail] [varchar](50) NULL,
	[AreaCode] [varchar](50) NULL,
	[SerialNumber] [varchar](50) NULL,
	[Remark] [text] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
SET IDENTITY_INSERT [dbo].[B_Enterprise] ON
INSERT [dbo].[B_Enterprise] ([ID], [FullName], [ShortName], [EntNo], [ResponseMan], [EmailNO], [Address], [TelPhone], [Fax], [EMail], [AreaCode], [SerialNumber], [Remark], [CreatedBy], [CreatedOn], [ModifiedBy], [ModifiedOn], [IsDeleted]) VALUES (1, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, NULL, CAST(0x0000A55300C6A458 AS DateTime), NULL, CAST(0x0000A55300C6A458 AS DateTime), 0)
SET IDENTITY_INSERT [dbo].[B_Enterprise] OFF
/****** Object:  Table [dbo].[B_Check_WareHouse_Detail]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[B_Check_WareHouse_Detail](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[ItemCountID] [int] NOT NULL,
	[ItemCode] [varchar](50) NULL,
	[ItemCountNum] [numeric](18, 2) NULL,
	[ItemBulk] [int] NULL,
	[ScatteredCountNum] [numeric](18, 2) NULL,
	[PackageUnit] [varchar](50) NULL,
	[RecipeUnit] [varchar](50) NULL,
	[BatchNumber] [varchar](50) NOT NULL,
	[OutDateTime] [datetime] NULL,
	[OldItemCountNum] [numeric](18, 2) NULL,
	[OldScatteredCountNum] [numeric](18, 2) NULL,
	[OldOutDateTime] [datetime] NULL,
	[Remark] [text] NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[IsDeleted] [int] NOT NULL,
	[WarehouseID] [int] NULL,
	[WarehouseName] [varchar](200) NULL,
	[CheckNumber] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[B_Check_WareHouse]    Script Date: 06/02/2016 16:19:47 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[B_Check_WareHouse](
	[ID] [int] IDENTITY(1,1) NOT NULL,
	[CheckDate] [datetime] NULL,
	[CheckMan] [varchar](50) NULL,
	[Status] [varchar](50) NULL,
	[FileName] [nvarchar](500) NULL,
	[ItemCount] [int] NOT NULL,
	[CreatedBy] [varchar](50) NULL,
	[CreatedOn] [datetime] NULL,
	[ModifiedBy] [varchar](50) NULL,
	[ModifiedOn] [datetime] NULL,
	[Describe] [varchar](2500) NULL,
	[IsDeleted] [int] NOT NULL,
	[CheckNumber] [varchar](50) NOT NULL,
PRIMARY KEY CLUSTERED
(
	[ID] ASC
)WITH (PAD_INDEX  = OFF, STATISTICS_NORECOMPUTE  = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS  = ON, ALLOW_PAGE_LOCKS  = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
SET ANSI_PADDING OFF
GO
/****** Object:  View [dbo].[V_MedicAndPetAndGest]    Script Date: 06/02/2016 16:19:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_MedicAndPetAndGest]
AS
SELECT
	mmt.ID, mmt.Status,p.GestCode, p.GestName, p.SickFileCode, p.PetName, g.MobilePhone
FROM M_Gest g
INNER JOIN M_Pet p ON g.ID = p.GestID
INNER JOIN B_Medic_MedicTreatRecord mmt ON p.ID = mmt.PetID;
GO
/****** Object:  View [dbo].[V_ItemTypeLeftJoinItemCount]    Script Date: 06/02/2016 16:19:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW  [dbo].[V_ItemTypeLeftJoinItemCount] AS
SELECT    0 as ID ,ic.ItemCountNum,
          ic.ScatteredCountNum,
          ic.WarehouseName, ic.WarehouseID, it.ItemCode,
          it.ItemName,it.PackageUnit, it.RecipeUnit, it.ItemStandard,
          it.ItemStyle, it.BarCode, it.ItemBulk, it.InputPrice, it.DealerName,
          it.DealerCode, it.SellPrice, it.RecipePrice, it.DrugForm, it.WareUpLimit,
          it.WareDownLimit, it.SafeDay, it.UseWay, it.GroupName, it.BusiTypeID, it.CateNo,
          it.IsCount,it.InputCode as InputCode,
          CASE
               WHEN (ic.ItemCode IS NULL) AND (it.IsCount = '否') THEN 0
               WHEN (ic.ItemCode IS NOT Null) THEN 1
          ELSE 4 END AS ItemCountIsDeleted ,it.IsDeleted As ItemTypeIsDeleted,it.IsSell AS ItemTypeIsSell,
          it.ExchangeRewardPoint,it.IsCanExchange
  FROM    M_ItemType AS it
          LEFT OUTER JOIN
                    (
                       Select
                             B_ItemCount.ItemCode,M_Warehouse.WarehouseName,B_ItemCount.WarehouseID,ItemCountNum,ScatteredCountNum
                       From
                             (
                               SELECT
                                     WarehouseID , ItemCode,Sum( ItemCountNum ) as ItemCountNum , Sum( ScatteredCountNum ) as ScatteredCountNum
                               FROM  B_ItemCount
                               Where IsDeleted = 0
                               Group By WarehouseID,ItemCode
                             ) As B_ItemCount
                       INNER JOIN M_Warehouse ON B_ItemCount.WarehouseID = M_Warehouse.ID AND M_Warehouse.IsDeleted = 0
                     ) AS ic ON it.ItemCode = ic.ItemCode;
GO
/****** Object:  View [dbo].[V_ItemTypeExecute]    Script Date: 06/02/2016 16:19:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create VIEW [dbo].[V_ItemTypeExecute]
AS
	SELECT
	         a.ID,[MedicRecordCode],[MedicRecordID], PrescriptionCode,g.GestCode, g.GestName,g.MobilePhone,p.PetName,
	         p.SickFileCode,a.[Doctor],a.[Status],a.PaidStatus,a.CreatedOn,a.ModifiedOn,1 as ExecuteType
    FROM
             [B_Medic_Prescription] a
             INNER JOIN B_Medic_MedicTreatRecord b ON a.MedicRecordID=b.ID
             INNER JOIN M_Pet p ON p.ID = b.PetID
             Inner Join M_Gest g ON g.ID=p.GestID
    Where    a.IsDeleted=0 And b.IsDeleted=0 And p.IsDeleted=0 And g.IsDeleted=0

    Union all

 	SELECT
	         b.ID,b.MedicTreatmentCode AS [MedicRecordCode],b.ID AS [MedicRecordID],'其它' AS PrescriptionCode,
	         g.GestCode,g.GestName,g.MobilePhone,p.PetName,p.SickFileCode, b.CreatedBy as Doctor,
	          (
	            Select top 1 Status From B_Medic_Appliance Where MedicRecordID=b.ID Order By PaidStatus ASC
	           )AS [Status],
	          (
	           Select top 1 PaidStatus From B_Medic_Appliance Where MedicRecordID=b.ID Order By Status ASC
	          )AS PaidStatus,
	         b.[CreatedOn],b.ModifiedOn,2 as ExecuteType
    FROM
             B_Medic_MedicTreatRecord b
             INNER JOIN M_Pet p ON p.ID=b.PetID
             Inner Join M_Gest g ON g.ID=p.GestID
    Where
             b.IsDeleted=0 And p.IsDeleted=0 And g.IsDeleted=0
             And b.ID in (Select MedicRecordID From B_Medic_Appliance where IsDeleted=0);
GO
/****** Object:  View [dbo].[V_ItemTypeAndWareItem]    Script Date: 06/02/2016 16:19:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_ItemTypeAndWareItem] AS
SELECT Top 99999999
          IC.ID as ID ,
          Ic.ItemCountNum as ItemCountNum ,
          IC.ScatteredCountNum as ScatteredCountNum,
          IC.WarehouseName,
          IC.WarehouseID,
          IT.ItemCode,
          IT.ItemName,
          IT.PackageUnit,
          IT.RecipeUnit,
          IT.ItemStandard,
          IT.ItemStyle,
          IT.BarCode,
          IT.ItemBulk,
          IC.InputPrice,
          IT.DealerName,
          IT.DealerCode,
          IT.SellPrice,
          IT.RecipePrice,
          IT.DrugForm,
          IT.WareUpLimit,
          IT.WareDownLimit,
          IT.SafeDay,
          IT.UseWay,
          IT.GroupName,
          IT.BusiTypeID,
          IT.CateNo,
          IT.IsCount,
          IT.InputCode as InputCode,
          2 AS ItemCountIsDeleted ,IT.IsDeleted As ItemTypeIsDeleted,
          IC.BatchNumber,IC.OutDateTime
  FROM    M_ItemType AS it
          Inner Join
                    (
                       SELECT
                             B_ItemCount.ID,
                             B_ItemCount.ItemCode,M_Warehouse.WarehouseName,
                             B_ItemCount.WarehouseID,B_ItemCount.BatchNumber,
                             B_ItemCount.OutDateTime,B_ItemCount.ScatteredCountNum,
                             B_ItemCount.ItemCountNum,B_ItemCount.InputPrice
                       FROM  B_ItemCount
                            INNER JOIN M_Warehouse ON B_ItemCount.WarehouseID = M_Warehouse.ID AND M_Warehouse.IsDeleted = 0 AND B_ItemCount.IsDeleted = 0
                     ) AS ic ON (It.ItemCode = Ic.ItemCode)
  Order By ic.WarehouseID, it.ItemCode , ic.OutDateTime;
GO
/****** Object:  View [dbo].[V_ItemTypeAndItemCount]    Script Date: 06/02/2016 16:19:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_ItemTypeAndItemCount]
AS
SELECT   ic.ID, ic.ItemCode, ic.ItemCountNum, ic.ScatteredCountNum, ic.WarehouseName, ic.WarehouseID, it.ItemName,
                it.PackageUnit, it.RecipeUnit, it.ItemStandard, it.ItemStyle, it.BarCode, it.ItemBulk, ic.InputPrice, it.DealerName,
                it.DealerCode, it.SellPrice, it.RecipePrice, it.DrugForm, it.WareUpLimit, it.WareDownLimit, it.SafeDay, it.UseWay,
                it.GroupName, it.BusiTypeID, it.CateNo, ic.BatchNumber, ic.OutDateTime, ic.ManufacturerCode, ic.ManufacturerName,
                it.InputCode
FROM      dbo.M_ItemType AS it INNER JOIN
                dbo.B_ItemCount AS ic ON it.ItemCode = ic.ItemCode AND it.IsDeleted = 0 AND ic.IsDeleted = 0;
GO
/****** Object:  View [dbo].[V_ItemTypeAndCheExamTypeAndTypeDetail]    Script Date: 06/02/2016 16:19:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_ItemTypeAndCheExamTypeAndTypeDetail]
AS
SELECT
	it.ItemCode, cet.CheTestName, cetd.*
FROM M_ItemType it
Inner Join B_Medic_ChemicalExamType cet On it.ItemCode=cet.ItemCode AND it.IsDeleted=0 AND cet.IsDeleted=0
Inner Join B_Medic_ChemicalExamTypeDetail cetd On cet.ID=cetd.CheTestTypdID AND cetd.IsDeleted=0;
GO
/****** Object:  View [dbo].[V_HasPaidTotal]    Script Date: 06/02/2016 16:19:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_HasPaidTotal]
AS
SELECT
	sa.SettleCode, sa.GestID, sa.GestName,
	sa.TotalMoney, sa.DisCountMoney, sa.ShouldPaidMoney,
	sa.FactPaidMoney, sa.BackMoney,sa.PaidTime,
	sad.ItemName, sad.PackageUnit, sad.SellPrice,
	sad.TotalNum, sad.TotalCost,
	sad.InfactPrice,sad.ItemDescript,
	it.InputPrice,it.ItemBulk,
	sad.DiscountMoney as DetailDiscountMoney
FROM B_Finance_SettleAccounts sa
INNER JOIN B_Finance_SettleAccountsDetail sad ON sa.ID = sad.SettleAccountsDetailID AND sa.IsDeleted=0 AND sad.IsDeleted=0
Left JOIN M_ItemType it ON sad.ItemCode = it.ItemCode AND it.IsDeleted=0;
GO
/****** Object:  View [dbo].[V_GestInHospitalRecord]    Script Date: 06/02/2016 16:19:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_GestInHospitalRecord] AS
SELECT h.ID, h.InHospitalNo, h.GestID, g.GestCode, g.GestName,
	g.VIPNo, g.MobilePhone, h.PetID, h.PetName, h.StartTime,
	h.EndTime, h.InputMoney, h.PreDays, h.RealDays,
	h.CageNo, h.ItemCode, h.ItemName, h.Price,
	h.RealPrice, h.TotalMoney, h.Status, h.RecordTime,
	h.PaidStatus, h.PaidTime, h.ManagerBy,pm.PersonName AS ManagerName,
	h.Remark, h.CreatedBy, h.CreatedOn, h.ModifiedBy, h.ModifiedOn,
	h.MerchandiserID,p.PersonName AS MerchandiserName, h.UpdateTime
FROM M_Gest g INNER JOIN B_InHospital_Record h ON g.ID = h.GestID
			  INNER JOIN M_Persons pm ON h.ManagerID=pm.ID
              LEFT JOIN M_Persons p ON h.MerchandiserID=p.ID
WHERE g.IsDeleted=0 AND h.IsDeleted=0 AND pm.IsDeleted=0 ;
GO
/****** Object:  View [dbo].[V_GestFosterRecord]    Script Date: 06/02/2016 16:19:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_GestFosterRecord] AS
SELECT fr.ID, fr.FosterNo, fr.GestID, g.GestCode, g.GestName, g.VIPNo,
  g.MobilePhone, fr.PetID, fr.PetName, fr.StartTime, fr.EndTime,
  fr.InputMoney, fr.PreDays, fr.RealDays, fr.CageNo, fr.ItemCode,
  fr.ItemName, fr.Price, fr.RealPrice, fr.TotalMoney, fr.PaidStatus,
  fr.PaidTime, fr.Status, fr.RecordTime, fr.ManagerBy,pm.PersonName AS ManagerName,
  fr.Remark, fr.CreatedBy, fr.CreatedOn, fr.ModifiedBy, fr.ModifiedOn,
  fr.MerchandiserID,p.PersonName AS MerchandiserName,fr.UpdateTime
FROM M_Gest g INNER JOIN B_Foster_Record fr ON g.ID = fr.GestID
              INNER JOIN M_Persons pm ON fr.ManagerID=pm.ID
              LEFT JOIN M_Persons p ON fr.MerchandiserID=p.ID
WHERE g.IsDeleted=0 AND fr.IsDeleted=0 AND pm.IsDeleted=0 ;
GO
/****** Object:  View [dbo].[V_GestAndPetAndRegister]    Script Date: 06/02/2016 16:19:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_GestAndPetAndRegister]
AS
SELECT g.ID AS GestID, g.GestCode, g.GestName, g.MobilePhone,
    g.GestStyle, p.ID AS PetID, p.PetName, p.SickFileCode,
    it.IsCount, it.IsVIPDiscount,
    reg.Register_No, reg.ItemCode,
    reg.ItemName, reg.Register_Price, it.IsSell,
    reg.ID AS RelationID, reg.Operator_Man, reg.Doctor,
    reg.DoctorID, reg.Status, reg.PaidStatus AS RegisterPaidStatus, reg.PaidTime,
    reg.PauseReason, reg.CreatedBy, reg.CreatedOn, reg.ModifiedBy, reg.ModifiedOn,
	reg.AssistantDoctorID,reg.AssistantDoctorName
FROM M_Gest g
INNER JOIN M_Pet p ON g.ID = p.GestID AND g.IsDeleted = 0 AND g.IsDeleted = 0
INNER JOIN B_Medic_RegisterRecord reg ON p.ID = reg.PetID AND reg.IsDeleted = 0
INNER JOIN M_ItemType it ON reg.ItemCode = it.ItemCode AND it.IsDeleted = 0;
GO
/****** Object:  View [dbo].[V_GestAndPet]    Script Date: 06/02/2016 16:19:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_GestAndPet]
AS
SELECT g.GestCode, g.GestName, g.GestBirthday, g.MobilePhone,
    g.GestStyle, p.PetCode, p.PetName, p.PetSex, p.PetRace,
    p.PetBreed, p.SickFileCode, p.BirthStatus, p.MdicTypeName,
    g.Status AS GestStatus, p.Status AS PetStatus, p.PetBirthday, p.PetBodyLong,
    p.PetSkinColor, p.PetSWidth, p.PetWeight, p.PetHeight, p.ID AS PetID, p.GestID,
    reg.Status AS RegStatus, p.CreatedOn, p.DogBandID
FROM M_Gest g
INNER JOIN M_Pet p ON g.ID = p.GestID AND g.IsDeleted = 0 AND p.IsDeleted = 0
LEFT OUTER JOIN
(
	SELECT Status,PetID FROM B_Medic_RegisterRecord WHERE Status <> 'SM00037' AND IsDeleted = 0
) AS reg ON p.ID = reg.PetID;
GO
/****** Object:  View [dbo].[V_ChemicalSupplies]    Script Date: 06/02/2016 16:19:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create VIEW [dbo].[V_ChemicalSupplies]
AS
SELECT   t1.ID, t1.ItemCode , t2.ItemName AS ChemicalExamName,t1.SuppliesCode,
         t3.ItemName AS SuppliesName,
		 t3.IsCount As IsCount,
		 t3.ItemStandard as  ItemStandard,
		 t1.ItemNum, t1.UNIT,t1.IsDeleted, t1.CreatedBy,
                t1.CreateON, t1.ModifiedBy,t1.ModifiedOn,t1.Sign
FROM      dbo.B_ItemType_Supplies AS t1 INNER JOIN
                dbo.M_ItemType AS t2 ON t1.ItemCode = t2.ItemCode INNER JOIN
                dbo.M_ItemType AS t3 ON t1.SuppliesCode = t3.ItemCode
WHERE   (t1.IsDeleted = 0);
GO
/****** Object:  View [dbo].[V_CheckDetail]    Script Date: 06/02/2016 16:19:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create VIEW [dbo].[V_CheckDetail]
AS
SELECT   A.ID, A.ItemCountID, A.CheckNumber, A.ItemCode, B.ItemName, B.DealerName, B.ItemStandard, A.PackageUnit,
                B.RecipeUnit, A.ItemCountNum, A.ScatteredCountNum, A.BatchNumber, A.OutDateTime, A.WarehouseID,
                A.WarehouseName, A.OldItemCountNum, A.OldScatteredCountNum,A.OldOutDateTime,A.IsDeleted,B.ItemBulk
FROM      dbo.B_Check_WareHouse_Detail AS A INNER JOIN
                M_ItemType AS B ON A.ItemCode = B.ItemCode AND A.IsDeleted = 0 AND B.IsDeleted = 0;
GO
/****** Object:  View [dbo].[V_SettleAccountsView]    Script Date: 06/02/2016 16:19:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_SettleAccountsView]
AS

SELECT TOP 9999999
     GestID, ItemCode, ItemName, ItemCost,ItemNum * 1.0 As ItemNum, BusiTypeID, BusinessType ,RelationID,IsVIPDiscount, ItemUnit,RelationDetailID
FROM
(
	SELECT   sds.GestID, sdsd.ItemCode,sdsd.ItemName,sdsd.SellPrice as ItemCost,
			 sdsd.ItemNum, sdsd.BusiTypeID, '直接销售' as BusinessType ,sds.ID AS RelationID,
			 it.IsVIPDiscount,sdsd.SellUnit as ItemUnit, sdsd.ID as RelationDetailID
	FROM    B_Store_DirectSell sds
			INNER JOIN B_Store_DirectSellDetail sdsd ON sds.ID = sdsd.DirectSellID AND sdsd.IsDeleted=0
			LEFT JOIN M_Gest g ON sds.GestID = g.ID AND sds.IsDeleted=0 AND g.IsDeleted=0
			Left JOIN M_ItemType it ON sdsd.ItemCode = it.ItemCode AND it.IsDeleted=0
	WHERE  (sdsd.PaidStatus <> 'SM00051' or sdsd.PaidStatus is null)

   UNION ALL

    SELECT
          t1.GestID, t1.ItemCode, t1.ItemName, t1.Register_Price AS ItemCost,
		  1 as ItemNum, 10 as BusiTypeID, '挂号费用' as BusinessType ,
		  t1.RelationID ,t1.IsVIPDiscount,t2.PackageUnit as ItemUnit,
		  t1.RelationID as RelationDetailID
    FROM  V_GestAndPetAndRegister as t1
          Left Join M_ItemType as t2 On ( t1.itemcode = t2.itemcode )
    WHERE (t1.RegisterPaidStatus is null or t1.RegisterPaidStatus <> 'SM00051')

    UNION ALL

	SELECT p.GestID,mpd.ItemCode,mpd.ItemName,mpd.ItemCost,mpd.ItemNum,
		   it.BusiTypeID,'处置处方' as BusinessType ,mp.ID AS RelationID,
		   it.IsVIPDiscount, mpd.RecipeUnit as ItemUnit,mpd.ID as RelationDetailID
	FROM
		  B_Medic_PrescriptionDetail mpd
		  INNER JOIN B_Medic_Prescription mp ON mp.ID = mpd.PrescriptionID AND mpd.IsDeleted=0
		  INNER JOIN B_Medic_MedicTreatRecord mmt ON mp.MedicRecordID = mmt.ID AND mmt.IsDeleted=0
		  Left JOIN M_Pet p ON mmt.PetID = p.ID
		  Left JOIN M_Gest g ON p.GestID = g.ID
		  Left JOIN M_ItemType it ON mpd.ItemCode = it.ItemCode
	Where mp.IsDeleted=0 And (mpd.PaidStatus is null or mpd.PaidStatus <> 'SM00051')

    UNION ALL

	SELECT
			p.GestID,ce.ItemCode, ce.CheTestName as ItemName,
			ce.ChemicalExamCost AS ItemCost,1 as ItemNum, 4 as BusiTypeID,
			'化验检查' as BusinessType ,ce.ID AS RelationID, it.IsVIPDiscount ,
			it.PackageUnit as ItemUnit,ce.ID AS RelationDetailID
	FROM    B_Medic_ChemicalExam ce
			INNER JOIN B_Medic_MedicTreatRecord mt ON ce.MedicRecordID = mt.ID AND mt.IsDeleted=0
			Left JOIN M_Pet p ON mt.PetID = p.ID
			Left JOIN M_Gest g ON p.GestID = g.ID
			Left JOIN M_ItemType it ON ce.ItemCode = it.ItemCode
	Where   ce.IsDeleted=0 And (ce.PaidStatus is null or ce.PaidStatus <> 'SM00051')

    UNION ALL

	SELECT
		  p.GestID,ve.ItemCode, ve.VedioTestName as ItemName,
		  ve.VedioExamCost AS ItemCost,1 as ItemNum,5 as BusiTypeID,
		  '医学影像' as BusinessType ,ve.ID AS RelationID,it.IsVIPDiscount,
		  it.PackageUnit as ItemUnit,ve.ID as RelationDetailID
	FROM
	      B_Medic_VedioExam ve
		  INNER JOIN B_Medic_MedicTreatRecord mmt ON mmt.ID = ve.MedicRecordID
		  Left JOIN M_Pet p ON mmt.PetID = p.ID
		  Left JOIN M_Gest g ON p.GestID = g.ID
		  Left JOIN M_ItemType it ON ve.ItemCode = it.ItemCode
	Where mmt.IsDeleted=0 AND ve.IsDeleted=0
		  And (ve.PaidStatus is null or ve.PaidStatus <> 'SM00051')

    UNION ALL

	Select
		  	a.[GestID],b.[ItemCode], b.[ItemName], b.SellPrice as ItemCost,
		  	b.InputCount,d.BusiTypeID,'美容服务' as BusinessType ,a.[ID] As RelationID,
		  	d.IsVIPDiscount,b.PackageUnit as ItemUnit,b.ID as RelationDetailID
	From  	B_Service as a
		  	Inner Join B_ServiceDetail as b On ( a.ID = b.ServiceID )
		  	Left JOIN M_Gest c On ( c.[ID] = a.GestID )
		  	Left Join M_ItemType d On ( d.ItemCode = b.[ItemCode] )
	Where 	a.IsDeleted=0 And b.IsDeleted=0
		  	And (b.[PaidStatus] is null or b.[PaidStatus] <> 'SM00051')

    UNION ALL

    SELECT   g.ID as GestID, v.ItemCode, v.ItemName, v.ItemCost, v.ItemNum as ItemNum,
	         9 as BusiTypeID, '驱虫疫苗' as BusinessType , v.ID as RelationID,
	         it.IsVIPDiscount, it.RecipeUnit as ItemUnit,v.ID as RelationDetailID
	FROM     B_Medic_Vaccine v
	         Inner JOIN M_Gest g ON v.GestID = g.ID
	         Inner JOIN M_ItemType it ON v.ItemCode = it.ItemCode
    Where    v.IsDeleted=0 AND (v.PaidStatus is null or v.PaidStatus <> 'SM00051')

    UNION ALL

      SELECT g.ID as GestID, frd.ItemCode, frd.ItemName, frd.SellPrice as ItemCost,
	         frd.ItemNum, it.BusiTypeID, '寄养费用' as BusinessType , fr.ID as RelationID,
	         it.IsVIPDiscount, it.RecipeUnit as ItemUnit,frd.ID as RelationDetailID
	  FROM   B_Foster_Record fr
			 INNER JOIN B_Foster_RecordDetail frd ON fr.FosterNo = frd.FosterNo
			 Left JOIN M_Gest g ON fr.GestID = g.ID
             Left JOIN M_ItemType it ON frd.ItemCode = it.ItemCode
      Where  fr.IsDeleted=0 AND frd.IsDeleted=0
	         AND (frd.PaidStatus is null or frd.PaidStatus <> 'SM00051')

	 UNION ALL
	  --未出院继续算费用
      SELECT g.ID as GestID, frd.ItemCode, frd.ItemName, frd.SellPrice as ItemCost,
	         DATEDIFF(day,frd.PaidTime,GETDATE()) As ItemNum, it.BusiTypeID,
	         '寄养费用' as BusinessType , fr.ID as RelationID,
	         it.IsVIPDiscount, it.RecipeUnit as ItemUnit,frd.ID as RelationDetailID
	  FROM   B_Foster_Record fr
			 INNER JOIN B_Foster_RecordDetail frd
			 ON fr.FosterNo = frd.FosterNo And fr.ItemCode = frd.ItemCode
			 Left JOIN M_Gest g ON fr.GestID = g.ID
             Left JOIN M_ItemType it ON frd.ItemCode = it.ItemCode
      Where  fr.IsDeleted=0 AND frd.IsDeleted=0
	         AND frd.PaidStatus = 'SM00051' And fr.Status = 'SM00049'
	         And Convert(varchar,frd.PaidTime,23) < Convert(varchar,GETDATE(),23)

   UNION ALL

	  --未出院继续算费用
      SELECT g.ID as GestID, frd.ItemCode, frd.ItemName, frd.SellPrice as ItemCost,
	         DATEDIFF(day,frd.PaidTime,fr.EndTime) As ItemNum, it.BusiTypeID,
	         '寄养费用' as BusinessType , fr.ID as RelationID,
	         it.IsVIPDiscount, it.RecipeUnit as ItemUnit,frd.ID as RelationDetailID
	  FROM   B_Foster_Record fr
			 INNER JOIN B_Foster_RecordDetail frd
			 ON fr.FosterNo = frd.FosterNo And fr.ItemCode = frd.ItemCode
			 Left JOIN M_Gest g ON fr.GestID = g.ID
             Left JOIN M_ItemType it ON frd.ItemCode = it.ItemCode
      Where  fr.IsDeleted=0 AND frd.IsDeleted=0
	         AND frd.PaidStatus = 'SM00051' And fr.Status = 'SM00050'
	         And Convert(varchar,frd.PaidTime,23) < Convert(varchar,fr.EndTime,23)

    UNION ALL

    SELECT g.ID as GestID, rd.ItemCode, rd.ItemName, rd.SellPrice as ItemCost,
	       rd.ItemNum, it.BusiTypeID, '住院费用' as BusinessType , r.ID as RelationID,
	       it.IsVIPDiscount, it.RecipeUnit as ItemUnit,rd.ID as RelationDetailID
    FROM   B_InHospital_Record r
           INNER JOIN B_InHospital_RecordDetail rd ON r.InHospitalNo = rd.InHospitalNo
           Left JOIN M_Gest g ON g.ID = r.GestID
           Left JOIN M_ItemType it ON rd.ItemCode = it.ItemCode
    Where  r.IsDeleted=0 AND rd.IsDeleted=0
	       AND (rd.PaidStatus is null or rd.PaidStatus<> 'SM00051')
   UNION ALL

	  --未出院继续算费用
      SELECT g.ID as GestID, frd.ItemCode, frd.ItemName, frd.SellPrice as ItemCost,
	         DATEDIFF(day,frd.PaidTime,GETDATE()) As ItemNum, it.BusiTypeID,
	         '住院费用' as BusinessType , fr.ID as RelationID,
	         it.IsVIPDiscount, it.RecipeUnit as ItemUnit,frd.ID as RelationDetailID
	  FROM   B_InHospital_Record fr
			 INNER JOIN B_InHospital_RecordDetail frd
			 ON fr.InHospitalNo = frd.InHospitalNo And fr.ItemCode = frd.ItemCode
			 Left JOIN M_Gest g ON fr.GestID = g.ID
             Left JOIN M_ItemType it ON frd.ItemCode = it.ItemCode
      Where  fr.IsDeleted=0 AND frd.IsDeleted=0
	         AND frd.PaidStatus = 'SM00051' And fr.Status = 'SM00038'
	         And Convert(varchar,frd.PaidTime,23) < Convert(varchar,GETDATE(),23)

   UNION ALL

	  --未出院继续算费用
      SELECT g.ID as GestID, frd.ItemCode, frd.ItemName, frd.SellPrice as ItemCost,
	         DATEDIFF(day,frd.PaidTime,fr.EndTime) As ItemNum, it.BusiTypeID,
	         '住院费用' as BusinessType , fr.ID as RelationID,
	         it.IsVIPDiscount, it.RecipeUnit as ItemUnit,frd.ID as RelationDetailID
	  FROM   B_InHospital_Record fr
			 INNER JOIN B_InHospital_RecordDetail frd
			 ON fr.InHospitalNo = frd.InHospitalNo And fr.ItemCode = frd.ItemCode
			 Left JOIN M_Gest g ON fr.GestID = g.ID
             Left JOIN M_ItemType it ON frd.ItemCode = it.ItemCode
      Where  fr.IsDeleted=0 AND frd.IsDeleted=0
	         AND frd.PaidStatus = 'SM00051' And fr.Status = 'SM00039'
	         And Convert(varchar,frd.PaidTime,23) < Convert(varchar,fr.EndTime,23)

	UNION ALL

	Select
	        p.GestID ,s.ItemCode,s.ItemName, s.SellPrice as ItemCost,s.ItemNum,i.BusiTypeID,
			'就诊其它' as BusinessType , s.ID as RelationID, i.IsVIPDiscount,
			i.RecipeUnit as ItemUnit, s.ID as RelationDetailID
	From    
	        B_Medic_Appliance s 
	        Inner Join B_Medic_MedicTreatRecord m On m.ID=s.MedicRecordID
	        Left Join M_Pet p On p.ID=m.PetID
		    Left Join M_ItemType i On i.ItemCode= s.ItemCode
	Where   
	        s.IsDeleted =0 And m.IsDeleted=0 And i.IsDeleted=0
	        And (s.PaidStatus is null Or s.PaidStatus <> 'SM00051')

 ) as UnitView
 order by BusinessType;
GO
/****** Object:  View [dbo].[V_NoPaidGest]    Script Date: 06/02/2016 16:19:48 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[V_NoPaidGest] AS 
SELECT 
     g.ID, g.GestCode, g.GestName, g.MobilePhone, g.LastPaidTime, TotalView.TotalSum
FROM M_Gest g 
INNER JOIN
(
	SELECT GestID, SUM(ItemCost*ItemNum) AS TotalSum 
    FROM [V_SettleAccountsView]
     AS b GROUP BY GestID
) AS TotalView ON g.ID = TotalView.GestID;
GO
/****** Object:  Default [DF__B_Enterpr__IsDel__640DD89F]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[B_Enterprise] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__B_Finance__IsDel__6501FCD8]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[B_Finance_SettleAccounts] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__B_Finance__IsDel__65F62111]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[B_Finance_SettleAccountsDetail] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__B_Foster___IsDel__66EA454A]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[B_Foster_Health] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__B_Foster___IsDel__67DE6983]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[B_Foster_Record] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__B_Foster___IsDel__68D28DBC]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[B_Foster_RecordDetail] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__B_GestPai__IsDel__69C6B1F5]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[B_GestPaidRecord] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__B_InHospi__IsDel__6ABAD62E]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[B_InHospital_Health] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__B_InHospi__IsDel__6BAEFA67]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[B_InHospital_Prescription] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__B_InHospi__IsDel__6CA31EA0]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[B_InHospital_PrescriptionDetail] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__B_InHospi__IsDel__6D9742D9]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[B_InHospital_Record] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__B_InHospi__IsDel__6E8B6712]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[B_InHospital_RecordDetail] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__B_InputMo__IsDel__6F7F8B4B]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[B_InputMoneyRecord] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__B_Invento__IsDel__7073AF84]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[B_InventoryLog] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__B_ItemCou__IsDel__7167D3BD]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[B_ItemCount] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__B_ItemCou__IsDel__725BF7F6]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[B_ItemCountChangeReason] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__B_ItemSin__IsDel__73501C2F]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[B_ItemSingleDetail] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__B_Medic_C__IsDel__74444068]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[B_Medic_ChemicalExam] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__B_Medic_C__IsDel__753864A1]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[B_Medic_ChemicalExamDetail] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__B_Medic_C__IsDel__762C88DA]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[B_Medic_ChemicalExamType] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__B_Medic_C__IsDel__7720AD13]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[B_Medic_ChemicalExamTypeDetail] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__B_Medic_M__IsDel__7814D14C]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[B_Medic_MedicTreatRecord] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__B_Medic_P__IsDel__7908F585]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[B_Medic_Prescription] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__B_Medic_P__IsDel__79FD19BE]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[B_Medic_PrescriptionDetail] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__B_Medic_R__IsDel__7AF13DF7]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[B_Medic_RegisterRecord] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__B_Medic_V__IsDel__7BE56230]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[B_Medic_Vaccine] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__B_Medic_V__IsDel__7CD98669]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[B_Medic_VedioExam] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__B_MicroSM__IsDel__7DCDAAA2]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[B_MicroSMSConfig] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__B_PetRace__IsDel__7EC1CEDB]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[B_PetRace] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__B_PetSmal__IsDel__7FB5F314]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[B_PetSmallRace] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__B_PhoneMe__IsDel__00AA174D]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[B_PhoneMessage] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__B_Prompt__IsDele__019E3B86]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[B_Prompt] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__B_SerialN__IsDel__02925FBF]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[B_SerialNumber] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__B_Service__IsDel__038683F8]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[B_Service] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__B_Service__IsDel__047AA831]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[B_ServiceDetail] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__B_Store_D__IsDel__056ECC6A]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[B_Store_DirectSell] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__B_Store_D__IsDel__0662F0A3]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[B_Store_DirectSellDetail] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__B_Warehou__IsDel__075714DC]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[B_Warehouse_BackRecord] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__B_Warehou__IsDel__084B3915]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[B_Warehouse_BackRecordDetail] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__B_Warehou__IsDel__093F5D4E]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[B_Warehouse_InRecord] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__B_Warehou__IsDel__0A338187]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[B_Warehouse_InRecordDetail] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__B_Warehou__IsDel__0B27A5C0]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[B_Warehouse_Inventory] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__B_Warehou__IsDel__0C1BC9F9]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[B_Warehouse_MoveRecord] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__B_Warehou__IsDel__0D0FEE32]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[B_Warehouse_MoveRecordDetail] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__B_Warehou__IsDel__0E04126B]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[B_Warehouse_OutRecord] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__B_Warehou__IsDel__0EF836A4]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[B_Warehouse_OutRecordDetail] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__Evt_Appro__IsDel__0FEC5ADD]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[Evt_ApproveStatusEntity] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__Evt_Check__IsDel__10E07F16]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[Evt_CheckProcessSheet] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__Evt_Check__IsUrg__11D4A34F]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[Evt_CheckProcessSheet] ADD  DEFAULT ((0)) FOR [IsUrgent]
GO
/****** Object:  Default [DF__Evt_Image__IsDel__379037E3]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[Evt_Images] ADD  CONSTRAINT [DF__Evt_Image__IsDel__379037E3]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__Evt_Medic__IsDel__38845C1C]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[Evt_Medic_ChemicalExam] ADD  CONSTRAINT [DF__Evt_Medic__IsDel__38845C1C]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__Evt_Medic__IsDel__39788055]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[Evt_Medic_ChemicalExamDetail] ADD  CONSTRAINT [DF__Evt_Medic__IsDel__39788055]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__Evt_Medic__IsDel__3A6CA48E]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[Evt_Medic_Prescription] ADD  CONSTRAINT [DF__Evt_Medic__IsDel__3A6CA48E]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__Evt_Medic__IsDel__58F12BAE]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[Evt_Medic_PrescriptionDetail] ADD  CONSTRAINT [DF__Evt_Medic__IsDel__58F12BAE]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__Evt_Medic__IsDel__3B60C8C7]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[Evt_Medic_VedioExam] ADD  CONSTRAINT [DF__Evt_Medic__IsDel__3B60C8C7]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__Evt_PdfFi__IsDel__1881A0DE]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[Evt_PdfFile] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__M_Chemica__IsDel__1975C517]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[M_ChemicalExamCate] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__M_Dealer__IsDele__1A69E950]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[M_Dealer] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__M_ErrorLo__IsDel__1B5E0D89]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[M_ErrorLog] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__M_ErrorLo__Modif__1C5231C2]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[M_ErrorLog] ADD  DEFAULT (getdate()) FOR [ModifiedOn]
GO
/****** Object:  Default [DF__M_Gest__IsDelete__1D4655FB]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[M_Gest] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__M_GestLev__IsDel__1E3A7A34]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[M_GestLevel] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__M_Images__IsDele__1F2E9E6D]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[M_Images] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__M_ItemCat__IsDel__2022C2A6]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[M_ItemCate] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__M_ItemDis__IsDel__2116E6DF]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[M_ItemDiscountRate] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__M_ItemTyp__IsDel__4301EA8F]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[M_ItemType] ADD  CONSTRAINT [DF__M_ItemTyp__IsDel__4301EA8F]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__M_LoginLo__IsDel__22FF2F51]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[M_LoginLog] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__M_MenuBut__IsDel__23F3538A]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[M_MenuButton] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__M_MenuFun__IsDel__24E777C3]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[M_MenuFunModule] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__M_Operati__IsDel__25DB9BFC]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[M_OperationLog] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__M_Persons__IsDel__26CFC035]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[M_Persons] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__M_Persons__IsDel__27C3E46E]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[M_PersonsAppointment] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__M_Persons__IsDel__28B808A7]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[M_PersonsCMApp] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__M_Pet__IsDeleted__29AC2CE0]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[M_Pet] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__M_Prescri__IsDel__2AA05119]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[M_Prescription_Template] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__M_Prescri__IsDel__2B947552]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[M_Prescription_TemplateDetail] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__M_Prescri__IsDel__2C88998B]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[M_Prescription_TemplateType] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__M_Role__IsDelete__2D7CBDC4]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[M_Role] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__M_TRPresc__IsDel__2E70E1FD]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[M_TRPrescription_Template] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__M_TRPresc__IsDel__2F650636]    Script Date: 06/02/2016 16:19:47 ******/
ALTER TABLE [dbo].[M_TRPrescription_TemplateDetail] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__M_TRPresc__IsDel__30592A6F]    Script Date: 06/02/2016 16:19:48 ******/
ALTER TABLE [dbo].[M_TRPrescription_TemplateType] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__M_UserDic__IsDel__314D4EA8]    Script Date: 06/02/2016 16:19:48 ******/
ALTER TABLE [dbo].[M_UserDict] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__M_UserDic__IsDel__515009E6]    Script Date: 06/02/2016 16:19:48 ******/
ALTER TABLE [dbo].[M_UserDictDetail] ADD  CONSTRAINT [DF__M_UserDic__IsDel__515009E6]  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__M_Warehou__IsDel__3335971A]    Script Date: 06/02/2016 16:19:48 ******/
ALTER TABLE [dbo].[M_Warehouse] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__S_APPConf__IsDel__3429BB53]    Script Date: 06/02/2016 16:19:48 ******/
ALTER TABLE [dbo].[S_APPConfig] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__S_Busines__IsDel__351DDF8C]    Script Date: 06/02/2016 16:19:48 ******/
ALTER TABLE [dbo].[S_BusinesCate] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__S_DictTyp__IsDel__361203C5]    Script Date: 06/02/2016 16:19:48 ******/
ALTER TABLE [dbo].[S_DictType] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__S_DictTyp__IsDel__370627FE]    Script Date: 06/02/2016 16:19:48 ******/
ALTER TABLE [dbo].[S_DictTypeDetail] ADD  DEFAULT ((0)) FOR [IsDeleted]
GO
/****** Object:  Default [DF__S_UploadT__IsDel__57FD0775]    Script Date: 06/02/2016 16:19:48 ******/
ALTER TABLE [dbo].[S_UploadTables] ADD  CONSTRAINT [DF__S_UploadT__IsDel__57FD0775]  DEFAULT ((0)) FOR [IsDeleted]
GO
