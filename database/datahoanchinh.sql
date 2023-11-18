
CREATE DATABASE qlcuahanggiaydb;
 
USE qlcuahanggiaydb;

CREATE TABLE tblchitiethd(
	Magiay nvarchar(20) NOT NULL,
	MaHD nvarchar(20) NOT NULL,
	SoLuong int NOT NULL,
	GiaBan int NOT NULL
);

CREATE TABLE [tblchitietkm](
	[MaGiay] [nvarchar](20) NOT NULL,
	[MaKM] [nvarchar](20) NOT NULL,
	[TiLeKM] [float] NOT NULL,
 CONSTRAINT [PK_tblchitietkm] PRIMARY KEY CLUSTERED 
(
	[MaGiay] ASC,
	[MaKM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblchitietpn]    Script Date: 8/2/2023 9:43:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblchitietpn](
	[MaGiay] [nvarchar](20) NOT NULL,
	[MaPN] [nvarchar](20) NOT NULL,
	[SoLuong] [int] NOT NULL,
	[GiaNhap] [money] NOT NULL,
 CONSTRAINT [PK_tblchitietpn] PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC,
	[MaGiay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblhoadon]    Script Date: 8/2/2023 9:43:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblhoadon](
	[MaHD] [nvarchar](20) NOT NULL,
	[MaNV] [nvarchar](20) NOT NULL,
	[MaKH] [nvarchar](20) NOT NULL,
	[MaKM] [nvarchar](20) NOT NULL,
	[NgayBan] [date] NOT NULL,
	[TongTien] [money] NOT NULL,
 CONSTRAINT [PK_tblhoadon] PRIMARY KEY CLUSTERED 
(
	[MaHD] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblkhachhang]    Script Date: 8/2/2023 9:43:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblkhachhang](
	[MaKH] [nvarchar](20) NOT NULL,
	[Ho] [nvarchar](20) NOT NULL,
	[Ten] [nvarchar](20) NOT NULL,
	[GioiTinh] [nvarchar](20) NOT NULL,
	[DiaChi] [nvarchar](40) NOT NULL,
	[Email] [nvarchar](20) NOT NULL,
	[Loai] [nvarchar](20) NOT NULL,
	[TongChiTieu] [money] NOT NULL,
 CONSTRAINT [PK__tblkhach__2725CF1E6B57EEE8] PRIMARY KEY CLUSTERED 
(
	[MaKH] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblkhuyenmai]    Script Date: 8/2/2023 9:43:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblkhuyenmai](
	[MaKM] [nvarchar](20) NOT NULL,
	[TenChuongTrinh] [nvarchar](40) NOT NULL,
	[LoaiChuongTrinh] [nvarchar](20) NOT NULL,
	[DieuKien] [nvarchar](20) NULL,
	[NgayBatDau] [date] NOT NULL,
	[NgayKetThuc] [date] NOT NULL,
 CONSTRAINT [PK__tblkhuye__2725CF15D271CE54] PRIMARY KEY CLUSTERED 
(
	[MaKM] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblloai]    Script Date: 8/2/2023 9:43:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblloai](
	[Maloai] [nvarchar](20) NOT NULL,
	[Tenloai] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Maloai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblmausac]    Script Date: 8/2/2023 9:43:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblmausac](
	[Mamau] [nvarchar](20) NOT NULL,
	[Tenmau] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Mamau] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblnhacungcap]    Script Date: 8/2/2023 9:43:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblnhacungcap](
	[MaNCC] [nvarchar](20) NOT NULL,
	[TenNCC] [nvarchar](20) NOT NULL,
	[DiaChi] [nvarchar](40) NOT NULL,
	[Email] [nvarchar](40) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNCC] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblnhanvien]    Script Date: 8/2/2023 9:43:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblnhanvien](
	[MaNV] [nvarchar](20) NOT NULL,
	[Ho] [nvarchar](30) NOT NULL,
	[Ten] [nvarchar](10) NOT NULL,
	[GioiTinh] [nvarchar](10) NOT NULL,
	[DiaChi] [nvarchar](50) NOT NULL,
	[DienThoai] [int] NOT NULL,
	[Email] [nvarchar](max) NOT NULL,
	[Luong] [int] NOT NULL,
	[ChucVu] [nvarchar](50) NOT NULL,
	[Anh] [nvarchar](10) NOT NULL,
 CONSTRAINT [PK__tblnhanv__2725D70AB48B4D99] PRIMARY KEY CLUSTERED 
(
	[MaNV] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblphieunhap]    Script Date: 8/2/2023 9:43:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblphieunhap](
	[MaPN] [nvarchar](20) NOT NULL,
	[MaNCC] [nvarchar](20) NOT NULL,
	[MaNV] [nvarchar](20) NOT NULL,
	[NgayNhap] [date] NOT NULL,
	[TongTien] [money] NOT NULL,
 CONSTRAINT [PK__tblphieu__2725E7F0B154EF6E] PRIMARY KEY CLUSTERED 
(
	[MaPN] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblsanpham]    Script Date: 8/2/2023 9:43:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblsanpham](
	[Magiay] [nvarchar](20) NOT NULL,
	[Tengiay] [nvarchar](20) NOT NULL,
	[Soluong] [int] NOT NULL,
	[Gia] [money] NOT NULL,
	[Size] [int] NOT NULL,
	[Doituongsd] [nvarchar](20) NOT NULL,
	[Chatlieu] [nvarchar](20) NOT NULL,
	[Maloai] [nvarchar](20) NOT NULL,
	[Maxx] [nvarchar](20) NOT NULL,
	[Mamau] [nvarchar](20) NOT NULL,
	[Mathuonghieu] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK__tblsanph__75EBDD8BF6C09D26] PRIMARY KEY CLUSTERED 
