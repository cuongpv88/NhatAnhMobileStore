USE [NhatAnhStore]
GO
/****** Object:  Table [dbo].[__EFMigrationsHistory]    Script Date: 1/19/2022 9:15:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[__EFMigrationsHistory](
	[MigrationId] [nvarchar](150) NOT NULL,
	[ProductVersion] [nvarchar](32) NOT NULL,
 CONSTRAINT [PK___EFMigrationsHistory] PRIMARY KEY CLUSTERED 
(
	[MigrationId] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietDonHang]    Script Date: 1/19/2022 9:15:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietDonHang](
	[MaDH] [int] NOT NULL,
	[MaDT] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[DonGia] [int] NOT NULL,
	[GiamGia] [int] NOT NULL,
	[TongGia] [int] NOT NULL,
 CONSTRAINT [PK_ChiTietDonHang] PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC,
	[MaDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 1/19/2022 9:15:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[MaHD] [int] NOT NULL,
	[MaDT] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[TongGia] [int] NOT NULL,
 CONSTRAINT [PK_ChiTietHoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC,
	[MaDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DienThoai]    Script Date: 1/19/2022 9:15:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DienThoai](
	[MaDT] [int] IDENTITY(1,1) NOT NULL,
	[MaModel] [int] NOT NULL,
	[Mau] [nvarchar](max) NULL,
	[Gia] [int] NOT NULL,
	[GiamGia] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
	[Hinh] [nvarchar](max) NULL,
 CONSTRAINT [PK_DienThoai] PRIMARY KEY CLUSTERED 
(
	[MaDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DonHang]    Script Date: 1/19/2022 9:15:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DonHang](
	[MaDH] [int] IDENTITY(1,1) NOT NULL,
	[MaKH] [int] NOT NULL,
	[NgayLapDH] [datetime2](7) NOT NULL,
	[TongGia] [int] NOT NULL,
	[TrangThai] [nvarchar](max) NULL,
 CONSTRAINT [PK_DonHang] PRIMARY KEY CLUSTERED 
(
	[MaDH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GioHang]    Script Date: 1/19/2022 9:15:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHang](
	[MaKH] [int] NOT NULL,
	[MaDT] [int] NOT NULL,
	[SoLuong] [int] NOT NULL,
 CONSTRAINT [PK_GioHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC,
	[MaDT] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Hang]    Script Date: 1/19/2022 9:15:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Hang](
	[MaHang] [int] IDENTITY(1,1) NOT NULL,
	[TenHang] [nvarchar](max) NULL,
	[TrangThai] [bit] NOT NULL,
 CONSTRAINT [PK_Hang] PRIMARY KEY CLUSTERED 
(
	[MaHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 1/19/2022 9:15:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHD] [int] IDENTITY(1,1) NOT NULL,
	[MaDH] [int] NOT NULL,
	[TenKH] [nvarchar](max) NULL,
	[SoDT] [nvarchar](max) NULL,
	[GioiTinh] [nvarchar](max) NULL,
	[MaKH] [int] NULL,
	[TongThanhToan] [int] NOT NULL,
	[DiaChi] [nvarchar](max) NULL,
	[NgayLapHD] [datetime2](7) NOT NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[IMEI_DienThoai]    Script Date: 1/19/2022 9:15:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[IMEI_DienThoai](
	[IMEI] [nvarchar](450) NOT NULL,
	[MaDT] [int] NOT NULL,
	[MaHD] [int] NOT NULL,
 CONSTRAINT [PK_IMEI_DienThoai] PRIMARY KEY CLUSTERED 
(
	[IMEI] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 1/19/2022 9:15:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKH] [int] IDENTITY(1,1) NOT NULL,
	[TenKH] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[DiaChi] [nvarchar](max) NULL,
	[SoDienThoai] [nvarchar](max) NULL,
	[GioiTinh] [nvarchar](max) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ModelDienThoai]    Script Date: 1/19/2022 9:15:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ModelDienThoai](
	[MaModel] [int] IDENTITY(1,1) NOT NULL,
	[TenModel] [nvarchar](max) NULL,
	[MaHang] [int] NOT NULL,
	[Ram] [nvarchar](max) NULL,
	[Rom] [nvarchar](max) NULL,
	[ManHinh] [nvarchar](max) NULL,
	[Camera] [nvarchar](max) NULL,
	[Pin] [nvarchar](max) NULL,
	[Chip] [nvarchar](max) NULL,
	[NgayRaMat] [datetime2](7) NOT NULL,
	[TrangThai] [bit] NOT NULL,
	[Hinh] [nvarchar](max) NULL,
 CONSTRAINT [PK_ModelDienThoai] PRIMARY KEY CLUSTERED 
(
	[MaModel] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoan]    Script Date: 1/19/2022 9:15:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoan](
	[TenTK] [nvarchar](450) NOT NULL,
	[MatKhau] [nvarchar](max) NULL,
	[MaKH] [int] NOT NULL,
	[TrangThai] [bit] NOT NULL,
 CONSTRAINT [PK_TaiKhoan] PRIMARY KEY CLUSTERED 
(
	[TenTK] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TaiKhoanAdmin]    Script Date: 1/19/2022 9:15:33 AM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TaiKhoanAdmin](
	[User] [nvarchar](450) NOT NULL,
	[Pass] [nvarchar](max) NULL,
	[Name] [nvarchar](max) NULL,
	[PhoneNumber] [nvarchar](max) NULL,
	[Email] [nvarchar](max) NULL,
	[Role] [nvarchar](max) NULL,
	[TrangThai] [bit] NOT NULL,
 CONSTRAINT [PK_TaiKhoanAdmin] PRIMARY KEY CLUSTERED 
(
	[User] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[__EFMigrationsHistory] ([MigrationId], [ProductVersion]) VALUES (N'20221801035035_InitialCreate', N'3.1.0')
GO
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaDT], [SoLuong], [DonGia], [GiamGia], [TongGia]) VALUES (1, 8, 1, 32500000, 3500000, 29000000)
GO
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaDT], [SoLuong], [DonGia], [GiamGia], [TongGia]) VALUES (2, 6, 2, 23990000, 800000, 46380000)
GO
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaDT], [SoLuong], [DonGia], [GiamGia], [TongGia]) VALUES (3, 31, 1, 11990000, 1300000, 10690000)
GO
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaDT], [SoLuong], [DonGia], [GiamGia], [TongGia]) VALUES (4, 6, 1, 23990000, 800000, 23190000)
GO
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaDT], [SoLuong], [DonGia], [GiamGia], [TongGia]) VALUES (4, 23, 1, 15990000, 2000000, 13990000)
GO
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaDT], [SoLuong], [DonGia], [GiamGia], [TongGia]) VALUES (4, 31, 1, 11990000, 1300000, 10690000)
GO
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaDT], [SoLuong], [DonGia], [GiamGia], [TongGia]) VALUES (5, 9, 1, 22990000, 2300000, 20690000)
GO
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaDT], [SoLuong], [DonGia], [GiamGia], [TongGia]) VALUES (5, 18, 1, 28490000, 9000000, 19490000)
GO
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaDT], [SoLuong], [DonGia], [GiamGia], [TongGia]) VALUES (6, 23, 3, 15990000, 2000000, 41970000)
GO
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaDT], [SoLuong], [DonGia], [GiamGia], [TongGia]) VALUES (7, 4, 1, 27500000, 3000000, 24500000)
GO
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaDT], [SoLuong], [DonGia], [GiamGia], [TongGia]) VALUES (7, 12, 2, 23990000, 2000000, 43980000)
GO
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaDT], [SoLuong], [DonGia], [GiamGia], [TongGia]) VALUES (8, 8, 3, 32500000, 3500000, 87000000)
GO
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaDT], [SoLuong], [DonGia], [GiamGia], [TongGia]) VALUES (9, 8, 2, 32500000, 3500000, 58000000)
GO
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaDT], [SoLuong], [DonGia], [GiamGia], [TongGia]) VALUES (10, 4, 1, 27500000, 3000000, 24500000)
GO
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaDT], [SoLuong], [DonGia], [GiamGia], [TongGia]) VALUES (10, 12, 2, 23990000, 2000000, 43980000)
GO
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaDT], [SoLuong], [DonGia], [GiamGia], [TongGia]) VALUES (11, 12, 3, 23990000, 2000000, 65970000)
GO
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaDT], [SoLuong], [DonGia], [GiamGia], [TongGia]) VALUES (12, 9, 3, 22990000, 2300000, 62070000)
GO
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaDT], [SoLuong], [DonGia], [GiamGia], [TongGia]) VALUES (13, 4, 3, 27500000, 3000000, 73500000)
GO
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaDT], [SoLuong], [DonGia], [GiamGia], [TongGia]) VALUES (13, 8, 2, 32500000, 3500000, 58000000)
GO
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaDT], [SoLuong], [DonGia], [GiamGia], [TongGia]) VALUES (14, 12, 3, 23990000, 2000000, 65970000)
GO
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaDT], [SoLuong], [DonGia], [GiamGia], [TongGia]) VALUES (15, 9, 3, 22990000, 2300000, 62070000)
GO
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaDT], [SoLuong], [DonGia], [GiamGia], [TongGia]) VALUES (16, 8, 1, 32500000, 3500000, 29000000)
GO
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaDT], [SoLuong], [DonGia], [GiamGia], [TongGia]) VALUES (16, 12, 3, 23990000, 2000000, 65970000)
GO
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaDT], [SoLuong], [DonGia], [GiamGia], [TongGia]) VALUES (17, 12, 3, 23990000, 2000000, 65970000)
GO
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaDT], [SoLuong], [DonGia], [GiamGia], [TongGia]) VALUES (18, 6, 1, 23990000, 800000, 23190000)
GO
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaDT], [SoLuong], [DonGia], [GiamGia], [TongGia]) VALUES (19, 12, 2, 23990000, 2000000, 43980000)
GO
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaDT], [SoLuong], [DonGia], [GiamGia], [TongGia]) VALUES (19, 21, 1, 22990000, 3000000, 19990000)
GO
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaDT], [SoLuong], [DonGia], [GiamGia], [TongGia]) VALUES (20, 12, 1, 23990000, 2000000, 21990000)
GO
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaDT], [SoLuong], [DonGia], [GiamGia], [TongGia]) VALUES (21, 4, 1, 27500000, 3000000, 24500000)
GO
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaDT], [SoLuong], [DonGia], [GiamGia], [TongGia]) VALUES (22, 12, 2, 23990000, 2000000, 43980000)
GO
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaDT], [SoLuong], [DonGia], [GiamGia], [TongGia]) VALUES (23, 31, 1, 11990000, 1300000, 10690000)
GO
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaDT], [SoLuong], [DonGia], [GiamGia], [TongGia]) VALUES (24, 8, 1, 32500000, 3500000, 29000000)
GO
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaDT], [SoLuong], [DonGia], [GiamGia], [TongGia]) VALUES (25, 15, 1, 20990000, 5000000, 15990000)
GO
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaDT], [SoLuong], [DonGia], [GiamGia], [TongGia]) VALUES (26, 23, 1, 15990000, 2000000, 13990000)
GO
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaDT], [SoLuong], [DonGia], [GiamGia], [TongGia]) VALUES (27, 6, 1, 23990000, 800000, 23190000)
GO
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaDT], [SoLuong], [DonGia], [GiamGia], [TongGia]) VALUES (28, 19, 1, 28490000, 9000000, 19490000)
GO
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaDT], [SoLuong], [DonGia], [GiamGia], [TongGia]) VALUES (28, 29, 1, 14990000, 3000000, 11990000)
GO
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaDT], [SoLuong], [DonGia], [GiamGia], [TongGia]) VALUES (29, 26, 1, 9190000, 1000000, 8190000)
GO
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaDT], [SoLuong], [DonGia], [GiamGia], [TongGia]) VALUES (30, 23, 1, 15990000, 2000000, 13990000)
GO
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaDT], [SoLuong], [DonGia], [GiamGia], [TongGia]) VALUES (31, 14, 2, 23990000, 2000000, 43980000)
GO
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaDT], [SoLuong], [DonGia], [GiamGia], [TongGia]) VALUES (32, 6, 3, 23990000, 800000, 69570000)
GO
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaDT], [SoLuong], [DonGia], [GiamGia], [TongGia]) VALUES (33, 4, 1, 27500000, 3000000, 24500000)
GO
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaDT], [SoLuong], [DonGia], [GiamGia], [TongGia]) VALUES (34, 6, 2, 23990000, 800000, 46380000)
GO
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaDT], [SoLuong], [DonGia], [GiamGia], [TongGia]) VALUES (35, 8, 3, 32500000, 3500000, 87000000)
GO
INSERT [dbo].[ChiTietDonHang] ([MaDH], [MaDT], [SoLuong], [DonGia], [GiamGia], [TongGia]) VALUES (36, 4, 1, 27500000, 3000000, 24500000)
GO
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaDT], [SoLuong], [TongGia]) VALUES (1, 31, 1, 10690000)
GO
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaDT], [SoLuong], [TongGia]) VALUES (2, 8, 1, 29000000)
GO
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaDT], [SoLuong], [TongGia]) VALUES (3, 6, 1, 23190000)
GO
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaDT], [SoLuong], [TongGia]) VALUES (3, 23, 1, 13990000)
GO
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaDT], [SoLuong], [TongGia]) VALUES (3, 31, 1, 10690000)
GO
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaDT], [SoLuong], [TongGia]) VALUES (4, 6, 2, 46380000)
GO
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaDT], [SoLuong], [TongGia]) VALUES (5, 9, 1, 20690000)
GO
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaDT], [SoLuong], [TongGia]) VALUES (5, 18, 1, 19490000)
GO
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaDT], [SoLuong], [TongGia]) VALUES (6, 23, 3, 41970000)
GO
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaDT], [SoLuong], [TongGia]) VALUES (7, 8, 3, 87000000)
GO
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaDT], [SoLuong], [TongGia]) VALUES (8, 4, 1, 24500000)
GO
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaDT], [SoLuong], [TongGia]) VALUES (8, 12, 2, 43980000)
GO
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaDT], [SoLuong], [TongGia]) VALUES (9, 4, 1, 24500000)
GO
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaDT], [SoLuong], [TongGia]) VALUES (9, 12, 2, 43980000)
GO
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaDT], [SoLuong], [TongGia]) VALUES (10, 12, 3, 65970000)
GO
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaDT], [SoLuong], [TongGia]) VALUES (11, 9, 3, 62070000)
GO
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaDT], [SoLuong], [TongGia]) VALUES (12, 8, 2, 58000000)
GO
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaDT], [SoLuong], [TongGia]) VALUES (13, 12, 3, 65970000)
GO
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaDT], [SoLuong], [TongGia]) VALUES (14, 4, 3, 73500000)
GO
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaDT], [SoLuong], [TongGia]) VALUES (14, 8, 2, 58000000)
GO
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaDT], [SoLuong], [TongGia]) VALUES (15, 9, 3, 62070000)
GO
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaDT], [SoLuong], [TongGia]) VALUES (16, 8, 1, 29000000)
GO
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaDT], [SoLuong], [TongGia]) VALUES (16, 12, 3, 65970000)
GO
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaDT], [SoLuong], [TongGia]) VALUES (17, 12, 3, 65970000)
GO
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaDT], [SoLuong], [TongGia]) VALUES (18, 12, 2, 43980000)
GO
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaDT], [SoLuong], [TongGia]) VALUES (18, 21, 1, 19990000)
GO
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaDT], [SoLuong], [TongGia]) VALUES (19, 4, 1, 24500000)
GO
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaDT], [SoLuong], [TongGia]) VALUES (20, 31, 1, 10690000)
GO
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaDT], [SoLuong], [TongGia]) VALUES (21, 12, 2, 43980000)
GO
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaDT], [SoLuong], [TongGia]) VALUES (22, 8, 1, 29000000)
GO
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaDT], [SoLuong], [TongGia]) VALUES (23, 15, 1, 15990000)
GO
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaDT], [SoLuong], [TongGia]) VALUES (24, 6, 1, 23190000)
GO
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaDT], [SoLuong], [TongGia]) VALUES (25, 19, 1, 19490000)
GO
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaDT], [SoLuong], [TongGia]) VALUES (25, 29, 1, 11990000)
GO
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaDT], [SoLuong], [TongGia]) VALUES (26, 26, 1, 8190000)
GO
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaDT], [SoLuong], [TongGia]) VALUES (27, 23, 1, 13990000)
GO
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaDT], [SoLuong], [TongGia]) VALUES (28, 14, 2, 43980000)
GO
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaDT], [SoLuong], [TongGia]) VALUES (29, 6, 3, 69570000)
GO
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaDT], [SoLuong], [TongGia]) VALUES (30, 4, 1, 24500000)
GO
INSERT [dbo].[ChiTietHoaDon] ([MaHD], [MaDT], [SoLuong], [TongGia]) VALUES (31, 4, 1, 24500000)
GO
SET IDENTITY_INSERT [dbo].[DienThoai] ON 
GO
INSERT [dbo].[DienThoai] ([MaDT], [MaModel], [Mau], [Gia], [GiamGia], [SoLuong], [Hinh]) VALUES (1, 1, N'Trắng', 21990000, 800000, 100, N'\images\DienThoai\1.webp')
GO
INSERT [dbo].[DienThoai] ([MaDT], [MaModel], [Mau], [Gia], [GiamGia], [SoLuong], [Hinh]) VALUES (2, 1, N'Tím', 21990000, 800000, 80, N'\images\DienThoai\2.webp')
GO
INSERT [dbo].[DienThoai] ([MaDT], [MaModel], [Mau], [Gia], [GiamGia], [SoLuong], [Hinh]) VALUES (3, 1, N'Đen', 21990000, 800000, 112, N'\images\DienThoai\3.webp')
GO
INSERT [dbo].[DienThoai] ([MaDT], [MaModel], [Mau], [Gia], [GiamGia], [SoLuong], [Hinh]) VALUES (4, 2, N'Vàng', 27500000, 3000000, 42, N'\images\DienThoai\4.jpg')
GO
INSERT [dbo].[DienThoai] ([MaDT], [MaModel], [Mau], [Gia], [GiamGia], [SoLuong], [Hinh]) VALUES (5, 2, N'Bạc', 27500000, 3000000, 40, N'\images\DienThoai\5.jpg')
GO
INSERT [dbo].[DienThoai] ([MaDT], [MaModel], [Mau], [Gia], [GiamGia], [SoLuong], [Hinh]) VALUES (6, 3, N'Xanh lá', 23990000, 800000, 31, N'\images\DienThoai\6.webp')
GO
INSERT [dbo].[DienThoai] ([MaDT], [MaModel], [Mau], [Gia], [GiamGia], [SoLuong], [Hinh]) VALUES (7, 3, N'Đỏ', 23990000, 800000, 40, N'\images\DienThoai\7.webp')
GO
INSERT [dbo].[DienThoai] ([MaDT], [MaModel], [Mau], [Gia], [GiamGia], [SoLuong], [Hinh]) VALUES (8, 4, N'Xám', 32500000, 3500000, 19, N'\images\DienThoai\8.jpg')
GO
INSERT [dbo].[DienThoai] ([MaDT], [MaModel], [Mau], [Gia], [GiamGia], [SoLuong], [Hinh]) VALUES (9, 5, N'Bạc', 22990000, 2300000, 33, N'\images\DienThoai\9.jpg')
GO
INSERT [dbo].[DienThoai] ([MaDT], [MaModel], [Mau], [Gia], [GiamGia], [SoLuong], [Hinh]) VALUES (10, 5, N'Hồng', 22990000, 2100000, 52, N'\images\DienThoai\10.jpg')
GO
INSERT [dbo].[DienThoai] ([MaDT], [MaModel], [Mau], [Gia], [GiamGia], [SoLuong], [Hinh]) VALUES (11, 5, N'Đen', 22990000, 2300000, 25, N'\images\DienThoai\11.jpg')
GO
INSERT [dbo].[DienThoai] ([MaDT], [MaModel], [Mau], [Gia], [GiamGia], [SoLuong], [Hinh]) VALUES (12, 6, N'Đen', 23990000, 2000000, 34, N'\images\DienThoai\12.jpg')
GO
INSERT [dbo].[DienThoai] ([MaDT], [MaModel], [Mau], [Gia], [GiamGia], [SoLuong], [Hinh]) VALUES (13, 1, N'Xanh lục', 23990000, 2000000, 24, N'\images\DienThoai\13.webp')
GO
INSERT [dbo].[DienThoai] ([MaDT], [MaModel], [Mau], [Gia], [GiamGia], [SoLuong], [Hinh]) VALUES (14, 6, N'Trắng', 23990000, 2000000, 22, N'\images\DienThoai\14.jpg')
GO
INSERT [dbo].[DienThoai] ([MaDT], [MaModel], [Mau], [Gia], [GiamGia], [SoLuong], [Hinh]) VALUES (15, 7, N'Đen', 20990000, 5000000, 19, N'\images\DienThoai\15.jpg')
GO
INSERT [dbo].[DienThoai] ([MaDT], [MaModel], [Mau], [Gia], [GiamGia], [SoLuong], [Hinh]) VALUES (16, 7, N'Xanh dương', 20990990, 5000000, 15, N'\images\DienThoai\16.jpg')
GO
INSERT [dbo].[DienThoai] ([MaDT], [MaModel], [Mau], [Gia], [GiamGia], [SoLuong], [Hinh]) VALUES (17, 7, N'Vàng đồng', 20990000, 5000000, 18, N'\images\DienThoai\17.jpg')
GO
INSERT [dbo].[DienThoai] ([MaDT], [MaModel], [Mau], [Gia], [GiamGia], [SoLuong], [Hinh]) VALUES (18, 8, N'Đen', 28490000, 9000000, 29, N'\images\DienThoai\18.jpg')
GO
INSERT [dbo].[DienThoai] ([MaDT], [MaModel], [Mau], [Gia], [GiamGia], [SoLuong], [Hinh]) VALUES (19, 8, N'Xanh dương', 28490000, 9000000, 21, N'\images\DienThoai\19.jpg')
GO
INSERT [dbo].[DienThoai] ([MaDT], [MaModel], [Mau], [Gia], [GiamGia], [SoLuong], [Hinh]) VALUES (20, 8, N'Vàng đồng', 28490000, 9000000, 22, N'\images\DienThoai\20.jpg')
GO
INSERT [dbo].[DienThoai] ([MaDT], [MaModel], [Mau], [Gia], [GiamGia], [SoLuong], [Hinh]) VALUES (21, 9, N'Xanh dương', 22990000, 3000000, 39, N'\images\DienThoai\21.webp')
GO
INSERT [dbo].[DienThoai] ([MaDT], [MaModel], [Mau], [Gia], [GiamGia], [SoLuong], [Hinh]) VALUES (22, 9, N'Xanh thiên nhiên', 22990000, 3000000, 20, N'\images\DienThoai\22.webp')
GO
INSERT [dbo].[DienThoai] ([MaDT], [MaModel], [Mau], [Gia], [GiamGia], [SoLuong], [Hinh]) VALUES (23, 10, N'Xanh', 15990000, 2000000, 15, N'\images\DienThoai\23.jpg')
GO
INSERT [dbo].[DienThoai] ([MaDT], [MaModel], [Mau], [Gia], [GiamGia], [SoLuong], [Hinh]) VALUES (24, 11, N'Đen', 10990000, 3000000, 22, N'\images\DienThoai\24.jpg')
GO
INSERT [dbo].[DienThoai] ([MaDT], [MaModel], [Mau], [Gia], [GiamGia], [SoLuong], [Hinh]) VALUES (26, 12, N'Xanh dương', 9190000, 1000000, 19, N'\images\DienThoai\26.jpg')
GO
INSERT [dbo].[DienThoai] ([MaDT], [MaModel], [Mau], [Gia], [GiamGia], [SoLuong], [Hinh]) VALUES (27, 12, N'Đen', 9190000, 1000000, 20, N'\images\DienThoai\27.jpg')
GO
INSERT [dbo].[DienThoai] ([MaDT], [MaModel], [Mau], [Gia], [GiamGia], [SoLuong], [Hinh]) VALUES (28, 12, N'Trắng', 9190000, 1000000, 20, N'\images\DienThoai\28.jpg')
GO
INSERT [dbo].[DienThoai] ([MaDT], [MaModel], [Mau], [Gia], [GiamGia], [SoLuong], [Hinh]) VALUES (29, 15, N'BlackPink', 14990000, 3000000, 38, N'\images\DienThoai\29.jpg')
GO
INSERT [dbo].[DienThoai] ([MaDT], [MaModel], [Mau], [Gia], [GiamGia], [SoLuong], [Hinh]) VALUES (30, 15, N'Đen', 14990000, 4000000, 29, N'\images\DienThoai\30.jpg')
GO
INSERT [dbo].[DienThoai] ([MaDT], [MaModel], [Mau], [Gia], [GiamGia], [SoLuong], [Hinh]) VALUES (31, 14, N'Tím', 11990000, 1300000, 17, N'\images\DienThoai\31.jpg')
GO
INSERT [dbo].[DienThoai] ([MaDT], [MaModel], [Mau], [Gia], [GiamGia], [SoLuong], [Hinh]) VALUES (32, 14, N'Đen', 11990000, 1300000, 32, N'\images\DienThoai\32.jpg')
GO
INSERT [dbo].[DienThoai] ([MaDT], [MaModel], [Mau], [Gia], [GiamGia], [SoLuong], [Hinh]) VALUES (33, 8, N'Xám', 1200000, 10000, 40, N'\images\DienThoai\33.jpg')
GO
SET IDENTITY_INSERT [dbo].[DienThoai] OFF
GO
SET IDENTITY_INSERT [dbo].[DonHang] ON 
GO
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [NgayLapDH], [TongGia], [TrangThai]) VALUES (1, 1, CAST(N'2022-01-18T11:01:59.1934120' AS DateTime2), 29000000, N'Đã duyệt')
GO
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [NgayLapDH], [TongGia], [TrangThai]) VALUES (2, 1, CAST(N'2022-01-18T11:02:14.0704057' AS DateTime2), 46380000, N'Đã duyệt')
GO
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [NgayLapDH], [TongGia], [TrangThai]) VALUES (3, 1, CAST(N'2022-01-18T11:02:23.1745402' AS DateTime2), 10690000, N'Đã duyệt')
GO
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [NgayLapDH], [TongGia], [TrangThai]) VALUES (4, 1, CAST(N'2022-01-18T11:02:51.5531621' AS DateTime2), 47870000, N'Đã duyệt')
GO
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [NgayLapDH], [TongGia], [TrangThai]) VALUES (5, 1, CAST(N'2022-01-18T11:25:19.0784386' AS DateTime2), 40180000, N'Đã duyệt')
GO
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [NgayLapDH], [TongGia], [TrangThai]) VALUES (6, 1, CAST(N'2022-01-18T11:25:36.5589823' AS DateTime2), 41970000, N'Đã duyệt')
GO
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [NgayLapDH], [TongGia], [TrangThai]) VALUES (7, 1, CAST(N'2022-01-18T11:31:58.6021117' AS DateTime2), 68480000, N'Đã duyệt')
GO
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [NgayLapDH], [TongGia], [TrangThai]) VALUES (8, 1, CAST(N'2022-01-18T11:32:13.3255735' AS DateTime2), 87000000, N'Đã duyệt')
GO
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [NgayLapDH], [TongGia], [TrangThai]) VALUES (9, 1, CAST(N'2022-01-18T12:12:03.2898700' AS DateTime2), 58000000, N'Đã duyệt')
GO
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [NgayLapDH], [TongGia], [TrangThai]) VALUES (10, 1, CAST(N'2022-01-18T12:12:28.9997162' AS DateTime2), 68480000, N'Đã duyệt')
GO
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [NgayLapDH], [TongGia], [TrangThai]) VALUES (11, 1, CAST(N'2022-01-18T12:16:03.2140094' AS DateTime2), 65970000, N'Đã duyệt')
GO
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [NgayLapDH], [TongGia], [TrangThai]) VALUES (12, 1, CAST(N'2022-01-18T12:22:24.1673429' AS DateTime2), 62070000, N'Đã duyệt')
GO
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [NgayLapDH], [TongGia], [TrangThai]) VALUES (13, 1, CAST(N'2022-01-18T12:26:08.6438829' AS DateTime2), 131500000, N'Đã duyệt')
GO
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [NgayLapDH], [TongGia], [TrangThai]) VALUES (14, 1, CAST(N'2022-01-18T12:27:54.0071250' AS DateTime2), 65970000, N'Đã duyệt')
GO
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [NgayLapDH], [TongGia], [TrangThai]) VALUES (15, 1, CAST(N'2022-01-18T12:44:02.7069016' AS DateTime2), 62070000, N'Đã duyệt')
GO
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [NgayLapDH], [TongGia], [TrangThai]) VALUES (16, 1, CAST(N'2022-01-18T12:52:58.1834118' AS DateTime2), 94970000, N'Đã duyệt')
GO
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [NgayLapDH], [TongGia], [TrangThai]) VALUES (17, 1, CAST(N'2022-01-18T12:57:59.8004939' AS DateTime2), 65970000, N'Đã duyệt')
GO
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [NgayLapDH], [TongGia], [TrangThai]) VALUES (18, 1, CAST(N'2022-01-18T17:05:59.9419357' AS DateTime2), 23190000, N'Đã hủy')
GO
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [NgayLapDH], [TongGia], [TrangThai]) VALUES (19, 1, CAST(N'2022-01-18T21:53:53.8405355' AS DateTime2), 63970000, N'Đã duyệt')
GO
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [NgayLapDH], [TongGia], [TrangThai]) VALUES (20, 1, CAST(N'2022-01-18T23:07:53.8156029' AS DateTime2), 21990000, N'Đã hủy')
GO
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [NgayLapDH], [TongGia], [TrangThai]) VALUES (21, 3, CAST(N'2022-01-18T00:48:18.4010762' AS DateTime2), 24500000, N'Đã duyệt')
GO
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [NgayLapDH], [TongGia], [TrangThai]) VALUES (22, 3, CAST(N'2022-01-18T00:48:30.6603294' AS DateTime2), 43980000, N'Đã duyệt')
GO
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [NgayLapDH], [TongGia], [TrangThai]) VALUES (23, 3, CAST(N'2022-01-18T00:48:42.5493922' AS DateTime2), 10690000, N'Đã duyệt')
GO
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [NgayLapDH], [TongGia], [TrangThai]) VALUES (24, 3, CAST(N'2022-01-18T00:50:24.2966268' AS DateTime2), 29000000, N'Đã duyệt')
GO
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [NgayLapDH], [TongGia], [TrangThai]) VALUES (25, 3, CAST(N'2022-01-18T00:50:34.0128711' AS DateTime2), 15990000, N'Đã duyệt')
GO
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [NgayLapDH], [TongGia], [TrangThai]) VALUES (26, 3, CAST(N'2022-01-18T00:50:41.0961722' AS DateTime2), 13990000, N'Đã Hủy')
GO
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [NgayLapDH], [TongGia], [TrangThai]) VALUES (27, 3, CAST(N'2022-01-18T00:54:10.6299871' AS DateTime2), 23190000, N'Đã duyệt')
GO
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [NgayLapDH], [TongGia], [TrangThai]) VALUES (28, 3, CAST(N'2022-01-18T00:55:14.9852603' AS DateTime2), 31480000, N'Đã duyệt')
GO
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [NgayLapDH], [TongGia], [TrangThai]) VALUES (29, 3, CAST(N'2022-01-18T00:56:46.5028212' AS DateTime2), 8190000, N'Đã duyệt')
GO
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [NgayLapDH], [TongGia], [TrangThai]) VALUES (30, 3, CAST(N'2022-01-18T00:57:00.6588397' AS DateTime2), 13990000, N'Đã duyệt')
GO
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [NgayLapDH], [TongGia], [TrangThai]) VALUES (31, 3, CAST(N'2022-01-18T00:57:15.2995746' AS DateTime2), 43980000, N'Đã duyệt')
GO
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [NgayLapDH], [TongGia], [TrangThai]) VALUES (32, 4, CAST(N'2022-01-18T08:32:39.1554269' AS DateTime2), 69570000, N'Đã duyệt')
GO
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [NgayLapDH], [TongGia], [TrangThai]) VALUES (33, 4, CAST(N'2022-01-18T12:59:19.0702281' AS DateTime2), 24500000, N'Đã duyệt')
GO
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [NgayLapDH], [TongGia], [TrangThai]) VALUES (34, 4, CAST(N'2022-01-18T13:05:45.2697313' AS DateTime2), 46380000, N'Chưa duyệt')
GO
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [NgayLapDH], [TongGia], [TrangThai]) VALUES (35, 5, CAST(N'2022-01-18T13:37:31.5849344' AS DateTime2), 87000000, N'Đã hủy')
GO
INSERT [dbo].[DonHang] ([MaDH], [MaKH], [NgayLapDH], [TongGia], [TrangThai]) VALUES (36, 5, CAST(N'2022-01-18T13:38:49.8669114' AS DateTime2), 24500000, N'Đã duyệt')
GO
SET IDENTITY_INSERT [dbo].[DonHang] OFF
GO
INSERT [dbo].[GioHang] ([MaKH], [MaDT], [SoLuong]) VALUES (5, 1, 1)
GO
SET IDENTITY_INSERT [dbo].[Hang] ON 
GO
INSERT [dbo].[Hang] ([MaHang], [TenHang], [TrangThai]) VALUES (1, N'Samsung', 1)
GO
INSERT [dbo].[Hang] ([MaHang], [TenHang], [TrangThai]) VALUES (2, N'Apple', 1)
GO
INSERT [dbo].[Hang] ([MaHang], [TenHang], [TrangThai]) VALUES (3, N'Vsmart', 0)
GO
INSERT [dbo].[Hang] ([MaHang], [TenHang], [TrangThai]) VALUES (4, N'Xiaomi', 1)
GO
INSERT [dbo].[Hang] ([MaHang], [TenHang], [TrangThai]) VALUES (5, N'Huawei', 1)
GO
INSERT [dbo].[Hang] ([MaHang], [TenHang], [TrangThai]) VALUES (6, N'FPT', 1)
GO
SET IDENTITY_INSERT [dbo].[Hang] OFF
GO
SET IDENTITY_INSERT [dbo].[HoaDon] ON 
GO
INSERT [dbo].[HoaDon] ([MaHD], [MaDH], [TenKH], [SoDT], [GioiTinh], [MaKH], [TongThanhToan], [DiaChi], [NgayLapHD]) VALUES (1, 3, N'Nhật Anh', N'0947902015', N'Nam', 1, 10690000, N'Thành phố Nha Trang', CAST(N'2022-01-18T11:09:42.8045974' AS DateTime2))
GO
INSERT [dbo].[HoaDon] ([MaHD], [MaDH], [TenKH], [SoDT], [GioiTinh], [MaKH], [TongThanhToan], [DiaChi], [NgayLapHD]) VALUES (2, 1, N'Nhật Anh', N'0947902015', N'Nam', 1, 29000000, N'Thành phố Nha Trang', CAST(N'2022-01-18T11:10:09.4386128' AS DateTime2))
GO
INSERT [dbo].[HoaDon] ([MaHD], [MaDH], [TenKH], [SoDT], [GioiTinh], [MaKH], [TongThanhToan], [DiaChi], [NgayLapHD]) VALUES (3, 4, N'Nhật Anh', N'0947902015', N'Nam', 1, 47870000, N'Thành phố Nha Trang', CAST(N'2022-01-18T11:12:33.4570055' AS DateTime2))
GO
INSERT [dbo].[HoaDon] ([MaHD], [MaDH], [TenKH], [SoDT], [GioiTinh], [MaKH], [TongThanhToan], [DiaChi], [NgayLapHD]) VALUES (4, 2, N'Nhật Anh', N'0947902015', N'Nam', 1, 46380000, N'Thành phố Nha Trang', CAST(N'2022-01-18T11:14:13.3944519' AS DateTime2))
GO
INSERT [dbo].[HoaDon] ([MaHD], [MaDH], [TenKH], [SoDT], [GioiTinh], [MaKH], [TongThanhToan], [DiaChi], [NgayLapHD]) VALUES (5, 5, N'Nhật Anh', N'0947902015', N'Nam', 1, 40180000, N'Thành phố Nha Trang', CAST(N'2022-01-18T11:26:21.1316576' AS DateTime2))
GO
INSERT [dbo].[HoaDon] ([MaHD], [MaDH], [TenKH], [SoDT], [GioiTinh], [MaKH], [TongThanhToan], [DiaChi], [NgayLapHD]) VALUES (6, 6, N'Nhật Anh', N'0947902015', N'Nam', 1, 41970000, N'Thành phố Nha Trang', CAST(N'2022-01-18T11:27:01.5110413' AS DateTime2))
GO
INSERT [dbo].[HoaDon] ([MaHD], [MaDH], [TenKH], [SoDT], [GioiTinh], [MaKH], [TongThanhToan], [DiaChi], [NgayLapHD]) VALUES (7, 8, N'Nhật Anh', N'0947902015', N'Nam', 1, 87000000, N'Thành phố Nha Trang', CAST(N'2022-01-18T11:32:31.1005754' AS DateTime2))
GO
INSERT [dbo].[HoaDon] ([MaHD], [MaDH], [TenKH], [SoDT], [GioiTinh], [MaKH], [TongThanhToan], [DiaChi], [NgayLapHD]) VALUES (8, 7, N'Nhật Anh', N'0947902015', N'Nam', 1, 68480000, N'Thành phố Nha Trang', CAST(N'2022-01-18T12:10:02.7303511' AS DateTime2))
GO
INSERT [dbo].[HoaDon] ([MaHD], [MaDH], [TenKH], [SoDT], [GioiTinh], [MaKH], [TongThanhToan], [DiaChi], [NgayLapHD]) VALUES (9, 10, N'Nhật Anh', N'0947902015', N'Nam', 1, 68480000, N'Thành phố Nha Trang', CAST(N'2022-01-18T12:12:51.3157226' AS DateTime2))
GO
INSERT [dbo].[HoaDon] ([MaHD], [MaDH], [TenKH], [SoDT], [GioiTinh], [MaKH], [TongThanhToan], [DiaChi], [NgayLapHD]) VALUES (10, 11, N'Nhật Anh', N'0947902015', N'Nam', 1, 65970000, N'Thành phố Nha Trang', CAST(N'2022-01-18T12:16:33.2285579' AS DateTime2))
GO
INSERT [dbo].[HoaDon] ([MaHD], [MaDH], [TenKH], [SoDT], [GioiTinh], [MaKH], [TongThanhToan], [DiaChi], [NgayLapHD]) VALUES (11, 12, N'Nhật Anh', N'0947902015', N'Nam', 1, 62070000, N'Thành phố Nha Trang', CAST(N'2022-01-18T12:22:49.7111688' AS DateTime2))
GO
INSERT [dbo].[HoaDon] ([MaHD], [MaDH], [TenKH], [SoDT], [GioiTinh], [MaKH], [TongThanhToan], [DiaChi], [NgayLapHD]) VALUES (12, 9, N'Nhật Anh', N'0947902015', N'Nam', 1, 58000000, N'Thành phố Nha Trang', CAST(N'2022-01-18T12:23:49.7135274' AS DateTime2))
GO
INSERT [dbo].[HoaDon] ([MaHD], [MaDH], [TenKH], [SoDT], [GioiTinh], [MaKH], [TongThanhToan], [DiaChi], [NgayLapHD]) VALUES (13, 14, N'Nhật Anh', N'0947902015', N'Nam', 1, 65970000, N'Thành phố Nha Trang', CAST(N'2022-01-18T12:28:19.7936054' AS DateTime2))
GO
INSERT [dbo].[HoaDon] ([MaHD], [MaDH], [TenKH], [SoDT], [GioiTinh], [MaKH], [TongThanhToan], [DiaChi], [NgayLapHD]) VALUES (14, 13, N'Nhật Anh', N'0947902015', N'Nam', 1, 131500000, N'Thành phố Nha Trang', CAST(N'2022-01-18T12:30:00.6606643' AS DateTime2))
GO
INSERT [dbo].[HoaDon] ([MaHD], [MaDH], [TenKH], [SoDT], [GioiTinh], [MaKH], [TongThanhToan], [DiaChi], [NgayLapHD]) VALUES (15, 15, N'Nhật Anh', N'0947902015', N'Nam', 1, 62070000, N'Thành phố Nha Trang', CAST(N'2022-01-18T12:44:24.6681555' AS DateTime2))
GO
INSERT [dbo].[HoaDon] ([MaHD], [MaDH], [TenKH], [SoDT], [GioiTinh], [MaKH], [TongThanhToan], [DiaChi], [NgayLapHD]) VALUES (16, 16, N'Nhật Anh', N'0947902015', N'Nam', 1, 94970000, N'Thành phố Nha Trang', CAST(N'2022-01-18T12:54:01.4308513' AS DateTime2))
GO
INSERT [dbo].[HoaDon] ([MaHD], [MaDH], [TenKH], [SoDT], [GioiTinh], [MaKH], [TongThanhToan], [DiaChi], [NgayLapHD]) VALUES (17, 17, N'Nhật Anh', N'0947902015', N'Nam', 1, 65970000, N'Thành phố Nha Trang', CAST(N'2022-01-18T12:59:49.7320246' AS DateTime2))
GO
INSERT [dbo].[HoaDon] ([MaHD], [MaDH], [TenKH], [SoDT], [GioiTinh], [MaKH], [TongThanhToan], [DiaChi], [NgayLapHD]) VALUES (18, 19, N'Nhật Anh', N'0947902015', N'Nam', 1, 63970000, N'Thành phố Nha Trang', CAST(N'2022-01-18T22:17:46.2867710' AS DateTime2))
GO
INSERT [dbo].[HoaDon] ([MaHD], [MaDH], [TenKH], [SoDT], [GioiTinh], [MaKH], [TongThanhToan], [DiaChi], [NgayLapHD]) VALUES (19, 21, N'Nguyễn Hoàng Hữu Đức', N'0909009009', N'Nam', 3, 24500000, N'Thành phố Nha Trang', CAST(N'2022-01-18T00:49:08.0512547' AS DateTime2))
GO
INSERT [dbo].[HoaDon] ([MaHD], [MaDH], [TenKH], [SoDT], [GioiTinh], [MaKH], [TongThanhToan], [DiaChi], [NgayLapHD]) VALUES (20, 23, N'Nguyễn Hoàng Hữu Đức', N'0909009009', N'Nam', 3, 10690000, N'Thành phố Nha Trang', CAST(N'2022-01-18T00:49:20.4014956' AS DateTime2))
GO
INSERT [dbo].[HoaDon] ([MaHD], [MaDH], [TenKH], [SoDT], [GioiTinh], [MaKH], [TongThanhToan], [DiaChi], [NgayLapHD]) VALUES (21, 22, N'Nguyễn Hoàng Hữu Đức', N'0909009009', N'Nam', 3, 43980000, N'Thành phố Nha Trang', CAST(N'2022-01-18T00:49:38.3469792' AS DateTime2))
GO
INSERT [dbo].[HoaDon] ([MaHD], [MaDH], [TenKH], [SoDT], [GioiTinh], [MaKH], [TongThanhToan], [DiaChi], [NgayLapHD]) VALUES (22, 24, N'Nguyễn Hoàng Hữu Đức', N'0909009009', N'Nam', 3, 29000000, N'Thành phố Nha Trang', CAST(N'2022-01-18T00:51:56.6162222' AS DateTime2))
GO
INSERT [dbo].[HoaDon] ([MaHD], [MaDH], [TenKH], [SoDT], [GioiTinh], [MaKH], [TongThanhToan], [DiaChi], [NgayLapHD]) VALUES (23, 25, N'Nguyễn Hoàng Hữu Đức', N'0909009009', N'Nam', 3, 15990000, N'Thành phố Nha Trang', CAST(N'2022-01-18T00:52:09.1248584' AS DateTime2))
GO
INSERT [dbo].[HoaDon] ([MaHD], [MaDH], [TenKH], [SoDT], [GioiTinh], [MaKH], [TongThanhToan], [DiaChi], [NgayLapHD]) VALUES (24, 27, N'Nguyễn Hoàng Hữu Đức', N'0909009009', N'Nam', 3, 23190000, N'Thành phố Nha Trang', CAST(N'2022-01-18T00:55:02.1111184' AS DateTime2))
GO
INSERT [dbo].[HoaDon] ([MaHD], [MaDH], [TenKH], [SoDT], [GioiTinh], [MaKH], [TongThanhToan], [DiaChi], [NgayLapHD]) VALUES (25, 28, N'Nguyễn Hoàng Hữu Đức', N'0909009009', N'Nam', 3, 31480000, N'Thành phố Nha Trang', CAST(N'2022-01-18T00:55:24.3453581' AS DateTime2))
GO
INSERT [dbo].[HoaDon] ([MaHD], [MaDH], [TenKH], [SoDT], [GioiTinh], [MaKH], [TongThanhToan], [DiaChi], [NgayLapHD]) VALUES (26, 29, N'Nguyễn Hoàng Hữu Đức', N'0909009009', N'Nam', 3, 8190000, N'Thành phố Nha Trang', CAST(N'2022-01-18T00:57:33.6600037' AS DateTime2))
GO
INSERT [dbo].[HoaDon] ([MaHD], [MaDH], [TenKH], [SoDT], [GioiTinh], [MaKH], [TongThanhToan], [DiaChi], [NgayLapHD]) VALUES (27, 30, N'Nguyễn Hoàng Hữu Đức', N'0909009009', N'Nam', 3, 13990000, N'Thành phố Nha Trang', CAST(N'2022-01-18T00:57:48.9109170' AS DateTime2))
GO
INSERT [dbo].[HoaDon] ([MaHD], [MaDH], [TenKH], [SoDT], [GioiTinh], [MaKH], [TongThanhToan], [DiaChi], [NgayLapHD]) VALUES (28, 31, N'Nguyễn Hoàng Hữu Đức', N'0909009009', N'Nam', 3, 43980000, N'Thành phố Nha Trang', CAST(N'2022-01-18T00:58:11.2146831' AS DateTime2))
GO
INSERT [dbo].[HoaDon] ([MaHD], [MaDH], [TenKH], [SoDT], [GioiTinh], [MaKH], [TongThanhToan], [DiaChi], [NgayLapHD]) VALUES (29, 32, N'Duc', N'01238275', N'Nam', 4, 69570000, N'Thủ Đức', CAST(N'2022-01-18T13:07:06.6292170' AS DateTime2))
GO
INSERT [dbo].[HoaDon] ([MaHD], [MaDH], [TenKH], [SoDT], [GioiTinh], [MaKH], [TongThanhToan], [DiaChi], [NgayLapHD]) VALUES (30, 33, N'Duc', N'01238275', N'Nam', 4, 24500000, N'Thủ Đức', CAST(N'2022-01-18T13:11:34.2866797' AS DateTime2))
GO
INSERT [dbo].[HoaDon] ([MaHD], [MaDH], [TenKH], [SoDT], [GioiTinh], [MaKH], [TongThanhToan], [DiaChi], [NgayLapHD]) VALUES (31, 36, N'Trọng Ngôn', N'0124567567', N'Nam', 5, 24500000, N'Quận 9 Hồ Chí Minh', CAST(N'2022-01-18T13:39:56.2310669' AS DateTime2))
GO
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
GO
INSERT [dbo].[IMEI_DienThoai] ([IMEI], [MaDT], [MaHD]) VALUES (N'1001', 31, 1)
GO
INSERT [dbo].[IMEI_DienThoai] ([IMEI], [MaDT], [MaHD]) VALUES (N'1002', 8, 2)
GO
INSERT [dbo].[IMEI_DienThoai] ([IMEI], [MaDT], [MaHD]) VALUES (N'1003', 6, 3)
GO
INSERT [dbo].[IMEI_DienThoai] ([IMEI], [MaDT], [MaHD]) VALUES (N'1004', 23, 3)
GO
INSERT [dbo].[IMEI_DienThoai] ([IMEI], [MaDT], [MaHD]) VALUES (N'1005', 31, 3)
GO
INSERT [dbo].[IMEI_DienThoai] ([IMEI], [MaDT], [MaHD]) VALUES (N'1015', 6, 4)
GO
INSERT [dbo].[IMEI_DienThoai] ([IMEI], [MaDT], [MaHD]) VALUES (N'1016', 6, 4)
GO
INSERT [dbo].[IMEI_DienThoai] ([IMEI], [MaDT], [MaHD]) VALUES (N'1006', 9, 5)
GO
INSERT [dbo].[IMEI_DienThoai] ([IMEI], [MaDT], [MaHD]) VALUES (N'1007', 18, 5)
GO
INSERT [dbo].[IMEI_DienThoai] ([IMEI], [MaDT], [MaHD]) VALUES (N'1008', 8, 7)
GO
INSERT [dbo].[IMEI_DienThoai] ([IMEI], [MaDT], [MaHD]) VALUES (N'1009', 8, 7)
GO
INSERT [dbo].[IMEI_DienThoai] ([IMEI], [MaDT], [MaHD]) VALUES (N'1010', 8, 7)
GO
INSERT [dbo].[IMEI_DienThoai] ([IMEI], [MaDT], [MaHD]) VALUES (N'1011', 12, 9)
GO
INSERT [dbo].[IMEI_DienThoai] ([IMEI], [MaDT], [MaHD]) VALUES (N'1012', 12, 9)
GO
INSERT [dbo].[IMEI_DienThoai] ([IMEI], [MaDT], [MaHD]) VALUES (N'1014', 12, 10)
GO
INSERT [dbo].[IMEI_DienThoai] ([IMEI], [MaDT], [MaHD]) VALUES (N'1017', 12, 10)
GO
INSERT [dbo].[IMEI_DienThoai] ([IMEI], [MaDT], [MaHD]) VALUES (N'1018', 12, 10)
GO
INSERT [dbo].[IMEI_DienThoai] ([IMEI], [MaDT], [MaHD]) VALUES (N'1013', 9, 11)
GO
INSERT [dbo].[IMEI_DienThoai] ([IMEI], [MaDT], [MaHD]) VALUES (N'1', 8, 16)
GO
INSERT [dbo].[IMEI_DienThoai] ([IMEI], [MaDT], [MaHD]) VALUES (N'2', 12, 16)
GO
INSERT [dbo].[IMEI_DienThoai] ([IMEI], [MaDT], [MaHD]) VALUES (N'3', 12, 16)
GO
INSERT [dbo].[IMEI_DienThoai] ([IMEI], [MaDT], [MaHD]) VALUES (N'4', 12, 16)
GO
INSERT [dbo].[IMEI_DienThoai] ([IMEI], [MaDT], [MaHD]) VALUES (N'10', 12, 17)
GO
INSERT [dbo].[IMEI_DienThoai] ([IMEI], [MaDT], [MaHD]) VALUES (N'11', 12, 17)
GO
INSERT [dbo].[IMEI_DienThoai] ([IMEI], [MaDT], [MaHD]) VALUES (N'9', 12, 17)
GO
INSERT [dbo].[IMEI_DienThoai] ([IMEI], [MaDT], [MaHD]) VALUES (N'1020', 12, 18)
GO
INSERT [dbo].[IMEI_DienThoai] ([IMEI], [MaDT], [MaHD]) VALUES (N'1021', 12, 18)
GO
INSERT [dbo].[IMEI_DienThoai] ([IMEI], [MaDT], [MaHD]) VALUES (N'1019', 21, 18)
GO
INSERT [dbo].[IMEI_DienThoai] ([IMEI], [MaDT], [MaHD]) VALUES (N'100121', 4, 19)
GO
INSERT [dbo].[IMEI_DienThoai] ([IMEI], [MaDT], [MaHD]) VALUES (N'100122', 31, 20)
GO
INSERT [dbo].[IMEI_DienThoai] ([IMEI], [MaDT], [MaHD]) VALUES (N'100124', 12, 21)
GO
INSERT [dbo].[IMEI_DienThoai] ([IMEI], [MaDT], [MaHD]) VALUES (N'100125', 12, 21)
GO
INSERT [dbo].[IMEI_DienThoai] ([IMEI], [MaDT], [MaHD]) VALUES (N'100126', 8, 22)
GO
INSERT [dbo].[IMEI_DienThoai] ([IMEI], [MaDT], [MaHD]) VALUES (N'100127', 15, 23)
GO
INSERT [dbo].[IMEI_DienThoai] ([IMEI], [MaDT], [MaHD]) VALUES (N'100227', 6, 24)
GO
INSERT [dbo].[IMEI_DienThoai] ([IMEI], [MaDT], [MaHD]) VALUES (N'100222', 19, 25)
GO
INSERT [dbo].[IMEI_DienThoai] ([IMEI], [MaDT], [MaHD]) VALUES (N'100221', 29, 25)
GO
INSERT [dbo].[IMEI_DienThoai] ([IMEI], [MaDT], [MaHD]) VALUES (N'312313', 26, 26)
GO
INSERT [dbo].[IMEI_DienThoai] ([IMEI], [MaDT], [MaHD]) VALUES (N'432432', 23, 27)
GO
INSERT [dbo].[IMEI_DienThoai] ([IMEI], [MaDT], [MaHD]) VALUES (N'3123532', 14, 28)
GO
INSERT [dbo].[IMEI_DienThoai] ([IMEI], [MaDT], [MaHD]) VALUES (N'4234321', 14, 28)
GO
INSERT [dbo].[IMEI_DienThoai] ([IMEI], [MaDT], [MaHD]) VALUES (N'1932931239', 4, 31)
GO
SET IDENTITY_INSERT [dbo].[KhachHang] ON 
GO
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [Email], [DiaChi], [SoDienThoai], [GioiTinh]) VALUES (1, N'Nhật Anh', N'nhatanh999@gmail.com', N'Thành phố Nha Trang', N'0947902015', N'Nam')
GO
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [Email], [DiaChi], [SoDienThoai], [GioiTinh]) VALUES (3, N'Nguyễn Hoàng Hữu Đức', N'17110285@ntu.edu.vn', N'Thành phố Nha Trang', N'0909009009', N'Nam')
GO
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [Email], [DiaChi], [SoDienThoai], [GioiTinh]) VALUES (4, N'Duc', N'nguyenhoanghuuduc@yahoo.com.vn', N'Thủ Đức', N'01238275', N'Nam')
GO
INSERT [dbo].[KhachHang] ([MaKH], [TenKH], [Email], [DiaChi], [SoDienThoai], [GioiTinh]) VALUES (5, N'Trọng Ngôn', N'dungngon113@gmail.com', N'Quận 9 Hồ Chí Minh', N'0124567567', N'Nam')
GO
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
GO
SET IDENTITY_INSERT [dbo].[ModelDienThoai] ON 
GO
INSERT [dbo].[ModelDienThoai] ([MaModel], [TenModel], [MaHang], [Ram], [Rom], [ManHinh], [Camera], [Pin], [Chip], [NgayRaMat], [TrangThai], [Hinh]) VALUES (1, N'Iphone 11 4GB/64GB', 2, N'4 GB', N'64 GB', N'6.1 inches 1792x828', N'Trước 12MP / Sau 12MP', N'3110 mAh', N'A13 Bionic', CAST(N'2019-08-15T00:00:00.0000000' AS DateTime2), 1, N'\images\ModelDienThoai\1.webp')
GO
INSERT [dbo].[ModelDienThoai] ([MaModel], [TenModel], [MaHang], [Ram], [Rom], [ManHinh], [Camera], [Pin], [Chip], [NgayRaMat], [TrangThai], [Hinh]) VALUES (2, N'Iphone XS Max 4GB/64GB', 2, N'4GB', N'64GB', N'6.5 inches 1242x2688', N'Trước 7MP / Sau 12MP', N'3000mAh', N'A12 ', CAST(N'2019-01-12T00:00:00.0000000' AS DateTime2), 1, N'\images\ModelDienThoai\2.jpg')
GO
INSERT [dbo].[ModelDienThoai] ([MaModel], [TenModel], [MaHang], [Ram], [Rom], [ManHinh], [Camera], [Pin], [Chip], [NgayRaMat], [TrangThai], [Hinh]) VALUES (3, N'Iphone 11 4GB/128GB', 2, N'4GB', N'128GB', N'6.1 inches 1792x828', N'Trước 12MP / Sau 12MP', N'3110 mAh', N'A13 Bionic', CAST(N'2019-08-15T00:00:00.0000000' AS DateTime2), 1, N'\images\ModelDienThoai\3.webp')
GO
INSERT [dbo].[ModelDienThoai] ([MaModel], [TenModel], [MaHang], [Ram], [Rom], [ManHinh], [Camera], [Pin], [Chip], [NgayRaMat], [TrangThai], [Hinh]) VALUES (4, N'Iphone XS Max 4GB/128GB', 2, N'4GB', N'128GB', N'6.5 inches 1242x2688', N'Trước 7MP / Sau 12MP', N'3000mAh', N'A12', CAST(N'2018-12-02T00:00:00.0000000' AS DateTime2), 1, N'\images\ModelDienThoai\4.jpg')
GO
INSERT [dbo].[ModelDienThoai] ([MaModel], [TenModel], [MaHang], [Ram], [Rom], [ManHinh], [Camera], [Pin], [Chip], [NgayRaMat], [TrangThai], [Hinh]) VALUES (5, N'Galaxy Note 10 8GB/256GB', 1, N'8GB', N'256GB', N'6.3 inches 1080x2280', N'Trước 10MP/ Sau 16MP', N'3500mAh', N'Exynos 9825', CAST(N'2019-03-15T00:00:00.0000000' AS DateTime2), 1, N'\images\ModelDienThoai\5.jpg')
GO
INSERT [dbo].[ModelDienThoai] ([MaModel], [TenModel], [MaHang], [Ram], [Rom], [ManHinh], [Camera], [Pin], [Chip], [NgayRaMat], [TrangThai], [Hinh]) VALUES (6, N'Galaxy S10+ 8GB/256GB', 1, N'8GB', N'512GB', N'6.4 inches 1440x2960', N'Trước 10MP/ Sau 16MP', N'4100mAh', N'Snapdragon 855', CAST(N'2019-01-05T00:00:00.0000000' AS DateTime2), 1, N'\images\ModelDienThoai\6.jpg')
GO
INSERT [dbo].[ModelDienThoai] ([MaModel], [TenModel], [MaHang], [Ram], [Rom], [ManHinh], [Camera], [Pin], [Chip], [NgayRaMat], [TrangThai], [Hinh]) VALUES (7, N'Galaxy Note 9 6GB/128GB', 1, N'6GB', N'128GB', N'6.4 inches 1440x2960', N'Trước 8MP / Sau 12MP', N'4000mAh', N'Exynos 9810', CAST(N'2018-12-12T00:00:00.0000000' AS DateTime2), 1, N'\images\ModelDienThoai\7.jpg')
GO
INSERT [dbo].[ModelDienThoai] ([MaModel], [TenModel], [MaHang], [Ram], [Rom], [ManHinh], [Camera], [Pin], [Chip], [NgayRaMat], [TrangThai], [Hinh]) VALUES (8, N'Galaxy Note 9 6GB/512GB', 1, N'6GB', N'512GB', N'6.4 inches 1440x2960', N'Trước 8MP / Sau 12MP', N'4000mAh', N'Exynos 9810', CAST(N'2018-12-12T00:00:00.0000000' AS DateTime2), 1, N'\images\ModelDienThoai\8.jpg')
GO
INSERT [dbo].[ModelDienThoai] ([MaModel], [TenModel], [MaHang], [Ram], [Rom], [ManHinh], [Camera], [Pin], [Chip], [NgayRaMat], [TrangThai], [Hinh]) VALUES (9, N'P30 Pro 8GB/256GB', 5, N'8GB', N'256GB', N'6.4 inches 1080x2340', N'Trước 32MP / Sau 40MP', N'4200mAh', N'Hisilicon Kirin 980', CAST(N'2019-06-12T00:00:00.0000000' AS DateTime2), 1, N'\images\ModelDienThoai\9.webp')
GO
INSERT [dbo].[ModelDienThoai] ([MaModel], [TenModel], [MaHang], [Ram], [Rom], [ManHinh], [Camera], [Pin], [Chip], [NgayRaMat], [TrangThai], [Hinh]) VALUES (10, N'Huawei Mate 20 Pro 6GB/128GB', 5, N'6GB', N'128GB', N'6.39 inches 1440x3120', N'Trước 24MP / Sau 40MP', N'4200mAh', N'Hisilicon Kirin 980', CAST(N'2018-04-05T00:00:00.0000000' AS DateTime2), 1, N'\images\ModelDienThoai\10.jpg')
GO
INSERT [dbo].[ModelDienThoai] ([MaModel], [TenModel], [MaHang], [Ram], [Rom], [ManHinh], [Camera], [Pin], [Chip], [NgayRaMat], [TrangThai], [Hinh]) VALUES (11, N'Xiaomi Mi 8 Pro 8GB/128GB', 4, N'8GB', N'128GB', N'6.21 inches 1080x2248', N'Trước 20MP / Sau 12MP', N'3000mAh', N'Qualcomm Snapdragon 845', CAST(N'2019-06-18T00:00:00.0000000' AS DateTime2), 1, N'\images\ModelDienThoai\11.jpg')
GO
INSERT [dbo].[ModelDienThoai] ([MaModel], [TenModel], [MaHang], [Ram], [Rom], [ManHinh], [Camera], [Pin], [Chip], [NgayRaMat], [TrangThai], [Hinh]) VALUES (12, N'Xiaomi Mi 8 6GB/64GB', 4, N'6GB', N'64GB', N'6.21 inches 1080x2248', N'Trước 20MP / Sau 12MP', N'3400mAh', N'Qualcomm Snapdragon 845', CAST(N'0001-01-01T00:00:00.0000000' AS DateTime2), 1, N'\images\ModelDienThoai\12.jpg')
GO
INSERT [dbo].[ModelDienThoai] ([MaModel], [TenModel], [MaHang], [Ram], [Rom], [ManHinh], [Camera], [Pin], [Chip], [NgayRaMat], [TrangThai], [Hinh]) VALUES (14, N'Xiaomi Mi 9 6GB/128GB', 4, N'6GB', N'128GB', N'6.39 inches 1080x2340', N'Trước 20MP / Sau 48MP', N'3300mAh', N'Snapdragon 855', CAST(N'2019-08-12T00:00:00.0000000' AS DateTime2), 1, N'\images\ModelDienThoai\14.jpg')
GO
INSERT [dbo].[ModelDienThoai] ([MaModel], [TenModel], [MaHang], [Ram], [Rom], [ManHinh], [Camera], [Pin], [Chip], [NgayRaMat], [TrangThai], [Hinh]) VALUES (15, N'Samsung Galaxy A80 8GB/128GB', 1, N'8GB', N'128GB', N'6.7 inches 1080x2400', N'Trước 48MP / Sau 48MP', N'3700 mAh', N'Snapdragon 730 ', CAST(N'2019-07-26T00:00:00.0000000' AS DateTime2), 1, N'\images\ModelDienThoai\15.jpg')
GO
SET IDENTITY_INSERT [dbo].[ModelDienThoai] OFF
GO
INSERT [dbo].[TaiKhoan] ([TenTK], [MatKhau], [MaKH], [TrangThai]) VALUES (N'ducduc', N'2A4A1B110488DF38842F95D18E860A24', 3, 1)
GO
INSERT [dbo].[TaiKhoan] ([TenTK], [MatKhau], [MaKH], [TrangThai]) VALUES (N'huuduc14665', N'F7F1372346401C08AA57C06FDCD6AFC2', 4, 1)
GO
INSERT [dbo].[TaiKhoan] ([TenTK], [MatKhau], [MaKH], [TrangThai]) VALUES (N'nhatanh', N'6C715E1C71FB3A233F979CD34C2C98D9', 1, 1)
GO
INSERT [dbo].[TaiKhoan] ([TenTK], [MatKhau], [MaKH], [TrangThai]) VALUES (N'trongngon', N'897CC45EAE5687AB05FB589CD4273FB3', 5, 1)
GO
INSERT [dbo].[TaiKhoanAdmin] ([User], [Pass], [Name], [PhoneNumber], [Email], [Role], [TrangThai]) VALUES (N'admin', N'admin', N'Nhật Anh', N'0947902015', N'Admin@gmail.com', N'Super Admin', 1)
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonHang_DienThoai_MaDT] FOREIGN KEY([MaDT])
REFERENCES [dbo].[DienThoai] ([MaDT])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietDonHang_DienThoai_MaDT]
GO
ALTER TABLE [dbo].[ChiTietDonHang]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietDonHang_DonHang_MaDH] FOREIGN KEY([MaDH])
REFERENCES [dbo].[DonHang] ([MaDH])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietDonHang] CHECK CONSTRAINT [FK_ChiTietDonHang_DonHang_MaDH]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_DienThoai_MaDT] FOREIGN KEY([MaDT])
REFERENCES [dbo].[DienThoai] ([MaDT])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_DienThoai_MaDT]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_HoaDon_MaHD] FOREIGN KEY([MaHD])
REFERENCES [dbo].[HoaDon] ([MaHD])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_HoaDon_MaHD]
GO
ALTER TABLE [dbo].[DienThoai]  WITH CHECK ADD  CONSTRAINT [FK_DienThoai_ModelDienThoai_MaModel] FOREIGN KEY([MaModel])
REFERENCES [dbo].[ModelDienThoai] ([MaModel])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DienThoai] CHECK CONSTRAINT [FK_DienThoai_ModelDienThoai_MaModel]
GO
ALTER TABLE [dbo].[DonHang]  WITH CHECK ADD  CONSTRAINT [FK_DonHang_KhachHang_MaKH] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[DonHang] CHECK CONSTRAINT [FK_DonHang_KhachHang_MaKH]
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD  CONSTRAINT [FK_GioHang_DienThoai_MaDT] FOREIGN KEY([MaDT])
REFERENCES [dbo].[DienThoai] ([MaDT])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GioHang] CHECK CONSTRAINT [FK_GioHang_DienThoai_MaDT]
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD  CONSTRAINT [FK_GioHang_KhachHang_MaKH] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[GioHang] CHECK CONSTRAINT [FK_GioHang_KhachHang_MaKH]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_DonHang_MaDH] FOREIGN KEY([MaDH])
REFERENCES [dbo].[DonHang] ([MaDH])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_DonHang_MaDH]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang_MaKH] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhachHang_MaKH]
GO
ALTER TABLE [dbo].[IMEI_DienThoai]  WITH CHECK ADD  CONSTRAINT [FK_IMEI_DienThoai_ChiTietHoaDon_MaHD_MaDT] FOREIGN KEY([MaHD], [MaDT])
REFERENCES [dbo].[ChiTietHoaDon] ([MaHD], [MaDT])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[IMEI_DienThoai] CHECK CONSTRAINT [FK_IMEI_DienThoai_ChiTietHoaDon_MaHD_MaDT]
GO
ALTER TABLE [dbo].[ModelDienThoai]  WITH CHECK ADD  CONSTRAINT [FK_ModelDienThoai_Hang_MaHang] FOREIGN KEY([MaHang])
REFERENCES [dbo].[Hang] ([MaHang])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[ModelDienThoai] CHECK CONSTRAINT [FK_ModelDienThoai_Hang_MaHang]
GO
ALTER TABLE [dbo].[TaiKhoan]  WITH CHECK ADD  CONSTRAINT [FK_TaiKhoan_KhachHang_MaKH] FOREIGN KEY([MaKH])
REFERENCES [dbo].[KhachHang] ([MaKH])
ON DELETE CASCADE
GO
ALTER TABLE [dbo].[TaiKhoan] CHECK CONSTRAINT [FK_TaiKhoan_KhachHang_MaKH]
GO
