USE [QuanLyThucDon]
GO
/****** Object:  StoredProcedure [dbo].[sp_Tracuuhoadon]    Script Date: 5/10/2021 11:30:11 PM ******/
DROP PROCEDURE [dbo].[sp_Tracuuhoadon]
GO
/****** Object:  StoredProcedure [dbo].[sp_Thongtinnhanvien]    Script Date: 5/10/2021 11:30:11 PM ******/
DROP PROCEDURE [dbo].[sp_Thongtinnhanvien]
GO
/****** Object:  StoredProcedure [dbo].[sp_Thongtinmonan]    Script Date: 5/10/2021 11:30:11 PM ******/
DROP PROCEDURE [dbo].[sp_Thongtinmonan]
GO
/****** Object:  StoredProcedure [dbo].[sp_Sanphamtunguyenlieu]    Script Date: 5/10/2021 11:30:11 PM ******/
DROP PROCEDURE [dbo].[sp_Sanphamtunguyenlieu]
GO
/****** Object:  StoredProcedure [dbo].[sp_Giacombo]    Script Date: 5/10/2021 11:30:11 PM ******/
DROP PROCEDURE [dbo].[sp_Giacombo]
GO
/****** Object:  StoredProcedure [dbo].[sp_Danhsachhoadon]    Script Date: 5/10/2021 11:30:11 PM ******/
DROP PROCEDURE [dbo].[sp_Danhsachhoadon]
GO
ALTER TABLE [dbo].[ThucUong] DROP CONSTRAINT [fk_ThucUong]
GO
ALTER TABLE [dbo].[NhanVien] DROP CONSTRAINT [fk_NhanVien2]
GO
ALTER TABLE [dbo].[NhanVien] DROP CONSTRAINT [fk_NhanVien]
GO
ALTER TABLE [dbo].[NhaCungCap] DROP CONSTRAINT [fk_NhaCungCap]
GO
ALTER TABLE [dbo].[NguyenLieu] DROP CONSTRAINT [fk_NguyenLieu]
GO
ALTER TABLE [dbo].[MonAn] DROP CONSTRAINT [fk_MonAn]
GO
ALTER TABLE [dbo].[HoaDon] DROP CONSTRAINT [fk_HoaDon]
GO
ALTER TABLE [dbo].[Combo] DROP CONSTRAINT [fk_Combo]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 5/10/2021 11:30:11 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[HoaDon]') AND type in (N'U'))
DROP TABLE [dbo].[HoaDon]
GO
/****** Object:  Table [dbo].[Combo]    Script Date: 5/10/2021 11:30:11 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[Combo]') AND type in (N'U'))
DROP TABLE [dbo].[Combo]
GO
/****** Object:  View [dbo].[vwDanhsachnhacungcap]    Script Date: 5/10/2021 11:30:11 PM ******/
DROP VIEW [dbo].[vwDanhsachnhacungcap]
GO
/****** Object:  Table [dbo].[NguyenLieu]    Script Date: 5/10/2021 11:30:11 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NguyenLieu]') AND type in (N'U'))
DROP TABLE [dbo].[NguyenLieu]
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 5/10/2021 11:30:11 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NhaCungCap]') AND type in (N'U'))
DROP TABLE [dbo].[NhaCungCap]
GO
/****** Object:  View [dbo].[vwDanhsachnvtheogtinh]    Script Date: 5/10/2021 11:30:11 PM ******/
DROP VIEW [dbo].[vwDanhsachnvtheogtinh]
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 5/10/2021 11:30:11 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[NhanVien]') AND type in (N'U'))
DROP TABLE [dbo].[NhanVien]
GO
/****** Object:  View [dbo].[vwDanhsachthucuong]    Script Date: 5/10/2021 11:30:11 PM ******/
DROP VIEW [dbo].[vwDanhsachthucuong]
GO
/****** Object:  View [dbo].[vwDanhsachthucdon]    Script Date: 5/10/2021 11:30:11 PM ******/
DROP VIEW [dbo].[vwDanhsachthucdon]
GO
/****** Object:  Table [dbo].[MonAn]    Script Date: 5/10/2021 11:30:11 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[MonAn]') AND type in (N'U'))
DROP TABLE [dbo].[MonAn]
GO
/****** Object:  Table [dbo].[ThucDon]    Script Date: 5/10/2021 11:30:11 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ThucDon]') AND type in (N'U'))
DROP TABLE [dbo].[ThucDon]
GO
/****** Object:  UserDefinedFunction [dbo].[f_danhsachthucuong]    Script Date: 5/10/2021 11:30:11 PM ******/
DROP FUNCTION [dbo].[f_danhsachthucuong]
GO
/****** Object:  Table [dbo].[ThucUong]    Script Date: 5/10/2021 11:30:11 PM ******/
IF  EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[ThucUong]') AND type in (N'U'))
DROP TABLE [dbo].[ThucUong]
GO
/****** Object:  UserDefinedFunction [dbo].[f_giatrungbinhNL]    Script Date: 5/10/2021 11:30:11 PM ******/
DROP FUNCTION [dbo].[f_giatrungbinhNL]
GO
/****** Object:  Synonym [dbo].[NV]    Script Date: 5/10/2021 11:30:11 PM ******/
DROP SYNONYM [dbo].[NV]
GO
/****** Object:  Synonym [dbo].[HD]    Script Date: 5/10/2021 11:30:11 PM ******/
DROP SYNONYM [dbo].[HD]
GO
/****** Object:  User [AbcUser]    Script Date: 5/10/2021 11:30:11 PM ******/
DROP USER [AbcUser]
GO
/****** Object:  User [AbcUser]    Script Date: 5/10/2021 11:30:11 PM ******/
CREATE USER [AbcUser] FOR LOGIN [AbcUser] WITH DEFAULT_SCHEMA=[dbo]
GO
/****** Object:  Synonym [dbo].[HD]    Script Date: 5/10/2021 11:30:11 PM ******/
CREATE SYNONYM [dbo].[HD] FOR [HoaDon]
GO
/****** Object:  Synonym [dbo].[NV]    Script Date: 5/10/2021 11:30:11 PM ******/
CREATE SYNONYM [dbo].[NV] FOR [NhanVien]
GO
/****** Object:  UserDefinedFunction [dbo].[f_giatrungbinhNL]    Script Date: 5/10/2021 11:30:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Function [dbo].[f_giatrungbinhNL]()
Returns float
As
Begin
Return ( Select Avg(NguyenLieu.GiaNL) From NguyenLieu)
End
GO
/****** Object:  Table [dbo].[ThucUong]    Script Date: 5/10/2021 11:30:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThucUong](
	[MaTU] [char](4) NOT NULL,
	[TenTU] [varchar](50) NOT NULL,
	[ThutuTU] [varchar](4) NULL,
	[DvtTU] [varchar](10) NULL,
	[GiaTU] [float] NULL,
	[MaTD] [char](4) NOT NULL,
 CONSTRAINT [pk_ThucUong] PRIMARY KEY CLUSTERED 
(
	[MaTU] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  UserDefinedFunction [dbo].[f_danhsachthucuong]    Script Date: 5/10/2021 11:30:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Function [dbo].[f_danhsachthucuong] (@Matu char(4))
Returns table
As
Return ( Select * From ThucUong Where @Matu = ThucUong.MaTU )
GO
/****** Object:  Table [dbo].[ThucDon]    Script Date: 5/10/2021 11:30:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ThucDon](
	[MaTD] [char](4) NOT NULL,
	[NhomTD] [varchar](25) NOT NULL,
	[LoaiTD] [varchar](25) NOT NULL,
 CONSTRAINT [pk_ThucDon] PRIMARY KEY CLUSTERED 
(
	[MaTD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[MonAn]    Script Date: 5/10/2021 11:30:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[MonAn](
	[MaMA] [char](4) NOT NULL,
	[TenMA] [varchar](50) NOT NULL,
	[ThutuMA] [varchar](4) NULL,
	[DvtMA] [varchar](10) NULL,
	[GiaMA] [float] NULL,
	[MaTD] [char](4) NOT NULL,
 CONSTRAINT [pk_MonAn] PRIMARY KEY CLUSTERED 
(
	[MaMA] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vwDanhsachthucdon]    Script Date: 5/10/2021 11:30:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create View [dbo].[vwDanhsachthucdon]
As
Select MonAn.MaMA,MonAn.TenMA, MonAn.GiaMA
From MonAn join ThucDon on MonAn.MaTD=ThucDon.MaTD
where MonAn.MaTD in (Select ThucDon.MaTD
					from ThucDon
					where NhomTD=N'Burger bò miếng nhỏ')
GO
/****** Object:  View [dbo].[vwDanhsachthucuong]    Script Date: 5/10/2021 11:30:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create View [dbo].[vwDanhsachthucuong]
As
Select MaTU,TenTU,ThutuTU,GiaTU
From ThucUong
GO
/****** Object:  Table [dbo].[NhanVien]    Script Date: 5/10/2021 11:30:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhanVien](
	[MaNV] [char](6) NOT NULL,
	[TenNV] [nvarchar](100) NOT NULL,
	[GioiTinh] [nvarchar](10) NULL,
	[DiaChiNV] [nvarchar](100) NULL,
	[DienThoaiNV] [nvarchar](10) NULL,
	[MaMA] [char](4) NOT NULL,
	[MaTU] [char](4) NOT NULL,
 CONSTRAINT [pk_NhanVien] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vwDanhsachnvtheogtinh]    Script Date: 5/10/2021 11:30:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create View [dbo].[vwDanhsachnvtheogtinh]
As
Select count (MaNV) as 'so luong', GioiTinh
From NhanVien
Group by GioiTinh
GO
/****** Object:  Table [dbo].[NhaCungCap]    Script Date: 5/10/2021 11:30:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhaCungCap](
	[MaNCC] [char](6) NOT NULL,
	[TenNCC] [varchar](100) NOT NULL,
	[DiaChiNCC] [varchar](100) NULL,
	[SdtNCC] [varchar](10) NULL,
	[MaTD] [char](4) NOT NULL,
 CONSTRAINT [pk_NhaCungCap] PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NguyenLieu]    Script Date: 5/10/2021 11:30:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NguyenLieu](
	[MaNL] [char](6) NOT NULL,
	[TenNL] [varchar](50) NOT NULL,
	[MaNCC] [char](6) NOT NULL,
	[GiaNL] [float] NULL,
 CONSTRAINT [pk_NguyenLieu] PRIMARY KEY CLUSTERED 
(
	[MaNL] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[vwDanhsachnhacungcap]    Script Date: 5/10/2021 11:30:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create View [dbo].[vwDanhsachnhacungcap]
As
Select NhaCungCap.MaNCC,TenNCC,MaNL,TenNL
From NhaCungCap join NguyenLieu on NhaCungCap.MaNCC = NguyenLieu.MaNCC
Group by NhaCungCap.MaNCC,TenNCC,MaNL,TenNL
GO
/****** Object:  Table [dbo].[Combo]    Script Date: 5/10/2021 11:30:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Combo](
	[MaCB] [char](4) NOT NULL,
	[TenCb] [varchar](50) NOT NULL,
	[GiaCB] [float] NULL,
	[ThutuCB] [varchar](4) NULL,
	[MaTD] [char](4) NOT NULL,
 CONSTRAINT [pk_Combo] PRIMARY KEY CLUSTERED 
(
	[MaCB] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 5/10/2021 11:30:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [char](5) NOT NULL,
	[MaNV] [char](6) NOT NULL,
	[NgayLapHD] [datetime] NULL,
 CONSTRAINT [pk_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
INSERT [dbo].[Combo] ([MaCB], [TenCb], [GiaCB], [ThutuCB], [MaTD]) VALUES (N'CB11', N'Combo bữa sáng', 29000, N'1', N'CB06')
INSERT [dbo].[Combo] ([MaCB], [TenCb], [GiaCB], [ThutuCB], [MaTD]) VALUES (N'CB12', N'Combo 1 người', 79000, N'2', N'CB01')
INSERT [dbo].[Combo] ([MaCB], [TenCb], [GiaCB], [ThutuCB], [MaTD]) VALUES (N'CB13', N'Combo 2 người gà rán', 129000, N'3', N'CB02')
INSERT [dbo].[Combo] ([MaCB], [TenCb], [GiaCB], [ThutuCB], [MaTD]) VALUES (N'CB14', N'Combo 2 người burger', 129000, N'4', N'CB02')
INSERT [dbo].[Combo] ([MaCB], [TenCb], [GiaCB], [ThutuCB], [MaTD]) VALUES (N'CB15', N'Combo 3 người gà rán', 179000, N'5', N'CB03')
INSERT [dbo].[Combo] ([MaCB], [TenCb], [GiaCB], [ThutuCB], [MaTD]) VALUES (N'CB16', N'Combo 3 người burger', 179000, N'6', N'CB03')
INSERT [dbo].[Combo] ([MaCB], [TenCb], [GiaCB], [ThutuCB], [MaTD]) VALUES (N'CB17', N'Combo gia đình A', 285000, N'1', N'CB04')
INSERT [dbo].[Combo] ([MaCB], [TenCb], [GiaCB], [ThutuCB], [MaTD]) VALUES (N'CB18', N'Combo gia đình B', 285000, N'1', N'CB04')
INSERT [dbo].[Combo] ([MaCB], [TenCb], [GiaCB], [ThutuCB], [MaTD]) VALUES (N'CB19', N'Combo cà phê chiều', 69000, N'1', N'CB05')
INSERT [dbo].[Combo] ([MaCB], [TenCb], [GiaCB], [ThutuCB], [MaTD]) VALUES (N'CB20', N'Combo bữa xế', 39000, N'1', N'CB07')
GO
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [NgayLapHD]) VALUES (N'HD100', N'ID0010', CAST(N'2021-03-19T00:00:00.000' AS DateTime))
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [NgayLapHD]) VALUES (N'HD101', N'ID0011', CAST(N'2021-03-19T00:00:00.000' AS DateTime))
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [NgayLapHD]) VALUES (N'HD102', N'ID0012', CAST(N'2021-03-19T00:00:00.000' AS DateTime))
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [NgayLapHD]) VALUES (N'HD103', N'ID0013', CAST(N'2021-03-19T00:00:00.000' AS DateTime))
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [NgayLapHD]) VALUES (N'HD104', N'ID0014', CAST(N'2021-03-19T00:00:00.000' AS DateTime))
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [NgayLapHD]) VALUES (N'HD105', N'ID0015', CAST(N'2021-03-20T00:00:00.000' AS DateTime))
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [NgayLapHD]) VALUES (N'HD106', N'ID0016', CAST(N'2021-03-20T00:00:00.000' AS DateTime))
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [NgayLapHD]) VALUES (N'HD107', N'ID0017', CAST(N'2021-03-20T00:00:00.000' AS DateTime))
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [NgayLapHD]) VALUES (N'HD108', N'ID0018', CAST(N'2021-03-20T00:00:00.000' AS DateTime))
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [NgayLapHD]) VALUES (N'HD109', N'ID0019', CAST(N'2021-03-20T00:00:00.000' AS DateTime))
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [NgayLapHD]) VALUES (N'HD110', N'ID0020', CAST(N'2021-03-20T00:00:00.000' AS DateTime))
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [NgayLapHD]) VALUES (N'HD111', N'ID0021', CAST(N'2021-03-21T00:00:00.000' AS DateTime))
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [NgayLapHD]) VALUES (N'HD112', N'ID0022', CAST(N'2021-03-21T00:00:00.000' AS DateTime))
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [NgayLapHD]) VALUES (N'HD113', N'ID0010', CAST(N'2021-03-21T00:00:00.000' AS DateTime))
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [NgayLapHD]) VALUES (N'HD114', N'ID0011', CAST(N'2021-03-21T00:00:00.000' AS DateTime))
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [NgayLapHD]) VALUES (N'HD115', N'ID0012', CAST(N'2021-03-21T00:00:00.000' AS DateTime))
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [NgayLapHD]) VALUES (N'HD116', N'ID0013', CAST(N'2021-03-22T00:00:00.000' AS DateTime))
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [NgayLapHD]) VALUES (N'HD117', N'ID0014', CAST(N'2021-03-22T00:00:00.000' AS DateTime))
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [NgayLapHD]) VALUES (N'HD118', N'ID0015', CAST(N'2021-03-22T00:00:00.000' AS DateTime))
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [NgayLapHD]) VALUES (N'HD119', N'ID0016', CAST(N'2021-03-22T00:00:00.000' AS DateTime))
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [NgayLapHD]) VALUES (N'HD120', N'ID0017', CAST(N'2021-03-22T00:00:00.000' AS DateTime))
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [NgayLapHD]) VALUES (N'HD121', N'ID0018', CAST(N'2021-03-23T00:00:00.000' AS DateTime))
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [NgayLapHD]) VALUES (N'HD122', N'ID0019', CAST(N'2021-03-23T00:00:00.000' AS DateTime))
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [NgayLapHD]) VALUES (N'HD123', N'ID0020', CAST(N'2021-03-23T00:00:00.000' AS DateTime))
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [NgayLapHD]) VALUES (N'HD124', N'ID0021', CAST(N'2021-03-23T00:00:00.000' AS DateTime))
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [NgayLapHD]) VALUES (N'HD125', N'ID0022', CAST(N'2021-03-23T00:00:00.000' AS DateTime))
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [NgayLapHD]) VALUES (N'HD126', N'ID0010', CAST(N'2021-03-24T00:00:00.000' AS DateTime))
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [NgayLapHD]) VALUES (N'HD127', N'ID0011', CAST(N'2021-03-24T00:00:00.000' AS DateTime))
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [NgayLapHD]) VALUES (N'HD128', N'ID0012', CAST(N'2021-03-24T00:00:00.000' AS DateTime))
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [NgayLapHD]) VALUES (N'HD129', N'ID0013', CAST(N'2021-03-24T00:00:00.000' AS DateTime))
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [NgayLapHD]) VALUES (N'HD130', N'ID0014', CAST(N'2021-03-24T00:00:00.000' AS DateTime))
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [NgayLapHD]) VALUES (N'HD131', N'ID0015', CAST(N'2021-03-25T00:00:00.000' AS DateTime))
INSERT [dbo].[HoaDon] ([MaHD], [MaNV], [NgayLapHD]) VALUES (N'HD132', N'ID0016', CAST(N'2021-03-25T00:00:00.000' AS DateTime))
GO
INSERT [dbo].[MonAn] ([MaMA], [TenMA], [ThutuMA], [DvtMA], [GiaMA], [MaTD]) VALUES (N'MA01', N'Burger gà nhỏ mayo', N'1', N'1 cái', 29000, N'BG01')
INSERT [dbo].[MonAn] ([MaMA], [TenMA], [ThutuMA], [DvtMA], [GiaMA], [MaTD]) VALUES (N'MA02', N'Burger gà lớn mayo', N'2', N'1 cái', 56000, N'BG02')
INSERT [dbo].[MonAn] ([MaMA], [TenMA], [ThutuMA], [DvtMA], [GiaMA], [MaTD]) VALUES (N'MA03', N'Burger gà cay mayo', N'3', N'1 cái', 76000, N'BG02')
INSERT [dbo].[MonAn] ([MaMA], [TenMA], [ThutuMA], [DvtMA], [GiaMA], [MaTD]) VALUES (N'MA04', N'Burger bò phô mai', N'4', N'1 cái', 36000, N'BB01')
INSERT [dbo].[MonAn] ([MaMA], [TenMA], [ThutuMA], [DvtMA], [GiaMA], [MaTD]) VALUES (N'MA05', N'Burger BigMac', N'5', N'1 cái', 66000, N'BB01')
INSERT [dbo].[MonAn] ([MaMA], [TenMA], [ThutuMA], [DvtMA], [GiaMA], [MaTD]) VALUES (N'MA06', N'Burger Bò Phô Mai Đặc Biệt', N'6', N'1 cái', 46000, N'BB01')
INSERT [dbo].[MonAn] ([MaMA], [TenMA], [ThutuMA], [DvtMA], [GiaMA], [MaTD]) VALUES (N'MA07', N'Burger Bò Phô mai 2 lớp', N'7', N'1 cái', 56000, N'BB01')
INSERT [dbo].[MonAn] ([MaMA], [TenMA], [ThutuMA], [DvtMA], [GiaMA], [MaTD]) VALUES (N'MA08', N'Burger Bò Phô mai 3 lớp', N'8', N'1 cái', 76000, N'BB01')
INSERT [dbo].[MonAn] ([MaMA], [TenMA], [ThutuMA], [DvtMA], [GiaMA], [MaTD]) VALUES (N'MA09', N'Burger Bò Hoàng Gia phô mai', N'9', N'1 cái', 66000, N'BB02')
INSERT [dbo].[MonAn] ([MaMA], [TenMA], [ThutuMA], [DvtMA], [GiaMA], [MaTD]) VALUES (N'MA10', N'Burger Bò Hoàng Gia Đặc Biệt', N'10', N'1 cái', 76000, N'BB02')
INSERT [dbo].[MonAn] ([MaMA], [TenMA], [ThutuMA], [DvtMA], [GiaMA], [MaTD]) VALUES (N'MA11', N'Burger thịt heo', N'11', N'1 cái', 29000, N'BH00')
INSERT [dbo].[MonAn] ([MaMA], [TenMA], [ThutuMA], [DvtMA], [GiaMA], [MaTD]) VALUES (N'MA12', N'Burger Cá Tuyết', N'12', N'1 cái', 46000, N'BC00')
INSERT [dbo].[MonAn] ([MaMA], [TenMA], [ThutuMA], [DvtMA], [GiaMA], [MaTD]) VALUES (N'MA13', N'Phần Ăn Trẻ Em Burger', N'13', N'1 cái', 69000, N'HM00')
INSERT [dbo].[MonAn] ([MaMA], [TenMA], [ThutuMA], [DvtMA], [GiaMA], [MaTD]) VALUES (N'MA14', N'Phần Ăn Trẻ Em Gà Rán', N'14', N'1 cái', 69000, N'HM00')
INSERT [dbo].[MonAn] ([MaMA], [TenMA], [ThutuMA], [DvtMA], [GiaMA], [MaTD]) VALUES (N'MA15', N'Gà Rán Truyền Thống', N'15', N'1 cái', 36000, N'GR01')
INSERT [dbo].[MonAn] ([MaMA], [TenMA], [ThutuMA], [DvtMA], [GiaMA], [MaTD]) VALUES (N'MA16', N'Gà Rán Vị Cay', N'16', N'1 cái', 36000, N'GR02')
GO
INSERT [dbo].[NguyenLieu] ([MaNL], [TenNL], [MaNCC], [GiaNL]) VALUES (N'NL0101', N'Trà xanh', N'CTY101', 400000)
INSERT [dbo].[NguyenLieu] ([MaNL], [TenNL], [MaNCC], [GiaNL]) VALUES (N'NL0102', N'Trái cây cắt sẵn', N'CTY102', 350000)
INSERT [dbo].[NguyenLieu] ([MaNL], [TenNL], [MaNCC], [GiaNL]) VALUES (N'NL0103', N'Trái cây đóng hộp', N'CTY103', 150000)
INSERT [dbo].[NguyenLieu] ([MaNL], [TenNL], [MaNCC], [GiaNL]) VALUES (N'NL0104', N'Syrup cà phê', N'CTY104', 420000)
INSERT [dbo].[NguyenLieu] ([MaNL], [TenNL], [MaNCC], [GiaNL]) VALUES (N'NL0105', N'Syrup kem', N'CTY105', 420000)
INSERT [dbo].[NguyenLieu] ([MaNL], [TenNL], [MaNCC], [GiaNL]) VALUES (N'NL0106', N'Syrup trái cây', N'CTY106', 270000)
INSERT [dbo].[NguyenLieu] ([MaNL], [TenNL], [MaNCC], [GiaNL]) VALUES (N'NL0107', N'Cà phê Robusta', N'CTY107', 290000)
INSERT [dbo].[NguyenLieu] ([MaNL], [TenNL], [MaNCC], [GiaNL]) VALUES (N'NL0108', N'Cà phê Arabica', N'CTY108', 350000)
INSERT [dbo].[NguyenLieu] ([MaNL], [TenNL], [MaNCC], [GiaNL]) VALUES (N'NL0109', N'Gà chiên miếng nhỏ', N'CTY109', 30000)
INSERT [dbo].[NguyenLieu] ([MaNL], [TenNL], [MaNCC], [GiaNL]) VALUES (N'NL0110', N'Gà chiên miếng lớn', N'CTY110', 60000)
INSERT [dbo].[NguyenLieu] ([MaNL], [TenNL], [MaNCC], [GiaNL]) VALUES (N'NL0111', N'Bò UK miếng nhỏ', N'CTY111', 80000)
INSERT [dbo].[NguyenLieu] ([MaNL], [TenNL], [MaNCC], [GiaNL]) VALUES (N'NL0112', N'Bò UK miếng lớn', N'CTY112', 90000)
INSERT [dbo].[NguyenLieu] ([MaNL], [TenNL], [MaNCC], [GiaNL]) VALUES (N'NL0113', N'Heo chiên xù', N'CTY113', 70000)
INSERT [dbo].[NguyenLieu] ([MaNL], [TenNL], [MaNCC], [GiaNL]) VALUES (N'NL0114', N'Cá tuyết chiên xù', N'CTY114', 48000)
INSERT [dbo].[NguyenLieu] ([MaNL], [TenNL], [MaNCC], [GiaNL]) VALUES (N'NL0115', N'Gà tẩm ướp truyền thống', N'CTY115', 90000)
INSERT [dbo].[NguyenLieu] ([MaNL], [TenNL], [MaNCC], [GiaNL]) VALUES (N'NL0116', N'Gà tẩm ướp vị cay', N'CTY116', 95000)
GO
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChiNCC], [SdtNCC], [MaTD]) VALUES (N'CTY101', N'CTY TNHH Trà Thái Nguyên', N'881/75 T? Quang B?u, Q8, TPHCM', N'0288345345', N'TR01')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChiNCC], [SdtNCC], [MaTD]) VALUES (N'CTY102', N'CTY TNHH Trái Cây Tươi Linh Tây', N'784 CMT8, Q3, TPHCM', N'0284678678', N'TR02')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChiNCC], [SdtNCC], [MaTD]) VALUES (N'CTY103', N'CTY TNHH Trái Cây Tươi Linh Tây', N'784 CMT8, Q3, TPHCM', N'0284678678', N'TR03')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChiNCC], [SdtNCC], [MaTD]) VALUES (N'CTY104', N'CTY TNHH Syrup Hoàng Hà', N'860 Nguyễn Đình Chiểu, Q1, TPHCM', N'0289765765', N'ĐX01')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChiNCC], [SdtNCC], [MaTD]) VALUES (N'CTY105', N'CTY TNHH Syrup Hoàng Hà', N'860 Nguyễn Đình Chiểu, Q1, TPHCM', N'0289765765', N'ĐX02')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChiNCC], [SdtNCC], [MaTD]) VALUES (N'CTY106', N'CTY TNHH Syrup Hoàng Hà', N'860 Nguyễn Đình Chiểu, Q1, TPHCM', N'0289765765', N'ĐX03')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChiNCC], [SdtNCC], [MaTD]) VALUES (N'CTY107', N'CTY TNHH Coffee Trung Nguyên', N'345 Ngô Đình Nhiệm, Q6, TPHCM', N'0288732732', N'CF01')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChiNCC], [SdtNCC], [MaTD]) VALUES (N'CTY108', N'CTY TNHH Coffee Trung Nguyên', N'345 Ngô Đình Nhiệm, Q6, TPHCM', N'0288732732', N'CF02')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChiNCC], [SdtNCC], [MaTD]) VALUES (N'CTY109', N'CTY TNHH Thực phẩm đông lạnh 3S', N'765 Trần Xuân Soạn, Q7, TPHCM', N'0284690690', N'BG01')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChiNCC], [SdtNCC], [MaTD]) VALUES (N'CTY110', N'CTY TNHH Thực phẩm đông lạnh 3S', N'765 Trần Xuân Soạn, Q7, TPHCM', N'0284690690', N'BG02')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChiNCC], [SdtNCC], [MaTD]) VALUES (N'CTY111', N'CTY TNHH Bò UK', N'45 Trần Não, Q2, TP Thủ Đức', N'0288245245', N'BB01')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChiNCC], [SdtNCC], [MaTD]) VALUES (N'CTY112', N'CTY TNHH Bò UK', N'45 Trần Não, Q2, TP Thủ Đức', N'0288245245', N'BB02')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChiNCC], [SdtNCC], [MaTD]) VALUES (N'CTY113', N'CTY TNHH Vissan', N'37 Hải Thượng Lãn Ông, Q1, TPHCM', N'0286894894', N'BH00')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChiNCC], [SdtNCC], [MaTD]) VALUES (N'CTY114', N'CTY TNHH Hải sản Kim Hồng', N'754 Võ Thị Sáu, H.Cần Giờ, TPHCM', N'0287378378', N'BC00')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChiNCC], [SdtNCC], [MaTD]) VALUES (N'CTY115', N'CTY TNHH Gà Tươi Labourche', N'90 Lê Thị Riêng, Q7,TPHCM', N'0285672672', N'GR01')
INSERT [dbo].[NhaCungCap] ([MaNCC], [TenNCC], [DiaChiNCC], [SdtNCC], [MaTD]) VALUES (N'CTY116', N'CTY TNHH Gà Tươi Labourche', N'90 Lê Thị Riêng, Q7,TPHCM', N'0285672672', N'GR02')
GO
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [DiaChiNV], [DienThoaiNV], [MaMA], [MaTU]) VALUES (N'ID0010', N'Nguyễn Thị Trà My', N'Nữ', N'12 Nguyễn Duy Trinh, Q2, Tp Thủ Đức', N'0337738123', N'MA01', N'TU01')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [DiaChiNV], [DienThoaiNV], [MaMA], [MaTU]) VALUES (N'ID0011', N'Hồ Thị Tú', N'Nữ', N'Tòa nhà C8, Bình Tân, TP HCM', N'033852814', N'MA02', N'TU02')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [DiaChiNV], [DienThoaiNV], [MaMA], [MaTU]) VALUES (N'ID0012', N'Trần Khánh Vân', N'Nữ', N'16/6A  Cao Thắng, Q5, Tphcm', N'0933124110', N'MA03', N'TU03')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [DiaChiNV], [DienThoaiNV], [MaMA], [MaTU]) VALUES (N'ID0013', N'Trần Chí Bảo', N'Nam', N'41/6/3C Nam Kì Khởi Nghĩa, Q1, TPHCM', N'037722124', N'MA04', N'TU04')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [DiaChiNV], [DienThoaiNV], [MaMA], [MaTU]) VALUES (N'ID0014', N'Hồ Thị Lam', N'Nữ', N'29 Quốc lộ 1, Dĩ An, Bình Dương', N'0978741458', N'MA05', N'TU05')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [DiaChiNV], [DienThoaiNV], [MaMA], [MaTU]) VALUES (N'ID0015', N'Nguyễn Gia Tuệ', N'Nữ', N'122/5/1A An Dương Vương, Dĩ An, Bình Dương', N'037748412', N'MA06', N'TU06')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [DiaChiNV], [DienThoaiNV], [MaMA], [MaTU]) VALUES (N'ID0016', N'Nguyễn Thị Gấm', N'Nữ', N'87/2A Nguyễn Duy Trinh, Q2, TP Thủ Đức', N'033324274', N'MA07', N'TU07')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [DiaChiNV], [DienThoaiNV], [MaMA], [MaTU]) VALUES (N'ID0017', N'Đỗ Quang Đăng', N'Nam', N'Hẻm 156 Nguyễn Trường Tộ, Q5, TPHCM', N'0938845657', N'MA08', N'TU08')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [DiaChiNV], [DienThoaiNV], [MaMA], [MaTU]) VALUES (N'ID0018', N'Cao Mỹ Duyên', N'Nữ', N'106/23 Lê Hồng Phong, Q8, TPHCM', N'0949578741', N'MA09', N'TU09')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [DiaChiNV], [DienThoaiNV], [MaMA], [MaTU]) VALUES (N'ID0019', N'Trương Trí Nam', N'Nam', N'792-794 Lã Xuân Oai, Q9, TP Thủ Đức', N'038847679', N'MA09', N'TU09')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [DiaChiNV], [DienThoaiNV], [MaMA], [MaTU]) VALUES (N'ID0020', N'Nguyễn Thị Trà My', N'Nữ', N'115 Cao Thắng, Q3, TPHCM', N'0949568721', N'MA10', N'TU10')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [DiaChiNV], [DienThoaiNV], [MaMA], [MaTU]) VALUES (N'ID0021', N'Lại Văn Minh', N'Nam', N'12/45B Hồ Thị Tư, Q8, TPHCM', N'036661739', N'MA11', N'TU12')
INSERT [dbo].[NhanVien] ([MaNV], [TenNV], [GioiTinh], [DiaChiNV], [DienThoaiNV], [MaMA], [MaTU]) VALUES (N'ID0022', N'Nguyễn Đỗ Thùy Linh', N'Nữ', N'Nhà C9 Lê Văn Việt, Q9, TP Thủ Đức', N'0984637478', N'MA12', N'TU13')
GO
INSERT [dbo].[ThucDon] ([MaTD], [NhomTD], [LoaiTD]) VALUES (N'BB01', N'Burger Bò miếng nhỏ', N'Món Ăn')
INSERT [dbo].[ThucDon] ([MaTD], [NhomTD], [LoaiTD]) VALUES (N'BB02', N'Burger Bò miếng lớn', N'Món Ăn')
INSERT [dbo].[ThucDon] ([MaTD], [NhomTD], [LoaiTD]) VALUES (N'BC00', N'Burger Cá', N'Món Ăn')
INSERT [dbo].[ThucDon] ([MaTD], [NhomTD], [LoaiTD]) VALUES (N'BG01', N'Burger Gà nhỏ', N'Món Ăn')
INSERT [dbo].[ThucDon] ([MaTD], [NhomTD], [LoaiTD]) VALUES (N'BG02', N'Burger Gà lớn', N'Món Ăn')
INSERT [dbo].[ThucDon] ([MaTD], [NhomTD], [LoaiTD]) VALUES (N'BH00', N'Burger Heo', N'Món Ăn')
INSERT [dbo].[ThucDon] ([MaTD], [NhomTD], [LoaiTD]) VALUES (N'CB01', N'Combo 1 người', N'Combo')
INSERT [dbo].[ThucDon] ([MaTD], [NhomTD], [LoaiTD]) VALUES (N'CB02', N'Combo 2 người', N'Combo')
INSERT [dbo].[ThucDon] ([MaTD], [NhomTD], [LoaiTD]) VALUES (N'CB03', N'Combo 3 người', N'Combo')
INSERT [dbo].[ThucDon] ([MaTD], [NhomTD], [LoaiTD]) VALUES (N'CB04', N'Combo gia đình', N'Combo')
INSERT [dbo].[ThucDon] ([MaTD], [NhomTD], [LoaiTD]) VALUES (N'CB05', N'Combo cà phê chiều', N'Combo')
INSERT [dbo].[ThucDon] ([MaTD], [NhomTD], [LoaiTD]) VALUES (N'CB06', N'Combo bữa sáng', N'Combo')
INSERT [dbo].[ThucDon] ([MaTD], [NhomTD], [LoaiTD]) VALUES (N'CB07', N'Combo bữa xế', N'Combo')
INSERT [dbo].[ThucDon] ([MaTD], [NhomTD], [LoaiTD]) VALUES (N'CF01', N'Cà Phê Pha Máy', N'Thức Uống')
INSERT [dbo].[ThucDon] ([MaTD], [NhomTD], [LoaiTD]) VALUES (N'CF02', N'Cà Phê Pha Phin', N'Thức Uống')
INSERT [dbo].[ThucDon] ([MaTD], [NhomTD], [LoaiTD]) VALUES (N'ĐX01', N'Đá xay có cà phê', N'Thức Uống')
INSERT [dbo].[ThucDon] ([MaTD], [NhomTD], [LoaiTD]) VALUES (N'ĐX02', N'Đá xay không cà phê', N'Thức Uống')
INSERT [dbo].[ThucDon] ([MaTD], [NhomTD], [LoaiTD]) VALUES (N'ĐX03', N'Nước trái cây đá xay', N'Thức Uống')
INSERT [dbo].[ThucDon] ([MaTD], [NhomTD], [LoaiTD]) VALUES (N'GR01', N'Gà rán truyền thống', N'Món Ăn')
INSERT [dbo].[ThucDon] ([MaTD], [NhomTD], [LoaiTD]) VALUES (N'GR02', N'Gà rán vị cay', N'Món Ăn')
INSERT [dbo].[ThucDon] ([MaTD], [NhomTD], [LoaiTD]) VALUES (N'HM00', N'Phần ăn trẻ em', N'Món Ăn')
INSERT [dbo].[ThucDon] ([MaTD], [NhomTD], [LoaiTD]) VALUES (N'LTO1', N'Soup', N'Món Ăn')
INSERT [dbo].[ThucDon] ([MaTD], [NhomTD], [LoaiTD]) VALUES (N'TR01', N'Trà nóng', N'Thức Uống')
INSERT [dbo].[ThucDon] ([MaTD], [NhomTD], [LoaiTD]) VALUES (N'TR02', N'Trà trái cây', N'Thức Uống')
INSERT [dbo].[ThucDon] ([MaTD], [NhomTD], [LoaiTD]) VALUES (N'TR03', N'Trà detox', N'Thức Uống')
GO
INSERT [dbo].[ThucUong] ([MaTU], [TenTU], [ThutuTU], [DvtTU], [GiaTU], [MaTD]) VALUES (N'TU01', N'Trà nóng', N'1', N'1 Ly', 25000, N'TR01')
INSERT [dbo].[ThucUong] ([MaTU], [TenTU], [ThutuTU], [DvtTU], [GiaTU], [MaTD]) VALUES (N'TU02', N'Trà vải', N'2', N'1 Ly', 60000, N'TR02')
INSERT [dbo].[ThucUong] ([MaTU], [TenTU], [ThutuTU], [DvtTU], [GiaTU], [MaTD]) VALUES (N'TU03', N'Trà Đào', N'3', N'1 Ly', 55000, N'TR02')
INSERT [dbo].[ThucUong] ([MaTU], [TenTU], [ThutuTU], [DvtTU], [GiaTU], [MaTD]) VALUES (N'TU04', N'Detox Cam Táo', N'4', N'1 Ly', 59000, N'TR03')
INSERT [dbo].[ThucUong] ([MaTU], [TenTU], [ThutuTU], [DvtTU], [GiaTU], [MaTD]) VALUES (N'TU05', N'Detox Cam Thơm', N'5', N'1 Ly', 59000, N'TR03')
INSERT [dbo].[ThucUong] ([MaTU], [TenTU], [ThutuTU], [DvtTU], [GiaTU], [MaTD]) VALUES (N'TU06', N'Caramel Coffee', N'6', N'1 Ly', 69000, N'ĐX01')
INSERT [dbo].[ThucUong] ([MaTU], [TenTU], [ThutuTU], [DvtTU], [GiaTU], [MaTD]) VALUES (N'TU07', N'Mocha Coffee', N'7', N'1 Ly', 69000, N'ĐX01')
INSERT [dbo].[ThucUong] ([MaTU], [TenTU], [ThutuTU], [DvtTU], [GiaTU], [MaTD]) VALUES (N'TU08', N'Caremel Cream', N'8', N'1 Ly', 69000, N'ĐX02')
INSERT [dbo].[ThucUong] ([MaTU], [TenTU], [ThutuTU], [DvtTU], [GiaTU], [MaTD]) VALUES (N'TU09', N'Mocha Cream', N'9', N'1 Ly', 69000, N'ĐX02')
INSERT [dbo].[ThucUong] ([MaTU], [TenTU], [ThutuTU], [DvtTU], [GiaTU], [MaTD]) VALUES (N'TU10', N'Kiwi Blended', N'10', N'1 Ly', 69000, N'ĐX03')
INSERT [dbo].[ThucUong] ([MaTU], [TenTU], [ThutuTU], [DvtTU], [GiaTU], [MaTD]) VALUES (N'TU11', N'Passion Blended', N'11', N'1 Ly', 69000, N'ĐX03')
INSERT [dbo].[ThucUong] ([MaTU], [TenTU], [ThutuTU], [DvtTU], [GiaTU], [MaTD]) VALUES (N'TU12', N'Capucchino', N'12', N'1 Ly', 55000, N'CF01')
INSERT [dbo].[ThucUong] ([MaTU], [TenTU], [ThutuTU], [DvtTU], [GiaTU], [MaTD]) VALUES (N'TU13', N'Latte', N'13', N'1 Ly', 55000, N'CF01')
INSERT [dbo].[ThucUong] ([MaTU], [TenTU], [ThutuTU], [DvtTU], [GiaTU], [MaTD]) VALUES (N'TU14', N'Đen Đá Việt Nam', N'14', N'1 Ly', 39000, N'CF02')
INSERT [dbo].[ThucUong] ([MaTU], [TenTU], [ThutuTU], [DvtTU], [GiaTU], [MaTD]) VALUES (N'TU15', N'Sữa Đá Việt Nam', N'15', N'1 Ly', 39000, N'CF02')
GO
ALTER TABLE [dbo].[Combo]  WITH CHECK ADD  CONSTRAINT [fk_Combo] FOREIGN KEY([MaTD])
REFERENCES [dbo].[ThucDon] ([MaTD])
GO
ALTER TABLE [dbo].[Combo] CHECK CONSTRAINT [fk_Combo]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [fk_HoaDon] FOREIGN KEY([MaNV])
REFERENCES [dbo].[NhanVien] ([MaNV])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [fk_HoaDon]
GO
ALTER TABLE [dbo].[MonAn]  WITH CHECK ADD  CONSTRAINT [fk_MonAn] FOREIGN KEY([MaTD])
REFERENCES [dbo].[ThucDon] ([MaTD])
GO
ALTER TABLE [dbo].[MonAn] CHECK CONSTRAINT [fk_MonAn]
GO
ALTER TABLE [dbo].[NguyenLieu]  WITH CHECK ADD  CONSTRAINT [fk_NguyenLieu] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[NhaCungCap] ([MaNCC])
GO
ALTER TABLE [dbo].[NguyenLieu] CHECK CONSTRAINT [fk_NguyenLieu]
GO
ALTER TABLE [dbo].[NhaCungCap]  WITH CHECK ADD  CONSTRAINT [fk_NhaCungCap] FOREIGN KEY([MaTD])
REFERENCES [dbo].[ThucDon] ([MaTD])
GO
ALTER TABLE [dbo].[NhaCungCap] CHECK CONSTRAINT [fk_NhaCungCap]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [fk_NhanVien] FOREIGN KEY([MaMA])
REFERENCES [dbo].[MonAn] ([MaMA])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [fk_NhanVien]
GO
ALTER TABLE [dbo].[NhanVien]  WITH CHECK ADD  CONSTRAINT [fk_NhanVien2] FOREIGN KEY([MaTU])
REFERENCES [dbo].[ThucUong] ([MaTU])
GO
ALTER TABLE [dbo].[NhanVien] CHECK CONSTRAINT [fk_NhanVien2]
GO
ALTER TABLE [dbo].[ThucUong]  WITH CHECK ADD  CONSTRAINT [fk_ThucUong] FOREIGN KEY([MaTD])
REFERENCES [dbo].[ThucDon] ([MaTD])
GO
ALTER TABLE [dbo].[ThucUong] CHECK CONSTRAINT [fk_ThucUong]
GO
/****** Object:  StoredProcedure [dbo].[sp_Danhsachhoadon]    Script Date: 5/10/2021 11:30:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[sp_Danhsachhoadon] @MaNv nchar(6)
As
Select NhanVien.MaNV,HoaDon.MaHD,HoaDon.NgayLapHD, count (HoaDon.MaHD) as SoluongHoaDon
From NhanVien inner join HoaDon on NhanVien.MaNV = HoaDon.MaNV
Where @MaNv = NhanVien.MaNV
Group by NhanVien.MaNV,HoaDon.MaHD,HoaDon.NgayLapHD
GO
/****** Object:  StoredProcedure [dbo].[sp_Giacombo]    Script Date: 5/10/2021 11:30:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[sp_Giacombo] @MaCb char(4)
As
Declare @Giacb int, @Tienthoi int,@Sotiennhan int
Set @Sotiennhan = 800000
Select @Giacb = Combo.GiaCB, @Tienthoi = @Sotiennhan - @Giacb
From Combo
Where @MaCb = Combo.MaCB 
If @Tienthoi > 0 
Begin
	Print N'Tiền thối : ' + cast (@Tienthoi as nvarchar(6))
End
Else
	Print N'Không đủ tiền'
Print N'Giá combo : ' + cast (@Giacb as nvarchar(6))
GO
/****** Object:  StoredProcedure [dbo].[sp_Sanphamtunguyenlieu]    Script Date: 5/10/2021 11:30:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[sp_Sanphamtunguyenlieu] @MaNL char(6)
As
Select NguyenLieu.MaNL,NguyenLieu.TenNL, NhaCungCap.MaNCC, ThucDon.NhomTD
From NhaCungCap inner join NguyenLieu on NguyenLieu.MaNCC = NhaCungCap.MaNCC inner join ThucDon on NhaCungCap.MaTD = ThucDon.MaTD
Where @MaNL = NguyenLieu.MaNL
Group by NguyenLieu.MaNL,NguyenLieu.TenNL, NhaCungCap.MaNCC, ThucDon.NhomTD
GO
/****** Object:  StoredProcedure [dbo].[sp_Thongtinmonan]    Script Date: 5/10/2021 11:30:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[sp_Thongtinmonan] @MaMa char(4)
As
Select MonAn.MaMA,MonAn.TenMA, ThucDon.MaTD, ThucDon.NhomTD 
,NhaCungCap.MaNCC,NhaCungCap.TenNCC, NhaCungCap.DiaChiNCC, NhaCungCap.SdtNCC
From ThucDon inner join MonAn on ThucDon.MaTD = MonAn.MaTD inner join NhaCungCap on NhaCungCap.MaTD = ThucDon.MaTD
Where @MaMa = MonAn.MaMA
Group by MonAn.MaMA,MonAn.TenMA, ThucDon.MaTD, ThucDon.LoaiTD, ThucDon.NhomTD 
,NhaCungCap.MaNCC,NhaCungCap.TenNCC, NhaCungCap.DiaChiNCC, NhaCungCap.SdtNCC
GO
/****** Object:  StoredProcedure [dbo].[sp_Thongtinnhanvien]    Script Date: 5/10/2021 11:30:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[sp_Thongtinnhanvien] @MaNv char(6)
As
Select NhanVien.MaNV,NhanVien.TenNV,NhanVien.GioiTinh,NhanVien.DiaChiNV,NhanVien.DienThoaiNV
From NhanVien 
Where @MaNv = MaNV
GO
/****** Object:  StoredProcedure [dbo].[sp_Tracuuhoadon]    Script Date: 5/10/2021 11:30:11 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
Create Proc [dbo].[sp_Tracuuhoadon] @MaHd char(5)
As
Select HoaDon.MaHD, NhanVien.MaNV, NhanVien.TenNV, MonAn.TenMA, ThucUong.TenTU
From NhanVien join HoaDon on NhanVien.MaNV = HoaDon.MaNV join MonAn on NhanVien.MaMA = MonAn.MaMA
		join ThucUong on NhanVien.MaTU =  ThucUong.MaTU
Where @MaHd = MaHD
Group by HoaDon.MaHD, NhanVien.MaNV, NhanVien.TenNV, MonAn.TenMA, ThucUong.TenTU
GO
