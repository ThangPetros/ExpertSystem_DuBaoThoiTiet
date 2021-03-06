USE [master]
GO
/****** Object:  Database [HCG]    Script Date: 5/21/2021 5:16:58 PM ******/
CREATE DATABASE [HCG1]
 
/****** Object:  Table [dbo].[ApSuat]    Script Date: 5/21/2021 5:16:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ApSuat](
	[MaA] [varchar](5) NOT NULL,
	[TenA] [nvarchar](16) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DataContent]    Script Date: 5/21/2021 5:16:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DataContent](
	[STT] [int] NOT NULL,
	[IdV] [varchar](5) NOT NULL,
	[IdD] [varchar](5) NOT NULL,
	[IdN] [varchar](5) NOT NULL,
	[IdG] [varchar](5) NOT NULL,
	[IdA] [varchar](5) NOT NULL,
	[IdT] [varchar](5) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[STT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[DoAm]    Script Date: 5/21/2021 5:16:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[DoAm](
	[MaD] [varchar](5) NOT NULL,
	[TenD] [nvarchar](16) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Gio]    Script Date: 5/21/2021 5:16:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Gio](
	[MaG] [varchar](5) NOT NULL,
	[TenG] [nvarchar](16) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaG] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[LogIn]    Script Date: 5/21/2021 5:16:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[LogIn](
	[TenDN] [varchar](36) NOT NULL,
	[Mk] [varchar](16) NOT NULL,
	[Role] [varchar](16) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[TenDN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[NhietDo]    Script Date: 5/21/2021 5:16:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[NhietDo](
	[MaN] [varchar](5) NOT NULL,
	[TenN] [nvarchar](16) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[Rules]    Script Date: 5/21/2021 5:16:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[Rules](
	[Id] [varchar](5) NOT NULL,
	[GT] [nvarchar](36) NOT NULL,
	[KL] [nvarchar](36) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[TAPLUAT]    Script Date: 5/21/2021 5:16:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[TAPLUAT](
	[dieuKien] [varchar](20) NOT NULL,
	[ketLuan] [varchar](20) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[ThoiTiet]    Script Date: 5/21/2021 5:16:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[ThoiTiet](
	[MaT] [varchar](5) NOT NULL,
	[TenT] [nvarchar](16) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VUNG1]    Script Date: 5/21/2021 5:16:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VUNG1](
	[doAm] [varchar](10) NOT NULL,
	[nhietDo] [varchar](10) NOT NULL,
	[gio] [varchar](10) NOT NULL,
	[apSuat] [varchar](10) NOT NULL,
	[thoiTiet] [varchar](10) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VUNG2]    Script Date: 5/21/2021 5:16:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VUNG2](
	[doAm] [varchar](10) NOT NULL,
	[nhietDo] [varchar](10) NOT NULL,
	[gio] [varchar](10) NOT NULL,
	[apSuat] [varchar](10) NOT NULL,
	[thoiTiet] [varchar](10) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VUNG3]    Script Date: 5/21/2021 5:16:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VUNG3](
	[doAm] [varchar](10) NOT NULL,
	[nhietDo] [varchar](10) NOT NULL,
	[gio] [varchar](10) NOT NULL,
	[apSuat] [varchar](10) NOT NULL,
	[thoiTiet] [varchar](10) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VUNG4]    Script Date: 5/21/2021 5:16:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VUNG4](
	[doAm] [varchar](10) NOT NULL,
	[nhietDo] [varchar](10) NOT NULL,
	[gio] [varchar](10) NOT NULL,
	[apSuat] [varchar](10) NOT NULL,
	[thoiTiet] [varchar](10) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VUNG5]    Script Date: 5/21/2021 5:16:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VUNG5](
	[doAm] [varchar](10) NOT NULL,
	[nhietDo] [varchar](10) NOT NULL,
	[gio] [varchar](10) NOT NULL,
	[apSuat] [varchar](10) NOT NULL,
	[thoiTiet] [varchar](10) NOT NULL
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
/****** Object:  Table [dbo].[VungKhiHau]    Script Date: 5/21/2021 5:16:58 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
SET ANSI_PADDING ON
GO
CREATE TABLE [dbo].[VungKhiHau](
	[MaV] [varchar](5) NOT NULL,
	[TenV] [nvarchar](16) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]

GO
SET ANSI_PADDING OFF
GO
INSERT [dbo].[ApSuat] ([MaA], [TenA]) VALUES (N'A1', N'Cao')
INSERT [dbo].[ApSuat] ([MaA], [TenA]) VALUES (N'A2', N'Trung bình')
INSERT [dbo].[ApSuat] ([MaA], [TenA]) VALUES (N'A3', N'Thấp')
INSERT [dbo].[DataContent] ([STT], [IdV], [IdD], [IdN], [IdG], [IdA], [IdT]) VALUES (1, N'V1', N'D3', N'N2', N'G3', N'A2', N'T1')
INSERT [dbo].[DataContent] ([STT], [IdV], [IdD], [IdN], [IdG], [IdA], [IdT]) VALUES (2, N'V1', N'D3', N'N3', N'G2', N'A1', N'T1')
INSERT [dbo].[DataContent] ([STT], [IdV], [IdD], [IdN], [IdG], [IdA], [IdT]) VALUES (3, N'V1', N'D3', N'N4', N'G2', N'A2', N'T1')
INSERT [dbo].[DataContent] ([STT], [IdV], [IdD], [IdN], [IdG], [IdA], [IdT]) VALUES (4, N'V1', N'D3', N'N2', N'G3', N'A2', N'T1')
INSERT [dbo].[DataContent] ([STT], [IdV], [IdD], [IdN], [IdG], [IdA], [IdT]) VALUES (5, N'V1', N'D2', N'N2', N'G1', N'A3', N'T3')
INSERT [dbo].[DataContent] ([STT], [IdV], [IdD], [IdN], [IdG], [IdA], [IdT]) VALUES (6, N'V1', N'D2', N'N3', N'G2', N'A3', N'T3')
INSERT [dbo].[DataContent] ([STT], [IdV], [IdD], [IdN], [IdG], [IdA], [IdT]) VALUES (7, N'V1', N'D2', N'N4', N'G1', N'A3', N'T3')
INSERT [dbo].[DataContent] ([STT], [IdV], [IdD], [IdN], [IdG], [IdA], [IdT]) VALUES (8, N'V1', N'D2', N'N2', N'G1', N'A3', N'T3')
INSERT [dbo].[DataContent] ([STT], [IdV], [IdD], [IdN], [IdG], [IdA], [IdT]) VALUES (9, N'V1', N'D2', N'N4', N'G3', N'A2', N'T1')
INSERT [dbo].[DataContent] ([STT], [IdV], [IdD], [IdN], [IdG], [IdA], [IdT]) VALUES (10, N'V1', N'D2', N'N2', N'G2', N'A2', N'T1')
INSERT [dbo].[DataContent] ([STT], [IdV], [IdD], [IdN], [IdG], [IdA], [IdT]) VALUES (11, N'V1', N'D2', N'N3', N'G3', N'A2', N'T1')
INSERT [dbo].[DataContent] ([STT], [IdV], [IdD], [IdN], [IdG], [IdA], [IdT]) VALUES (12, N'V1', N'D2', N'N4', N'G3', N'A2', N'T1')
INSERT [dbo].[DataContent] ([STT], [IdV], [IdD], [IdN], [IdG], [IdA], [IdT]) VALUES (13, N'V1', N'D1', N'N3', N'G2', N'A2', N'T2')
INSERT [dbo].[DataContent] ([STT], [IdV], [IdD], [IdN], [IdG], [IdA], [IdT]) VALUES (14, N'V1', N'D1', N'N4', N'G3', N'A2', N'T2')
INSERT [dbo].[DataContent] ([STT], [IdV], [IdD], [IdN], [IdG], [IdA], [IdT]) VALUES (15, N'V1', N'D1', N'N4', N'G3', N'A2', N'T2')
INSERT [dbo].[DataContent] ([STT], [IdV], [IdD], [IdN], [IdG], [IdA], [IdT]) VALUES (16, N'V1', N'D1', N'N3', N'G2', N'A2', N'T2')
INSERT [dbo].[DataContent] ([STT], [IdV], [IdD], [IdN], [IdG], [IdA], [IdT]) VALUES (17, N'V1', N'D1', N'N4', N'G3', N'A3', N'T4')
INSERT [dbo].[DataContent] ([STT], [IdV], [IdD], [IdN], [IdG], [IdA], [IdT]) VALUES (18, N'V1', N'D1', N'N2', N'G1', N'A3', N'T4')
INSERT [dbo].[DataContent] ([STT], [IdV], [IdD], [IdN], [IdG], [IdA], [IdT]) VALUES (19, N'V1', N'D1', N'N3', N'G2', N'A3', N'T4')
INSERT [dbo].[DataContent] ([STT], [IdV], [IdD], [IdN], [IdG], [IdA], [IdT]) VALUES (20, N'V1', N'D1', N'N4', N'G1', N'A3', N'T4')
INSERT [dbo].[DataContent] ([STT], [IdV], [IdD], [IdN], [IdG], [IdA], [IdT]) VALUES (21, N'V1', N'D1', N'N3', N'G3', N'A3', N'T4')
INSERT [dbo].[DataContent] ([STT], [IdV], [IdD], [IdN], [IdG], [IdA], [IdT]) VALUES (22, N'V1', N'D1', N'N4', N'G1', N'A2', N'T5')
INSERT [dbo].[DataContent] ([STT], [IdV], [IdD], [IdN], [IdG], [IdA], [IdT]) VALUES (23, N'V1', N'D1', N'N2', N'G1', N'A2', N'T5')
INSERT [dbo].[DataContent] ([STT], [IdV], [IdD], [IdN], [IdG], [IdA], [IdT]) VALUES (24, N'V1', N'D1', N'N3', N'G1', N'A2', N'T5')
INSERT [dbo].[DataContent] ([STT], [IdV], [IdD], [IdN], [IdG], [IdA], [IdT]) VALUES (25, N'V1', N'D1', N'N4', N'G1', N'A2', N'T5')
INSERT [dbo].[DataContent] ([STT], [IdV], [IdD], [IdN], [IdG], [IdA], [IdT]) VALUES (26, N'V2', N'D1', N'N5', N'G1', N'A1', N'T1')
INSERT [dbo].[DataContent] ([STT], [IdV], [IdD], [IdN], [IdG], [IdA], [IdT]) VALUES (27, N'V2', N'D3', N'N5', N'G2', N'A3', N'T1')
INSERT [dbo].[DataContent] ([STT], [IdV], [IdD], [IdN], [IdG], [IdA], [IdT]) VALUES (28, N'V2', N'D2', N'N5', N'G3', N'A2', N'T1')
INSERT [dbo].[DataContent] ([STT], [IdV], [IdD], [IdN], [IdG], [IdA], [IdT]) VALUES (29, N'V2', N'D1', N'N5', N'G1', N'A1', N'T1')
INSERT [dbo].[DataContent] ([STT], [IdV], [IdD], [IdN], [IdG], [IdA], [IdT]) VALUES (30, N'V2', N'D1', N'N1', N'G3', N'A2', N'T2')
INSERT [dbo].[DataContent] ([STT], [IdV], [IdD], [IdN], [IdG], [IdA], [IdT]) VALUES (31, N'V2', N'D2', N'N1', N'G1', N'A1', N'T2')
INSERT [dbo].[DataContent] ([STT], [IdV], [IdD], [IdN], [IdG], [IdA], [IdT]) VALUES (32, N'V2', N'D3', N'N1', N'G2', N'A3', N'T2')
INSERT [dbo].[DataContent] ([STT], [IdV], [IdD], [IdN], [IdG], [IdA], [IdT]) VALUES (33, N'V2', N'D1', N'N1', N'G3', N'A2', N'T2')
INSERT [dbo].[DataContent] ([STT], [IdV], [IdD], [IdN], [IdG], [IdA], [IdT]) VALUES (34, N'V3', N'D1', N'N2', N'G3', N'A2', N'T2')
INSERT [dbo].[DataContent] ([STT], [IdV], [IdD], [IdN], [IdG], [IdA], [IdT]) VALUES (35, N'V3', N'D3', N'N2', N'G2', N'A2', N'T2')
INSERT [dbo].[DataContent] ([STT], [IdV], [IdD], [IdN], [IdG], [IdA], [IdT]) VALUES (36, N'V3', N'D2', N'N2', N'G3', N'A2', N'T2')
INSERT [dbo].[DataContent] ([STT], [IdV], [IdD], [IdN], [IdG], [IdA], [IdT]) VALUES (37, N'V3', N'D1', N'N2', N'G2', N'A2', N'T2')
INSERT [dbo].[DataContent] ([STT], [IdV], [IdD], [IdN], [IdG], [IdA], [IdT]) VALUES (38, N'V3', N'D3', N'N3', N'G1', N'A1', N'T5')
INSERT [dbo].[DataContent] ([STT], [IdV], [IdD], [IdN], [IdG], [IdA], [IdT]) VALUES (39, N'V3', N'D2', N'N1', N'G1', N'A1', N'T5')
INSERT [dbo].[DataContent] ([STT], [IdV], [IdD], [IdN], [IdG], [IdA], [IdT]) VALUES (40, N'V3', N'D1', N'N2', N'G1', N'A1', N'T5')
INSERT [dbo].[DataContent] ([STT], [IdV], [IdD], [IdN], [IdG], [IdA], [IdT]) VALUES (41, N'V3', N'D3', N'N2', N'G1', N'A1', N'T5')
INSERT [dbo].[DataContent] ([STT], [IdV], [IdD], [IdN], [IdG], [IdA], [IdT]) VALUES (42, N'V3', N'D2', N'N1', N'G2', N'A2', N'T6')
INSERT [dbo].[DataContent] ([STT], [IdV], [IdD], [IdN], [IdG], [IdA], [IdT]) VALUES (43, N'V3', N'D1', N'N1', N'G3', N'A2', N'T6')
INSERT [dbo].[DataContent] ([STT], [IdV], [IdD], [IdN], [IdG], [IdA], [IdT]) VALUES (44, N'V3', N'D3', N'N1', N'G2', N'A2', N'T6')
INSERT [dbo].[DataContent] ([STT], [IdV], [IdD], [IdN], [IdG], [IdA], [IdT]) VALUES (45, N'V3', N'D2', N'N1', N'G3', N'A2', N'T6')
INSERT [dbo].[DataContent] ([STT], [IdV], [IdD], [IdN], [IdG], [IdA], [IdT]) VALUES (46, N'V3', N'D1', N'N2', N'G1', N'A3', N'T1')
INSERT [dbo].[DataContent] ([STT], [IdV], [IdD], [IdN], [IdG], [IdA], [IdT]) VALUES (47, N'V3', N'D3', N'N1', N'G2', N'A3', N'T1')
INSERT [dbo].[DataContent] ([STT], [IdV], [IdD], [IdN], [IdG], [IdA], [IdT]) VALUES (48, N'V3', N'D2', N'N3', N'G3', N'A3', N'T1')
INSERT [dbo].[DataContent] ([STT], [IdV], [IdD], [IdN], [IdG], [IdA], [IdT]) VALUES (49, N'V3', N'D2', N'N2', N'G2', N'A3', N'T1')
INSERT [dbo].[DataContent] ([STT], [IdV], [IdD], [IdN], [IdG], [IdA], [IdT]) VALUES (50, N'V4', N'D2', N'N2', N'G3', N'A3', N'T1')
INSERT [dbo].[DataContent] ([STT], [IdV], [IdD], [IdN], [IdG], [IdA], [IdT]) VALUES (51, N'V4', N'D3', N'N3', N'G2', N'A3', N'T1')
INSERT [dbo].[DataContent] ([STT], [IdV], [IdD], [IdN], [IdG], [IdA], [IdT]) VALUES (52, N'V4', N'D3', N'N3', N'G2', N'A3', N'T1')
INSERT [dbo].[DataContent] ([STT], [IdV], [IdD], [IdN], [IdG], [IdA], [IdT]) VALUES (53, N'V4', N'D2', N'N2', N'G3', N'A3', N'T1')
INSERT [dbo].[DataContent] ([STT], [IdV], [IdD], [IdN], [IdG], [IdA], [IdT]) VALUES (54, N'V4', N'D1', N'N2', N'G2', N'A1', N'T2')
INSERT [dbo].[DataContent] ([STT], [IdV], [IdD], [IdN], [IdG], [IdA], [IdT]) VALUES (55, N'V4', N'D1', N'N3', N'G2', N'A2', N'T2')
INSERT [dbo].[DataContent] ([STT], [IdV], [IdD], [IdN], [IdG], [IdA], [IdT]) VALUES (56, N'V4', N'D1', N'N3', N'G3', N'A1', N'T2')
INSERT [dbo].[DataContent] ([STT], [IdV], [IdD], [IdN], [IdG], [IdA], [IdT]) VALUES (57, N'V4', N'D1', N'N2', N'G2', N'A2', N'T2')
INSERT [dbo].[DataContent] ([STT], [IdV], [IdD], [IdN], [IdG], [IdA], [IdT]) VALUES (58, N'V4', N'D2', N'N2', N'G1', N'A1', N'T5')
INSERT [dbo].[DataContent] ([STT], [IdV], [IdD], [IdN], [IdG], [IdA], [IdT]) VALUES (59, N'V4', N'D3', N'N3', N'G1', N'A1', N'T5')
INSERT [dbo].[DataContent] ([STT], [IdV], [IdD], [IdN], [IdG], [IdA], [IdT]) VALUES (60, N'V4', N'D2', N'N3', N'G1', N'A1', N'T5')
INSERT [dbo].[DataContent] ([STT], [IdV], [IdD], [IdN], [IdG], [IdA], [IdT]) VALUES (61, N'V4', N'D2', N'N2', N'G1', N'A1', N'T5')
INSERT [dbo].[DataContent] ([STT], [IdV], [IdD], [IdN], [IdG], [IdA], [IdT]) VALUES (62, N'V4', N'D3', N'N1', N'G2', N'A1', N'T6')
INSERT [dbo].[DataContent] ([STT], [IdV], [IdD], [IdN], [IdG], [IdA], [IdT]) VALUES (63, N'V4', N'D2', N'N1', N'G3', N'A1', N'T6')
INSERT [dbo].[DataContent] ([STT], [IdV], [IdD], [IdN], [IdG], [IdA], [IdT]) VALUES (64, N'V4', N'D2', N'N1', N'G2', N'A1', N'T6')
INSERT [dbo].[DataContent] ([STT], [IdV], [IdD], [IdN], [IdG], [IdA], [IdT]) VALUES (65, N'V4', N'D3', N'N1', N'G3', N'A1', N'T6')
INSERT [dbo].[DataContent] ([STT], [IdV], [IdD], [IdN], [IdG], [IdA], [IdT]) VALUES (66, N'V5', N'D1', N'N2', N'G2', N'A3', N'T1')
INSERT [dbo].[DataContent] ([STT], [IdV], [IdD], [IdN], [IdG], [IdA], [IdT]) VALUES (67, N'V5', N'D2', N'N2', N'G3', N'A3', N'T1')
INSERT [dbo].[DataContent] ([STT], [IdV], [IdD], [IdN], [IdG], [IdA], [IdT]) VALUES (68, N'V5', N'D3', N'N2', N'G1', N'A2', N'T1')
INSERT [dbo].[DataContent] ([STT], [IdV], [IdD], [IdN], [IdG], [IdA], [IdT]) VALUES (69, N'V5', N'D2', N'N2', N'G2', N'A2', N'T1')
INSERT [dbo].[DataContent] ([STT], [IdV], [IdD], [IdN], [IdG], [IdA], [IdT]) VALUES (70, N'V5', N'D1', N'N1', N'G3', N'A1', N'T6')
INSERT [dbo].[DataContent] ([STT], [IdV], [IdD], [IdN], [IdG], [IdA], [IdT]) VALUES (71, N'V5', N'D2', N'N1', N'G1', N'A1', N'T6')
INSERT [dbo].[DataContent] ([STT], [IdV], [IdD], [IdN], [IdG], [IdA], [IdT]) VALUES (72, N'V5', N'D3', N'N1', N'G2', N'A2', N'T6')
INSERT [dbo].[DataContent] ([STT], [IdV], [IdD], [IdN], [IdG], [IdA], [IdT]) VALUES (73, N'V5', N'D2', N'N1', N'G1', N'A3', N'T6')
INSERT [dbo].[DoAm] ([MaD], [TenD]) VALUES (N'D1', N'Cao')
INSERT [dbo].[DoAm] ([MaD], [TenD]) VALUES (N'D2', N'Trung bình')
INSERT [dbo].[DoAm] ([MaD], [TenD]) VALUES (N'D3', N'Thấp')
INSERT [dbo].[Gio] ([MaG], [TenG]) VALUES (N'G1', N'Mạnh')
INSERT [dbo].[Gio] ([MaG], [TenG]) VALUES (N'G2', N'Trung bình')
INSERT [dbo].[Gio] ([MaG], [TenG]) VALUES (N'G3', N'Thấp')
INSERT [dbo].[LogIn] ([TenDN], [Mk], [Role]) VALUES (N'123', N'123', N'user')
INSERT [dbo].[LogIn] ([TenDN], [Mk], [Role]) VALUES (N'admin', N'admin', N'admin')
INSERT [dbo].[LogIn] ([TenDN], [Mk], [Role]) VALUES (N'phandacson', N'123', N'user')
INSERT [dbo].[LogIn] ([TenDN], [Mk], [Role]) VALUES (N'quy', N'12345', N'user')
INSERT [dbo].[LogIn] ([TenDN], [Mk], [Role]) VALUES (N'thang', N'321', N'user')

INSERT [dbo].[NhietDo] ([MaN], [TenN]) VALUES (N'N1', N'Rất lạnh')
INSERT [dbo].[NhietDo] ([MaN], [TenN]) VALUES (N'N2', N'Lạnh')
INSERT [dbo].[NhietDo] ([MaN], [TenN]) VALUES (N'N3', N'Bình thường')
INSERT [dbo].[NhietDo] ([MaN], [TenN]) VALUES (N'N4', N'Nóng')
INSERT [dbo].[NhietDo] ([MaN], [TenN]) VALUES (N'N5', N'Rất nóng')
INSERT [dbo].[ThoiTiet] ([MaT], [TenT]) VALUES (N'T1', N'Nắng')
INSERT [dbo].[ThoiTiet] ([MaT], [TenT]) VALUES (N'T2', N'Mưa')
INSERT [dbo].[ThoiTiet] ([MaT], [TenT]) VALUES (N'T3', N'Mây')
INSERT [dbo].[ThoiTiet] ([MaT], [TenT]) VALUES (N'T4', N'Sương')
INSERT [dbo].[ThoiTiet] ([MaT], [TenT]) VALUES (N'T5', N'Bão')
INSERT [dbo].[ThoiTiet] ([MaT], [TenT]) VALUES (N'T6', N'Tuyết')
INSERT [dbo].[VUNG1] ([doAm], [nhietDo], [gio], [apSuat], [thoiTiet]) VALUES (N'D3', N'N2', N'G3', N'A2', N'T1')
INSERT [dbo].[VUNG1] ([doAm], [nhietDo], [gio], [apSuat], [thoiTiet]) VALUES (N'D3', N'N3', N'G2', N'A1', N'T1')
INSERT [dbo].[VUNG1] ([doAm], [nhietDo], [gio], [apSuat], [thoiTiet]) VALUES (N'D3', N'N4', N'G2', N'A2', N'T1')
INSERT [dbo].[VUNG1] ([doAm], [nhietDo], [gio], [apSuat], [thoiTiet]) VALUES (N'D3', N'N2', N'G3', N'A2', N'T1')
INSERT [dbo].[VUNG1] ([doAm], [nhietDo], [gio], [apSuat], [thoiTiet]) VALUES (N'D2', N'N2', N'G1', N'A3', N'T3')
INSERT [dbo].[VUNG1] ([doAm], [nhietDo], [gio], [apSuat], [thoiTiet]) VALUES (N'D2', N'N3', N'G2', N'A3', N'T3')
INSERT [dbo].[VUNG1] ([doAm], [nhietDo], [gio], [apSuat], [thoiTiet]) VALUES (N'D2', N'N4', N'G1', N'A3', N'T3')
INSERT [dbo].[VUNG1] ([doAm], [nhietDo], [gio], [apSuat], [thoiTiet]) VALUES (N'D2', N'N2', N'G1', N'A3', N'T3')
INSERT [dbo].[VUNG1] ([doAm], [nhietDo], [gio], [apSuat], [thoiTiet]) VALUES (N'D2', N'N4', N'G3', N'A2', N'T1')
INSERT [dbo].[VUNG1] ([doAm], [nhietDo], [gio], [apSuat], [thoiTiet]) VALUES (N'D2', N'N2', N'G2', N'A2', N'T1')
INSERT [dbo].[VUNG1] ([doAm], [nhietDo], [gio], [apSuat], [thoiTiet]) VALUES (N'D2', N'N3', N'G3', N'A2', N'T1')
INSERT [dbo].[VUNG1] ([doAm], [nhietDo], [gio], [apSuat], [thoiTiet]) VALUES (N'D2', N'N4', N'G3', N'A2', N'T1')
INSERT [dbo].[VUNG1] ([doAm], [nhietDo], [gio], [apSuat], [thoiTiet]) VALUES (N'D1', N'N3', N'G2', N'A2', N'T2')
INSERT [dbo].[VUNG1] ([doAm], [nhietDo], [gio], [apSuat], [thoiTiet]) VALUES (N'D1', N'N4', N'G3', N'A2', N'T2')
INSERT [dbo].[VUNG1] ([doAm], [nhietDo], [gio], [apSuat], [thoiTiet]) VALUES (N'D1', N'N4', N'G3', N'A2', N'T2')
INSERT [dbo].[VUNG1] ([doAm], [nhietDo], [gio], [apSuat], [thoiTiet]) VALUES (N'D1', N'N3', N'G2', N'A2', N'T2')
INSERT [dbo].[VUNG1] ([doAm], [nhietDo], [gio], [apSuat], [thoiTiet]) VALUES (N'D1', N'N4', N'G3', N'A3', N'T4')
INSERT [dbo].[VUNG1] ([doAm], [nhietDo], [gio], [apSuat], [thoiTiet]) VALUES (N'D1', N'N2', N'G1', N'A3', N'T4')
INSERT [dbo].[VUNG1] ([doAm], [nhietDo], [gio], [apSuat], [thoiTiet]) VALUES (N'D1', N'N3', N'G2', N'A3', N'T4')
INSERT [dbo].[VUNG1] ([doAm], [nhietDo], [gio], [apSuat], [thoiTiet]) VALUES (N'D1', N'N4', N'G1', N'A3', N'T4')
INSERT [dbo].[VUNG1] ([doAm], [nhietDo], [gio], [apSuat], [thoiTiet]) VALUES (N'D1', N'N3', N'G3', N'A3', N'T4')
INSERT [dbo].[VUNG1] ([doAm], [nhietDo], [gio], [apSuat], [thoiTiet]) VALUES (N'D1', N'N4', N'G1', N'A2', N'T5')
INSERT [dbo].[VUNG1] ([doAm], [nhietDo], [gio], [apSuat], [thoiTiet]) VALUES (N'D1', N'N2', N'G1', N'A2', N'T5')
INSERT [dbo].[VUNG1] ([doAm], [nhietDo], [gio], [apSuat], [thoiTiet]) VALUES (N'D1', N'N3', N'G1', N'A2', N'T5')
INSERT [dbo].[VUNG1] ([doAm], [nhietDo], [gio], [apSuat], [thoiTiet]) VALUES (N'D1', N'N4', N'G1', N'A2', N'T5')
INSERT [dbo].[VUNG2] ([doAm], [nhietDo], [gio], [apSuat], [thoiTiet]) VALUES (N'D1', N'N5', N'G1', N'A1', N'T1')
INSERT [dbo].[VUNG2] ([doAm], [nhietDo], [gio], [apSuat], [thoiTiet]) VALUES (N'D3', N'N5', N'G2', N'A3', N'T1')
INSERT [dbo].[VUNG2] ([doAm], [nhietDo], [gio], [apSuat], [thoiTiet]) VALUES (N'D2', N'N5', N'G3', N'A2', N'T1')
INSERT [dbo].[VUNG2] ([doAm], [nhietDo], [gio], [apSuat], [thoiTiet]) VALUES (N'D1', N'N5', N'G1', N'A1', N'T1')
INSERT [dbo].[VUNG2] ([doAm], [nhietDo], [gio], [apSuat], [thoiTiet]) VALUES (N'D1', N'N1', N'G3', N'A2', N'T2')
INSERT [dbo].[VUNG2] ([doAm], [nhietDo], [gio], [apSuat], [thoiTiet]) VALUES (N'D2', N'N1', N'G1', N'A1', N'T2')
INSERT [dbo].[VUNG2] ([doAm], [nhietDo], [gio], [apSuat], [thoiTiet]) VALUES (N'D3', N'N1', N'G2', N'A3', N'T2')
INSERT [dbo].[VUNG2] ([doAm], [nhietDo], [gio], [apSuat], [thoiTiet]) VALUES (N'D1', N'N1', N'G3', N'A2', N'T2')
INSERT [dbo].[VUNG3] ([doAm], [nhietDo], [gio], [apSuat], [thoiTiet]) VALUES (N'D1', N'N2', N'G3', N'A2', N'T2')
INSERT [dbo].[VUNG3] ([doAm], [nhietDo], [gio], [apSuat], [thoiTiet]) VALUES (N'D3', N'N2', N'G2', N'A2', N'T2')
INSERT [dbo].[VUNG3] ([doAm], [nhietDo], [gio], [apSuat], [thoiTiet]) VALUES (N'D2', N'N2', N'G3', N'A2', N'T2')
INSERT [dbo].[VUNG3] ([doAm], [nhietDo], [gio], [apSuat], [thoiTiet]) VALUES (N'D1', N'N2', N'G2', N'A2', N'T2')
INSERT [dbo].[VUNG3] ([doAm], [nhietDo], [gio], [apSuat], [thoiTiet]) VALUES (N'D3', N'N3', N'G1', N'A1', N'T5')
INSERT [dbo].[VUNG3] ([doAm], [nhietDo], [gio], [apSuat], [thoiTiet]) VALUES (N'D2', N'N1', N'G1', N'A1', N'T5')
INSERT [dbo].[VUNG3] ([doAm], [nhietDo], [gio], [apSuat], [thoiTiet]) VALUES (N'D1', N'N2', N'G1', N'A1', N'T5')
INSERT [dbo].[VUNG3] ([doAm], [nhietDo], [gio], [apSuat], [thoiTiet]) VALUES (N'D3', N'N2', N'G1', N'A1', N'T5')
INSERT [dbo].[VUNG3] ([doAm], [nhietDo], [gio], [apSuat], [thoiTiet]) VALUES (N'D2', N'N1', N'G2', N'A2', N'T6')
INSERT [dbo].[VUNG3] ([doAm], [nhietDo], [gio], [apSuat], [thoiTiet]) VALUES (N'D1', N'N1', N'G3', N'A2', N'T6')
INSERT [dbo].[VUNG3] ([doAm], [nhietDo], [gio], [apSuat], [thoiTiet]) VALUES (N'D3', N'N1', N'G2', N'A2', N'T6')
INSERT [dbo].[VUNG3] ([doAm], [nhietDo], [gio], [apSuat], [thoiTiet]) VALUES (N'D2', N'N1', N'G3', N'A2', N'T6')
INSERT [dbo].[VUNG3] ([doAm], [nhietDo], [gio], [apSuat], [thoiTiet]) VALUES (N'D1', N'N2', N'G1', N'A3', N'T1')
INSERT [dbo].[VUNG3] ([doAm], [nhietDo], [gio], [apSuat], [thoiTiet]) VALUES (N'D3', N'N1', N'G2', N'A3', N'T1')
INSERT [dbo].[VUNG3] ([doAm], [nhietDo], [gio], [apSuat], [thoiTiet]) VALUES (N'D2', N'N3', N'G3', N'A3', N'T1')
INSERT [dbo].[VUNG3] ([doAm], [nhietDo], [gio], [apSuat], [thoiTiet]) VALUES (N'D2', N'N2', N'G2', N'A3', N'T1')
INSERT [dbo].[VUNG4] ([doAm], [nhietDo], [gio], [apSuat], [thoiTiet]) VALUES (N'D2', N'N2', N'G3', N'A3', N'T1')
INSERT [dbo].[VUNG4] ([doAm], [nhietDo], [gio], [apSuat], [thoiTiet]) VALUES (N'D3', N'N3', N'G2', N'A3', N'T1')
INSERT [dbo].[VUNG4] ([doAm], [nhietDo], [gio], [apSuat], [thoiTiet]) VALUES (N'D3', N'N3', N'G2', N'A3', N'T1')
INSERT [dbo].[VUNG4] ([doAm], [nhietDo], [gio], [apSuat], [thoiTiet]) VALUES (N'D2', N'N2', N'G3', N'A3', N'T1')
INSERT [dbo].[VUNG4] ([doAm], [nhietDo], [gio], [apSuat], [thoiTiet]) VALUES (N'D1', N'N2', N'G2', N'A1', N'T2')
INSERT [dbo].[VUNG4] ([doAm], [nhietDo], [gio], [apSuat], [thoiTiet]) VALUES (N'D1', N'N3', N'G2', N'A2', N'T2')
INSERT [dbo].[VUNG4] ([doAm], [nhietDo], [gio], [apSuat], [thoiTiet]) VALUES (N'D1', N'N3', N'G3', N'A1', N'T2')
INSERT [dbo].[VUNG4] ([doAm], [nhietDo], [gio], [apSuat], [thoiTiet]) VALUES (N'D1', N'N2', N'G2', N'A2', N'T2')
INSERT [dbo].[VUNG4] ([doAm], [nhietDo], [gio], [apSuat], [thoiTiet]) VALUES (N'D2', N'N2', N'G1', N'A1', N'T5')
INSERT [dbo].[VUNG4] ([doAm], [nhietDo], [gio], [apSuat], [thoiTiet]) VALUES (N'D3', N'N3', N'G1', N'A1', N'T5')
INSERT [dbo].[VUNG4] ([doAm], [nhietDo], [gio], [apSuat], [thoiTiet]) VALUES (N'D2', N'N3', N'G1', N'A1', N'T5')
INSERT [dbo].[VUNG4] ([doAm], [nhietDo], [gio], [apSuat], [thoiTiet]) VALUES (N'D2', N'N2', N'G1', N'A1', N'T5')
INSERT [dbo].[VUNG4] ([doAm], [nhietDo], [gio], [apSuat], [thoiTiet]) VALUES (N'D3', N'N1', N'G2', N'A1', N'T6')
INSERT [dbo].[VUNG4] ([doAm], [nhietDo], [gio], [apSuat], [thoiTiet]) VALUES (N'D2', N'N1', N'G3', N'A1', N'T6')
INSERT [dbo].[VUNG4] ([doAm], [nhietDo], [gio], [apSuat], [thoiTiet]) VALUES (N'D2', N'N1', N'G2', N'A1', N'T6')
INSERT [dbo].[VUNG4] ([doAm], [nhietDo], [gio], [apSuat], [thoiTiet]) VALUES (N'D3', N'N1', N'G3', N'A1', N'T6')
INSERT [dbo].[VUNG5] ([doAm], [nhietDo], [gio], [apSuat], [thoiTiet]) VALUES (N'D1', N'N2', N'G2', N'A3', N'T1')
INSERT [dbo].[VUNG5] ([doAm], [nhietDo], [gio], [apSuat], [thoiTiet]) VALUES (N'D2', N'N2', N'G3', N'A3', N'T1')
INSERT [dbo].[VUNG5] ([doAm], [nhietDo], [gio], [apSuat], [thoiTiet]) VALUES (N'D3', N'N2', N'G1', N'A2', N'T1')
INSERT [dbo].[VUNG5] ([doAm], [nhietDo], [gio], [apSuat], [thoiTiet]) VALUES (N'D2', N'N2', N'G2', N'A2', N'T1')
INSERT [dbo].[VUNG5] ([doAm], [nhietDo], [gio], [apSuat], [thoiTiet]) VALUES (N'D1', N'N1', N'G3', N'A1', N'T6')
INSERT [dbo].[VUNG5] ([doAm], [nhietDo], [gio], [apSuat], [thoiTiet]) VALUES (N'D2', N'N1', N'G1', N'A1', N'T6')
INSERT [dbo].[VUNG5] ([doAm], [nhietDo], [gio], [apSuat], [thoiTiet]) VALUES (N'D3', N'N1', N'G2', N'A2', N'T6')
INSERT [dbo].[VUNG5] ([doAm], [nhietDo], [gio], [apSuat], [thoiTiet]) VALUES (N'D2', N'N1', N'G1', N'A3', N'T6')
INSERT [dbo].[VungKhiHau] ([MaV], [TenV]) VALUES (N'V1', N'Nhiệt đới')
INSERT [dbo].[VungKhiHau] ([MaV], [TenV]) VALUES (N'V2', N'Khô')
INSERT [dbo].[VungKhiHau] ([MaV], [TenV]) VALUES (N'V3', N'Ôn đới')
INSERT [dbo].[VungKhiHau] ([MaV], [TenV]) VALUES (N'V4', N'Lục địa')
INSERT [dbo].[VungKhiHau] ([MaV], [TenV]) VALUES (N'V5', N'Vùng cực')
ALTER TABLE [dbo].[DataContent]  WITH CHECK ADD FOREIGN KEY([IdA])
REFERENCES [dbo].[ApSuat] ([MaA])
GO
ALTER TABLE [dbo].[DataContent]  WITH CHECK ADD FOREIGN KEY([IdD])
REFERENCES [dbo].[DoAm] ([MaD])
GO
ALTER TABLE [dbo].[DataContent]  WITH CHECK ADD FOREIGN KEY([IdG])
REFERENCES [dbo].[Gio] ([MaG])
GO
ALTER TABLE [dbo].[DataContent]  WITH CHECK ADD FOREIGN KEY([IdN])
REFERENCES [dbo].[NhietDo] ([MaN])
GO
ALTER TABLE [dbo].[DataContent]  WITH CHECK ADD FOREIGN KEY([IdT])
REFERENCES [dbo].[ThoiTiet] ([MaT])
GO
ALTER TABLE [dbo].[DataContent]  WITH CHECK ADD FOREIGN KEY([IdV])
REFERENCES [dbo].[VungKhiHau] ([MaV])