(
	[Magiay] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbltaikhoan]    Script Date: 8/2/2023 9:43:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbltaikhoan](
	[tendangnhap] [nvarchar](20) NOT NULL,
	[matkhau] [nvarchar](20) NOT NULL,
	[capbac] [nvarchar](50) NOT NULL,
 CONSTRAINT [PK__tbltaikh__CE900A1F057A7A17] PRIMARY KEY CLUSTERED 
(
	[tendangnhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblthuonghieu]    Script Date: 8/2/2023 9:43:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblthuonghieu](
	[Mathuonghieu] [nvarchar](20) NOT NULL,
	[Tenthuonghieu] [nvarchar](30) NOT NULL,
	[Diachi] [nvarchar](40) NOT NULL,
	[Email] [nvarchar](30) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Mathuonghieu] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tblxuatxu]    Script Date: 8/2/2023 9:43:43 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tblxuatxu](
	[Maxx] [nvarchar](20) NOT NULL,
	[Tennuoc] [nvarchar](20) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Maxx] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tblchitiethd]  WITH CHECK ADD  CONSTRAINT [FKMagGiayHD] FOREIGN KEY([Magiay])
REFERENCES [dbo].[tblsanpham] ([Magiay])
GO
ALTER TABLE [dbo].[tblchitiethd] CHECK CONSTRAINT [FKMagGiayHD]
GO
ALTER TABLE [dbo].[tblchitiethd]  WITH CHECK ADD  CONSTRAINT [FKMaHD] FOREIGN KEY([MaHD])
REFERENCES [dbo].[tblhoadon] ([MaHD])
GO
ALTER TABLE [dbo].[tblchitiethd] CHECK CONSTRAINT [FKMaHD]
GO
ALTER TABLE [dbo].[tblchitietkm]  WITH CHECK ADD  CONSTRAINT [FKMaGiayKM] FOREIGN KEY([MaGiay])
REFERENCES [dbo].[tblsanpham] ([Magiay])
GO
ALTER TABLE [dbo].[tblchitietkm] CHECK CONSTRAINT [FKMaGiayKM]
GO
ALTER TABLE [dbo].[tblchitietkm]  WITH CHECK ADD  CONSTRAINT [FKMaKMCTKM] FOREIGN KEY([MaKM])
REFERENCES [dbo].[tblkhuyenmai] ([MaKM])
GO
ALTER TABLE [dbo].[tblchitietkm] CHECK CONSTRAINT [FKMaKMCTKM]
GO
ALTER TABLE [dbo].[tblchitietpn]  WITH CHECK ADD  CONSTRAINT [FKMaGiayPN] FOREIGN KEY([MaGiay])
REFERENCES [dbo].[tblsanpham] ([Magiay])
GO
ALTER TABLE [dbo].[tblchitietpn] CHECK CONSTRAINT [FKMaGiayPN]
GO
ALTER TABLE [dbo].[tblchitietpn]  WITH CHECK ADD  CONSTRAINT [FKMaPN] FOREIGN KEY([MaPN])
REFERENCES [dbo].[tblphieunhap] ([MaPN])
GO
ALTER TABLE [dbo].[tblchitietpn] CHECK CONSTRAINT [FKMaPN]
GO
ALTER TABLE [dbo].[tblhoadon]  WITH CHECK ADD  CONSTRAINT [FKMaKHHD] FOREIGN KEY([MaKH])
REFERENCES [dbo].[tblkhachhang] ([MaKH])
GO
ALTER TABLE [dbo].[tblhoadon] CHECK CONSTRAINT [FKMaKHHD]
GO
ALTER TABLE [dbo].[tblhoadon]  WITH CHECK ADD  CONSTRAINT [FKMaKMHD] FOREIGN KEY([MaKM])
REFERENCES [dbo].[tblkhuyenmai] ([MaKM])
GO
ALTER TABLE [dbo].[tblhoadon] CHECK CONSTRAINT [FKMaKMHD]
GO
ALTER TABLE [dbo].[tblhoadon]  WITH CHECK ADD  CONSTRAINT [FKMaNVHD] FOREIGN KEY([MaNV])
REFERENCES [dbo].[tblnhanvien] ([MaNV])
GO
ALTER TABLE [dbo].[tblhoadon] CHECK CONSTRAINT [FKMaNVHD]
GO
ALTER TABLE [dbo].[tblphieunhap]  WITH CHECK ADD  CONSTRAINT [FKMaNCC] FOREIGN KEY([MaNCC])
REFERENCES [dbo].[tblnhacungcap] ([MaNCC])
GO
ALTER TABLE [dbo].[tblphieunhap] CHECK CONSTRAINT [FKMaNCC]
GO
ALTER TABLE [dbo].[tblphieunhap]  WITH CHECK ADD  CONSTRAINT [FKMaNV] FOREIGN KEY([MaNV])
REFERENCES [dbo].[tblnhanvien] ([MaNV])
GO
ALTER TABLE [dbo].[tblphieunhap] CHECK CONSTRAINT [FKMaNV]
GO
ALTER TABLE [dbo].[tblsanpham]  WITH CHECK ADD  CONSTRAINT [FKMaLoai] FOREIGN KEY([Maloai])
REFERENCES [dbo].[tblloai] ([Maloai])
GO
ALTER TABLE [dbo].[tblsanpham] CHECK CONSTRAINT [FKMaLoai]
GO
ALTER TABLE [dbo].[tblsanpham]  WITH CHECK ADD  CONSTRAINT [FKMaMau] FOREIGN KEY([Mamau])
REFERENCES [dbo].[tblmausac] ([Mamau])
GO
ALTER TABLE [dbo].[tblsanpham] CHECK CONSTRAINT [FKMaMau]
GO
ALTER TABLE [dbo].[tblsanpham]  WITH CHECK ADD  CONSTRAINT [FKMaThuonghieu] FOREIGN KEY([Mathuonghieu])
REFERENCES [dbo].[tblthuonghieu] ([Mathuonghieu])
GO
ALTER TABLE [dbo].[tblsanpham] CHECK CONSTRAINT [FKMaThuonghieu]
GO
ALTER TABLE [dbo].[tblsanpham]  WITH CHECK ADD  CONSTRAINT [FKMaXuatXu] FOREIGN KEY([Maxx])
REFERENCES [dbo].[tblxuatxu] ([Maxx])
GO
ALTER TABLE [dbo].[tblsanpham] CHECK CONSTRAINT [FKMaXuatXu]
GO
ALTER TABLE [dbo].[tbltaikhoan]  WITH CHECK ADD  CONSTRAINT [FKMaNVTK] FOREIGN KEY([tendangnhap])
REFERENCES [dbo].[tblnhanvien] ([MaNV])
GO
ALTER TABLE [dbo].[tbltaikhoan] CHECK CONSTRAINT [FKMaNVTK]
GO
USE [master]
GO
ALTER DATABASE [qlcuahanggiaydb] SET  READ_WRITE 
GO
