USE [KhoSach]
GO
/****** Object:  Table [dbo].[Admin]    Script Date: 4/23/2020 4:25:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Admin](
	[TenDangNhap] [varchar](50) NOT NULL,
	[MatKhau] [nvarchar](50) NULL,
 CONSTRAINT [PK_Admin] PRIMARY KEY CLUSTERED 
(
	[TenDangNhap] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[ChiTietHoaDon]    Script Date: 4/23/2020 4:25:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[ChiTietHoaDon](
	[MaChiTiet] [int] NOT NULL,
	[MaHoaDon] [int] NULL,
	[MaSach] [int] NULL,
	[SoLuong] [int] NULL,
	[Gia] [bigint] NULL,
 CONSTRAINT [PK_ChiTietHoaDon] PRIMARY KEY CLUSTERED 
(
	[MaChiTiet] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[DanhMuc]    Script Date: 4/23/2020 4:25:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[DanhMuc](
	[MaDanhMuc] [int] IDENTITY(1,1) NOT NULL,
	[TenDanhMuc] [nvarchar](200) NULL,
 CONSTRAINT [PK_DanhMuc] PRIMARY KEY CLUSTERED 
(
	[MaDanhMuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[GioHang]    Script Date: 4/23/2020 4:25:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[GioHang](
	[MaKhachHang] [int] NOT NULL,
	[MaSach] [int] NOT NULL,
	[SoLuong] [int] NULL,
	[Gia] [bigint] NULL,
 CONSTRAINT [PK_GioHang] PRIMARY KEY CLUSTERED 
(
	[MaKhachHang] ASC,
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[HoaDon]    Script Date: 4/23/2020 4:25:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[HoaDon](
	[MaHoaDon] [int] IDENTITY(1,1) NOT NULL,
	[MaKhachHang] [int] NULL,
	[TrangThai] [bit] NULL,
	[NgayLap] [smalldatetime] NULL,
	[PhuongThucThanhToan] [int] NULL,
 CONSTRAINT [PK_HoaDon] PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[KhachHang]    Script Date: 4/23/2020 4:25:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[KhachHang](
	[MaKhachHang] [int] IDENTITY(1,1) NOT NULL,
	[TenKhachHang] [nvarchar](100) NULL,
	[Email] [varchar](100) NULL,
	[SoDienThoai] [varchar](10) NULL,
	[DiaChi] [nvarchar](100) NULL,
	[NgaySinh] [smalldatetime] NULL,
	[GioiTinh] [bit] NULL,
	[MatKhau] [nvarchar](50) NULL,
	[TenDangNhap] [varchar](100) NULL,
 CONSTRAINT [PK_KhachHang] PRIMARY KEY CLUSTERED 
(
	[MaKhachHang] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[NhomTheLoai]    Script Date: 4/23/2020 4:25:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[NhomTheLoai](
	[MaNhomTheLoai] [int] IDENTITY(1,1) NOT NULL,
	[TenNhomTheLoai] [nvarchar](200) NULL,
	[MaDanhMuc] [int] NULL,
 CONSTRAINT [PK_NhomTheLoai] PRIMARY KEY CLUSTERED 
(
	[MaNhomTheLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[Sach]    Script Date: 4/23/2020 4:25:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[Sach](
	[MaSach] [int] IDENTITY(1,1) NOT NULL,
	[TenSach] [nvarchar](200) NULL,
	[SoLuong] [int] NULL,
	[Gia] [bigint] NULL,
	[GiaKhuyenMai] [bigint] NULL,
	[TacGia] [nvarchar](200) NULL,
	[NamXuatBan] [int] NULL,
	[NhaXuatBan] [nvarchar](200) NULL,
	[Anh] [nvarchar](300) NULL,
	[MaTheLoai] [int] NULL,
	[NgayNhap] [smalldatetime] NULL,
	[TrangThai] [bit] NULL,
	[MoTa] [text] NULL,
 CONSTRAINT [PK_Sach] PRIMARY KEY CLUSTERED 
(
	[MaSach] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[TheLoai]    Script Date: 4/23/2020 4:25:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[TheLoai](
	[MaTheLoai] [int] IDENTITY(1,1) NOT NULL,
	[TenTheLoai] [nvarchar](200) NULL,
	[MaNhomTheLoai] [int] NULL,
 CONSTRAINT [PK_TheLoai] PRIMARY KEY CLUSTERED 
(
	[MaTheLoai] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  View [dbo].[ChiTietSachHoaDon]    Script Date: 4/23/2020 4:25:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[ChiTietSachHoaDon]
AS
SELECT       dbo.ChiTietHoaDon.MaChiTiet, dbo.ChiTietHoaDon.MaSach, dbo.Sach.TenSach, dbo.ChiTietHoaDon.SoLuong, dbo.ChiTietHoaDon.Gia
FROM            dbo.ChiTietHoaDon INNER JOIN
                         dbo.HoaDon ON dbo.ChiTietHoaDon.MaHoaDon = dbo.HoaDon.MaHoaDon INNER JOIN
                         dbo.Sach ON dbo.ChiTietHoaDon.MaSach = dbo.Sach.MaSach
GO
/****** Object:  View [dbo].[NhomTheLoaiDanhMuc]    Script Date: 4/23/2020 4:25:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[NhomTheLoaiDanhMuc]
AS
SELECT        dbo.DanhMuc.MaDanhMuc, dbo.DanhMuc.TenDanhMuc, dbo.NhomTheLoai.MaNhomTheLoai, dbo.NhomTheLoai.TenNhomTheLoai
FROM            dbo.DanhMuc INNER JOIN
                         dbo.NhomTheLoai ON dbo.DanhMuc.MaDanhMuc = dbo.NhomTheLoai.MaDanhMuc

GO
/****** Object:  View [dbo].[SachDanhMuc]    Script Date: 4/23/2020 4:25:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[SachDanhMuc]
AS
SELECT       dbo.Sach.MaSach, dbo.Sach.TenSach, dbo.Sach.SoLuong, dbo.Sach.Gia, dbo.Sach.GiaKhuyenMai, dbo.Sach.TacGia, dbo.Sach.NamXuatBan, dbo.Sach.NhaXuatBan, dbo.Sach.Anh, dbo.Sach.MaTheLoai, dbo.Sach.NgayNhap, 
                         dbo.Sach.TrangThai, dbo.Sach.MoTa, dbo.TheLoai.MaNhomTheLoai, dbo.NhomTheLoai.MaDanhMuc
FROM            dbo.NhomTheLoai INNER JOIN
                         dbo.TheLoai ON dbo.NhomTheLoai.MaNhomTheLoai = dbo.TheLoai.MaNhomTheLoai INNER JOIN
                         dbo.Sach ON dbo.TheLoai.MaTheLoai = dbo.Sach.MaTheLoai
GO
/****** Object:  View [dbo].[SachNhomTheLoai]    Script Date: 4/23/2020 4:25:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[SachNhomTheLoai]
AS
SELECT       dbo.Sach.MoTa, dbo.Sach.NgayNhap, dbo.Sach.MaTheLoai, dbo.Sach.Anh, dbo.Sach.NhaXuatBan, dbo.Sach.NamXuatBan, dbo.Sach.TacGia, dbo.Sach.GiaKhuyenMai, dbo.Sach.Gia, dbo.Sach.SoLuong, dbo.Sach.TenSach, 
                         dbo.Sach.MaSach, dbo.Sach.TrangThai, dbo.TheLoai.MaNhomTheLoai
FROM            dbo.Sach INNER JOIN
                         dbo.TheLoai ON dbo.Sach.MaTheLoai = dbo.TheLoai.MaTheLoai
GO
/****** Object:  View [dbo].[SachTheLoai]    Script Date: 4/23/2020 4:25:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[SachTheLoai]
AS
SELECT       dbo.Sach.MaSach, dbo.Sach.TenSach, dbo.Sach.SoLuong, dbo.Sach.Gia, dbo.Sach.GiaKhuyenMai, dbo.Sach.TacGia, dbo.Sach.NhaXuatBan, dbo.Sach.NamXuatBan, dbo.Sach.Anh, dbo.Sach.MaTheLoai, dbo.TheLoai.TenTheLoai, 
                         dbo.Sach.NgayNhap, dbo.Sach.TrangThai, dbo.Sach.MoTa
FROM            dbo.Sach INNER JOIN
                         dbo.TheLoai ON dbo.Sach.MaTheLoai = dbo.TheLoai.MaTheLoai
GO
/****** Object:  View [dbo].[TheLoaiNhomTheLoai]    Script Date: 4/23/2020 4:25:32 PM ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE VIEW [dbo].[TheLoaiNhomTheLoai]
AS
SELECT        dbo.NhomTheLoai.MaNhomTheLoai, dbo.NhomTheLoai.TenNhomTheLoai, dbo.TheLoai.MaTheLoai, dbo.TheLoai.TenTheLoai
FROM            dbo.NhomTheLoai INNER JOIN
                         dbo.TheLoai ON dbo.NhomTheLoai.MaNhomTheLoai = dbo.TheLoai.MaNhomTheLoai

GO
INSERT [dbo].[Admin] ([TenDangNhap], [MatKhau]) VALUES (N'TaiTQG', N'123')
INSERT [dbo].[ChiTietHoaDon] ([MaChiTiet], [MaHoaDon], [MaSach], [SoLuong], [Gia]) VALUES (1, 1, 23, 3, 20000)
SET IDENTITY_INSERT [dbo].[DanhMuc] ON 

INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (1, N'Sách Trong Nước')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (2, N'Sách Ngoại Văn')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (7, N'Sách Thiếu Nhi')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (8, N'Sách Lịch Sử')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (10, N'Truyện')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (11, N'Sách Độc Quyền Nhân Văn')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (12, N'Sách Tiếng Anh')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (13, N'Sách Phát Triển Bản Thân')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (14, N'Văn Phòng Phẩm')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (15, N'Danh Mục Mới')
INSERT [dbo].[DanhMuc] ([MaDanhMuc], [TenDanhMuc]) VALUES (16, N'Danh Mục Mới 2')
SET IDENTITY_INSERT [dbo].[DanhMuc] OFF
INSERT [dbo].[GioHang] ([MaKhachHang], [MaSach], [SoLuong], [Gia]) VALUES (9, 22, 4, 0)
INSERT [dbo].[GioHang] ([MaKhachHang], [MaSach], [SoLuong], [Gia]) VALUES (9, 23, 4, 0)
INSERT [dbo].[GioHang] ([MaKhachHang], [MaSach], [SoLuong], [Gia]) VALUES (9, 24, 4, 0)
SET IDENTITY_INSERT [dbo].[HoaDon] ON 

INSERT [dbo].[HoaDon] ([MaHoaDon], [MaKhachHang], [TrangThai], [NgayLap], [PhuongThucThanhToan]) VALUES (1, 9, 0, CAST(N'2020-04-22T00:00:00' AS SmallDateTime), 1)
SET IDENTITY_INSERT [dbo].[HoaDon] OFF
SET IDENTITY_INSERT [dbo].[KhachHang] ON 

INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [Email], [SoDienThoai], [DiaChi], [NgaySinh], [GioiTinh], [MatKhau], [TenDangNhap]) VALUES (9, N'Nguyễn Văn A', N'ANV@gmail.com', N'988878788', N'Thừa thiên huế', CAST(N'2020-04-20T00:00:00' AS SmallDateTime), 0, N'1234', N'NguyenVanA')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [Email], [SoDienThoai], [DiaChi], [NgaySinh], [GioiTinh], [MatKhau], [TenDangNhap]) VALUES (12, N'Trần Đình Vĩnh', N'Vinh@gmail.com', N'0102903455', N'', CAST(N'2020-04-15T00:00:00' AS SmallDateTime), 1, N'123', N'VinhTD')
INSERT [dbo].[KhachHang] ([MaKhachHang], [TenKhachHang], [Email], [SoDienThoai], [DiaChi], [NgaySinh], [GioiTinh], [MatKhau], [TenDangNhap]) VALUES (13, N'Nguyễn Văn C', N'NguyenVanC@gmail.com', N'0102903455', N'Huế ', CAST(N'2020-04-08T00:00:00' AS SmallDateTime), 0, N'1234', N'NguyenVanC')
SET IDENTITY_INSERT [dbo].[KhachHang] OFF
SET IDENTITY_INSERT [dbo].[NhomTheLoai] ON 

INSERT [dbo].[NhomTheLoai] ([MaNhomTheLoai], [TenNhomTheLoai], [MaDanhMuc]) VALUES (5, N'Sách Văn Học', 1)
INSERT [dbo].[NhomTheLoai] ([MaNhomTheLoai], [TenNhomTheLoai], [MaDanhMuc]) VALUES (7, N'Sách Nuôi Day Con', 1)
INSERT [dbo].[NhomTheLoai] ([MaNhomTheLoai], [TenNhomTheLoai], [MaDanhMuc]) VALUES (8, N'Sách Bí Quyết Làm Đẹp', 1)
INSERT [dbo].[NhomTheLoai] ([MaNhomTheLoai], [TenNhomTheLoai], [MaDanhMuc]) VALUES (9, N'Sách Kinh Tế- Kinh Doanh', 1)
INSERT [dbo].[NhomTheLoai] ([MaNhomTheLoai], [TenNhomTheLoai], [MaDanhMuc]) VALUES (10, N'Tâm Lý - Kỹ Năng', 1)
INSERT [dbo].[NhomTheLoai] ([MaNhomTheLoai], [TenNhomTheLoai], [MaDanhMuc]) VALUES (11, N'Sách Khoa Học Kỹ Thuật', 1)
INSERT [dbo].[NhomTheLoai] ([MaNhomTheLoai], [TenNhomTheLoai], [MaDanhMuc]) VALUES (12, N'Sách Ngoại Văn', 2)
INSERT [dbo].[NhomTheLoai] ([MaNhomTheLoai], [TenNhomTheLoai], [MaDanhMuc]) VALUES (13, N'Kiến Thức - Kỹ Năng', 7)
INSERT [dbo].[NhomTheLoai] ([MaNhomTheLoai], [TenNhomTheLoai], [MaDanhMuc]) VALUES (14, N'Tập Tô Màu - Vẽ Tranh', 7)
INSERT [dbo].[NhomTheLoai] ([MaNhomTheLoai], [TenNhomTheLoai], [MaDanhMuc]) VALUES (15, N'Lịch Sử Trong Nước', 8)
INSERT [dbo].[NhomTheLoai] ([MaNhomTheLoai], [TenNhomTheLoai], [MaDanhMuc]) VALUES (16, N'Lịch Sử Thế Giới', 8)
INSERT [dbo].[NhomTheLoai] ([MaNhomTheLoai], [TenNhomTheLoai], [MaDanhMuc]) VALUES (17, N'Truyện Nhân Gian', 10)
INSERT [dbo].[NhomTheLoai] ([MaNhomTheLoai], [TenNhomTheLoai], [MaDanhMuc]) VALUES (18, N'Truyện Cổ Tích', 10)
INSERT [dbo].[NhomTheLoai] ([MaNhomTheLoai], [TenNhomTheLoai], [MaDanhMuc]) VALUES (19, N'Tủ Sách Nhân Văn', 11)
INSERT [dbo].[NhomTheLoai] ([MaNhomTheLoai], [TenNhomTheLoai], [MaDanhMuc]) VALUES (20, N'Tủ Sách Biết Nói', 11)
INSERT [dbo].[NhomTheLoai] ([MaNhomTheLoai], [TenNhomTheLoai], [MaDanhMuc]) VALUES (21, N'Sách Tiếng Anh Cấp 3', 12)
INSERT [dbo].[NhomTheLoai] ([MaNhomTheLoai], [TenNhomTheLoai], [MaDanhMuc]) VALUES (22, N'Sách Tiếng Anh Cấp  1', 12)
INSERT [dbo].[NhomTheLoai] ([MaNhomTheLoai], [TenNhomTheLoai], [MaDanhMuc]) VALUES (23, N'Sách Tiếng Anh Cấp 2', 12)
INSERT [dbo].[NhomTheLoai] ([MaNhomTheLoai], [TenNhomTheLoai], [MaDanhMuc]) VALUES (24, N'Phát triển Kỹ Năng', 13)
INSERT [dbo].[NhomTheLoai] ([MaNhomTheLoai], [TenNhomTheLoai], [MaDanhMuc]) VALUES (25, N'Dụng Cụ Học Sinh', 14)
INSERT [dbo].[NhomTheLoai] ([MaNhomTheLoai], [TenNhomTheLoai], [MaDanhMuc]) VALUES (26, N'Bút - Giấy - Thước', 14)
INSERT [dbo].[NhomTheLoai] ([MaNhomTheLoai], [TenNhomTheLoai], [MaDanhMuc]) VALUES (27, N'Truyện Nước Ngoài', 10)
INSERT [dbo].[NhomTheLoai] ([MaNhomTheLoai], [TenNhomTheLoai], [MaDanhMuc]) VALUES (28, N'Nhóm thể loại mới', 15)
INSERT [dbo].[NhomTheLoai] ([MaNhomTheLoai], [TenNhomTheLoai], [MaDanhMuc]) VALUES (29, N'Nhóm thể loại mới 2', 16)
INSERT [dbo].[NhomTheLoai] ([MaNhomTheLoai], [TenNhomTheLoai], [MaDanhMuc]) VALUES (30, N'Nhóm thể loại mới 3', 16)
SET IDENTITY_INSERT [dbo].[NhomTheLoai] OFF
SET IDENTITY_INSERT [dbo].[Sach] ON 

INSERT [dbo].[Sach] ([MaSach], [TenSach], [SoLuong], [Gia], [GiaKhuyenMai], [TacGia], [NamXuatBan], [NhaXuatBan], [Anh], [MaTheLoai], [NgayNhap], [TrangThai], [MoTa]) VALUES (22, N'Truyện Doraemon tập 25', 30, 24000, 20000, N'Fujiko Fujio', 2012, N'Kim Đồng', N'image__13__63v6-r8.jpeg', 42, CAST(N'2020-04-20T00:00:00' AS SmallDateTime), 1, N'Doraemon (Ðôrêmon) là m?t chú mèo máy du?c Sewashi (Nôbitô), cháu ba d?i c?a Nobita g?i v? quá kh? cho ông mình d? giúp d? Nobita ti?n b?, t?c là cung s? c?i thi?n hoàn c?nh c?a con cháu Nobita sau này. Còn ? hi?n t?i, Nobita là m?t c?u bé luôn th?t b?i ? tru?ng h?c, và sau dó là công ty phá s?n,th?t b?i trong công vi?c, d?y gia dình và con cháu sau này vào c?nh n? n?n .Các câu chuy?n trong Doraemon thu?ng có m?t công th?c chung, dó là xoay quanh nh?ng r?c r?i hay x?y ra v?i c?u bé Nobita h?c l?p nam, nhân v?t chính th? nhì c?a b? truy?n. Doraemon có m?t chi?c túi th?n k? tru?c b?ng v?i d? lo?i b?o b?i c?a tuong lai. C?t truy?n thu?ng g?p nh?t s? là Nobita tr? v? nhà khóc lóc v?i nh?ng r?c r?i mà c?u g?p ph?i ? tru?ng ho?c v?i b?n bè. Sau khi b? c?u bé van nài ho?c thúc gi?c, Doraemon s? dua ra m?t b?o b?i giúp Nobita gi?i quy?t nh?ng r?c r?i c?a mình, ho?c là d? tr? dua hay khoe khoang v?i b?n bè c?a c?u. Nobita s? l?i thu?ng di quá xa so v?i d? d?nh ban d?u c?a Doraemon, th?m chí v?i nh?ng b?o b?i m?i c?u còn g?p r?c r?i l?n hon tru?c dó. Ðôi khi nh?ng ngu?i b?n c?a Nobita, thu?ng là Suneo (Xêkô) ho?c Jaian (Chaien) l?i l?y tr?m nh?ng b?o b?i và s? d?ng chúng không dúng m?c dích. Tuy nhiên thu?ng thì ? cu?i m?i câu chuy?n, nh?ng ai s? d?ng sai m?c dích b?o b?i s? ph?i ch?u h?u qu? do mình gây ra, và ngu?i d?c s? rút ra du?c bài h?c t? dó.')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [SoLuong], [Gia], [GiaKhuyenMai], [TacGia], [NamXuatBan], [NhaXuatBan], [Anh], [MaTheLoai], [NgayNhap], [TrangThai], [MoTa]) VALUES (23, N'Truyện Doraemon tập 24', 30, 24000, 20000, N'Fujiko Fujio', 2012, N'Kim Đồng', N'Doraemon_Đố_Vui_-_Tập_1_-_Doraemon_Xuất_Hiện.jpg', 42, CAST(N'2020-04-20T00:00:00' AS SmallDateTime), 1, N'Doraemon (Ðôrêmon) là m?t chú mèo máy du?c Sewashi (Nôbitô), cháu ba d?i c?a Nobita g?i v? quá kh? cho ông mình d? giúp d? Nobita ti?n b?, t?c là cung s? c?i thi?n hoàn c?nh c?a con cháu Nobita sau này. Còn ? hi?n t?i, Nobita là m?t c?u bé luôn th?t b?i ? tru?ng h?c, và sau dó là công ty phá s?n,th?t b?i trong công vi?c, d?y gia dình và con cháu sau này vào c?nh n? n?n .Các câu chuy?n trong Doraemon thu?ng có m?t công th?c chung, dó là xoay quanh nh?ng r?c r?i hay x?y ra v?i c?u bé Nobita h?c l?p nam, nhân v?t chính th? nhì c?a b? truy?n. Doraemon có m?t chi?c túi th?n k? tru?c b?ng v?i d? lo?i b?o b?i c?a tuong lai. C?t truy?n thu?ng g?p nh?t s? là Nobita tr? v? nhà khóc lóc v?i nh?ng r?c r?i mà c?u g?p ph?i ? tru?ng ho?c v?i b?n bè. Sau khi b? c?u bé van nài ho?c thúc gi?c, Doraemon s? dua ra m?t b?o b?i giúp Nobita gi?i quy?t nh?ng r?c r?i c?a mình, ho?c là d? tr? dua hay khoe khoang v?i b?n bè c?a c?u. Nobita s? l?i thu?ng di quá xa so v?i d? d?nh ban d?u c?a Doraemon, th?m chí v?i nh?ng b?o b?i m?i c?u còn g?p r?c r?i l?n hon tru?c dó. Ðôi khi nh?ng ngu?i b?n c?a Nobita, thu?ng là Suneo (Xêkô) ho?c Jaian (Chaien) l?i l?y tr?m nh?ng b?o b?i và s? d?ng chúng không dúng m?c dích. Tuy nhiên thu?ng thì ? cu?i m?i câu chuy?n, nh?ng ai s? d?ng sai m?c dích b?o b?i s? ph?i ch?u h?u qu? do mình gây ra, và ngu?i d?c s? rút ra du?c bài h?c t? dó.')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [SoLuong], [Gia], [GiaKhuyenMai], [TacGia], [NamXuatBan], [NhaXuatBan], [Anh], [MaTheLoai], [NgayNhap], [TrangThai], [MoTa]) VALUES (24, N'Truyện Doraemon tập 23', 30, 24000, 20000, N'Fujiko Fujio', 2012, N'Kim Đồng', N'1__48__2vcx-ca.png', 42, CAST(N'2020-04-20T00:00:00' AS SmallDateTime), 1, N'Doraemon (Ðôrêmon) là m?t chú mèo máy du?c Sewashi (Nôbitô), cháu ba d?i c?a Nobita g?i v? quá kh? cho ông mình d? giúp d? Nobita ti?n b?, t?c là cung s? c?i thi?n hoàn c?nh c?a con cháu Nobita sau này. Còn ? hi?n t?i, Nobita là m?t c?u bé luôn th?t b?i ? tru?ng h?c, và sau dó là công ty phá s?n,th?t b?i trong công vi?c, d?y gia dình và con cháu sau này vào c?nh n? n?n .Các câu chuy?n trong Doraemon thu?ng có m?t công th?c chung, dó là xoay quanh nh?ng r?c r?i hay x?y ra v?i c?u bé Nobita h?c l?p nam, nhân v?t chính th? nhì c?a b? truy?n. Doraemon có m?t chi?c túi th?n k? tru?c b?ng v?i d? lo?i b?o b?i c?a tuong lai. C?t truy?n thu?ng g?p nh?t s? là Nobita tr? v? nhà khóc lóc v?i nh?ng r?c r?i mà c?u g?p ph?i ? tru?ng ho?c v?i b?n bè. Sau khi b? c?u bé van nài ho?c thúc gi?c, Doraemon s? dua ra m?t b?o b?i giúp Nobita gi?i quy?t nh?ng r?c r?i c?a mình, ho?c là d? tr? dua hay khoe khoang v?i b?n bè c?a c?u. Nobita s? l?i thu?ng di quá xa so v?i d? d?nh ban d?u c?a Doraemon, th?m chí v?i nh?ng b?o b?i m?i c?u còn g?p r?c r?i l?n hon tru?c dó. Ðôi khi nh?ng ngu?i b?n c?a Nobita, thu?ng là Suneo (Xêkô) ho?c Jaian (Chaien) l?i l?y tr?m nh?ng b?o b?i và s? d?ng chúng không dúng m?c dích. Tuy nhiên thu?ng thì ? cu?i m?i câu chuy?n, nh?ng ai s? d?ng sai m?c dích b?o b?i s? ph?i ch?u h?u qu? do mình gây ra, và ngu?i d?c s? rút ra du?c bài h?c t? dó.')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [SoLuong], [Gia], [GiaKhuyenMai], [TacGia], [NamXuatBan], [NhaXuatBan], [Anh], [MaTheLoai], [NgayNhap], [TrangThai], [MoTa]) VALUES (25, N'Truyện Doraemon tập 22', 30, 24000, 20000, N'Fujiko Fujio', 2012, N'Kim Đồng', N'1__47__p5ho-pn.png', 42, CAST(N'2020-04-20T00:00:00' AS SmallDateTime), 1, N'Doraemon (Ðôrêmon) là m?t chú mèo máy du?c Sewashi (Nôbitô), cháu ba d?i c?a Nobita g?i v? quá kh? cho ông mình d? giúp d? Nobita ti?n b?, t?c là cung s? c?i thi?n hoàn c?nh c?a con cháu Nobita sau này. Còn ? hi?n t?i, Nobita là m?t c?u bé luôn th?t b?i ? tru?ng h?c, và sau dó là công ty phá s?n,th?t b?i trong công vi?c, d?y gia dình và con cháu sau này vào c?nh n? n?n .Các câu chuy?n trong Doraemon thu?ng có m?t công th?c chung, dó là xoay quanh nh?ng r?c r?i hay x?y ra v?i c?u bé Nobita h?c l?p nam, nhân v?t chính th? nhì c?a b? truy?n. Doraemon có m?t chi?c túi th?n k? tru?c b?ng v?i d? lo?i b?o b?i c?a tuong lai. C?t truy?n thu?ng g?p nh?t s? là Nobita tr? v? nhà khóc lóc v?i nh?ng r?c r?i mà c?u g?p ph?i ? tru?ng ho?c v?i b?n bè. Sau khi b? c?u bé van nài ho?c thúc gi?c, Doraemon s? dua ra m?t b?o b?i giúp Nobita gi?i quy?t nh?ng r?c r?i c?a mình, ho?c là d? tr? dua hay khoe khoang v?i b?n bè c?a c?u. Nobita s? l?i thu?ng di quá xa so v?i d? d?nh ban d?u c?a Doraemon, th?m chí v?i nh?ng b?o b?i m?i c?u còn g?p r?c r?i l?n hon tru?c dó. Ðôi khi nh?ng ngu?i b?n c?a Nobita, thu?ng là Suneo (Xêkô) ho?c Jaian (Chaien) l?i l?y tr?m nh?ng b?o b?i và s? d?ng chúng không dúng m?c dích. Tuy nhiên thu?ng thì ? cu?i m?i câu chuy?n, nh?ng ai s? d?ng sai m?c dích b?o b?i s? ph?i ch?u h?u qu? do mình gây ra, và ngu?i d?c s? rút ra du?c bài h?c t? dó.')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [SoLuong], [Gia], [GiaKhuyenMai], [TacGia], [NamXuatBan], [NhaXuatBan], [Anh], [MaTheLoai], [NgayNhap], [TrangThai], [MoTa]) VALUES (26, N'Truyện Doraemon tập 21', 30, 24000, 20000, N'Fujiko Fujio', 2012, N'Kim Đồng', N'1__46__ho7p-kk.png', 42, CAST(N'2020-04-20T00:00:00' AS SmallDateTime), 1, N'Doraemon (Ðôrêmon) là m?t chú mèo máy du?c Sewashi (Nôbitô), cháu ba d?i c?a Nobita g?i v? quá kh? cho ông mình d? giúp d? Nobita ti?n b?, t?c là cung s? c?i thi?n hoàn c?nh c?a con cháu Nobita sau này. Còn ? hi?n t?i, Nobita là m?t c?u bé luôn th?t b?i ? tru?ng h?c, và sau dó là công ty phá s?n,th?t b?i trong công vi?c, d?y gia dình và con cháu sau này vào c?nh n? n?n .Các câu chuy?n trong Doraemon thu?ng có m?t công th?c chung, dó là xoay quanh nh?ng r?c r?i hay x?y ra v?i c?u bé Nobita h?c l?p nam, nhân v?t chính th? nhì c?a b? truy?n. Doraemon có m?t chi?c túi th?n k? tru?c b?ng v?i d? lo?i b?o b?i c?a tuong lai. C?t truy?n thu?ng g?p nh?t s? là Nobita tr? v? nhà khóc lóc v?i nh?ng r?c r?i mà c?u g?p ph?i ? tru?ng ho?c v?i b?n bè. Sau khi b? c?u bé van nài ho?c thúc gi?c, Doraemon s? dua ra m?t b?o b?i giúp Nobita gi?i quy?t nh?ng r?c r?i c?a mình, ho?c là d? tr? dua hay khoe khoang v?i b?n bè c?a c?u. Nobita s? l?i thu?ng di quá xa so v?i d? d?nh ban d?u c?a Doraemon, th?m chí v?i nh?ng b?o b?i m?i c?u còn g?p r?c r?i l?n hon tru?c dó. Ðôi khi nh?ng ngu?i b?n c?a Nobita, thu?ng là Suneo (Xêkô) ho?c Jaian (Chaien) l?i l?y tr?m nh?ng b?o b?i và s? d?ng chúng không dúng m?c dích. Tuy nhiên thu?ng thì ? cu?i m?i câu chuy?n, nh?ng ai s? d?ng sai m?c dích b?o b?i s? ph?i ch?u h?u qu? do mình gây ra, và ngu?i d?c s? rút ra du?c bài h?c t? dó.')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [SoLuong], [Gia], [GiaKhuyenMai], [TacGia], [NamXuatBan], [NhaXuatBan], [Anh], [MaTheLoai], [NgayNhap], [TrangThai], [MoTa]) VALUES (27, N'Truyện Conan tập 10', 30, 25000, 23000, N'Aoyama Gosho', 2012, N'Hà Nội', N'1__12__98ef-go.png', 41, CAST(N'2020-04-20T00:00:00' AS SmallDateTime), 1, N'Kudo Shinichi là m?t thám t? trung h?c r?t n?i ti?ng, thu?ng xuyên giúp c?nh sát phá án các v? án khó khan.[2] Trong m?t l?n khi dang theo dõi m?t v? t?ng ti?n, c?u dã b? thành viên c?a T? ch?c Áo den phát hi?n. Chúng dánh g?c Shinichi, làm c?u b?t t?nh và ép c?u u?ng lo?i thu?c d?c APTX 4869 mà T? ch?c v?a di?u ch? nh?m b?t d?u m?i. Tuy v?y, th? thu?c ?y không gi?t ch?t c?u mà l?i khi?n c?u teo nh? thành m?t d?a tr?.[3] Sau dó, c?u t? xung là Edogawa Conan và du?c Mori Ran, b?n gái c?a c?u khi còn là Kudo Shinichi nh?n nuôi và mang v? van phòng thám t? c?a b? cô là Mori Kogoro. Xuyên su?t series, Conan dã âm th?m h? tr? ông Mori phá các v? án. Ð?ng th?i c?u cung ph?i nh?p h?c Ti?u h?c, nh? dó mà k?t thân v?i nhi?u ngu?i và l?p ra Ð?i thám t? nhí.V? sau m?t h?c sinh ti?u h?c b?t d?c di khác tên là Haibara Ai dã vào h?c l?p c?a Conan và ti?t l? r?ng cô chính là thành viên c?a ngu?i dã t?o ra lo?i thu?c APTX 4869 mà Conan dã b? ép u?ng, vì mu?n thoát kh?i T? ch?c Áo den nên dã u?ng viên thu?c dó d? t? sát. K?t qu? là, thay vì ch?t thì co th? Haibara cung b? teo nh? nhu Conan.[4] Trong vài v? án liên quan d?n T? ch?c Áo den, Conan dã h? tr? các di?p viên c?a FBI và CIA.[5]')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [SoLuong], [Gia], [GiaKhuyenMai], [TacGia], [NamXuatBan], [NhaXuatBan], [Anh], [MaTheLoai], [NgayNhap], [TrangThai], [MoTa]) VALUES (28, N'Truyện Conan tập 11', 30, 25000, 23000, N'Aoyama Gosho', 2012, N'Hà Nội', N'conan_93.jpeg', 41, CAST(N'2020-04-20T00:00:00' AS SmallDateTime), 1, N'Kudo Shinichi là m?t thám t? trung h?c r?t n?i ti?ng, thu?ng xuyên giúp c?nh sát phá án các v? án khó khan.[2] Trong m?t l?n khi dang theo dõi m?t v? t?ng ti?n, c?u dã b? thành viên c?a T? ch?c Áo den phát hi?n. Chúng dánh g?c Shinichi, làm c?u b?t t?nh và ép c?u u?ng lo?i thu?c d?c APTX 4869 mà T? ch?c v?a di?u ch? nh?m b?t d?u m?i. Tuy v?y, th? thu?c ?y không gi?t ch?t c?u mà l?i khi?n c?u teo nh? thành m?t d?a tr?.[3] Sau dó, c?u t? xung là Edogawa Conan và du?c Mori Ran, b?n gái c?a c?u khi còn là Kudo Shinichi nh?n nuôi và mang v? van phòng thám t? c?a b? cô là Mori Kogoro. Xuyên su?t series, Conan dã âm th?m h? tr? ông Mori phá các v? án. Ð?ng th?i c?u cung ph?i nh?p h?c Ti?u h?c, nh? dó mà k?t thân v?i nhi?u ngu?i và l?p ra Ð?i thám t? nhí.V? sau m?t h?c sinh ti?u h?c b?t d?c di khác tên là Haibara Ai dã vào h?c l?p c?a Conan và ti?t l? r?ng cô chính là thành viên c?a ngu?i dã t?o ra lo?i thu?c APTX 4869 mà Conan dã b? ép u?ng, vì mu?n thoát kh?i T? ch?c Áo den nên dã u?ng viên thu?c dó d? t? sát. K?t qu? là, thay vì ch?t thì co th? Haibara cung b? teo nh? nhu Conan.[4] Trong vài v? án liên quan d?n T? ch?c Áo den, Conan dã h? tr? các di?p viên c?a FBI và CIA.[5]')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [SoLuong], [Gia], [GiaKhuyenMai], [TacGia], [NamXuatBan], [NhaXuatBan], [Anh], [MaTheLoai], [NgayNhap], [TrangThai], [MoTa]) VALUES (29, N'Truyện one piece tập 5', 30, 20000, 18000, N'Eiichiro Oda', 2012, N'Sài Gòn', N'1__1__8sgj-qn.png', 43, CAST(N'2020-04-20T00:00:00' AS SmallDateTime), 1, N'One Piece là Manga du?c xu?t b?n t?ng kì trên t?p chí Manga Weekly Shonen Jump. Gi?ng nhu tên c?a nó, m?t s? m?i c?a Jump (ch?a m?t chuong m?i c?a One Piece) du?c xu?t b?n hàng tu?n. Tính nh?ng tu?n mà t?p chí không xu?t b?n và nh?ng lúc tác gi? Eiichiro Oda t?m ngh? thì m?t nam có kho?ng 45 d?n 48 chuong du?c xu?t b?n. Ba d?n b?n tháng sau khi xu?t hi?n trên t?p chí Jump, các chuong này du?c biên t?p l?i thành m?t t?p, hay Tankobon (???), bao g?m 9 d?n 11 chuong v?i g?n 200 trang truy?n. Nh?ng t?p truy?n này có bìa v? m?i, b?ng tóm t?t n?i dung c?a t?p truy?n, m?t c?t h?i dáp c?a tác gi?, m?t m?c noi nhân v?t Usopp nh?n xét vè nh?ng b?c v? c?a fan hâm m? và m?t s? ph?n thêm khác. Tuy nhiên, do gi?i h?n v? kinh phí ti?n bìa nên b?t c? b?c v? nào du?c v? màu (không ph?i bìa) s? du?c làm l?i v?i màu tr?ng den.')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [SoLuong], [Gia], [GiaKhuyenMai], [TacGia], [NamXuatBan], [NhaXuatBan], [Anh], [MaTheLoai], [NgayNhap], [TrangThai], [MoTa]) VALUES (30, N'Truyện one piece tập 6', 30, 20000, 18000, N'Eiichiro Oda', 2012, N'Sài Gòn', N'1__88__aarn-so.png', 43, CAST(N'2020-04-20T00:00:00' AS SmallDateTime), 1, N'One Piece là Manga du?c xu?t b?n t?ng kì trên t?p chí Manga Weekly Shonen Jump. Gi?ng nhu tên c?a nó, m?t s? m?i c?a Jump (ch?a m?t chuong m?i c?a One Piece) du?c xu?t b?n hàng tu?n. Tính nh?ng tu?n mà t?p chí không xu?t b?n và nh?ng lúc tác gi? Eiichiro Oda t?m ngh? thì m?t nam có kho?ng 45 d?n 48 chuong du?c xu?t b?n. Ba d?n b?n tháng sau khi xu?t hi?n trên t?p chí Jump, các chuong này du?c biên t?p l?i thành m?t t?p, hay Tankobon (???), bao g?m 9 d?n 11 chuong v?i g?n 200 trang truy?n. Nh?ng t?p truy?n này có bìa v? m?i, b?ng tóm t?t n?i dung c?a t?p truy?n, m?t c?t h?i dáp c?a tác gi?, m?t m?c noi nhân v?t Usopp nh?n xét vè nh?ng b?c v? c?a fan hâm m? và m?t s? ph?n thêm khác. Tuy nhiên, do gi?i h?n v? kinh phí ti?n bìa nên b?t c? b?c v? nào du?c v? màu (không ph?i bìa) s? du?c làm l?i v?i màu tr?ng den.')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [SoLuong], [Gia], [GiaKhuyenMai], [TacGia], [NamXuatBan], [NhaXuatBan], [Anh], [MaTheLoai], [NgayNhap], [TrangThai], [MoTa]) VALUES (31, N'Truyện one piece tập 7', 30, 20000, 18000, N'Eiichiro Oda', 2012, N'Sài Gòn', N'1__89__pkfi-4n.png', 43, CAST(N'2020-04-20T00:00:00' AS SmallDateTime), 1, N'One Piece là Manga du?c xu?t b?n t?ng kì trên t?p chí Manga Weekly Shonen Jump. Gi?ng nhu tên c?a nó, m?t s? m?i c?a Jump (ch?a m?t chuong m?i c?a One Piece) du?c xu?t b?n hàng tu?n. Tính nh?ng tu?n mà t?p chí không xu?t b?n và nh?ng lúc tác gi? Eiichiro Oda t?m ngh? thì m?t nam có kho?ng 45 d?n 48 chuong du?c xu?t b?n. Ba d?n b?n tháng sau khi xu?t hi?n trên t?p chí Jump, các chuong này du?c biên t?p l?i thành m?t t?p, hay Tankobon (???), bao g?m 9 d?n 11 chuong v?i g?n 200 trang truy?n. Nh?ng t?p truy?n này có bìa v? m?i, b?ng tóm t?t n?i dung c?a t?p truy?n, m?t c?t h?i dáp c?a tác gi?, m?t m?c noi nhân v?t Usopp nh?n xét vè nh?ng b?c v? c?a fan hâm m? và m?t s? ph?n thêm khác. Tuy nhiên, do gi?i h?n v? kinh phí ti?n bìa nên b?t c? b?c v? nào du?c v? màu (không ph?i bìa) s? du?c làm l?i v?i màu tr?ng den.')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [SoLuong], [Gia], [GiaKhuyenMai], [TacGia], [NamXuatBan], [NhaXuatBan], [Anh], [MaTheLoai], [NgayNhap], [TrangThai], [MoTa]) VALUES (32, N'Truyện one piece tập 8', 30, 20000, 18000, N'Eiichiro Oda', 2012, N'Sài Gòn', N'1__90__b7so-2k.png', 43, CAST(N'2020-04-20T00:00:00' AS SmallDateTime), 1, N'One Piece là Manga du?c xu?t b?n t?ng kì trên t?p chí Manga Weekly Shonen Jump. Gi?ng nhu tên c?a nó, m?t s? m?i c?a Jump (ch?a m?t chuong m?i c?a One Piece) du?c xu?t b?n hàng tu?n. Tính nh?ng tu?n mà t?p chí không xu?t b?n và nh?ng lúc tác gi? Eiichiro Oda t?m ngh? thì m?t nam có kho?ng 45 d?n 48 chuong du?c xu?t b?n. Ba d?n b?n tháng sau khi xu?t hi?n trên t?p chí Jump, các chuong này du?c biên t?p l?i thành m?t t?p, hay Tankobon (???), bao g?m 9 d?n 11 chuong v?i g?n 200 trang truy?n. Nh?ng t?p truy?n này có bìa v? m?i, b?ng tóm t?t n?i dung c?a t?p truy?n, m?t c?t h?i dáp c?a tác gi?, m?t m?c noi nhân v?t Usopp nh?n xét vè nh?ng b?c v? c?a fan hâm m? và m?t s? ph?n thêm khác. Tuy nhiên, do gi?i h?n v? kinh phí ti?n bìa nên b?t c? b?c v? nào du?c v? màu (không ph?i bìa) s? du?c làm l?i v?i màu tr?ng den.')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [SoLuong], [Gia], [GiaKhuyenMai], [TacGia], [NamXuatBan], [NhaXuatBan], [Anh], [MaTheLoai], [NgayNhap], [TrangThai], [MoTa]) VALUES (33, N'Truyện one piece tập 9', 30, 20000, 18000, N'Eiichiro Oda', 2012, N'Sài Gòn', N'1__91__n97z-hq.png', 43, CAST(N'2020-04-20T00:00:00' AS SmallDateTime), 1, N'One Piece là Manga du?c xu?t b?n t?ng kì trên t?p chí Manga Weekly Shonen Jump. Gi?ng nhu tên c?a nó, m?t s? m?i c?a Jump (ch?a m?t chuong m?i c?a One Piece) du?c xu?t b?n hàng tu?n. Tính nh?ng tu?n mà t?p chí không xu?t b?n và nh?ng lúc tác gi? Eiichiro Oda t?m ngh? thì m?t nam có kho?ng 45 d?n 48 chuong du?c xu?t b?n. Ba d?n b?n tháng sau khi xu?t hi?n trên t?p chí Jump, các chuong này du?c biên t?p l?i thành m?t t?p, hay Tankobon (???), bao g?m 9 d?n 11 chuong v?i g?n 200 trang truy?n. Nh?ng t?p truy?n này có bìa v? m?i, b?ng tóm t?t n?i dung c?a t?p truy?n, m?t c?t h?i dáp c?a tác gi?, m?t m?c noi nhân v?t Usopp nh?n xét vè nh?ng b?c v? c?a fan hâm m? và m?t s? ph?n thêm khác. Tuy nhiên, do gi?i h?n v? kinh phí ti?n bìa nên b?t c? b?c v? nào du?c v? màu (không ph?i bìa) s? du?c làm l?i v?i màu tr?ng den.')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [SoLuong], [Gia], [GiaKhuyenMai], [TacGia], [NamXuatBan], [NhaXuatBan], [Anh], [MaTheLoai], [NgayNhap], [TrangThai], [MoTa]) VALUES (34, N'Truyện one piece tập 10', 30, 20000, 18000, N'Eiichiro Oda', 2012, N'Sài Gòn', N'1_5vsk-97.png', 43, CAST(N'2020-04-20T00:00:00' AS SmallDateTime), 1, N'One Piece là Manga du?c xu?t b?n t?ng kì trên t?p chí Manga Weekly Shonen Jump. Gi?ng nhu tên c?a nó, m?t s? m?i c?a Jump (ch?a m?t chuong m?i c?a One Piece) du?c xu?t b?n hàng tu?n. Tính nh?ng tu?n mà t?p chí không xu?t b?n và nh?ng lúc tác gi? Eiichiro Oda t?m ngh? thì m?t nam có kho?ng 45 d?n 48 chuong du?c xu?t b?n. Ba d?n b?n tháng sau khi xu?t hi?n trên t?p chí Jump, các chuong này du?c biên t?p l?i thành m?t t?p, hay Tankobon (???), bao g?m 9 d?n 11 chuong v?i g?n 200 trang truy?n. Nh?ng t?p truy?n này có bìa v? m?i, b?ng tóm t?t n?i dung c?a t?p truy?n, m?t c?t h?i dáp c?a tác gi?, m?t m?c noi nhân v?t Usopp nh?n xét vè nh?ng b?c v? c?a fan hâm m? và m?t s? ph?n thêm khác. Tuy nhiên, do gi?i h?n v? kinh phí ti?n bìa nên b?t c? b?c v? nào du?c v? màu (không ph?i bìa) s? du?c làm l?i v?i màu tr?ng den.')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [SoLuong], [Gia], [GiaKhuyenMai], [TacGia], [NamXuatBan], [NhaXuatBan], [Anh], [MaTheLoai], [NgayNhap], [TrangThai], [MoTa]) VALUES (35, N'Truyện one piece tập 11', 30, 20000, 18000, N'Eiichiro Oda', 2012, N'Sài Gòn', N'1__86__t7em-qa.png', 43, CAST(N'2020-04-20T00:00:00' AS SmallDateTime), 1, N'One Piece là Manga du?c xu?t b?n t?ng kì trên t?p chí Manga Weekly Shonen Jump. Gi?ng nhu tên c?a nó, m?t s? m?i c?a Jump (ch?a m?t chuong m?i c?a One Piece) du?c xu?t b?n hàng tu?n. Tính nh?ng tu?n mà t?p chí không xu?t b?n và nh?ng lúc tác gi? Eiichiro Oda t?m ngh? thì m?t nam có kho?ng 45 d?n 48 chuong du?c xu?t b?n. Ba d?n b?n tháng sau khi xu?t hi?n trên t?p chí Jump, các chuong này du?c biên t?p l?i thành m?t t?p, hay Tankobon (???), bao g?m 9 d?n 11 chuong v?i g?n 200 trang truy?n. Nh?ng t?p truy?n này có bìa v? m?i, b?ng tóm t?t n?i dung c?a t?p truy?n, m?t c?t h?i dáp c?a tác gi?, m?t m?c noi nhân v?t Usopp nh?n xét vè nh?ng b?c v? c?a fan hâm m? và m?t s? ph?n thêm khác. Tuy nhiên, do gi?i h?n v? kinh phí ti?n bìa nên b?t c? b?c v? nào du?c v? màu (không ph?i bìa) s? du?c làm l?i v?i màu tr?ng den.')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [SoLuong], [Gia], [GiaKhuyenMai], [TacGia], [NamXuatBan], [NhaXuatBan], [Anh], [MaTheLoai], [NgayNhap], [TrangThai], [MoTa]) VALUES (36, N'Truyện one piece tập 12', 30, 20000, 18000, N'Eiichiro Oda', 2012, N'Sài Gòn', N'1__87__kexs-ce.png', 43, CAST(N'2020-04-20T00:00:00' AS SmallDateTime), 1, N'One Piece là Manga du?c xu?t b?n t?ng kì trên t?p chí Manga Weekly Shonen Jump. Gi?ng nhu tên c?a nó, m?t s? m?i c?a Jump (ch?a m?t chuong m?i c?a One Piece) du?c xu?t b?n hàng tu?n. Tính nh?ng tu?n mà t?p chí không xu?t b?n và nh?ng lúc tác gi? Eiichiro Oda t?m ngh? thì m?t nam có kho?ng 45 d?n 48 chuong du?c xu?t b?n. Ba d?n b?n tháng sau khi xu?t hi?n trên t?p chí Jump, các chuong này du?c biên t?p l?i thành m?t t?p, hay Tankobon (???), bao g?m 9 d?n 11 chuong v?i g?n 200 trang truy?n. Nh?ng t?p truy?n này có bìa v? m?i, b?ng tóm t?t n?i dung c?a t?p truy?n, m?t c?t h?i dáp c?a tác gi?, m?t m?c noi nhân v?t Usopp nh?n xét vè nh?ng b?c v? c?a fan hâm m? và m?t s? ph?n thêm khác. Tuy nhiên, do gi?i h?n v? kinh phí ti?n bìa nên b?t c? b?c v? nào du?c v? màu (không ph?i bìa) s? du?c làm l?i v?i màu tr?ng den.')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [SoLuong], [Gia], [GiaKhuyenMai], [TacGia], [NamXuatBan], [NhaXuatBan], [Anh], [MaTheLoai], [NgayNhap], [TrangThai], [MoTa]) VALUES (38, N'Truyện Thần Đồng Đất Việt tập 33', 30, 20000, 18000, N'Lê Linh và Công ty Phan Th?', 2012, N'Nhà xuất bản Trẻ', N'1__23__ba84-r7.png', 40, CAST(N'2020-04-20T00:00:00' AS SmallDateTime), 1, N'Truy?n l?y b?i c?nh là th?i H?u Lê, nhung nh?ng s? ki?n x?y ra trong truy?n không trùng l?p v?i nh?ng s? ki?n x?y ra trên th?c t?. Tuy v?y, h?u h?t nh?ng s? ki?n chính x?y ra trong Th?n Ð?ng Ð?t Vi?t d?u d?a trên nh?ng câu truy?n, di?n tích l?ch s? có th?t c?a Vi?t Nam. Tác ph?m này k? l?i nh?ng câu chuy?n v? cu?c d?i c?a Lê Tí, m?t Tr?ng nguyên c?a Ð?i Vi?t cùng v?i nh?ng ngu?i b?n thân c?a c?u là S?u ?o, D?n Béo và C? M?o. S? ra d?i c?a Tr?ng Tí cung không bình thu?ng. Ki?p tru?c c?u v?n là m?t b?c th?n tiên có ki?n th?c uyên bác trên Thiên Ðình, sau dó du?c d?u thai xu?ng tr?n gian d? giúp d? Ð?i Vi?t. M? c?a Tí là bà Hai h?u, sau khi di cày v? m?t m?i dã ng?i lên m?t hòn dá d? ngh? ngoi và có mang r?i sau dó sinh ra c?u.T? nh?, Tí dã th? hi?n mình là m?t ngu?i con hi?u th?o, ham h?c và có trí thông minh hon ngu?i. Ngay c? Ð? Ki?t, th?y d?y c?a c?u cung ph?i ng?c nhiên v? ki?n th?c c?a c?u. ? làng Phan Th?, v?i tài trí c?a mình, c?u cung dã giúp m?, các b?n c?a mình và nh?ng ngu?i dân trong làng gi?i quy?t nhi?u v?n d? khó khan. Vu?t qua ba kì thi Huong, H?i, Ðình m?t cách xu?t s?c, c?u tr? thành tr?ng nguyên nh? tu?i nh?t c?a Ð?i Vi?t. Sau dó, c?u cung du?c Ð?i Minh công nh?n là Lu?ng Qu?c Tr?ng nguyên.Tí cùng S?u, D?n và C? M?o cung dã có công l?n trong vi?c phò tr? vua Lê ch?ng l?i s? xâm lu?c c?a Ð?i Minh và d?i phó v?i các s? th?n mà Ð?i Minh c? sang. Trong tri?u dình, c?u là m?t v? quan thanh liêm chính tr?c nên du?c công chúa Phuong Thìn yêu m?n, nhung cung chính vì v?y mà c?u luôn b? T? Tu?ng Tào H?ng và nh?ng ngu?i trong gia dình là hai d?a con ông coi là cái gai trong m?t và tìm m?i cách d? h? nh?c c?u, tuy nhiên trong ph?n l?n các câu chuy?n c?u là ngu?i chi?n th?ng. Cung nh? tài trí vu?t b?c, Tr?ng Tí du?c vua tin tu?ng giao tr?ng trách di s? B?c Qu?c nhi?u l?n. ? dó, Tí cung g?p ph?i nhi?u khó khan do vua B?c Qu?c và Vuong Th?a Tu?ng t?o ra nh?m ám h?i c?u và làm t?n h?i uy tín Ð?i Vi?t, th?m chí có l?n suýt chút n?a thì c?u thi?t m?ng. Tuy dã ra làm quan nhung dôi lúc c?u v?n du?c vua cho phép v? quê d? cham sóc m? và giúp d? dân làng. Và t?t nhiên, tài trí và s? giúp d? nhi?t tình t? nh?ng ngu?i b?n t?t dã giúp nh?ng ngu?i dân r?t nhi?u.')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [SoLuong], [Gia], [GiaKhuyenMai], [TacGia], [NamXuatBan], [NhaXuatBan], [Anh], [MaTheLoai], [NgayNhap], [TrangThai], [MoTa]) VALUES (39, N'Truyện Thần Đồng Đất Việt tập 34', 30, 20000, 18000, N'Lê Linh và Công ty Phan Th?', 2012, N'Nhà xuất bản Trẻ', N'1__25__od9w-wg.png', 40, CAST(N'2020-04-20T00:00:00' AS SmallDateTime), 1, N'Truy?n l?y b?i c?nh là th?i H?u Lê, nhung nh?ng s? ki?n x?y ra trong truy?n không trùng l?p v?i nh?ng s? ki?n x?y ra trên th?c t?. Tuy v?y, h?u h?t nh?ng s? ki?n chính x?y ra trong Th?n Ð?ng Ð?t Vi?t d?u d?a trên nh?ng câu truy?n, di?n tích l?ch s? có th?t c?a Vi?t Nam. Tác ph?m này k? l?i nh?ng câu chuy?n v? cu?c d?i c?a Lê Tí, m?t Tr?ng nguyên c?a Ð?i Vi?t cùng v?i nh?ng ngu?i b?n thân c?a c?u là S?u ?o, D?n Béo và C? M?o. S? ra d?i c?a Tr?ng Tí cung không bình thu?ng. Ki?p tru?c c?u v?n là m?t b?c th?n tiên có ki?n th?c uyên bác trên Thiên Ðình, sau dó du?c d?u thai xu?ng tr?n gian d? giúp d? Ð?i Vi?t. M? c?a Tí là bà Hai h?u, sau khi di cày v? m?t m?i dã ng?i lên m?t hòn dá d? ngh? ngoi và có mang r?i sau dó sinh ra c?u.T? nh?, Tí dã th? hi?n mình là m?t ngu?i con hi?u th?o, ham h?c và có trí thông minh hon ngu?i. Ngay c? Ð? Ki?t, th?y d?y c?a c?u cung ph?i ng?c nhiên v? ki?n th?c c?a c?u. ? làng Phan Th?, v?i tài trí c?a mình, c?u cung dã giúp m?, các b?n c?a mình và nh?ng ngu?i dân trong làng gi?i quy?t nhi?u v?n d? khó khan. Vu?t qua ba kì thi Huong, H?i, Ðình m?t cách xu?t s?c, c?u tr? thành tr?ng nguyên nh? tu?i nh?t c?a Ð?i Vi?t. Sau dó, c?u cung du?c Ð?i Minh công nh?n là Lu?ng Qu?c Tr?ng nguyên.Tí cùng S?u, D?n và C? M?o cung dã có công l?n trong vi?c phò tr? vua Lê ch?ng l?i s? xâm lu?c c?a Ð?i Minh và d?i phó v?i các s? th?n mà Ð?i Minh c? sang. Trong tri?u dình, c?u là m?t v? quan thanh liêm chính tr?c nên du?c công chúa Phuong Thìn yêu m?n, nhung cung chính vì v?y mà c?u luôn b? T? Tu?ng Tào H?ng và nh?ng ngu?i trong gia dình là hai d?a con ông coi là cái gai trong m?t và tìm m?i cách d? h? nh?c c?u, tuy nhiên trong ph?n l?n các câu chuy?n c?u là ngu?i chi?n th?ng. Cung nh? tài trí vu?t b?c, Tr?ng Tí du?c vua tin tu?ng giao tr?ng trách di s? B?c Qu?c nhi?u l?n. ? dó, Tí cung g?p ph?i nhi?u khó khan do vua B?c Qu?c và Vuong Th?a Tu?ng t?o ra nh?m ám h?i c?u và làm t?n h?i uy tín Ð?i Vi?t, th?m chí có l?n suýt chút n?a thì c?u thi?t m?ng. Tuy dã ra làm quan nhung dôi lúc c?u v?n du?c vua cho phép v? quê d? cham sóc m? và giúp d? dân làng. Và t?t nhiên, tài trí và s? giúp d? nhi?t tình t? nh?ng ngu?i b?n t?t dã giúp nh?ng ngu?i dân r?t nhi?u.')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [SoLuong], [Gia], [GiaKhuyenMai], [TacGia], [NamXuatBan], [NhaXuatBan], [Anh], [MaTheLoai], [NgayNhap], [TrangThai], [MoTa]) VALUES (44, N'Truyện Thần Đồng Đất Việt tập 152', 30, 20000, 18000, N'Lê Linh và Công ty Phan Th?', 2012, N'Nhà xuất bản Trẻ', N'Thần_Đồng_Đất_Việt_-_Tập_152_-_Thức_Uống_Nổ_Bùm.jpeg', 40, CAST(N'2020-04-20T00:00:00' AS SmallDateTime), 1, N'Truy?n l?y b?i c?nh là th?i H?u Lê, nhung nh?ng s? ki?n x?y ra trong truy?n không trùng l?p v?i nh?ng s? ki?n x?y ra trên th?c t?. Tuy v?y, h?u h?t nh?ng s? ki?n chính x?y ra trong Th?n Ð?ng Ð?t Vi?t d?u d?a trên nh?ng câu truy?n, di?n tích l?ch s? có th?t c?a Vi?t Nam. Tác ph?m này k? l?i nh?ng câu chuy?n v? cu?c d?i c?a Lê Tí, m?t Tr?ng nguyên c?a Ð?i Vi?t cùng v?i nh?ng ngu?i b?n thân c?a c?u là S?u ?o, D?n Béo và C? M?o. S? ra d?i c?a Tr?ng Tí cung không bình thu?ng. Ki?p tru?c c?u v?n là m?t b?c th?n tiên có ki?n th?c uyên bác trên Thiên Ðình, sau dó du?c d?u thai xu?ng tr?n gian d? giúp d? Ð?i Vi?t. M? c?a Tí là bà Hai h?u, sau khi di cày v? m?t m?i dã ng?i lên m?t hòn dá d? ngh? ngoi và có mang r?i sau dó sinh ra c?u.T? nh?, Tí dã th? hi?n mình là m?t ngu?i con hi?u th?o, ham h?c và có trí thông minh hon ngu?i. Ngay c? Ð? Ki?t, th?y d?y c?a c?u cung ph?i ng?c nhiên v? ki?n th?c c?a c?u. ? làng Phan Th?, v?i tài trí c?a mình, c?u cung dã giúp m?, các b?n c?a mình và nh?ng ngu?i dân trong làng gi?i quy?t nhi?u v?n d? khó khan. Vu?t qua ba kì thi Huong, H?i, Ðình m?t cách xu?t s?c, c?u tr? thành tr?ng nguyên nh? tu?i nh?t c?a Ð?i Vi?t. Sau dó, c?u cung du?c Ð?i Minh công nh?n là Lu?ng Qu?c Tr?ng nguyên.Tí cùng S?u, D?n và C? M?o cung dã có công l?n trong vi?c phò tr? vua Lê ch?ng l?i s? xâm lu?c c?a Ð?i Minh và d?i phó v?i các s? th?n mà Ð?i Minh c? sang. Trong tri?u dình, c?u là m?t v? quan thanh liêm chính tr?c nên du?c công chúa Phuong Thìn yêu m?n, nhung cung chính vì v?y mà c?u luôn b? T? Tu?ng Tào H?ng và nh?ng ngu?i trong gia dình là hai d?a con ông coi là cái gai trong m?t và tìm m?i cách d? h? nh?c c?u, tuy nhiên trong ph?n l?n các câu chuy?n c?u là ngu?i chi?n th?ng. Cung nh? tài trí vu?t b?c, Tr?ng Tí du?c vua tin tu?ng giao tr?ng trách di s? B?c Qu?c nhi?u l?n. ? dó, Tí cung g?p ph?i nhi?u khó khan do vua B?c Qu?c và Vuong Th?a Tu?ng t?o ra nh?m ám h?i c?u và làm t?n h?i uy tín Ð?i Vi?t, th?m chí có l?n suýt chút n?a thì c?u thi?t m?ng. Tuy dã ra làm quan nhung dôi lúc c?u v?n du?c vua cho phép v? quê d? cham sóc m? và giúp d? dân làng. Và t?t nhiên, tài trí và s? giúp d? nhi?t tình t? nh?ng ngu?i b?n t?t dã giúp nh?ng ngu?i dân r?t nhi?u.')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [SoLuong], [Gia], [GiaKhuyenMai], [TacGia], [NamXuatBan], [NhaXuatBan], [Anh], [MaTheLoai], [NgayNhap], [TrangThai], [MoTa]) VALUES (45, N'Truyện Thần Đồng Đất Việt tập 147', 30, 20000, 18000, N'Lê Linh và Công ty Phan Th?', 2012, N'Nhà xuất bản Trẻ', N'Thần_Đồng_Đất_Việt_-_Tập_143_-_Thần_Dược_Tí_Hon.jpeg', 40, CAST(N'2020-04-20T00:00:00' AS SmallDateTime), 1, N'Truy?n l?y b?i c?nh là th?i H?u Lê, nhung nh?ng s? ki?n x?y ra trong truy?n không trùng l?p v?i nh?ng s? ki?n x?y ra trên th?c t?. Tuy v?y, h?u h?t nh?ng s? ki?n chính x?y ra trong Th?n Ð?ng Ð?t Vi?t d?u d?a trên nh?ng câu truy?n, di?n tích l?ch s? có th?t c?a Vi?t Nam. Tác ph?m này k? l?i nh?ng câu chuy?n v? cu?c d?i c?a Lê Tí, m?t Tr?ng nguyên c?a Ð?i Vi?t cùng v?i nh?ng ngu?i b?n thân c?a c?u là S?u ?o, D?n Béo và C? M?o. S? ra d?i c?a Tr?ng Tí cung không bình thu?ng. Ki?p tru?c c?u v?n là m?t b?c th?n tiên có ki?n th?c uyên bác trên Thiên Ðình, sau dó du?c d?u thai xu?ng tr?n gian d? giúp d? Ð?i Vi?t. M? c?a Tí là bà Hai h?u, sau khi di cày v? m?t m?i dã ng?i lên m?t hòn dá d? ngh? ngoi và có mang r?i sau dó sinh ra c?u.T? nh?, Tí dã th? hi?n mình là m?t ngu?i con hi?u th?o, ham h?c và có trí thông minh hon ngu?i. Ngay c? Ð? Ki?t, th?y d?y c?a c?u cung ph?i ng?c nhiên v? ki?n th?c c?a c?u. ? làng Phan Th?, v?i tài trí c?a mình, c?u cung dã giúp m?, các b?n c?a mình và nh?ng ngu?i dân trong làng gi?i quy?t nhi?u v?n d? khó khan. Vu?t qua ba kì thi Huong, H?i, Ðình m?t cách xu?t s?c, c?u tr? thành tr?ng nguyên nh? tu?i nh?t c?a Ð?i Vi?t. Sau dó, c?u cung du?c Ð?i Minh công nh?n là Lu?ng Qu?c Tr?ng nguyên.Tí cùng S?u, D?n và C? M?o cung dã có công l?n trong vi?c phò tr? vua Lê ch?ng l?i s? xâm lu?c c?a Ð?i Minh và d?i phó v?i các s? th?n mà Ð?i Minh c? sang. Trong tri?u dình, c?u là m?t v? quan thanh liêm chính tr?c nên du?c công chúa Phuong Thìn yêu m?n, nhung cung chính vì v?y mà c?u luôn b? T? Tu?ng Tào H?ng và nh?ng ngu?i trong gia dình là hai d?a con ông coi là cái gai trong m?t và tìm m?i cách d? h? nh?c c?u, tuy nhiên trong ph?n l?n các câu chuy?n c?u là ngu?i chi?n th?ng. Cung nh? tài trí vu?t b?c, Tr?ng Tí du?c vua tin tu?ng giao tr?ng trách di s? B?c Qu?c nhi?u l?n. ? dó, Tí cung g?p ph?i nhi?u khó khan do vua B?c Qu?c và Vuong Th?a Tu?ng t?o ra nh?m ám h?i c?u và làm t?n h?i uy tín Ð?i Vi?t, th?m chí có l?n suýt chút n?a thì c?u thi?t m?ng. Tuy dã ra làm quan nhung dôi lúc c?u v?n du?c vua cho phép v? quê d? cham sóc m? và giúp d? dân làng. Và t?t nhiên, tài trí và s? giúp d? nhi?t tình t? nh?ng ngu?i b?n t?t dã giúp nh?ng ngu?i dân r?t nhi?u.')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [SoLuong], [Gia], [GiaKhuyenMai], [TacGia], [NamXuatBan], [NhaXuatBan], [Anh], [MaTheLoai], [NgayNhap], [TrangThai], [MoTa]) VALUES (46, N'Truyện Thần Đồng Đất Việt tập 122', 30, 20000, 18000, N'Lê Linh và Công ty Phan Th?', 2012, N'Nhà xuất bản Trẻ', N'Thần_Đồng_Đất_Việt_-_Tập_122_-_Bữa_Tiệc_Giáng_Sinh.jpeg', 40, CAST(N'2020-04-20T00:00:00' AS SmallDateTime), 1, N'Truy?n l?y b?i c?nh là th?i H?u Lê, nhung nh?ng s? ki?n x?y ra trong truy?n không trùng l?p v?i nh?ng s? ki?n x?y ra trên th?c t?. Tuy v?y, h?u h?t nh?ng s? ki?n chính x?y ra trong Th?n Ð?ng Ð?t Vi?t d?u d?a trên nh?ng câu truy?n, di?n tích l?ch s? có th?t c?a Vi?t Nam. Tác ph?m này k? l?i nh?ng câu chuy?n v? cu?c d?i c?a Lê Tí, m?t Tr?ng nguyên c?a Ð?i Vi?t cùng v?i nh?ng ngu?i b?n thân c?a c?u là S?u ?o, D?n Béo và C? M?o. S? ra d?i c?a Tr?ng Tí cung không bình thu?ng. Ki?p tru?c c?u v?n là m?t b?c th?n tiên có ki?n th?c uyên bác trên Thiên Ðình, sau dó du?c d?u thai xu?ng tr?n gian d? giúp d? Ð?i Vi?t. M? c?a Tí là bà Hai h?u, sau khi di cày v? m?t m?i dã ng?i lên m?t hòn dá d? ngh? ngoi và có mang r?i sau dó sinh ra c?u.T? nh?, Tí dã th? hi?n mình là m?t ngu?i con hi?u th?o, ham h?c và có trí thông minh hon ngu?i. Ngay c? Ð? Ki?t, th?y d?y c?a c?u cung ph?i ng?c nhiên v? ki?n th?c c?a c?u. ? làng Phan Th?, v?i tài trí c?a mình, c?u cung dã giúp m?, các b?n c?a mình và nh?ng ngu?i dân trong làng gi?i quy?t nhi?u v?n d? khó khan. Vu?t qua ba kì thi Huong, H?i, Ðình m?t cách xu?t s?c, c?u tr? thành tr?ng nguyên nh? tu?i nh?t c?a Ð?i Vi?t. Sau dó, c?u cung du?c Ð?i Minh công nh?n là Lu?ng Qu?c Tr?ng nguyên.Tí cùng S?u, D?n và C? M?o cung dã có công l?n trong vi?c phò tr? vua Lê ch?ng l?i s? xâm lu?c c?a Ð?i Minh và d?i phó v?i các s? th?n mà Ð?i Minh c? sang. Trong tri?u dình, c?u là m?t v? quan thanh liêm chính tr?c nên du?c công chúa Phuong Thìn yêu m?n, nhung cung chính vì v?y mà c?u luôn b? T? Tu?ng Tào H?ng và nh?ng ngu?i trong gia dình là hai d?a con ông coi là cái gai trong m?t và tìm m?i cách d? h? nh?c c?u, tuy nhiên trong ph?n l?n các câu chuy?n c?u là ngu?i chi?n th?ng. Cung nh? tài trí vu?t b?c, Tr?ng Tí du?c vua tin tu?ng giao tr?ng trách di s? B?c Qu?c nhi?u l?n. ? dó, Tí cung g?p ph?i nhi?u khó khan do vua B?c Qu?c và Vuong Th?a Tu?ng t?o ra nh?m ám h?i c?u và làm t?n h?i uy tín Ð?i Vi?t, th?m chí có l?n suýt chút n?a thì c?u thi?t m?ng. Tuy dã ra làm quan nhung dôi lúc c?u v?n du?c vua cho phép v? quê d? cham sóc m? và giúp d? dân làng. Và t?t nhiên, tài trí và s? giúp d? nhi?t tình t? nh?ng ngu?i b?n t?t dã giúp nh?ng ngu?i dân r?t nhi?u.')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [SoLuong], [Gia], [GiaKhuyenMai], [TacGia], [NamXuatBan], [NhaXuatBan], [Anh], [MaTheLoai], [NgayNhap], [TrangThai], [MoTa]) VALUES (47, N'Truyện Thần Đồng Đất Việt tập 143', 30, 20000, 18000, N'Lê Linh và Công ty Phan Th?', 2012, N'Nhà xuất bản Trẻ', N'Thần_Đồng_Đất_Việt_-_Tập_143_-_Thần_Dược_Tí_Hon.jpeg', 40, CAST(N'2020-04-20T00:00:00' AS SmallDateTime), 1, N'Truy?n l?y b?i c?nh là th?i H?u Lê, nhung nh?ng s? ki?n x?y ra trong truy?n không trùng l?p v?i nh?ng s? ki?n x?y ra trên th?c t?. Tuy v?y, h?u h?t nh?ng s? ki?n chính x?y ra trong Th?n Ð?ng Ð?t Vi?t d?u d?a trên nh?ng câu truy?n, di?n tích l?ch s? có th?t c?a Vi?t Nam. Tác ph?m này k? l?i nh?ng câu chuy?n v? cu?c d?i c?a Lê Tí, m?t Tr?ng nguyên c?a Ð?i Vi?t cùng v?i nh?ng ngu?i b?n thân c?a c?u là S?u ?o, D?n Béo và C? M?o. S? ra d?i c?a Tr?ng Tí cung không bình thu?ng. Ki?p tru?c c?u v?n là m?t b?c th?n tiên có ki?n th?c uyên bác trên Thiên Ðình, sau dó du?c d?u thai xu?ng tr?n gian d? giúp d? Ð?i Vi?t. M? c?a Tí là bà Hai h?u, sau khi di cày v? m?t m?i dã ng?i lên m?t hòn dá d? ngh? ngoi và có mang r?i sau dó sinh ra c?u.T? nh?, Tí dã th? hi?n mình là m?t ngu?i con hi?u th?o, ham h?c và có trí thông minh hon ngu?i. Ngay c? Ð? Ki?t, th?y d?y c?a c?u cung ph?i ng?c nhiên v? ki?n th?c c?a c?u. ? làng Phan Th?, v?i tài trí c?a mình, c?u cung dã giúp m?, các b?n c?a mình và nh?ng ngu?i dân trong làng gi?i quy?t nhi?u v?n d? khó khan. Vu?t qua ba kì thi Huong, H?i, Ðình m?t cách xu?t s?c, c?u tr? thành tr?ng nguyên nh? tu?i nh?t c?a Ð?i Vi?t. Sau dó, c?u cung du?c Ð?i Minh công nh?n là Lu?ng Qu?c Tr?ng nguyên.Tí cùng S?u, D?n và C? M?o cung dã có công l?n trong vi?c phò tr? vua Lê ch?ng l?i s? xâm lu?c c?a Ð?i Minh và d?i phó v?i các s? th?n mà Ð?i Minh c? sang. Trong tri?u dình, c?u là m?t v? quan thanh liêm chính tr?c nên du?c công chúa Phuong Thìn yêu m?n, nhung cung chính vì v?y mà c?u luôn b? T? Tu?ng Tào H?ng và nh?ng ngu?i trong gia dình là hai d?a con ông coi là cái gai trong m?t và tìm m?i cách d? h? nh?c c?u, tuy nhiên trong ph?n l?n các câu chuy?n c?u là ngu?i chi?n th?ng. Cung nh? tài trí vu?t b?c, Tr?ng Tí du?c vua tin tu?ng giao tr?ng trách di s? B?c Qu?c nhi?u l?n. ? dó, Tí cung g?p ph?i nhi?u khó khan do vua B?c Qu?c và Vuong Th?a Tu?ng t?o ra nh?m ám h?i c?u và làm t?n h?i uy tín Ð?i Vi?t, th?m chí có l?n suýt chút n?a thì c?u thi?t m?ng. Tuy dã ra làm quan nhung dôi lúc c?u v?n du?c vua cho phép v? quê d? cham sóc m? và giúp d? dân làng. Và t?t nhiên, tài trí và s? giúp d? nhi?t tình t? nh?ng ngu?i b?n t?t dã giúp nh?ng ngu?i dân r?t nhi?u.')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [SoLuong], [Gia], [GiaKhuyenMai], [TacGia], [NamXuatBan], [NhaXuatBan], [Anh], [MaTheLoai], [NgayNhap], [TrangThai], [MoTa]) VALUES (48, N'Truyện Thần Đồng Đất Việt tập 151', 30, 20000, 18000, N'Lê Linh và Công ty Phan Th?', 2012, N'Nhà xuất bản Trẻ', N'Thần_Đồng_Đất_Việt_-_Tập_151_-_Kẻ_Cắp_Nụ_Cười.jpeg', 40, CAST(N'2020-04-20T00:00:00' AS SmallDateTime), 1, N'Truy?n l?y b?i c?nh là th?i H?u Lê, nhung nh?ng s? ki?n x?y ra trong truy?n không trùng l?p v?i nh?ng s? ki?n x?y ra trên th?c t?. Tuy v?y, h?u h?t nh?ng s? ki?n chính x?y ra trong Th?n Ð?ng Ð?t Vi?t d?u d?a trên nh?ng câu truy?n, di?n tích l?ch s? có th?t c?a Vi?t Nam. Tác ph?m này k? l?i nh?ng câu chuy?n v? cu?c d?i c?a Lê Tí, m?t Tr?ng nguyên c?a Ð?i Vi?t cùng v?i nh?ng ngu?i b?n thân c?a c?u là S?u ?o, D?n Béo và C? M?o. S? ra d?i c?a Tr?ng Tí cung không bình thu?ng. Ki?p tru?c c?u v?n là m?t b?c th?n tiên có ki?n th?c uyên bác trên Thiên Ðình, sau dó du?c d?u thai xu?ng tr?n gian d? giúp d? Ð?i Vi?t. M? c?a Tí là bà Hai h?u, sau khi di cày v? m?t m?i dã ng?i lên m?t hòn dá d? ngh? ngoi và có mang r?i sau dó sinh ra c?u.T? nh?, Tí dã th? hi?n mình là m?t ngu?i con hi?u th?o, ham h?c và có trí thông minh hon ngu?i. Ngay c? Ð? Ki?t, th?y d?y c?a c?u cung ph?i ng?c nhiên v? ki?n th?c c?a c?u. ? làng Phan Th?, v?i tài trí c?a mình, c?u cung dã giúp m?, các b?n c?a mình và nh?ng ngu?i dân trong làng gi?i quy?t nhi?u v?n d? khó khan. Vu?t qua ba kì thi Huong, H?i, Ðình m?t cách xu?t s?c, c?u tr? thành tr?ng nguyên nh? tu?i nh?t c?a Ð?i Vi?t. Sau dó, c?u cung du?c Ð?i Minh công nh?n là Lu?ng Qu?c Tr?ng nguyên.Tí cùng S?u, D?n và C? M?o cung dã có công l?n trong vi?c phò tr? vua Lê ch?ng l?i s? xâm lu?c c?a Ð?i Minh và d?i phó v?i các s? th?n mà Ð?i Minh c? sang. Trong tri?u dình, c?u là m?t v? quan thanh liêm chính tr?c nên du?c công chúa Phuong Thìn yêu m?n, nhung cung chính vì v?y mà c?u luôn b? T? Tu?ng Tào H?ng và nh?ng ngu?i trong gia dình là hai d?a con ông coi là cái gai trong m?t và tìm m?i cách d? h? nh?c c?u, tuy nhiên trong ph?n l?n các câu chuy?n c?u là ngu?i chi?n th?ng. Cung nh? tài trí vu?t b?c, Tr?ng Tí du?c vua tin tu?ng giao tr?ng trách di s? B?c Qu?c nhi?u l?n. ? dó, Tí cung g?p ph?i nhi?u khó khan do vua B?c Qu?c và Vuong Th?a Tu?ng t?o ra nh?m ám h?i c?u và làm t?n h?i uy tín Ð?i Vi?t, th?m chí có l?n suýt chút n?a thì c?u thi?t m?ng. Tuy dã ra làm quan nhung dôi lúc c?u v?n du?c vua cho phép v? quê d? cham sóc m? và giúp d? dân làng. Và t?t nhiên, tài trí và s? giúp d? nhi?t tình t? nh?ng ngu?i b?n t?t dã giúp nh?ng ngu?i dân r?t nhi?u.')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [SoLuong], [Gia], [GiaKhuyenMai], [TacGia], [NamXuatBan], [NhaXuatBan], [Anh], [MaTheLoai], [NgayNhap], [TrangThai], [MoTa]) VALUES (49, N'Truyện Thần Đồng Đất Việt tập 153', 30, 20000, 18000, N'Lê Linh và Công ty Phan Th?', 2012, N'Nhà xuất bản Trẻ', N'Thần_Đồng_Đất_Việt_-_Tập_153_-_Chết_Như_Con_Rết.jpeg', 40, CAST(N'2020-04-20T00:00:00' AS SmallDateTime), 1, N'Truy?n l?y b?i c?nh là th?i H?u Lê, nhung nh?ng s? ki?n x?y ra trong truy?n không trùng l?p v?i nh?ng s? ki?n x?y ra trên th?c t?. Tuy v?y, h?u h?t nh?ng s? ki?n chính x?y ra trong Th?n Ð?ng Ð?t Vi?t d?u d?a trên nh?ng câu truy?n, di?n tích l?ch s? có th?t c?a Vi?t Nam. Tác ph?m này k? l?i nh?ng câu chuy?n v? cu?c d?i c?a Lê Tí, m?t Tr?ng nguyên c?a Ð?i Vi?t cùng v?i nh?ng ngu?i b?n thân c?a c?u là S?u ?o, D?n Béo và C? M?o. S? ra d?i c?a Tr?ng Tí cung không bình thu?ng. Ki?p tru?c c?u v?n là m?t b?c th?n tiên có ki?n th?c uyên bác trên Thiên Ðình, sau dó du?c d?u thai xu?ng tr?n gian d? giúp d? Ð?i Vi?t. M? c?a Tí là bà Hai h?u, sau khi di cày v? m?t m?i dã ng?i lên m?t hòn dá d? ngh? ngoi và có mang r?i sau dó sinh ra c?u.T? nh?, Tí dã th? hi?n mình là m?t ngu?i con hi?u th?o, ham h?c và có trí thông minh hon ngu?i. Ngay c? Ð? Ki?t, th?y d?y c?a c?u cung ph?i ng?c nhiên v? ki?n th?c c?a c?u. ? làng Phan Th?, v?i tài trí c?a mình, c?u cung dã giúp m?, các b?n c?a mình và nh?ng ngu?i dân trong làng gi?i quy?t nhi?u v?n d? khó khan. Vu?t qua ba kì thi Huong, H?i, Ðình m?t cách xu?t s?c, c?u tr? thành tr?ng nguyên nh? tu?i nh?t c?a Ð?i Vi?t. Sau dó, c?u cung du?c Ð?i Minh công nh?n là Lu?ng Qu?c Tr?ng nguyên.Tí cùng S?u, D?n và C? M?o cung dã có công l?n trong vi?c phò tr? vua Lê ch?ng l?i s? xâm lu?c c?a Ð?i Minh và d?i phó v?i các s? th?n mà Ð?i Minh c? sang. Trong tri?u dình, c?u là m?t v? quan thanh liêm chính tr?c nên du?c công chúa Phuong Thìn yêu m?n, nhung cung chính vì v?y mà c?u luôn b? T? Tu?ng Tào H?ng và nh?ng ngu?i trong gia dình là hai d?a con ông coi là cái gai trong m?t và tìm m?i cách d? h? nh?c c?u, tuy nhiên trong ph?n l?n các câu chuy?n c?u là ngu?i chi?n th?ng. Cung nh? tài trí vu?t b?c, Tr?ng Tí du?c vua tin tu?ng giao tr?ng trách di s? B?c Qu?c nhi?u l?n. ? dó, Tí cung g?p ph?i nhi?u khó khan do vua B?c Qu?c và Vuong Th?a Tu?ng t?o ra nh?m ám h?i c?u và làm t?n h?i uy tín Ð?i Vi?t, th?m chí có l?n suýt chút n?a thì c?u thi?t m?ng. Tuy dã ra làm quan nhung dôi lúc c?u v?n du?c vua cho phép v? quê d? cham sóc m? và giúp d? dân làng. Và t?t nhiên, tài trí và s? giúp d? nhi?t tình t? nh?ng ngu?i b?n t?t dã giúp nh?ng ngu?i dân r?t nhi?u.')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [SoLuong], [Gia], [GiaKhuyenMai], [TacGia], [NamXuatBan], [NhaXuatBan], [Anh], [MaTheLoai], [NgayNhap], [TrangThai], [MoTa]) VALUES (50, N'Truyện Thần Đồng Đất Việt tập 154', 30, 20000, 18000, N'Lê Linh và Công ty Phan Th?', 2012, N'Nhà xuất bản Trẻ', N'Thần_Đồng_Đất_Việt_-_Tập_154_-_Anh_Hùng_Chọi_Cỏ.jpeg', 40, CAST(N'2020-04-20T00:00:00' AS SmallDateTime), 1, N'Truy?n l?y b?i c?nh là th?i H?u Lê, nhung nh?ng s? ki?n x?y ra trong truy?n không trùng l?p v?i nh?ng s? ki?n x?y ra trên th?c t?. Tuy v?y, h?u h?t nh?ng s? ki?n chính x?y ra trong Th?n Ð?ng Ð?t Vi?t d?u d?a trên nh?ng câu truy?n, di?n tích l?ch s? có th?t c?a Vi?t Nam. Tác ph?m này k? l?i nh?ng câu chuy?n v? cu?c d?i c?a Lê Tí, m?t Tr?ng nguyên c?a Ð?i Vi?t cùng v?i nh?ng ngu?i b?n thân c?a c?u là S?u ?o, D?n Béo và C? M?o. S? ra d?i c?a Tr?ng Tí cung không bình thu?ng. Ki?p tru?c c?u v?n là m?t b?c th?n tiên có ki?n th?c uyên bác trên Thiên Ðình, sau dó du?c d?u thai xu?ng tr?n gian d? giúp d? Ð?i Vi?t. M? c?a Tí là bà Hai h?u, sau khi di cày v? m?t m?i dã ng?i lên m?t hòn dá d? ngh? ngoi và có mang r?i sau dó sinh ra c?u.T? nh?, Tí dã th? hi?n mình là m?t ngu?i con hi?u th?o, ham h?c và có trí thông minh hon ngu?i. Ngay c? Ð? Ki?t, th?y d?y c?a c?u cung ph?i ng?c nhiên v? ki?n th?c c?a c?u. ? làng Phan Th?, v?i tài trí c?a mình, c?u cung dã giúp m?, các b?n c?a mình và nh?ng ngu?i dân trong làng gi?i quy?t nhi?u v?n d? khó khan. Vu?t qua ba kì thi Huong, H?i, Ðình m?t cách xu?t s?c, c?u tr? thành tr?ng nguyên nh? tu?i nh?t c?a Ð?i Vi?t. Sau dó, c?u cung du?c Ð?i Minh công nh?n là Lu?ng Qu?c Tr?ng nguyên.Tí cùng S?u, D?n và C? M?o cung dã có công l?n trong vi?c phò tr? vua Lê ch?ng l?i s? xâm lu?c c?a Ð?i Minh và d?i phó v?i các s? th?n mà Ð?i Minh c? sang. Trong tri?u dình, c?u là m?t v? quan thanh liêm chính tr?c nên du?c công chúa Phuong Thìn yêu m?n, nhung cung chính vì v?y mà c?u luôn b? T? Tu?ng Tào H?ng và nh?ng ngu?i trong gia dình là hai d?a con ông coi là cái gai trong m?t và tìm m?i cách d? h? nh?c c?u, tuy nhiên trong ph?n l?n các câu chuy?n c?u là ngu?i chi?n th?ng. Cung nh? tài trí vu?t b?c, Tr?ng Tí du?c vua tin tu?ng giao tr?ng trách di s? B?c Qu?c nhi?u l?n. ? dó, Tí cung g?p ph?i nhi?u khó khan do vua B?c Qu?c và Vuong Th?a Tu?ng t?o ra nh?m ám h?i c?u và làm t?n h?i uy tín Ð?i Vi?t, th?m chí có l?n suýt chút n?a thì c?u thi?t m?ng. Tuy dã ra làm quan nhung dôi lúc c?u v?n du?c vua cho phép v? quê d? cham sóc m? và giúp d? dân làng. Và t?t nhiên, tài trí và s? giúp d? nhi?t tình t? nh?ng ngu?i b?n t?t dã giúp nh?ng ngu?i dân r?t nhi?u.')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [SoLuong], [Gia], [GiaKhuyenMai], [TacGia], [NamXuatBan], [NhaXuatBan], [Anh], [MaTheLoai], [NgayNhap], [TrangThai], [MoTa]) VALUES (51, N'Truyện Thần Đồng Đất Việt tập 155', 30, 20000, 18000, N'Lê Linh và Công ty Phan Th?', 2012, N'Nhà xuất bản Trẻ', N'Thần_Đồng_Đất_Việt_-_Tập_155_-_Con_Gà_Phát_Lộc.jpeg', 40, CAST(N'2020-04-20T00:00:00' AS SmallDateTime), 1, N'Truy?n l?y b?i c?nh là th?i H?u Lê, nhung nh?ng s? ki?n x?y ra trong truy?n không trùng l?p v?i nh?ng s? ki?n x?y ra trên th?c t?. Tuy v?y, h?u h?t nh?ng s? ki?n chính x?y ra trong Th?n Ð?ng Ð?t Vi?t d?u d?a trên nh?ng câu truy?n, di?n tích l?ch s? có th?t c?a Vi?t Nam. Tác ph?m này k? l?i nh?ng câu chuy?n v? cu?c d?i c?a Lê Tí, m?t Tr?ng nguyên c?a Ð?i Vi?t cùng v?i nh?ng ngu?i b?n thân c?a c?u là S?u ?o, D?n Béo và C? M?o. S? ra d?i c?a Tr?ng Tí cung không bình thu?ng. Ki?p tru?c c?u v?n là m?t b?c th?n tiên có ki?n th?c uyên bác trên Thiên Ðình, sau dó du?c d?u thai xu?ng tr?n gian d? giúp d? Ð?i Vi?t. M? c?a Tí là bà Hai h?u, sau khi di cày v? m?t m?i dã ng?i lên m?t hòn dá d? ngh? ngoi và có mang r?i sau dó sinh ra c?u.T? nh?, Tí dã th? hi?n mình là m?t ngu?i con hi?u th?o, ham h?c và có trí thông minh hon ngu?i. Ngay c? Ð? Ki?t, th?y d?y c?a c?u cung ph?i ng?c nhiên v? ki?n th?c c?a c?u. ? làng Phan Th?, v?i tài trí c?a mình, c?u cung dã giúp m?, các b?n c?a mình và nh?ng ngu?i dân trong làng gi?i quy?t nhi?u v?n d? khó khan. Vu?t qua ba kì thi Huong, H?i, Ðình m?t cách xu?t s?c, c?u tr? thành tr?ng nguyên nh? tu?i nh?t c?a Ð?i Vi?t. Sau dó, c?u cung du?c Ð?i Minh công nh?n là Lu?ng Qu?c Tr?ng nguyên.Tí cùng S?u, D?n và C? M?o cung dã có công l?n trong vi?c phò tr? vua Lê ch?ng l?i s? xâm lu?c c?a Ð?i Minh và d?i phó v?i các s? th?n mà Ð?i Minh c? sang. Trong tri?u dình, c?u là m?t v? quan thanh liêm chính tr?c nên du?c công chúa Phuong Thìn yêu m?n, nhung cung chính vì v?y mà c?u luôn b? T? Tu?ng Tào H?ng và nh?ng ngu?i trong gia dình là hai d?a con ông coi là cái gai trong m?t và tìm m?i cách d? h? nh?c c?u, tuy nhiên trong ph?n l?n các câu chuy?n c?u là ngu?i chi?n th?ng. Cung nh? tài trí vu?t b?c, Tr?ng Tí du?c vua tin tu?ng giao tr?ng trách di s? B?c Qu?c nhi?u l?n. ? dó, Tí cung g?p ph?i nhi?u khó khan do vua B?c Qu?c và Vuong Th?a Tu?ng t?o ra nh?m ám h?i c?u và làm t?n h?i uy tín Ð?i Vi?t, th?m chí có l?n suýt chút n?a thì c?u thi?t m?ng. Tuy dã ra làm quan nhung dôi lúc c?u v?n du?c vua cho phép v? quê d? cham sóc m? và giúp d? dân làng. Và t?t nhiên, tài trí và s? giúp d? nhi?t tình t? nh?ng ngu?i b?n t?t dã giúp nh?ng ngu?i dân r?t nhi?u.')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [SoLuong], [Gia], [GiaKhuyenMai], [TacGia], [NamXuatBan], [NhaXuatBan], [Anh], [MaTheLoai], [NgayNhap], [TrangThai], [MoTa]) VALUES (52, N'Truyện Thần Đồng Đất Việt tập 156', 30, 20000, 18000, N'Lê Linh và Công ty Phan Th?', 2012, N'Nhà xuất bản Trẻ', N'Thần_Đồng_Đất_Việt_-_Tập_156_-_Chiếc_Vòng_Pháp_Thuật.jpeg', 40, CAST(N'2020-04-20T00:00:00' AS SmallDateTime), 1, N'Truy?n l?y b?i c?nh là th?i H?u Lê, nhung nh?ng s? ki?n x?y ra trong truy?n không trùng l?p v?i nh?ng s? ki?n x?y ra trên th?c t?. Tuy v?y, h?u h?t nh?ng s? ki?n chính x?y ra trong Th?n Ð?ng Ð?t Vi?t d?u d?a trên nh?ng câu truy?n, di?n tích l?ch s? có th?t c?a Vi?t Nam. Tác ph?m này k? l?i nh?ng câu chuy?n v? cu?c d?i c?a Lê Tí, m?t Tr?ng nguyên c?a Ð?i Vi?t cùng v?i nh?ng ngu?i b?n thân c?a c?u là S?u ?o, D?n Béo và C? M?o. S? ra d?i c?a Tr?ng Tí cung không bình thu?ng. Ki?p tru?c c?u v?n là m?t b?c th?n tiên có ki?n th?c uyên bác trên Thiên Ðình, sau dó du?c d?u thai xu?ng tr?n gian d? giúp d? Ð?i Vi?t. M? c?a Tí là bà Hai h?u, sau khi di cày v? m?t m?i dã ng?i lên m?t hòn dá d? ngh? ngoi và có mang r?i sau dó sinh ra c?u.T? nh?, Tí dã th? hi?n mình là m?t ngu?i con hi?u th?o, ham h?c và có trí thông minh hon ngu?i. Ngay c? Ð? Ki?t, th?y d?y c?a c?u cung ph?i ng?c nhiên v? ki?n th?c c?a c?u. ? làng Phan Th?, v?i tài trí c?a mình, c?u cung dã giúp m?, các b?n c?a mình và nh?ng ngu?i dân trong làng gi?i quy?t nhi?u v?n d? khó khan. Vu?t qua ba kì thi Huong, H?i, Ðình m?t cách xu?t s?c, c?u tr? thành tr?ng nguyên nh? tu?i nh?t c?a Ð?i Vi?t. Sau dó, c?u cung du?c Ð?i Minh công nh?n là Lu?ng Qu?c Tr?ng nguyên.Tí cùng S?u, D?n và C? M?o cung dã có công l?n trong vi?c phò tr? vua Lê ch?ng l?i s? xâm lu?c c?a Ð?i Minh và d?i phó v?i các s? th?n mà Ð?i Minh c? sang. Trong tri?u dình, c?u là m?t v? quan thanh liêm chính tr?c nên du?c công chúa Phuong Thìn yêu m?n, nhung cung chính vì v?y mà c?u luôn b? T? Tu?ng Tào H?ng và nh?ng ngu?i trong gia dình là hai d?a con ông coi là cái gai trong m?t và tìm m?i cách d? h? nh?c c?u, tuy nhiên trong ph?n l?n các câu chuy?n c?u là ngu?i chi?n th?ng. Cung nh? tài trí vu?t b?c, Tr?ng Tí du?c vua tin tu?ng giao tr?ng trách di s? B?c Qu?c nhi?u l?n. ? dó, Tí cung g?p ph?i nhi?u khó khan do vua B?c Qu?c và Vuong Th?a Tu?ng t?o ra nh?m ám h?i c?u và làm t?n h?i uy tín Ð?i Vi?t, th?m chí có l?n suýt chút n?a thì c?u thi?t m?ng. Tuy dã ra làm quan nhung dôi lúc c?u v?n du?c vua cho phép v? quê d? cham sóc m? và giúp d? dân làng. Và t?t nhiên, tài trí và s? giúp d? nhi?t tình t? nh?ng ngu?i b?n t?t dã giúp nh?ng ngu?i dân r?t nhi?u.')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [SoLuong], [Gia], [GiaKhuyenMai], [TacGia], [NamXuatBan], [NhaXuatBan], [Anh], [MaTheLoai], [NgayNhap], [TrangThai], [MoTa]) VALUES (53, N'Truyện Thần Đồng Đất Việt tập 148', 30, 20000, 18000, N'Lê Linh và Công ty Phan Th?', 2012, N'Nhà xuất bản Trẻ', N'Thần_Đồng_Đất_Việt_Khoa_Học_-_Tập_148_-_Khỉ_Gió_Đầu_Năm.jpeg', 40, CAST(N'2020-04-20T00:00:00' AS SmallDateTime), 1, N'Truy?n l?y b?i c?nh là th?i H?u Lê, nhung nh?ng s? ki?n x?y ra trong truy?n không trùng l?p v?i nh?ng s? ki?n x?y ra trên th?c t?. Tuy v?y, h?u h?t nh?ng s? ki?n chính x?y ra trong Th?n Ð?ng Ð?t Vi?t d?u d?a trên nh?ng câu truy?n, di?n tích l?ch s? có th?t c?a Vi?t Nam. Tác ph?m này k? l?i nh?ng câu chuy?n v? cu?c d?i c?a Lê Tí, m?t Tr?ng nguyên c?a Ð?i Vi?t cùng v?i nh?ng ngu?i b?n thân c?a c?u là S?u ?o, D?n Béo và C? M?o. S? ra d?i c?a Tr?ng Tí cung không bình thu?ng. Ki?p tru?c c?u v?n là m?t b?c th?n tiên có ki?n th?c uyên bác trên Thiên Ðình, sau dó du?c d?u thai xu?ng tr?n gian d? giúp d? Ð?i Vi?t. M? c?a Tí là bà Hai h?u, sau khi di cày v? m?t m?i dã ng?i lên m?t hòn dá d? ngh? ngoi và có mang r?i sau dó sinh ra c?u.T? nh?, Tí dã th? hi?n mình là m?t ngu?i con hi?u th?o, ham h?c và có trí thông minh hon ngu?i. Ngay c? Ð? Ki?t, th?y d?y c?a c?u cung ph?i ng?c nhiên v? ki?n th?c c?a c?u. ? làng Phan Th?, v?i tài trí c?a mình, c?u cung dã giúp m?, các b?n c?a mình và nh?ng ngu?i dân trong làng gi?i quy?t nhi?u v?n d? khó khan. Vu?t qua ba kì thi Huong, H?i, Ðình m?t cách xu?t s?c, c?u tr? thành tr?ng nguyên nh? tu?i nh?t c?a Ð?i Vi?t. Sau dó, c?u cung du?c Ð?i Minh công nh?n là Lu?ng Qu?c Tr?ng nguyên.Tí cùng S?u, D?n và C? M?o cung dã có công l?n trong vi?c phò tr? vua Lê ch?ng l?i s? xâm lu?c c?a Ð?i Minh và d?i phó v?i các s? th?n mà Ð?i Minh c? sang. Trong tri?u dình, c?u là m?t v? quan thanh liêm chính tr?c nên du?c công chúa Phuong Thìn yêu m?n, nhung cung chính vì v?y mà c?u luôn b? T? Tu?ng Tào H?ng và nh?ng ngu?i trong gia dình là hai d?a con ông coi là cái gai trong m?t và tìm m?i cách d? h? nh?c c?u, tuy nhiên trong ph?n l?n các câu chuy?n c?u là ngu?i chi?n th?ng. Cung nh? tài trí vu?t b?c, Tr?ng Tí du?c vua tin tu?ng giao tr?ng trách di s? B?c Qu?c nhi?u l?n. ? dó, Tí cung g?p ph?i nhi?u khó khan do vua B?c Qu?c và Vuong Th?a Tu?ng t?o ra nh?m ám h?i c?u và làm t?n h?i uy tín Ð?i Vi?t, th?m chí có l?n suýt chút n?a thì c?u thi?t m?ng. Tuy dã ra làm quan nhung dôi lúc c?u v?n du?c vua cho phép v? quê d? cham sóc m? và giúp d? dân làng. Và t?t nhiên, tài trí và s? giúp d? nhi?t tình t? nh?ng ngu?i b?n t?t dã giúp nh?ng ngu?i dân r?t nhi?u.')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [SoLuong], [Gia], [GiaKhuyenMai], [TacGia], [NamXuatBan], [NhaXuatBan], [Anh], [MaTheLoai], [NgayNhap], [TrangThai], [MoTa]) VALUES (54, N'Truyện Thần Đồng Đất Việt tập 66', 30, 20000, 18000, N'Lê Linh và Công ty Phan Th?', 2012, N'Nhà xuất bản Trẻ', N'Thần_Đồng_Đất_Việt_Mỹ_Thuật_-_Tập_66_-_Bức_Tranh_Vĩ_Đại__1_.jpeg', 40, CAST(N'2020-04-20T00:00:00' AS SmallDateTime), 1, N'Truy?n l?y b?i c?nh là th?i H?u Lê, nhung nh?ng s? ki?n x?y ra trong truy?n không trùng l?p v?i nh?ng s? ki?n x?y ra trên th?c t?. Tuy v?y, h?u h?t nh?ng s? ki?n chính x?y ra trong Th?n Ð?ng Ð?t Vi?t d?u d?a trên nh?ng câu truy?n, di?n tích l?ch s? có th?t c?a Vi?t Nam. Tác ph?m này k? l?i nh?ng câu chuy?n v? cu?c d?i c?a Lê Tí, m?t Tr?ng nguyên c?a Ð?i Vi?t cùng v?i nh?ng ngu?i b?n thân c?a c?u là S?u ?o, D?n Béo và C? M?o. S? ra d?i c?a Tr?ng Tí cung không bình thu?ng. Ki?p tru?c c?u v?n là m?t b?c th?n tiên có ki?n th?c uyên bác trên Thiên Ðình, sau dó du?c d?u thai xu?ng tr?n gian d? giúp d? Ð?i Vi?t. M? c?a Tí là bà Hai h?u, sau khi di cày v? m?t m?i dã ng?i lên m?t hòn dá d? ngh? ngoi và có mang r?i sau dó sinh ra c?u.T? nh?, Tí dã th? hi?n mình là m?t ngu?i con hi?u th?o, ham h?c và có trí thông minh hon ngu?i. Ngay c? Ð? Ki?t, th?y d?y c?a c?u cung ph?i ng?c nhiên v? ki?n th?c c?a c?u. ? làng Phan Th?, v?i tài trí c?a mình, c?u cung dã giúp m?, các b?n c?a mình và nh?ng ngu?i dân trong làng gi?i quy?t nhi?u v?n d? khó khan. Vu?t qua ba kì thi Huong, H?i, Ðình m?t cách xu?t s?c, c?u tr? thành tr?ng nguyên nh? tu?i nh?t c?a Ð?i Vi?t. Sau dó, c?u cung du?c Ð?i Minh công nh?n là Lu?ng Qu?c Tr?ng nguyên.Tí cùng S?u, D?n và C? M?o cung dã có công l?n trong vi?c phò tr? vua Lê ch?ng l?i s? xâm lu?c c?a Ð?i Minh và d?i phó v?i các s? th?n mà Ð?i Minh c? sang. Trong tri?u dình, c?u là m?t v? quan thanh liêm chính tr?c nên du?c công chúa Phuong Thìn yêu m?n, nhung cung chính vì v?y mà c?u luôn b? T? Tu?ng Tào H?ng và nh?ng ngu?i trong gia dình là hai d?a con ông coi là cái gai trong m?t và tìm m?i cách d? h? nh?c c?u, tuy nhiên trong ph?n l?n các câu chuy?n c?u là ngu?i chi?n th?ng. Cung nh? tài trí vu?t b?c, Tr?ng Tí du?c vua tin tu?ng giao tr?ng trách di s? B?c Qu?c nhi?u l?n. ? dó, Tí cung g?p ph?i nhi?u khó khan do vua B?c Qu?c và Vuong Th?a Tu?ng t?o ra nh?m ám h?i c?u và làm t?n h?i uy tín Ð?i Vi?t, th?m chí có l?n suýt chút n?a thì c?u thi?t m?ng. Tuy dã ra làm quan nhung dôi lúc c?u v?n du?c vua cho phép v? quê d? cham sóc m? và giúp d? dân làng. Và t?t nhiên, tài trí và s? giúp d? nhi?t tình t? nh?ng ngu?i b?n t?t dã giúp nh?ng ngu?i dân r?t nhi?u.')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [SoLuong], [Gia], [GiaKhuyenMai], [TacGia], [NamXuatBan], [NhaXuatBan], [Anh], [MaTheLoai], [NgayNhap], [TrangThai], [MoTa]) VALUES (55, N'Cu lao tràm', 20, 34000, 30000, N'Nguyễn Mạnh Tuấn', 2010, N'Hà Nội', N'image__36__q8oa-sb.jpeg', 16, CAST(N'2020-04-21T00:00:00' AS SmallDateTime), 1, N'Nhi?t h?ng sáng tác Cù Lao Chàm c?a Nguy?n M?nh Tu?n tru?c h?t là t?o nên m?t tác ph?m có ích hon là m?t áng van d?p. Ðu?c in l?n d?u v?i s? lu?ng l?n, Cù Lao Chàm v?n dang là cu?n sách khó tìm. Du lu?n hu?ng ?ng cu?n sách dang tang lên. Có lu?ng ý ki?n c? vu, tán d?ng, l?i cung dang d?y lên lu?ng ý ki?n ph?n bác.Câu chuy?n c?a Cù Lao Chàm du?c k? t? vai chính Nam Trà. Tác ph?m không ch? nói v? b?n thành tích c?a m?t n? bí thu trong vi?c xây d?ng l?i nông thôn sau chi?n tranh nh?ng nam 80 mà còn là di?n dàn phát ngôn v? nhi?u v?n d? phát tri?n kinh t?, t? ch?c d?i s?ng làng xã, v? dào t?o và s? d?ng cán b?, v? ph?m ch?t và nang l?c, nhân cách và l?i s?ng c?a ngu?i cán b? trong di?u ki?n Ð?ng c?m quy?n.Trong Cù Lao Chàm không ch? dày d?c các chuy?n, các v? vi?c mà còn dày d?c nh?ng suy nghi, ý ki?n, bi?n lu?n. Ð?c vào nh?ng phát bi?u và suy nghi khá dài l?i c?a các nhân v?t mà tác gi? uu ái và chia s? quan ni?m (Nam Trà, Mu?i Tân, Ba Nang, Ba Tài…), không ít ngu?i s? cho dó là nh?ng do?n chính lu?n ngo?i d? không th?t c?n thi?t cho câu chuy?n. Nhung d?y l?i là thu?c d?ng ý c?a ngu?i vi?t. Có th? dây là m?t l?i khí cho tác gi? khi ph?i d?ng d?n nh?ng di?u không d? nói ra ? m?t xã h?i còn n?ng gia tru?ng lúc b?y gi?.V?i t?t c? s? t? tin, t? ch?, tác gi? h?u nhu dã hóa thân vào nhân v?t chính, vào vai m?t cán b? qu?n lý xông xáo, lan mình vào công vi?c d? t? ch? d?ng c?a ngu?i cán b? trong cu?c mà d? xu?t các v?n d? kinh t? xã h?i. Thành công thuong m?i mà tác ph?m Cù Lao Chàm c?a Nguy?n M?nh Tu?n có du?c là s? d?n bù x?ng dáng cho phuong hu?ng nh?p cu?c c?a tác gi?.')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [SoLuong], [Gia], [GiaKhuyenMai], [TacGia], [NamXuatBan], [NhaXuatBan], [Anh], [MaTheLoai], [NgayNhap], [TrangThai], [MoTa]) VALUES (56, N'Những Người Đà Bà', 20, 34000, 30000, N'Nguyễn Mạnh Tuấn', 2010, N'Hà Nội', N'image__36__zhya-t0.jpeg', 16, CAST(N'2020-04-21T00:00:00' AS SmallDateTime), 1, N'Nhi?t h?ng sáng tác Cù Lao Chàm c?a Nguy?n M?nh Tu?n tru?c h?t là t?o nên m?t tác ph?m có ích hon là m?t áng van d?p. Ðu?c in l?n d?u v?i s? lu?ng l?n, Cù Lao Chàm v?n dang là cu?n sách khó tìm. Du lu?n hu?ng ?ng cu?n sách dang tang lên. Có lu?ng ý ki?n c? vu, tán d?ng, l?i cung dang d?y lên lu?ng ý ki?n ph?n bác.Câu chuy?n c?a Cù Lao Chàm du?c k? t? vai chính Nam Trà. Tác ph?m không ch? nói v? b?n thành tích c?a m?t n? bí thu trong vi?c xây d?ng l?i nông thôn sau chi?n tranh nh?ng nam 80 mà còn là di?n dàn phát ngôn v? nhi?u v?n d? phát tri?n kinh t?, t? ch?c d?i s?ng làng xã, v? dào t?o và s? d?ng cán b?, v? ph?m ch?t và nang l?c, nhân cách và l?i s?ng c?a ngu?i cán b? trong di?u ki?n Ð?ng c?m quy?n.Trong Cù Lao Chàm không ch? dày d?c các chuy?n, các v? vi?c mà còn dày d?c nh?ng suy nghi, ý ki?n, bi?n lu?n. Ð?c vào nh?ng phát bi?u và suy nghi khá dài l?i c?a các nhân v?t mà tác gi? uu ái và chia s? quan ni?m (Nam Trà, Mu?i Tân, Ba Nang, Ba Tài…), không ít ngu?i s? cho dó là nh?ng do?n chính lu?n ngo?i d? không th?t c?n thi?t cho câu chuy?n. Nhung d?y l?i là thu?c d?ng ý c?a ngu?i vi?t. Có th? dây là m?t l?i khí cho tác gi? khi ph?i d?ng d?n nh?ng di?u không d? nói ra ? m?t xã h?i còn n?ng gia tru?ng lúc b?y gi?.V?i t?t c? s? t? tin, t? ch?, tác gi? h?u nhu dã hóa thân vào nhân v?t chính, vào vai m?t cán b? qu?n lý xông xáo, lan mình vào công vi?c d? t? ch? d?ng c?a ngu?i cán b? trong cu?c mà d? xu?t các v?n d? kinh t? xã h?i. Thành công thuong m?i mà tác ph?m Cù Lao Chàm c?a Nguy?n M?nh Tu?n có du?c là s? d?n bù x?ng dáng cho phuong hu?ng nh?p cu?c c?a tác gi?.')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [SoLuong], [Gia], [GiaKhuyenMai], [TacGia], [NamXuatBan], [NhaXuatBan], [Anh], [MaTheLoai], [NgayNhap], [TrangThai], [MoTa]) VALUES (57, N'Mộng Vân Tập', 20, 34000, 30000, N'Nguyễn Kiều Oanh', 2010, N'Sài Gòn', N'image__48__ox3u-r8.jpeg', 16, CAST(N'2020-04-21T00:00:00' AS SmallDateTime), 1, N'Nhi?t h?ng sáng tác Cù Lao Chàm c?a Nguy?n M?nh Tu?n tru?c h?t là t?o nên m?t tác ph?m có ích hon là m?t áng van d?p. Ðu?c in l?n d?u v?i s? lu?ng l?n, Cù Lao Chàm v?n dang là cu?n sách khó tìm. Du lu?n hu?ng ?ng cu?n sách dang tang lên. Có lu?ng ý ki?n c? vu, tán d?ng, l?i cung dang d?y lên lu?ng ý ki?n ph?n bác.Câu chuy?n c?a Cù Lao Chàm du?c k? t? vai chính Nam Trà. Tác ph?m không ch? nói v? b?n thành tích c?a m?t n? bí thu trong vi?c xây d?ng l?i nông thôn sau chi?n tranh nh?ng nam 80 mà còn là di?n dàn phát ngôn v? nhi?u v?n d? phát tri?n kinh t?, t? ch?c d?i s?ng làng xã, v? dào t?o và s? d?ng cán b?, v? ph?m ch?t và nang l?c, nhân cách và l?i s?ng c?a ngu?i cán b? trong di?u ki?n Ð?ng c?m quy?n.Trong Cù Lao Chàm không ch? dày d?c các chuy?n, các v? vi?c mà còn dày d?c nh?ng suy nghi, ý ki?n, bi?n lu?n. Ð?c vào nh?ng phát bi?u và suy nghi khá dài l?i c?a các nhân v?t mà tác gi? uu ái và chia s? quan ni?m (Nam Trà, Mu?i Tân, Ba Nang, Ba Tài…), không ít ngu?i s? cho dó là nh?ng do?n chính lu?n ngo?i d? không th?t c?n thi?t cho câu chuy?n. Nhung d?y l?i là thu?c d?ng ý c?a ngu?i vi?t. Có th? dây là m?t l?i khí cho tác gi? khi ph?i d?ng d?n nh?ng di?u không d? nói ra ? m?t xã h?i còn n?ng gia tru?ng lúc b?y gi?.V?i t?t c? s? t? tin, t? ch?, tác gi? h?u nhu dã hóa thân vào nhân v?t chính, vào vai m?t cán b? qu?n lý xông xáo, lan mình vào công vi?c d? t? ch? d?ng c?a ngu?i cán b? trong cu?c mà d? xu?t các v?n d? kinh t? xã h?i. Thành công thuong m?i mà tác ph?m Cù Lao Chàm c?a Nguy?n M?nh Tu?n có du?c là s? d?n bù x?ng dáng cho phuong hu?ng nh?p cu?c c?a tác gi?.')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [SoLuong], [Gia], [GiaKhuyenMai], [TacGia], [NamXuatBan], [NhaXuatBan], [Anh], [MaTheLoai], [NgayNhap], [TrangThai], [MoTa]) VALUES (58, N'Gìn Giữ Cho Nhau', 20, 34000, 30000, N'Nguyễn Kiều Oanh', 2010, N'Sài Gòn', N'image__64__y0ab-66.jpeg', 16, CAST(N'2020-04-21T00:00:00' AS SmallDateTime), 1, N'Nhi?t h?ng sáng tác Cù Lao Chàm c?a Nguy?n M?nh Tu?n tru?c h?t là t?o nên m?t tác ph?m có ích hon là m?t áng van d?p. Ðu?c in l?n d?u v?i s? lu?ng l?n, Cù Lao Chàm v?n dang là cu?n sách khó tìm. Du lu?n hu?ng ?ng cu?n sách dang tang lên. Có lu?ng ý ki?n c? vu, tán d?ng, l?i cung dang d?y lên lu?ng ý ki?n ph?n bác.Câu chuy?n c?a Cù Lao Chàm du?c k? t? vai chính Nam Trà. Tác ph?m không ch? nói v? b?n thành tích c?a m?t n? bí thu trong vi?c xây d?ng l?i nông thôn sau chi?n tranh nh?ng nam 80 mà còn là di?n dàn phát ngôn v? nhi?u v?n d? phát tri?n kinh t?, t? ch?c d?i s?ng làng xã, v? dào t?o và s? d?ng cán b?, v? ph?m ch?t và nang l?c, nhân cách và l?i s?ng c?a ngu?i cán b? trong di?u ki?n Ð?ng c?m quy?n.Trong Cù Lao Chàm không ch? dày d?c các chuy?n, các v? vi?c mà còn dày d?c nh?ng suy nghi, ý ki?n, bi?n lu?n. Ð?c vào nh?ng phát bi?u và suy nghi khá dài l?i c?a các nhân v?t mà tác gi? uu ái và chia s? quan ni?m (Nam Trà, Mu?i Tân, Ba Nang, Ba Tài…), không ít ngu?i s? cho dó là nh?ng do?n chính lu?n ngo?i d? không th?t c?n thi?t cho câu chuy?n. Nhung d?y l?i là thu?c d?ng ý c?a ngu?i vi?t. Có th? dây là m?t l?i khí cho tác gi? khi ph?i d?ng d?n nh?ng di?u không d? nói ra ? m?t xã h?i còn n?ng gia tru?ng lúc b?y gi?.V?i t?t c? s? t? tin, t? ch?, tác gi? h?u nhu dã hóa thân vào nhân v?t chính, vào vai m?t cán b? qu?n lý xông xáo, lan mình vào công vi?c d? t? ch? d?ng c?a ngu?i cán b? trong cu?c mà d? xu?t các v?n d? kinh t? xã h?i. Thành công thuong m?i mà tác ph?m Cù Lao Chàm c?a Nguy?n M?nh Tu?n có du?c là s? d?n bù x?ng dáng cho phuong hu?ng nh?p cu?c c?a tác gi?.')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [SoLuong], [Gia], [GiaKhuyenMai], [TacGia], [NamXuatBan], [NhaXuatBan], [Anh], [MaTheLoai], [NgayNhap], [TrangThai], [MoTa]) VALUES (59, N'Sơn Nam', 20, 35000, 30000, N'Hồ Mình Sang', 2010, N'Kim Đồng', N'image__77__z68o-f4.jpeg', 16, CAST(N'2020-04-21T00:00:00' AS SmallDateTime), 1, N'Nhi?t h?ng sáng tác Cù Lao Chàm c?a Nguy?n M?nh Tu?n tru?c h?t là t?o nên m?t tác ph?m có ích hon là m?t áng van d?p. Ðu?c in l?n d?u v?i s? lu?ng l?n, Cù Lao Chàm v?n dang là cu?n sách khó tìm. Du lu?n hu?ng ?ng cu?n sách dang tang lên. Có lu?ng ý ki?n c? vu, tán d?ng, l?i cung dang d?y lên lu?ng ý ki?n ph?n bác.Câu chuy?n c?a Cù Lao Chàm du?c k? t? vai chính Nam Trà. Tác ph?m không ch? nói v? b?n thành tích c?a m?t n? bí thu trong vi?c xây d?ng l?i nông thôn sau chi?n tranh nh?ng nam 80 mà còn là di?n dàn phát ngôn v? nhi?u v?n d? phát tri?n kinh t?, t? ch?c d?i s?ng làng xã, v? dào t?o và s? d?ng cán b?, v? ph?m ch?t và nang l?c, nhân cách và l?i s?ng c?a ngu?i cán b? trong di?u ki?n Ð?ng c?m quy?n.Trong Cù Lao Chàm không ch? dày d?c các chuy?n, các v? vi?c mà còn dày d?c nh?ng suy nghi, ý ki?n, bi?n lu?n. Ð?c vào nh?ng phát bi?u và suy nghi khá dài l?i c?a các nhân v?t mà tác gi? uu ái và chia s? quan ni?m (Nam Trà, Mu?i Tân, Ba Nang, Ba Tài…), không ít ngu?i s? cho dó là nh?ng do?n chính lu?n ngo?i d? không th?t c?n thi?t cho câu chuy?n. Nhung d?y l?i là thu?c d?ng ý c?a ngu?i vi?t. Có th? dây là m?t l?i khí cho tác gi? khi ph?i d?ng d?n nh?ng di?u không d? nói ra ? m?t xã h?i còn n?ng gia tru?ng lúc b?y gi?.V?i t?t c? s? t? tin, t? ch?, tác gi? h?u nhu dã hóa thân vào nhân v?t chính, vào vai m?t cán b? qu?n lý xông xáo, lan mình vào công vi?c d? t? ch? d?ng c?a ngu?i cán b? trong cu?c mà d? xu?t các v?n d? kinh t? xã h?i. Thành công thuong m?i mà tác ph?m Cù Lao Chàm c?a Nguy?n M?nh Tu?n có du?c là s? d?n bù x?ng dáng cho phuong hu?ng nh?p cu?c c?a tác gi?.')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [SoLuong], [Gia], [GiaKhuyenMai], [TacGia], [NamXuatBan], [NhaXuatBan], [Anh], [MaTheLoai], [NgayNhap], [TrangThai], [MoTa]) VALUES (60, N'Giai Nhân Di Mặc', 20, 31000, 20000, N'Hồ Mình Sang', 2010, N'Kim Đồng', N'image_190890.jpg', 16, CAST(N'2020-04-21T00:00:00' AS SmallDateTime), 1, N'Nhi?t h?ng sáng tác Cù Lao Chàm c?a Nguy?n M?nh Tu?n tru?c h?t là t?o nên m?t tác ph?m có ích hon là m?t áng van d?p. Ðu?c in l?n d?u v?i s? lu?ng l?n, Cù Lao Chàm v?n dang là cu?n sách khó tìm. Du lu?n hu?ng ?ng cu?n sách dang tang lên. Có lu?ng ý ki?n c? vu, tán d?ng, l?i cung dang d?y lên lu?ng ý ki?n ph?n bác.Câu chuy?n c?a Cù Lao Chàm du?c k? t? vai chính Nam Trà. Tác ph?m không ch? nói v? b?n thành tích c?a m?t n? bí thu trong vi?c xây d?ng l?i nông thôn sau chi?n tranh nh?ng nam 80 mà còn là di?n dàn phát ngôn v? nhi?u v?n d? phát tri?n kinh t?, t? ch?c d?i s?ng làng xã, v? dào t?o và s? d?ng cán b?, v? ph?m ch?t và nang l?c, nhân cách và l?i s?ng c?a ngu?i cán b? trong di?u ki?n Ð?ng c?m quy?n.Trong Cù Lao Chàm không ch? dày d?c các chuy?n, các v? vi?c mà còn dày d?c nh?ng suy nghi, ý ki?n, bi?n lu?n. Ð?c vào nh?ng phát bi?u và suy nghi khá dài l?i c?a các nhân v?t mà tác gi? uu ái và chia s? quan ni?m (Nam Trà, Mu?i Tân, Ba Nang, Ba Tài…), không ít ngu?i s? cho dó là nh?ng do?n chính lu?n ngo?i d? không th?t c?n thi?t cho câu chuy?n. Nhung d?y l?i là thu?c d?ng ý c?a ngu?i vi?t. Có th? dây là m?t l?i khí cho tác gi? khi ph?i d?ng d?n nh?ng di?u không d? nói ra ? m?t xã h?i còn n?ng gia tru?ng lúc b?y gi?.V?i t?t c? s? t? tin, t? ch?, tác gi? h?u nhu dã hóa thân vào nhân v?t chính, vào vai m?t cán b? qu?n lý xông xáo, lan mình vào công vi?c d? t? ch? d?ng c?a ngu?i cán b? trong cu?c mà d? xu?t các v?n d? kinh t? xã h?i. Thành công thuong m?i mà tác ph?m Cù Lao Chàm c?a Nguy?n M?nh Tu?n có du?c là s? d?n bù x?ng dáng cho phuong hu?ng nh?p cu?c c?a tác gi?.')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [SoLuong], [Gia], [GiaKhuyenMai], [TacGia], [NamXuatBan], [NhaXuatBan], [Anh], [MaTheLoai], [NgayNhap], [TrangThai], [MoTa]) VALUES (61, N'Kinh Thi Việt Nam', 20, 31000, 20000, N'Hồ Mình Sang', 2010, N'Kim Đồng', N'image_190891.jpg', 16, CAST(N'2020-04-21T00:00:00' AS SmallDateTime), 1, N'Nhi?t h?ng sáng tác Cù Lao Chàm c?a Nguy?n M?nh Tu?n tru?c h?t là t?o nên m?t tác ph?m có ích hon là m?t áng van d?p. Ðu?c in l?n d?u v?i s? lu?ng l?n, Cù Lao Chàm v?n dang là cu?n sách khó tìm. Du lu?n hu?ng ?ng cu?n sách dang tang lên. Có lu?ng ý ki?n c? vu, tán d?ng, l?i cung dang d?y lên lu?ng ý ki?n ph?n bác.Câu chuy?n c?a Cù Lao Chàm du?c k? t? vai chính Nam Trà. Tác ph?m không ch? nói v? b?n thành tích c?a m?t n? bí thu trong vi?c xây d?ng l?i nông thôn sau chi?n tranh nh?ng nam 80 mà còn là di?n dàn phát ngôn v? nhi?u v?n d? phát tri?n kinh t?, t? ch?c d?i s?ng làng xã, v? dào t?o và s? d?ng cán b?, v? ph?m ch?t và nang l?c, nhân cách và l?i s?ng c?a ngu?i cán b? trong di?u ki?n Ð?ng c?m quy?n.Trong Cù Lao Chàm không ch? dày d?c các chuy?n, các v? vi?c mà còn dày d?c nh?ng suy nghi, ý ki?n, bi?n lu?n. Ð?c vào nh?ng phát bi?u và suy nghi khá dài l?i c?a các nhân v?t mà tác gi? uu ái và chia s? quan ni?m (Nam Trà, Mu?i Tân, Ba Nang, Ba Tài…), không ít ngu?i s? cho dó là nh?ng do?n chính lu?n ngo?i d? không th?t c?n thi?t cho câu chuy?n. Nhung d?y l?i là thu?c d?ng ý c?a ngu?i vi?t. Có th? dây là m?t l?i khí cho tác gi? khi ph?i d?ng d?n nh?ng di?u không d? nói ra ? m?t xã h?i còn n?ng gia tru?ng lúc b?y gi?.V?i t?t c? s? t? tin, t? ch?, tác gi? h?u nhu dã hóa thân vào nhân v?t chính, vào vai m?t cán b? qu?n lý xông xáo, lan mình vào công vi?c d? t? ch? d?ng c?a ngu?i cán b? trong cu?c mà d? xu?t các v?n d? kinh t? xã h?i. Thành công thuong m?i mà tác ph?m Cù Lao Chàm c?a Nguy?n M?nh Tu?n có du?c là s? d?n bù x?ng dáng cho phuong hu?ng nh?p cu?c c?a tác gi?.')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [SoLuong], [Gia], [GiaKhuyenMai], [TacGia], [NamXuatBan], [NhaXuatBan], [Anh], [MaTheLoai], [NgayNhap], [TrangThai], [MoTa]) VALUES (62, N'Tiểu Luận Về Bắc Kỳ', 20, 31000, 20000, N'Lê Thị Thùy', 2010, N'Hà Nội', N'image_195509_1_34205.jpg', 16, CAST(N'2020-04-21T00:00:00' AS SmallDateTime), 1, N'Nhi?t h?ng sáng tác Cù Lao Chàm c?a Nguy?n M?nh Tu?n tru?c h?t là t?o nên m?t tác ph?m có ích hon là m?t áng van d?p. Ðu?c in l?n d?u v?i s? lu?ng l?n, Cù Lao Chàm v?n dang là cu?n sách khó tìm. Du lu?n hu?ng ?ng cu?n sách dang tang lên. Có lu?ng ý ki?n c? vu, tán d?ng, l?i cung dang d?y lên lu?ng ý ki?n ph?n bác.Câu chuy?n c?a Cù Lao Chàm du?c k? t? vai chính Nam Trà. Tác ph?m không ch? nói v? b?n thành tích c?a m?t n? bí thu trong vi?c xây d?ng l?i nông thôn sau chi?n tranh nh?ng nam 80 mà còn là di?n dàn phát ngôn v? nhi?u v?n d? phát tri?n kinh t?, t? ch?c d?i s?ng làng xã, v? dào t?o và s? d?ng cán b?, v? ph?m ch?t và nang l?c, nhân cách và l?i s?ng c?a ngu?i cán b? trong di?u ki?n Ð?ng c?m quy?n.Trong Cù Lao Chàm không ch? dày d?c các chuy?n, các v? vi?c mà còn dày d?c nh?ng suy nghi, ý ki?n, bi?n lu?n. Ð?c vào nh?ng phát bi?u và suy nghi khá dài l?i c?a các nhân v?t mà tác gi? uu ái và chia s? quan ni?m (Nam Trà, Mu?i Tân, Ba Nang, Ba Tài…), không ít ngu?i s? cho dó là nh?ng do?n chính lu?n ngo?i d? không th?t c?n thi?t cho câu chuy?n. Nhung d?y l?i là thu?c d?ng ý c?a ngu?i vi?t. Có th? dây là m?t l?i khí cho tác gi? khi ph?i d?ng d?n nh?ng di?u không d? nói ra ? m?t xã h?i còn n?ng gia tru?ng lúc b?y gi?.V?i t?t c? s? t? tin, t? ch?, tác gi? h?u nhu dã hóa thân vào nhân v?t chính, vào vai m?t cán b? qu?n lý xông xáo, lan mình vào công vi?c d? t? ch? d?ng c?a ngu?i cán b? trong cu?c mà d? xu?t các v?n d? kinh t? xã h?i. Thành công thuong m?i mà tác ph?m Cù Lao Chàm c?a Nguy?n M?nh Tu?n có du?c là s? d?n bù x?ng dáng cho phuong hu?ng nh?p cu?c c?a tác gi?.')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [SoLuong], [Gia], [GiaKhuyenMai], [TacGia], [NamXuatBan], [NhaXuatBan], [Anh], [MaTheLoai], [NgayNhap], [TrangThai], [MoTa]) VALUES (63, N'sách văn học hiện đại 2', 30, 120000, 100000, N'Ngô Thừa Ân', 2007, N'Giáo Dục', N'1__2__zgh7-1n.png', 41, CAST(N'2020-04-21T00:00:00' AS SmallDateTime), 1, N'<p>hahaha</p>
')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [SoLuong], [Gia], [GiaKhuyenMai], [TacGia], [NamXuatBan], [NhaXuatBan], [Anh], [MaTheLoai], [NgayNhap], [TrangThai], [MoTa]) VALUES (64, N'Chiến tranh tiền tệ', 20, 65000, 30000, N'Nguyễn Hoàng Thiên', 2011, N'Hà Nội', N'chien-tranh-tien-te-phan1-bia-truoc_taiban_.jpg', 28, CAST(N'2020-04-21T00:00:00' AS SmallDateTime), 1, N'Gi?m giá ti?n t?, t? tru?c t?i gi?, không bao gi? là m?t chi?n thu?t c?a chính ph? du?c dân chúng ua chu?ng. Vì nó làm gi?m di m?c s?ng c?a ngu?i dân cung nhu kh? nang mua s?m khi h? mua hàng hóa nh?p c?ng hay khi di ra nu?c ngoài. Nó cung có th? dua t?i l?m phát. Gi?m giá ti?n t? có th? làm cho vi?c tr? lãi nh?ng món n? qu?c t? tr? nên d?t hon, n?u ph?i tr? b?ng ti?n ngo?i t?. Cho t?i bây gi?, m?t ti?n t? m?nh du?c xem là m?t d?u hi?u uy tín, trong khi gi?m giá ti?n t? du?c liên h? t?i m?t chính ph? y?u kém.[2]Tuy nhiên, khi m?t nu?c có n?n th?t nghi?p cao hay mu?n theo du?i chính sách tang tru?ng xu?t kh?u, t? giá h?i doái th?p hon là m?t l?i di?m. T? d?u th?p niên 1980 Qu? Ti?n t? Qu?c t? (IMF) dã d? xu?t gi?m giá ti?n t? nhu là m?t trong nh?ng gi?i dáp cho các qu?c gia dang phát tri?n mà ti?p t?c nh?p c?ng nhi?u hon là h? có th? xu?t c?ng. Khi d?ng ti?n n?i d?a gi?m giá, giá c? hàng nh?p kh?u s? d?t hon và làm cho hàng xu?t kh?u s? r? hon.[3] Gi?m giá ti?n cung là m?t gi?i pháp thích h?p cho n?n th?t nghi?p khi nh?ng bi?n pháp khác nhu gia tang vi?c tiêu sài công c?ng không th? th?c hi?n du?c vì n? công dã cao, hay khi m?t nu?c có cán cân thanh toán thâm h?t. M?t lý do mà các nu?c dang phát tri?n hay gi?m giá ti?n t? vì duy trì m?t t? giá h?i doái th?p giúp d? tích tr? ti?n ngo?i t?, mà có th? b?o v? tru?c nh?ng cu?c kh?ng ho?ng tài chính trong tuong lai. Tuy nhiên khi các nu?c ban giao thuong m?i ph?n ?ng b?ng cách cung gi?m giá tr? d?ng ti?n c?a mình, thì vi?c gi?m giá s? không còn có hi?u qu? n?a. Trên nguyên t?c khi dó không nu?c nào có h?u qu? t?t hay x?u di. Tuy nhiên m?t chi?n tranh ti?n t? nhu v?y s? làm các doanh nghi?p, và các nhà d?u tu hoang mang, m?t ni?m tin, làm h?i cho vi?c thuong m?i qu?c t?, làm n?n chí các nhà d?u tu. H?u qu? gián ti?p c?a cu?c chi?n tranh ti?n t? này gây ?nh hu?ng không t?t cho t?t c? các nu?c liên h?.')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [SoLuong], [Gia], [GiaKhuyenMai], [TacGia], [NamXuatBan], [NhaXuatBan], [Anh], [MaTheLoai], [NgayNhap], [TrangThai], [MoTa]) VALUES (65, N'Dẫn dắt', 20, 70000, 45000, N'Nguyễn Hoàng Thiên', 2011, N'Hà Nội', N'1__2__zgh7-1n.png', 28, CAST(N'2020-04-21T00:00:00' AS SmallDateTime), 1, N'Gi?m giá ti?n t?, t? tru?c t?i gi?, không bao gi? là m?t chi?n thu?t c?a chính ph? du?c dân chúng ua chu?ng. Vì nó làm gi?m di m?c s?ng c?a ngu?i dân cung nhu kh? nang mua s?m khi h? mua hàng hóa nh?p c?ng hay khi di ra nu?c ngoài. Nó cung có th? dua t?i l?m phát. Gi?m giá ti?n t? có th? làm cho vi?c tr? lãi nh?ng món n? qu?c t? tr? nên d?t hon, n?u ph?i tr? b?ng ti?n ngo?i t?. Cho t?i bây gi?, m?t ti?n t? m?nh du?c xem là m?t d?u hi?u uy tín, trong khi gi?m giá ti?n t? du?c liên h? t?i m?t chính ph? y?u kém.[2]Tuy nhiên, khi m?t nu?c có n?n th?t nghi?p cao hay mu?n theo du?i chính sách tang tru?ng xu?t kh?u, t? giá h?i doái th?p hon là m?t l?i di?m. T? d?u th?p niên 1980 Qu? Ti?n t? Qu?c t? (IMF) dã d? xu?t gi?m giá ti?n t? nhu là m?t trong nh?ng gi?i dáp cho các qu?c gia dang phát tri?n mà ti?p t?c nh?p c?ng nhi?u hon là h? có th? xu?t c?ng. Khi d?ng ti?n n?i d?a gi?m giá, giá c? hàng nh?p kh?u s? d?t hon và làm cho hàng xu?t kh?u s? r? hon.[3] Gi?m giá ti?n cung là m?t gi?i pháp thích h?p cho n?n th?t nghi?p khi nh?ng bi?n pháp khác nhu gia tang vi?c tiêu sài công c?ng không th? th?c hi?n du?c vì n? công dã cao, hay khi m?t nu?c có cán cân thanh toán thâm h?t. M?t lý do mà các nu?c dang phát tri?n hay gi?m giá ti?n t? vì duy trì m?t t? giá h?i doái th?p giúp d? tích tr? ti?n ngo?i t?, mà có th? b?o v? tru?c nh?ng cu?c kh?ng ho?ng tài chính trong tuong lai. Tuy nhiên khi các nu?c ban giao thuong m?i ph?n ?ng b?ng cách cung gi?m giá tr? d?ng ti?n c?a mình, thì vi?c gi?m giá s? không còn có hi?u qu? n?a. Trên nguyên t?c khi dó không nu?c nào có h?u qu? t?t hay x?u di. Tuy nhiên m?t chi?n tranh ti?n t? nhu v?y s? làm các doanh nghi?p, và các nhà d?u tu hoang mang, m?t ni?m tin, làm h?i cho vi?c thuong m?i qu?c t?, làm n?n chí các nhà d?u tu. H?u qu? gián ti?p c?a cu?c chi?n tranh ti?n t? này gây ?nh hu?ng không t?t cho t?t c? các nu?c liên h?.')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [SoLuong], [Gia], [GiaKhuyenMai], [TacGia], [NamXuatBan], [NhaXuatBan], [Anh], [MaTheLoai], [NgayNhap], [TrangThai], [MoTa]) VALUES (66, N'Một đời quản trị', 20, 70000, 55000, N'Nguyễn Hoàng Thiên', 2011, N'Hà Nội', N'image_195509_1_27259_5i36-bd.jpg', 28, CAST(N'2020-04-21T00:00:00' AS SmallDateTime), 1, N'Gi?m giá ti?n t?, t? tru?c t?i gi?, không bao gi? là m?t chi?n thu?t c?a chính ph? du?c dân chúng ua chu?ng. Vì nó làm gi?m di m?c s?ng c?a ngu?i dân cung nhu kh? nang mua s?m khi h? mua hàng hóa nh?p c?ng hay khi di ra nu?c ngoài. Nó cung có th? dua t?i l?m phát. Gi?m giá ti?n t? có th? làm cho vi?c tr? lãi nh?ng món n? qu?c t? tr? nên d?t hon, n?u ph?i tr? b?ng ti?n ngo?i t?. Cho t?i bây gi?, m?t ti?n t? m?nh du?c xem là m?t d?u hi?u uy tín, trong khi gi?m giá ti?n t? du?c liên h? t?i m?t chính ph? y?u kém.[2]Tuy nhiên, khi m?t nu?c có n?n th?t nghi?p cao hay mu?n theo du?i chính sách tang tru?ng xu?t kh?u, t? giá h?i doái th?p hon là m?t l?i di?m. T? d?u th?p niên 1980 Qu? Ti?n t? Qu?c t? (IMF) dã d? xu?t gi?m giá ti?n t? nhu là m?t trong nh?ng gi?i dáp cho các qu?c gia dang phát tri?n mà ti?p t?c nh?p c?ng nhi?u hon là h? có th? xu?t c?ng. Khi d?ng ti?n n?i d?a gi?m giá, giá c? hàng nh?p kh?u s? d?t hon và làm cho hàng xu?t kh?u s? r? hon.[3] Gi?m giá ti?n cung là m?t gi?i pháp thích h?p cho n?n th?t nghi?p khi nh?ng bi?n pháp khác nhu gia tang vi?c tiêu sài công c?ng không th? th?c hi?n du?c vì n? công dã cao, hay khi m?t nu?c có cán cân thanh toán thâm h?t. M?t lý do mà các nu?c dang phát tri?n hay gi?m giá ti?n t? vì duy trì m?t t? giá h?i doái th?p giúp d? tích tr? ti?n ngo?i t?, mà có th? b?o v? tru?c nh?ng cu?c kh?ng ho?ng tài chính trong tuong lai. Tuy nhiên khi các nu?c ban giao thuong m?i ph?n ?ng b?ng cách cung gi?m giá tr? d?ng ti?n c?a mình, thì vi?c gi?m giá s? không còn có hi?u qu? n?a. Trên nguyên t?c khi dó không nu?c nào có h?u qu? t?t hay x?u di. Tuy nhiên m?t chi?n tranh ti?n t? nhu v?y s? làm các doanh nghi?p, và các nhà d?u tu hoang mang, m?t ni?m tin, làm h?i cho vi?c thuong m?i qu?c t?, làm n?n chí các nhà d?u tu. H?u qu? gián ti?p c?a cu?c chi?n tranh ti?n t? này gây ?nh hu?ng không t?t cho t?t c? các nu?c liên h?.')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [SoLuong], [Gia], [GiaKhuyenMai], [TacGia], [NamXuatBan], [NhaXuatBan], [Anh], [MaTheLoai], [NgayNhap], [TrangThai], [MoTa]) VALUES (67, N'Lượt sữ kinh tế học', 20, 60000, 45000, N'Nguyễn Hoàng Thiên', 2011, N'Hà Nội', N'image_195509_1_33759.jpg', 28, CAST(N'2020-04-21T00:00:00' AS SmallDateTime), 1, N'Gi?m giá ti?n t?, t? tru?c t?i gi?, không bao gi? là m?t chi?n thu?t c?a chính ph? du?c dân chúng ua chu?ng. Vì nó làm gi?m di m?c s?ng c?a ngu?i dân cung nhu kh? nang mua s?m khi h? mua hàng hóa nh?p c?ng hay khi di ra nu?c ngoài. Nó cung có th? dua t?i l?m phát. Gi?m giá ti?n t? có th? làm cho vi?c tr? lãi nh?ng món n? qu?c t? tr? nên d?t hon, n?u ph?i tr? b?ng ti?n ngo?i t?. Cho t?i bây gi?, m?t ti?n t? m?nh du?c xem là m?t d?u hi?u uy tín, trong khi gi?m giá ti?n t? du?c liên h? t?i m?t chính ph? y?u kém.[2]Tuy nhiên, khi m?t nu?c có n?n th?t nghi?p cao hay mu?n theo du?i chính sách tang tru?ng xu?t kh?u, t? giá h?i doái th?p hon là m?t l?i di?m. T? d?u th?p niên 1980 Qu? Ti?n t? Qu?c t? (IMF) dã d? xu?t gi?m giá ti?n t? nhu là m?t trong nh?ng gi?i dáp cho các qu?c gia dang phát tri?n mà ti?p t?c nh?p c?ng nhi?u hon là h? có th? xu?t c?ng. Khi d?ng ti?n n?i d?a gi?m giá, giá c? hàng nh?p kh?u s? d?t hon và làm cho hàng xu?t kh?u s? r? hon.[3] Gi?m giá ti?n cung là m?t gi?i pháp thích h?p cho n?n th?t nghi?p khi nh?ng bi?n pháp khác nhu gia tang vi?c tiêu sài công c?ng không th? th?c hi?n du?c vì n? công dã cao, hay khi m?t nu?c có cán cân thanh toán thâm h?t. M?t lý do mà các nu?c dang phát tri?n hay gi?m giá ti?n t? vì duy trì m?t t? giá h?i doái th?p giúp d? tích tr? ti?n ngo?i t?, mà có th? b?o v? tru?c nh?ng cu?c kh?ng ho?ng tài chính trong tuong lai. Tuy nhiên khi các nu?c ban giao thuong m?i ph?n ?ng b?ng cách cung gi?m giá tr? d?ng ti?n c?a mình, thì vi?c gi?m giá s? không còn có hi?u qu? n?a. Trên nguyên t?c khi dó không nu?c nào có h?u qu? t?t hay x?u di. Tuy nhiên m?t chi?n tranh ti?n t? nhu v?y s? làm các doanh nghi?p, và các nhà d?u tu hoang mang, m?t ni?m tin, làm h?i cho vi?c thuong m?i qu?c t?, làm n?n chí các nhà d?u tu. H?u qu? gián ti?p c?a cu?c chi?n tranh ti?n t? này gây ?nh hu?ng không t?t cho t?t c? các nu?c liên h?.')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [SoLuong], [Gia], [GiaKhuyenMai], [TacGia], [NamXuatBan], [NhaXuatBan], [Anh], [MaTheLoai], [NgayNhap], [TrangThai], [MoTa]) VALUES (68, N'Lợi thế bán hàng', 20, 60000, 45000, N'Nguyễn Hoàng Thiên', 2011, N'Hà Nội', N'Lợi_Thế_Bán_Hàng.jpeg', 28, CAST(N'2020-04-21T00:00:00' AS SmallDateTime), 1, N'Gi?m giá ti?n t?, t? tru?c t?i gi?, không bao gi? là m?t chi?n thu?t c?a chính ph? du?c dân chúng ua chu?ng. Vì nó làm gi?m di m?c s?ng c?a ngu?i dân cung nhu kh? nang mua s?m khi h? mua hàng hóa nh?p c?ng hay khi di ra nu?c ngoài. Nó cung có th? dua t?i l?m phát. Gi?m giá ti?n t? có th? làm cho vi?c tr? lãi nh?ng món n? qu?c t? tr? nên d?t hon, n?u ph?i tr? b?ng ti?n ngo?i t?. Cho t?i bây gi?, m?t ti?n t? m?nh du?c xem là m?t d?u hi?u uy tín, trong khi gi?m giá ti?n t? du?c liên h? t?i m?t chính ph? y?u kém.[2]Tuy nhiên, khi m?t nu?c có n?n th?t nghi?p cao hay mu?n theo du?i chính sách tang tru?ng xu?t kh?u, t? giá h?i doái th?p hon là m?t l?i di?m. T? d?u th?p niên 1980 Qu? Ti?n t? Qu?c t? (IMF) dã d? xu?t gi?m giá ti?n t? nhu là m?t trong nh?ng gi?i dáp cho các qu?c gia dang phát tri?n mà ti?p t?c nh?p c?ng nhi?u hon là h? có th? xu?t c?ng. Khi d?ng ti?n n?i d?a gi?m giá, giá c? hàng nh?p kh?u s? d?t hon và làm cho hàng xu?t kh?u s? r? hon.[3] Gi?m giá ti?n cung là m?t gi?i pháp thích h?p cho n?n th?t nghi?p khi nh?ng bi?n pháp khác nhu gia tang vi?c tiêu sài công c?ng không th? th?c hi?n du?c vì n? công dã cao, hay khi m?t nu?c có cán cân thanh toán thâm h?t. M?t lý do mà các nu?c dang phát tri?n hay gi?m giá ti?n t? vì duy trì m?t t? giá h?i doái th?p giúp d? tích tr? ti?n ngo?i t?, mà có th? b?o v? tru?c nh?ng cu?c kh?ng ho?ng tài chính trong tuong lai. Tuy nhiên khi các nu?c ban giao thuong m?i ph?n ?ng b?ng cách cung gi?m giá tr? d?ng ti?n c?a mình, thì vi?c gi?m giá s? không còn có hi?u qu? n?a. Trên nguyên t?c khi dó không nu?c nào có h?u qu? t?t hay x?u di. Tuy nhiên m?t chi?n tranh ti?n t? nhu v?y s? làm các doanh nghi?p, và các nhà d?u tu hoang mang, m?t ni?m tin, làm h?i cho vi?c thuong m?i qu?c t?, làm n?n chí các nhà d?u tu. H?u qu? gián ti?p c?a cu?c chi?n tranh ti?n t? này gây ?nh hu?ng không t?t cho t?t c? các nu?c liên h?.')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [SoLuong], [Gia], [GiaKhuyenMai], [TacGia], [NamXuatBan], [NhaXuatBan], [Anh], [MaTheLoai], [NgayNhap], [TrangThai], [MoTa]) VALUES (69, N'Bí mật tài chính người giàu', 20, 60000, 45000, N'Nguyễn Hoàng Thiên', 2011, N'Hà Nội', N'image_195509_1_33478.jpg', 28, CAST(N'2020-04-21T00:00:00' AS SmallDateTime), 1, N'Gi?m giá ti?n t?, t? tru?c t?i gi?, không bao gi? là m?t chi?n thu?t c?a chính ph? du?c dân chúng ua chu?ng. Vì nó làm gi?m di m?c s?ng c?a ngu?i dân cung nhu kh? nang mua s?m khi h? mua hàng hóa nh?p c?ng hay khi di ra nu?c ngoài. Nó cung có th? dua t?i l?m phát. Gi?m giá ti?n t? có th? làm cho vi?c tr? lãi nh?ng món n? qu?c t? tr? nên d?t hon, n?u ph?i tr? b?ng ti?n ngo?i t?. Cho t?i bây gi?, m?t ti?n t? m?nh du?c xem là m?t d?u hi?u uy tín, trong khi gi?m giá ti?n t? du?c liên h? t?i m?t chính ph? y?u kém.[2]Tuy nhiên, khi m?t nu?c có n?n th?t nghi?p cao hay mu?n theo du?i chính sách tang tru?ng xu?t kh?u, t? giá h?i doái th?p hon là m?t l?i di?m. T? d?u th?p niên 1980 Qu? Ti?n t? Qu?c t? (IMF) dã d? xu?t gi?m giá ti?n t? nhu là m?t trong nh?ng gi?i dáp cho các qu?c gia dang phát tri?n mà ti?p t?c nh?p c?ng nhi?u hon là h? có th? xu?t c?ng. Khi d?ng ti?n n?i d?a gi?m giá, giá c? hàng nh?p kh?u s? d?t hon và làm cho hàng xu?t kh?u s? r? hon.[3] Gi?m giá ti?n cung là m?t gi?i pháp thích h?p cho n?n th?t nghi?p khi nh?ng bi?n pháp khác nhu gia tang vi?c tiêu sài công c?ng không th? th?c hi?n du?c vì n? công dã cao, hay khi m?t nu?c có cán cân thanh toán thâm h?t. M?t lý do mà các nu?c dang phát tri?n hay gi?m giá ti?n t? vì duy trì m?t t? giá h?i doái th?p giúp d? tích tr? ti?n ngo?i t?, mà có th? b?o v? tru?c nh?ng cu?c kh?ng ho?ng tài chính trong tuong lai. Tuy nhiên khi các nu?c ban giao thuong m?i ph?n ?ng b?ng cách cung gi?m giá tr? d?ng ti?n c?a mình, thì vi?c gi?m giá s? không còn có hi?u qu? n?a. Trên nguyên t?c khi dó không nu?c nào có h?u qu? t?t hay x?u di. Tuy nhiên m?t chi?n tranh ti?n t? nhu v?y s? làm các doanh nghi?p, và các nhà d?u tu hoang mang, m?t ni?m tin, làm h?i cho vi?c thuong m?i qu?c t?, làm n?n chí các nhà d?u tu. H?u qu? gián ti?p c?a cu?c chi?n tranh ti?n t? này gây ?nh hu?ng không t?t cho t?t c? các nu?c liên h?.')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [SoLuong], [Gia], [GiaKhuyenMai], [TacGia], [NamXuatBan], [NhaXuatBan], [Anh], [MaTheLoai], [NgayNhap], [TrangThai], [MoTa]) VALUES (70, N'Những nhà kinh tế tiên phong', 20, 60000, 45000, N'Nguyễn Hoàng Thiên', 2011, N'Hà Nội', N'image_195509_1_29309.jpg', 28, CAST(N'2020-04-21T00:00:00' AS SmallDateTime), 1, N'Gi?m giá ti?n t?, t? tru?c t?i gi?, không bao gi? là m?t chi?n thu?t c?a chính ph? du?c dân chúng ua chu?ng. Vì nó làm gi?m di m?c s?ng c?a ngu?i dân cung nhu kh? nang mua s?m khi h? mua hàng hóa nh?p c?ng hay khi di ra nu?c ngoài. Nó cung có th? dua t?i l?m phát. Gi?m giá ti?n t? có th? làm cho vi?c tr? lãi nh?ng món n? qu?c t? tr? nên d?t hon, n?u ph?i tr? b?ng ti?n ngo?i t?. Cho t?i bây gi?, m?t ti?n t? m?nh du?c xem là m?t d?u hi?u uy tín, trong khi gi?m giá ti?n t? du?c liên h? t?i m?t chính ph? y?u kém.[2]Tuy nhiên, khi m?t nu?c có n?n th?t nghi?p cao hay mu?n theo du?i chính sách tang tru?ng xu?t kh?u, t? giá h?i doái th?p hon là m?t l?i di?m. T? d?u th?p niên 1980 Qu? Ti?n t? Qu?c t? (IMF) dã d? xu?t gi?m giá ti?n t? nhu là m?t trong nh?ng gi?i dáp cho các qu?c gia dang phát tri?n mà ti?p t?c nh?p c?ng nhi?u hon là h? có th? xu?t c?ng. Khi d?ng ti?n n?i d?a gi?m giá, giá c? hàng nh?p kh?u s? d?t hon và làm cho hàng xu?t kh?u s? r? hon.[3] Gi?m giá ti?n cung là m?t gi?i pháp thích h?p cho n?n th?t nghi?p khi nh?ng bi?n pháp khác nhu gia tang vi?c tiêu sài công c?ng không th? th?c hi?n du?c vì n? công dã cao, hay khi m?t nu?c có cán cân thanh toán thâm h?t. M?t lý do mà các nu?c dang phát tri?n hay gi?m giá ti?n t? vì duy trì m?t t? giá h?i doái th?p giúp d? tích tr? ti?n ngo?i t?, mà có th? b?o v? tru?c nh?ng cu?c kh?ng ho?ng tài chính trong tuong lai. Tuy nhiên khi các nu?c ban giao thuong m?i ph?n ?ng b?ng cách cung gi?m giá tr? d?ng ti?n c?a mình, thì vi?c gi?m giá s? không còn có hi?u qu? n?a. Trên nguyên t?c khi dó không nu?c nào có h?u qu? t?t hay x?u di. Tuy nhiên m?t chi?n tranh ti?n t? nhu v?y s? làm các doanh nghi?p, và các nhà d?u tu hoang mang, m?t ni?m tin, làm h?i cho vi?c thuong m?i qu?c t?, làm n?n chí các nhà d?u tu. H?u qu? gián ti?p c?a cu?c chi?n tranh ti?n t? này gây ?nh hu?ng không t?t cho t?t c? các nu?c liên h?.')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [SoLuong], [Gia], [GiaKhuyenMai], [TacGia], [NamXuatBan], [NhaXuatBan], [Anh], [MaTheLoai], [NgayNhap], [TrangThai], [MoTa]) VALUES (71, N'Sử dụng đồng vốn', 20, 65000, 45000, N'Nguyễn Hoàng Thiên', 2011, N'Hà Nội', N'Dạy_Con_Làm_Giàu__Tập_2__-_Sử_Dụng_Đồng_Vốn__Tái_Bản_2019__fkfy-gv.jpeg', 28, CAST(N'2020-04-21T00:00:00' AS SmallDateTime), 1, N'Gi?m giá ti?n t?, t? tru?c t?i gi?, không bao gi? là m?t chi?n thu?t c?a chính ph? du?c dân chúng ua chu?ng. Vì nó làm gi?m di m?c s?ng c?a ngu?i dân cung nhu kh? nang mua s?m khi h? mua hàng hóa nh?p c?ng hay khi di ra nu?c ngoài. Nó cung có th? dua t?i l?m phát. Gi?m giá ti?n t? có th? làm cho vi?c tr? lãi nh?ng món n? qu?c t? tr? nên d?t hon, n?u ph?i tr? b?ng ti?n ngo?i t?. Cho t?i bây gi?, m?t ti?n t? m?nh du?c xem là m?t d?u hi?u uy tín, trong khi gi?m giá ti?n t? du?c liên h? t?i m?t chính ph? y?u kém.[2]Tuy nhiên, khi m?t nu?c có n?n th?t nghi?p cao hay mu?n theo du?i chính sách tang tru?ng xu?t kh?u, t? giá h?i doái th?p hon là m?t l?i di?m. T? d?u th?p niên 1980 Qu? Ti?n t? Qu?c t? (IMF) dã d? xu?t gi?m giá ti?n t? nhu là m?t trong nh?ng gi?i dáp cho các qu?c gia dang phát tri?n mà ti?p t?c nh?p c?ng nhi?u hon là h? có th? xu?t c?ng. Khi d?ng ti?n n?i d?a gi?m giá, giá c? hàng nh?p kh?u s? d?t hon và làm cho hàng xu?t kh?u s? r? hon.[3] Gi?m giá ti?n cung là m?t gi?i pháp thích h?p cho n?n th?t nghi?p khi nh?ng bi?n pháp khác nhu gia tang vi?c tiêu sài công c?ng không th? th?c hi?n du?c vì n? công dã cao, hay khi m?t nu?c có cán cân thanh toán thâm h?t. M?t lý do mà các nu?c dang phát tri?n hay gi?m giá ti?n t? vì duy trì m?t t? giá h?i doái th?p giúp d? tích tr? ti?n ngo?i t?, mà có th? b?o v? tru?c nh?ng cu?c kh?ng ho?ng tài chính trong tuong lai. Tuy nhiên khi các nu?c ban giao thuong m?i ph?n ?ng b?ng cách cung gi?m giá tr? d?ng ti?n c?a mình, thì vi?c gi?m giá s? không còn có hi?u qu? n?a. Trên nguyên t?c khi dó không nu?c nào có h?u qu? t?t hay x?u di. Tuy nhiên m?t chi?n tranh ti?n t? nhu v?y s? làm các doanh nghi?p, và các nhà d?u tu hoang mang, m?t ni?m tin, làm h?i cho vi?c thuong m?i qu?c t?, làm n?n chí các nhà d?u tu. H?u qu? gián ti?p c?a cu?c chi?n tranh ti?n t? này gây ?nh hu?ng không t?t cho t?t c? các nu?c liên h?.')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [SoLuong], [Gia], [GiaKhuyenMai], [TacGia], [NamXuatBan], [NhaXuatBan], [Anh], [MaTheLoai], [NgayNhap], [TrangThai], [MoTa]) VALUES (72, N'Tiền đấu với vàng', 20, 65000, 45000, N'Nguyễn Hoàng Thiên', 2011, N'Hà Nội', N't_ng-h_p-ch_ng-tr_nh-l_n-trong-n_m.xlsx.jpg', 28, CAST(N'2020-04-21T00:00:00' AS SmallDateTime), 1, N'Gi?m giá ti?n t?, t? tru?c t?i gi?, không bao gi? là m?t chi?n thu?t c?a chính ph? du?c dân chúng ua chu?ng. Vì nó làm gi?m di m?c s?ng c?a ngu?i dân cung nhu kh? nang mua s?m khi h? mua hàng hóa nh?p c?ng hay khi di ra nu?c ngoài. Nó cung có th? dua t?i l?m phát. Gi?m giá ti?n t? có th? làm cho vi?c tr? lãi nh?ng món n? qu?c t? tr? nên d?t hon, n?u ph?i tr? b?ng ti?n ngo?i t?. Cho t?i bây gi?, m?t ti?n t? m?nh du?c xem là m?t d?u hi?u uy tín, trong khi gi?m giá ti?n t? du?c liên h? t?i m?t chính ph? y?u kém.[2]Tuy nhiên, khi m?t nu?c có n?n th?t nghi?p cao hay mu?n theo du?i chính sách tang tru?ng xu?t kh?u, t? giá h?i doái th?p hon là m?t l?i di?m. T? d?u th?p niên 1980 Qu? Ti?n t? Qu?c t? (IMF) dã d? xu?t gi?m giá ti?n t? nhu là m?t trong nh?ng gi?i dáp cho các qu?c gia dang phát tri?n mà ti?p t?c nh?p c?ng nhi?u hon là h? có th? xu?t c?ng. Khi d?ng ti?n n?i d?a gi?m giá, giá c? hàng nh?p kh?u s? d?t hon và làm cho hàng xu?t kh?u s? r? hon.[3] Gi?m giá ti?n cung là m?t gi?i pháp thích h?p cho n?n th?t nghi?p khi nh?ng bi?n pháp khác nhu gia tang vi?c tiêu sài công c?ng không th? th?c hi?n du?c vì n? công dã cao, hay khi m?t nu?c có cán cân thanh toán thâm h?t. M?t lý do mà các nu?c dang phát tri?n hay gi?m giá ti?n t? vì duy trì m?t t? giá h?i doái th?p giúp d? tích tr? ti?n ngo?i t?, mà có th? b?o v? tru?c nh?ng cu?c kh?ng ho?ng tài chính trong tuong lai. Tuy nhiên khi các nu?c ban giao thuong m?i ph?n ?ng b?ng cách cung gi?m giá tr? d?ng ti?n c?a mình, thì vi?c gi?m giá s? không còn có hi?u qu? n?a. Trên nguyên t?c khi dó không nu?c nào có h?u qu? t?t hay x?u di. Tuy nhiên m?t chi?n tranh ti?n t? nhu v?y s? làm các doanh nghi?p, và các nhà d?u tu hoang mang, m?t ni?m tin, làm h?i cho vi?c thuong m?i qu?c t?, làm n?n chí các nhà d?u tu. H?u qu? gián ti?p c?a cu?c chi?n tranh ti?n t? này gây ?nh hu?ng không t?t cho t?t c? các nu?c liên h?.')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [SoLuong], [Gia], [GiaKhuyenMai], [TacGia], [NamXuatBan], [NhaXuatBan], [Anh], [MaTheLoai], [NgayNhap], [TrangThai], [MoTa]) VALUES (73, N'Thiết kế tổ chức', 20, 65000, 35000, N'Nguyễn Hoàng Thiên', 2011, N'Hà Nội', N'image_195509_1_34382.jpg', 28, CAST(N'2020-04-21T00:00:00' AS SmallDateTime), 1, N'Gi?m giá ti?n t?, t? tru?c t?i gi?, không bao gi? là m?t chi?n thu?t c?a chính ph? du?c dân chúng ua chu?ng. Vì nó làm gi?m di m?c s?ng c?a ngu?i dân cung nhu kh? nang mua s?m khi h? mua hàng hóa nh?p c?ng hay khi di ra nu?c ngoài. Nó cung có th? dua t?i l?m phát. Gi?m giá ti?n t? có th? làm cho vi?c tr? lãi nh?ng món n? qu?c t? tr? nên d?t hon, n?u ph?i tr? b?ng ti?n ngo?i t?. Cho t?i bây gi?, m?t ti?n t? m?nh du?c xem là m?t d?u hi?u uy tín, trong khi gi?m giá ti?n t? du?c liên h? t?i m?t chính ph? y?u kém.[2]Tuy nhiên, khi m?t nu?c có n?n th?t nghi?p cao hay mu?n theo du?i chính sách tang tru?ng xu?t kh?u, t? giá h?i doái th?p hon là m?t l?i di?m. T? d?u th?p niên 1980 Qu? Ti?n t? Qu?c t? (IMF) dã d? xu?t gi?m giá ti?n t? nhu là m?t trong nh?ng gi?i dáp cho các qu?c gia dang phát tri?n mà ti?p t?c nh?p c?ng nhi?u hon là h? có th? xu?t c?ng. Khi d?ng ti?n n?i d?a gi?m giá, giá c? hàng nh?p kh?u s? d?t hon và làm cho hàng xu?t kh?u s? r? hon.[3] Gi?m giá ti?n cung là m?t gi?i pháp thích h?p cho n?n th?t nghi?p khi nh?ng bi?n pháp khác nhu gia tang vi?c tiêu sài công c?ng không th? th?c hi?n du?c vì n? công dã cao, hay khi m?t nu?c có cán cân thanh toán thâm h?t. M?t lý do mà các nu?c dang phát tri?n hay gi?m giá ti?n t? vì duy trì m?t t? giá h?i doái th?p giúp d? tích tr? ti?n ngo?i t?, mà có th? b?o v? tru?c nh?ng cu?c kh?ng ho?ng tài chính trong tuong lai. Tuy nhiên khi các nu?c ban giao thuong m?i ph?n ?ng b?ng cách cung gi?m giá tr? d?ng ti?n c?a mình, thì vi?c gi?m giá s? không còn có hi?u qu? n?a. Trên nguyên t?c khi dó không nu?c nào có h?u qu? t?t hay x?u di. Tuy nhiên m?t chi?n tranh ti?n t? nhu v?y s? làm các doanh nghi?p, và các nhà d?u tu hoang mang, m?t ni?m tin, làm h?i cho vi?c thuong m?i qu?c t?, làm n?n chí các nhà d?u tu. H?u qu? gián ti?p c?a cu?c chi?n tranh ti?n t? này gây ?nh hu?ng không t?t cho t?t c? các nu?c liên h?.')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [SoLuong], [Gia], [GiaKhuyenMai], [TacGia], [NamXuatBan], [NhaXuatBan], [Anh], [MaTheLoai], [NgayNhap], [TrangThai], [MoTa]) VALUES (74, N'Người lãnh đạo không quyết định vội vàng', 20, 65000, 35000, N'Nguyễn Hoàng Thiên', 2011, N'Hà Nội', N'image_195509_1_35062.jpg', 28, CAST(N'2020-04-21T00:00:00' AS SmallDateTime), 1, N'Gi?m giá ti?n t?, t? tru?c t?i gi?, không bao gi? là m?t chi?n thu?t c?a chính ph? du?c dân chúng ua chu?ng. Vì nó làm gi?m di m?c s?ng c?a ngu?i dân cung nhu kh? nang mua s?m khi h? mua hàng hóa nh?p c?ng hay khi di ra nu?c ngoài. Nó cung có th? dua t?i l?m phát. Gi?m giá ti?n t? có th? làm cho vi?c tr? lãi nh?ng món n? qu?c t? tr? nên d?t hon, n?u ph?i tr? b?ng ti?n ngo?i t?. Cho t?i bây gi?, m?t ti?n t? m?nh du?c xem là m?t d?u hi?u uy tín, trong khi gi?m giá ti?n t? du?c liên h? t?i m?t chính ph? y?u kém.[2]Tuy nhiên, khi m?t nu?c có n?n th?t nghi?p cao hay mu?n theo du?i chính sách tang tru?ng xu?t kh?u, t? giá h?i doái th?p hon là m?t l?i di?m. T? d?u th?p niên 1980 Qu? Ti?n t? Qu?c t? (IMF) dã d? xu?t gi?m giá ti?n t? nhu là m?t trong nh?ng gi?i dáp cho các qu?c gia dang phát tri?n mà ti?p t?c nh?p c?ng nhi?u hon là h? có th? xu?t c?ng. Khi d?ng ti?n n?i d?a gi?m giá, giá c? hàng nh?p kh?u s? d?t hon và làm cho hàng xu?t kh?u s? r? hon.[3] Gi?m giá ti?n cung là m?t gi?i pháp thích h?p cho n?n th?t nghi?p khi nh?ng bi?n pháp khác nhu gia tang vi?c tiêu sài công c?ng không th? th?c hi?n du?c vì n? công dã cao, hay khi m?t nu?c có cán cân thanh toán thâm h?t. M?t lý do mà các nu?c dang phát tri?n hay gi?m giá ti?n t? vì duy trì m?t t? giá h?i doái th?p giúp d? tích tr? ti?n ngo?i t?, mà có th? b?o v? tru?c nh?ng cu?c kh?ng ho?ng tài chính trong tuong lai. Tuy nhiên khi các nu?c ban giao thuong m?i ph?n ?ng b?ng cách cung gi?m giá tr? d?ng ti?n c?a mình, thì vi?c gi?m giá s? không còn có hi?u qu? n?a. Trên nguyên t?c khi dó không nu?c nào có h?u qu? t?t hay x?u di. Tuy nhiên m?t chi?n tranh ti?n t? nhu v?y s? làm các doanh nghi?p, và các nhà d?u tu hoang mang, m?t ni?m tin, làm h?i cho vi?c thuong m?i qu?c t?, làm n?n chí các nhà d?u tu. H?u qu? gián ti?p c?a cu?c chi?n tranh ti?n t? này gây ?nh hu?ng không t?t cho t?t c? các nu?c liên h?.')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [SoLuong], [Gia], [GiaKhuyenMai], [TacGia], [NamXuatBan], [NhaXuatBan], [Anh], [MaTheLoai], [NgayNhap], [TrangThai], [MoTa]) VALUES (75, N'Sẽ không báo giờ thành công đâu', 20, 65000, 35000, N'Nguyễn Hoàng Thiên', 2011, N'Hà Nội', N'netflix.jpg', 28, CAST(N'2020-04-21T00:00:00' AS SmallDateTime), 1, N'Gi?m giá ti?n t?, t? tru?c t?i gi?, không bao gi? là m?t chi?n thu?t c?a chính ph? du?c dân chúng ua chu?ng. Vì nó làm gi?m di m?c s?ng c?a ngu?i dân cung nhu kh? nang mua s?m khi h? mua hàng hóa nh?p c?ng hay khi di ra nu?c ngoài. Nó cung có th? dua t?i l?m phát. Gi?m giá ti?n t? có th? làm cho vi?c tr? lãi nh?ng món n? qu?c t? tr? nên d?t hon, n?u ph?i tr? b?ng ti?n ngo?i t?. Cho t?i bây gi?, m?t ti?n t? m?nh du?c xem là m?t d?u hi?u uy tín, trong khi gi?m giá ti?n t? du?c liên h? t?i m?t chính ph? y?u kém.[2]Tuy nhiên, khi m?t nu?c có n?n th?t nghi?p cao hay mu?n theo du?i chính sách tang tru?ng xu?t kh?u, t? giá h?i doái th?p hon là m?t l?i di?m. T? d?u th?p niên 1980 Qu? Ti?n t? Qu?c t? (IMF) dã d? xu?t gi?m giá ti?n t? nhu là m?t trong nh?ng gi?i dáp cho các qu?c gia dang phát tri?n mà ti?p t?c nh?p c?ng nhi?u hon là h? có th? xu?t c?ng. Khi d?ng ti?n n?i d?a gi?m giá, giá c? hàng nh?p kh?u s? d?t hon và làm cho hàng xu?t kh?u s? r? hon.[3] Gi?m giá ti?n cung là m?t gi?i pháp thích h?p cho n?n th?t nghi?p khi nh?ng bi?n pháp khác nhu gia tang vi?c tiêu sài công c?ng không th? th?c hi?n du?c vì n? công dã cao, hay khi m?t nu?c có cán cân thanh toán thâm h?t. M?t lý do mà các nu?c dang phát tri?n hay gi?m giá ti?n t? vì duy trì m?t t? giá h?i doái th?p giúp d? tích tr? ti?n ngo?i t?, mà có th? b?o v? tru?c nh?ng cu?c kh?ng ho?ng tài chính trong tuong lai. Tuy nhiên khi các nu?c ban giao thuong m?i ph?n ?ng b?ng cách cung gi?m giá tr? d?ng ti?n c?a mình, thì vi?c gi?m giá s? không còn có hi?u qu? n?a. Trên nguyên t?c khi dó không nu?c nào có h?u qu? t?t hay x?u di. Tuy nhiên m?t chi?n tranh ti?n t? nhu v?y s? làm các doanh nghi?p, và các nhà d?u tu hoang mang, m?t ni?m tin, làm h?i cho vi?c thuong m?i qu?c t?, làm n?n chí các nhà d?u tu. H?u qu? gián ti?p c?a cu?c chi?n tranh ti?n t? này gây ?nh hu?ng không t?t cho t?t c? các nu?c liên h?.')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [SoLuong], [Gia], [GiaKhuyenMai], [TacGia], [NamXuatBan], [NhaXuatBan], [Anh], [MaTheLoai], [NgayNhap], [TrangThai], [MoTa]) VALUES (76, N'Tôn trong kinh doanh tạo thành tựu lớn', 20, 65000, 35000, N'Nguyễn Hoàng Thiên', 2011, N'Hà Nội', N'Tâm_Trong_Kinh_Doanh_Tạo_Thành_Tựu_Lớn.jpg', 28, CAST(N'2020-04-21T00:00:00' AS SmallDateTime), 1, N'Gi?m giá ti?n t?, t? tru?c t?i gi?, không bao gi? là m?t chi?n thu?t c?a chính ph? du?c dân chúng ua chu?ng. Vì nó làm gi?m di m?c s?ng c?a ngu?i dân cung nhu kh? nang mua s?m khi h? mua hàng hóa nh?p c?ng hay khi di ra nu?c ngoài. Nó cung có th? dua t?i l?m phát. Gi?m giá ti?n t? có th? làm cho vi?c tr? lãi nh?ng món n? qu?c t? tr? nên d?t hon, n?u ph?i tr? b?ng ti?n ngo?i t?. Cho t?i bây gi?, m?t ti?n t? m?nh du?c xem là m?t d?u hi?u uy tín, trong khi gi?m giá ti?n t? du?c liên h? t?i m?t chính ph? y?u kém.[2]Tuy nhiên, khi m?t nu?c có n?n th?t nghi?p cao hay mu?n theo du?i chính sách tang tru?ng xu?t kh?u, t? giá h?i doái th?p hon là m?t l?i di?m. T? d?u th?p niên 1980 Qu? Ti?n t? Qu?c t? (IMF) dã d? xu?t gi?m giá ti?n t? nhu là m?t trong nh?ng gi?i dáp cho các qu?c gia dang phát tri?n mà ti?p t?c nh?p c?ng nhi?u hon là h? có th? xu?t c?ng. Khi d?ng ti?n n?i d?a gi?m giá, giá c? hàng nh?p kh?u s? d?t hon và làm cho hàng xu?t kh?u s? r? hon.[3] Gi?m giá ti?n cung là m?t gi?i pháp thích h?p cho n?n th?t nghi?p khi nh?ng bi?n pháp khác nhu gia tang vi?c tiêu sài công c?ng không th? th?c hi?n du?c vì n? công dã cao, hay khi m?t nu?c có cán cân thanh toán thâm h?t. M?t lý do mà các nu?c dang phát tri?n hay gi?m giá ti?n t? vì duy trì m?t t? giá h?i doái th?p giúp d? tích tr? ti?n ngo?i t?, mà có th? b?o v? tru?c nh?ng cu?c kh?ng ho?ng tài chính trong tuong lai. Tuy nhiên khi các nu?c ban giao thuong m?i ph?n ?ng b?ng cách cung gi?m giá tr? d?ng ti?n c?a mình, thì vi?c gi?m giá s? không còn có hi?u qu? n?a. Trên nguyên t?c khi dó không nu?c nào có h?u qu? t?t hay x?u di. Tuy nhiên m?t chi?n tranh ti?n t? nhu v?y s? làm các doanh nghi?p, và các nhà d?u tu hoang mang, m?t ni?m tin, làm h?i cho vi?c thuong m?i qu?c t?, làm n?n chí các nhà d?u tu. H?u qu? gián ti?p c?a cu?c chi?n tranh ti?n t? này gây ?nh hu?ng không t?t cho t?t c? các nu?c liên h?.')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [SoLuong], [Gia], [GiaKhuyenMai], [TacGia], [NamXuatBan], [NhaXuatBan], [Anh], [MaTheLoai], [NgayNhap], [TrangThai], [MoTa]) VALUES (77, N'Trạng thái mua hàng', 20, 65000, 35000, N'Nguyễn Hoàng Thiên', 2011, N'Hà Nội', N'image_195509_1_31591.jpg', 28, CAST(N'2020-04-21T00:00:00' AS SmallDateTime), 1, N'Gi?m giá ti?n t?, t? tru?c t?i gi?, không bao gi? là m?t chi?n thu?t c?a chính ph? du?c dân chúng ua chu?ng. Vì nó làm gi?m di m?c s?ng c?a ngu?i dân cung nhu kh? nang mua s?m khi h? mua hàng hóa nh?p c?ng hay khi di ra nu?c ngoài. Nó cung có th? dua t?i l?m phát. Gi?m giá ti?n t? có th? làm cho vi?c tr? lãi nh?ng món n? qu?c t? tr? nên d?t hon, n?u ph?i tr? b?ng ti?n ngo?i t?. Cho t?i bây gi?, m?t ti?n t? m?nh du?c xem là m?t d?u hi?u uy tín, trong khi gi?m giá ti?n t? du?c liên h? t?i m?t chính ph? y?u kém.[2]Tuy nhiên, khi m?t nu?c có n?n th?t nghi?p cao hay mu?n theo du?i chính sách tang tru?ng xu?t kh?u, t? giá h?i doái th?p hon là m?t l?i di?m. T? d?u th?p niên 1980 Qu? Ti?n t? Qu?c t? (IMF) dã d? xu?t gi?m giá ti?n t? nhu là m?t trong nh?ng gi?i dáp cho các qu?c gia dang phát tri?n mà ti?p t?c nh?p c?ng nhi?u hon là h? có th? xu?t c?ng. Khi d?ng ti?n n?i d?a gi?m giá, giá c? hàng nh?p kh?u s? d?t hon và làm cho hàng xu?t kh?u s? r? hon.[3] Gi?m giá ti?n cung là m?t gi?i pháp thích h?p cho n?n th?t nghi?p khi nh?ng bi?n pháp khác nhu gia tang vi?c tiêu sài công c?ng không th? th?c hi?n du?c vì n? công dã cao, hay khi m?t nu?c có cán cân thanh toán thâm h?t. M?t lý do mà các nu?c dang phát tri?n hay gi?m giá ti?n t? vì duy trì m?t t? giá h?i doái th?p giúp d? tích tr? ti?n ngo?i t?, mà có th? b?o v? tru?c nh?ng cu?c kh?ng ho?ng tài chính trong tuong lai. Tuy nhiên khi các nu?c ban giao thuong m?i ph?n ?ng b?ng cách cung gi?m giá tr? d?ng ti?n c?a mình, thì vi?c gi?m giá s? không còn có hi?u qu? n?a. Trên nguyên t?c khi dó không nu?c nào có h?u qu? t?t hay x?u di. Tuy nhiên m?t chi?n tranh ti?n t? nhu v?y s? làm các doanh nghi?p, và các nhà d?u tu hoang mang, m?t ni?m tin, làm h?i cho vi?c thuong m?i qu?c t?, làm n?n chí các nhà d?u tu. H?u qu? gián ti?p c?a cu?c chi?n tranh ti?n t? này gây ?nh hu?ng không t?t cho t?t c? các nu?c liên h?.')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [SoLuong], [Gia], [GiaKhuyenMai], [TacGia], [NamXuatBan], [NhaXuatBan], [Anh], [MaTheLoai], [NgayNhap], [TrangThai], [MoTa]) VALUES (78, N'Phẩm chất của nhà lãnh đạo', 20, 65000, 35000, N'Nguyễn Hoàng Thiên', 2011, N'Hà Nội', N'image__20__uvin-dv.jpeg', 28, CAST(N'2020-04-21T00:00:00' AS SmallDateTime), 1, N'Gi?m giá ti?n t?, t? tru?c t?i gi?, không bao gi? là m?t chi?n thu?t c?a chính ph? du?c dân chúng ua chu?ng. Vì nó làm gi?m di m?c s?ng c?a ngu?i dân cung nhu kh? nang mua s?m khi h? mua hàng hóa nh?p c?ng hay khi di ra nu?c ngoài. Nó cung có th? dua t?i l?m phát. Gi?m giá ti?n t? có th? làm cho vi?c tr? lãi nh?ng món n? qu?c t? tr? nên d?t hon, n?u ph?i tr? b?ng ti?n ngo?i t?. Cho t?i bây gi?, m?t ti?n t? m?nh du?c xem là m?t d?u hi?u uy tín, trong khi gi?m giá ti?n t? du?c liên h? t?i m?t chính ph? y?u kém.[2]Tuy nhiên, khi m?t nu?c có n?n th?t nghi?p cao hay mu?n theo du?i chính sách tang tru?ng xu?t kh?u, t? giá h?i doái th?p hon là m?t l?i di?m. T? d?u th?p niên 1980 Qu? Ti?n t? Qu?c t? (IMF) dã d? xu?t gi?m giá ti?n t? nhu là m?t trong nh?ng gi?i dáp cho các qu?c gia dang phát tri?n mà ti?p t?c nh?p c?ng nhi?u hon là h? có th? xu?t c?ng. Khi d?ng ti?n n?i d?a gi?m giá, giá c? hàng nh?p kh?u s? d?t hon và làm cho hàng xu?t kh?u s? r? hon.[3] Gi?m giá ti?n cung là m?t gi?i pháp thích h?p cho n?n th?t nghi?p khi nh?ng bi?n pháp khác nhu gia tang vi?c tiêu sài công c?ng không th? th?c hi?n du?c vì n? công dã cao, hay khi m?t nu?c có cán cân thanh toán thâm h?t. M?t lý do mà các nu?c dang phát tri?n hay gi?m giá ti?n t? vì duy trì m?t t? giá h?i doái th?p giúp d? tích tr? ti?n ngo?i t?, mà có th? b?o v? tru?c nh?ng cu?c kh?ng ho?ng tài chính trong tuong lai. Tuy nhiên khi các nu?c ban giao thuong m?i ph?n ?ng b?ng cách cung gi?m giá tr? d?ng ti?n c?a mình, thì vi?c gi?m giá s? không còn có hi?u qu? n?a. Trên nguyên t?c khi dó không nu?c nào có h?u qu? t?t hay x?u di. Tuy nhiên m?t chi?n tranh ti?n t? nhu v?y s? làm các doanh nghi?p, và các nhà d?u tu hoang mang, m?t ni?m tin, làm h?i cho vi?c thuong m?i qu?c t?, làm n?n chí các nhà d?u tu. H?u qu? gián ti?p c?a cu?c chi?n tranh ti?n t? này gây ?nh hu?ng không t?t cho t?t c? các nu?c liên h?.')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [SoLuong], [Gia], [GiaKhuyenMai], [TacGia], [NamXuatBan], [NhaXuatBan], [Anh], [MaTheLoai], [NgayNhap], [TrangThai], [MoTa]) VALUES (79, N'Đánh chính mình viễn chinh số phận', 20, 65000, 55000, N'Nguyễn Hoàng Tiến', 2011, N'Sài Gòn', N'Đánh_Thức_Chính_Mình_-_Viễn_Chinh_Số_Phận.jpg', 31, CAST(N'2020-04-21T00:00:00' AS SmallDateTime), 1, N'Gi?m giá ti?n t?, t? tru?c t?i gi?, không bao gi? là m?t chi?n thu?t c?a chính ph? du?c dân chúng ua chu?ng. Vì nó làm gi?m di m?c s?ng c?a ngu?i dân cung nhu kh? nang mua s?m khi h? mua hàng hóa nh?p c?ng hay khi di ra nu?c ngoài. Nó cung có th? dua t?i l?m phát. Gi?m giá ti?n t? có th? làm cho vi?c tr? lãi nh?ng món n? qu?c t? tr? nên d?t hon, n?u ph?i tr? b?ng ti?n ngo?i t?. Cho t?i bây gi?, m?t ti?n t? m?nh du?c xem là m?t d?u hi?u uy tín, trong khi gi?m giá ti?n t? du?c liên h? t?i m?t chính ph? y?u kém.[2]Tuy nhiên, khi m?t nu?c có n?n th?t nghi?p cao hay mu?n theo du?i chính sách tang tru?ng xu?t kh?u, t? giá h?i doái th?p hon là m?t l?i di?m. T? d?u th?p niên 1980 Qu? Ti?n t? Qu?c t? (IMF) dã d? xu?t gi?m giá ti?n t? nhu là m?t trong nh?ng gi?i dáp cho các qu?c gia dang phát tri?n mà ti?p t?c nh?p c?ng nhi?u hon là h? có th? xu?t c?ng. Khi d?ng ti?n n?i d?a gi?m giá, giá c? hàng nh?p kh?u s? d?t hon và làm cho hàng xu?t kh?u s? r? hon.[3] Gi?m giá ti?n cung là m?t gi?i pháp thích h?p cho n?n th?t nghi?p khi nh?ng bi?n pháp khác nhu gia tang vi?c tiêu sài công c?ng không th? th?c hi?n du?c vì n? công dã cao, hay khi m?t nu?c có cán cân thanh toán thâm h?t. M?t lý do mà các nu?c dang phát tri?n hay gi?m giá ti?n t? vì duy trì m?t t? giá h?i doái th?p giúp d? tích tr? ti?n ngo?i t?, mà có th? b?o v? tru?c nh?ng cu?c kh?ng ho?ng tài chính trong tuong lai. Tuy nhiên khi các nu?c ban giao thuong m?i ph?n ?ng b?ng cách cung gi?m giá tr? d?ng ti?n c?a mình, thì vi?c gi?m giá s? không còn có hi?u qu? n?a. Trên nguyên t?c khi dó không nu?c nào có h?u qu? t?t hay x?u di. Tuy nhiên m?t chi?n tranh ti?n t? nhu v?y s? làm các doanh nghi?p, và các nhà d?u tu hoang mang, m?t ni?m tin, làm h?i cho vi?c thuong m?i qu?c t?, làm n?n chí các nhà d?u tu. H?u qu? gián ti?p c?a cu?c chi?n tranh ti?n t? này gây ?nh hu?ng không t?t cho t?t c? các nu?c liên h?.')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [SoLuong], [Gia], [GiaKhuyenMai], [TacGia], [NamXuatBan], [NhaXuatBan], [Anh], [MaTheLoai], [NgayNhap], [TrangThai], [MoTa]) VALUES (80, N'Đừng lựa chọn an nhàn khi còn trẻ', 20, 65000, 55000, N'Nguyễn Hoàng Tiến', 2011, N'Sài Gòn', N'Đừng_Lựa_Chọn_An_Nhàn_Khi_Còn_Trẻ__Tái_Bản_2019__d4ny-vk.jpeg', 31, CAST(N'2020-04-21T00:00:00' AS SmallDateTime), 1, N'Gi?m giá ti?n t?, t? tru?c t?i gi?, không bao gi? là m?t chi?n thu?t c?a chính ph? du?c dân chúng ua chu?ng. Vì nó làm gi?m di m?c s?ng c?a ngu?i dân cung nhu kh? nang mua s?m khi h? mua hàng hóa nh?p c?ng hay khi di ra nu?c ngoài. Nó cung có th? dua t?i l?m phát. Gi?m giá ti?n t? có th? làm cho vi?c tr? lãi nh?ng món n? qu?c t? tr? nên d?t hon, n?u ph?i tr? b?ng ti?n ngo?i t?. Cho t?i bây gi?, m?t ti?n t? m?nh du?c xem là m?t d?u hi?u uy tín, trong khi gi?m giá ti?n t? du?c liên h? t?i m?t chính ph? y?u kém.[2]Tuy nhiên, khi m?t nu?c có n?n th?t nghi?p cao hay mu?n theo du?i chính sách tang tru?ng xu?t kh?u, t? giá h?i doái th?p hon là m?t l?i di?m. T? d?u th?p niên 1980 Qu? Ti?n t? Qu?c t? (IMF) dã d? xu?t gi?m giá ti?n t? nhu là m?t trong nh?ng gi?i dáp cho các qu?c gia dang phát tri?n mà ti?p t?c nh?p c?ng nhi?u hon là h? có th? xu?t c?ng. Khi d?ng ti?n n?i d?a gi?m giá, giá c? hàng nh?p kh?u s? d?t hon và làm cho hàng xu?t kh?u s? r? hon.[3] Gi?m giá ti?n cung là m?t gi?i pháp thích h?p cho n?n th?t nghi?p khi nh?ng bi?n pháp khác nhu gia tang vi?c tiêu sài công c?ng không th? th?c hi?n du?c vì n? công dã cao, hay khi m?t nu?c có cán cân thanh toán thâm h?t. M?t lý do mà các nu?c dang phát tri?n hay gi?m giá ti?n t? vì duy trì m?t t? giá h?i doái th?p giúp d? tích tr? ti?n ngo?i t?, mà có th? b?o v? tru?c nh?ng cu?c kh?ng ho?ng tài chính trong tuong lai. Tuy nhiên khi các nu?c ban giao thuong m?i ph?n ?ng b?ng cách cung gi?m giá tr? d?ng ti?n c?a mình, thì vi?c gi?m giá s? không còn có hi?u qu? n?a. Trên nguyên t?c khi dó không nu?c nào có h?u qu? t?t hay x?u di. Tuy nhiên m?t chi?n tranh ti?n t? nhu v?y s? làm các doanh nghi?p, và các nhà d?u tu hoang mang, m?t ni?m tin, làm h?i cho vi?c thuong m?i qu?c t?, làm n?n chí các nhà d?u tu. H?u qu? gián ti?p c?a cu?c chi?n tranh ti?n t? này gây ?nh hu?ng không t?t cho t?t c? các nu?c liên h?.')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [SoLuong], [Gia], [GiaKhuyenMai], [TacGia], [NamXuatBan], [NhaXuatBan], [Anh], [MaTheLoai], [NgayNhap], [TrangThai], [MoTa]) VALUES (81, N'Đừng tủi thân', 20, 65000, 55000, N'Nguyễn Hoàng Tiến', 2011, N'Sài Gòn', N'Đừng_Tủi_Thân.jpeg', 31, CAST(N'2020-04-21T00:00:00' AS SmallDateTime), 1, N'Gi?m giá ti?n t?, t? tru?c t?i gi?, không bao gi? là m?t chi?n thu?t c?a chính ph? du?c dân chúng ua chu?ng. Vì nó làm gi?m di m?c s?ng c?a ngu?i dân cung nhu kh? nang mua s?m khi h? mua hàng hóa nh?p c?ng hay khi di ra nu?c ngoài. Nó cung có th? dua t?i l?m phát. Gi?m giá ti?n t? có th? làm cho vi?c tr? lãi nh?ng món n? qu?c t? tr? nên d?t hon, n?u ph?i tr? b?ng ti?n ngo?i t?. Cho t?i bây gi?, m?t ti?n t? m?nh du?c xem là m?t d?u hi?u uy tín, trong khi gi?m giá ti?n t? du?c liên h? t?i m?t chính ph? y?u kém.[2]Tuy nhiên, khi m?t nu?c có n?n th?t nghi?p cao hay mu?n theo du?i chính sách tang tru?ng xu?t kh?u, t? giá h?i doái th?p hon là m?t l?i di?m. T? d?u th?p niên 1980 Qu? Ti?n t? Qu?c t? (IMF) dã d? xu?t gi?m giá ti?n t? nhu là m?t trong nh?ng gi?i dáp cho các qu?c gia dang phát tri?n mà ti?p t?c nh?p c?ng nhi?u hon là h? có th? xu?t c?ng. Khi d?ng ti?n n?i d?a gi?m giá, giá c? hàng nh?p kh?u s? d?t hon và làm cho hàng xu?t kh?u s? r? hon.[3] Gi?m giá ti?n cung là m?t gi?i pháp thích h?p cho n?n th?t nghi?p khi nh?ng bi?n pháp khác nhu gia tang vi?c tiêu sài công c?ng không th? th?c hi?n du?c vì n? công dã cao, hay khi m?t nu?c có cán cân thanh toán thâm h?t. M?t lý do mà các nu?c dang phát tri?n hay gi?m giá ti?n t? vì duy trì m?t t? giá h?i doái th?p giúp d? tích tr? ti?n ngo?i t?, mà có th? b?o v? tru?c nh?ng cu?c kh?ng ho?ng tài chính trong tuong lai. Tuy nhiên khi các nu?c ban giao thuong m?i ph?n ?ng b?ng cách cung gi?m giá tr? d?ng ti?n c?a mình, thì vi?c gi?m giá s? không còn có hi?u qu? n?a. Trên nguyên t?c khi dó không nu?c nào có h?u qu? t?t hay x?u di. Tuy nhiên m?t chi?n tranh ti?n t? nhu v?y s? làm các doanh nghi?p, và các nhà d?u tu hoang mang, m?t ni?m tin, làm h?i cho vi?c thuong m?i qu?c t?, làm n?n chí các nhà d?u tu. H?u qu? gián ti?p c?a cu?c chi?n tranh ti?n t? này gây ?nh hu?ng không t?t cho t?t c? các nu?c liên h?.')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [SoLuong], [Gia], [GiaKhuyenMai], [TacGia], [NamXuatBan], [NhaXuatBan], [Anh], [MaTheLoai], [NgayNhap], [TrangThai], [MoTa]) VALUES (82, N'Chạm tay hóa vàng', 20, 65000, 55000, N'Nguyễn Hoàng Tiến', 2011, N'Sài Gòn', N'image_195509_1_602.jpg', 31, CAST(N'2020-04-21T00:00:00' AS SmallDateTime), 1, N'Gi?m giá ti?n t?, t? tru?c t?i gi?, không bao gi? là m?t chi?n thu?t c?a chính ph? du?c dân chúng ua chu?ng. Vì nó làm gi?m di m?c s?ng c?a ngu?i dân cung nhu kh? nang mua s?m khi h? mua hàng hóa nh?p c?ng hay khi di ra nu?c ngoài. Nó cung có th? dua t?i l?m phát. Gi?m giá ti?n t? có th? làm cho vi?c tr? lãi nh?ng món n? qu?c t? tr? nên d?t hon, n?u ph?i tr? b?ng ti?n ngo?i t?. Cho t?i bây gi?, m?t ti?n t? m?nh du?c xem là m?t d?u hi?u uy tín, trong khi gi?m giá ti?n t? du?c liên h? t?i m?t chính ph? y?u kém.[2]Tuy nhiên, khi m?t nu?c có n?n th?t nghi?p cao hay mu?n theo du?i chính sách tang tru?ng xu?t kh?u, t? giá h?i doái th?p hon là m?t l?i di?m. T? d?u th?p niên 1980 Qu? Ti?n t? Qu?c t? (IMF) dã d? xu?t gi?m giá ti?n t? nhu là m?t trong nh?ng gi?i dáp cho các qu?c gia dang phát tri?n mà ti?p t?c nh?p c?ng nhi?u hon là h? có th? xu?t c?ng. Khi d?ng ti?n n?i d?a gi?m giá, giá c? hàng nh?p kh?u s? d?t hon và làm cho hàng xu?t kh?u s? r? hon.[3] Gi?m giá ti?n cung là m?t gi?i pháp thích h?p cho n?n th?t nghi?p khi nh?ng bi?n pháp khác nhu gia tang vi?c tiêu sài công c?ng không th? th?c hi?n du?c vì n? công dã cao, hay khi m?t nu?c có cán cân thanh toán thâm h?t. M?t lý do mà các nu?c dang phát tri?n hay gi?m giá ti?n t? vì duy trì m?t t? giá h?i doái th?p giúp d? tích tr? ti?n ngo?i t?, mà có th? b?o v? tru?c nh?ng cu?c kh?ng ho?ng tài chính trong tuong lai. Tuy nhiên khi các nu?c ban giao thuong m?i ph?n ?ng b?ng cách cung gi?m giá tr? d?ng ti?n c?a mình, thì vi?c gi?m giá s? không còn có hi?u qu? n?a. Trên nguyên t?c khi dó không nu?c nào có h?u qu? t?t hay x?u di. Tuy nhiên m?t chi?n tranh ti?n t? nhu v?y s? làm các doanh nghi?p, và các nhà d?u tu hoang mang, m?t ni?m tin, làm h?i cho vi?c thuong m?i qu?c t?, làm n?n chí các nhà d?u tu. H?u qu? gián ti?p c?a cu?c chi?n tranh ti?n t? này gây ?nh hu?ng không t?t cho t?t c? các nu?c liên h?.')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [SoLuong], [Gia], [GiaKhuyenMai], [TacGia], [NamXuatBan], [NhaXuatBan], [Anh], [MaTheLoai], [NgayNhap], [TrangThai], [MoTa]) VALUES (83, N'Để hiệu quả trong công việt', 20, 65000, 55000, N'Nguyễn Hoàng Tiến', 2011, N'Sài Gòn', N'image_195509_1_18128.jpg', 31, CAST(N'2020-04-21T00:00:00' AS SmallDateTime), 1, N'Gi?m giá ti?n t?, t? tru?c t?i gi?, không bao gi? là m?t chi?n thu?t c?a chính ph? du?c dân chúng ua chu?ng. Vì nó làm gi?m di m?c s?ng c?a ngu?i dân cung nhu kh? nang mua s?m khi h? mua hàng hóa nh?p c?ng hay khi di ra nu?c ngoài. Nó cung có th? dua t?i l?m phát. Gi?m giá ti?n t? có th? làm cho vi?c tr? lãi nh?ng món n? qu?c t? tr? nên d?t hon, n?u ph?i tr? b?ng ti?n ngo?i t?. Cho t?i bây gi?, m?t ti?n t? m?nh du?c xem là m?t d?u hi?u uy tín, trong khi gi?m giá ti?n t? du?c liên h? t?i m?t chính ph? y?u kém.[2]Tuy nhiên, khi m?t nu?c có n?n th?t nghi?p cao hay mu?n theo du?i chính sách tang tru?ng xu?t kh?u, t? giá h?i doái th?p hon là m?t l?i di?m. T? d?u th?p niên 1980 Qu? Ti?n t? Qu?c t? (IMF) dã d? xu?t gi?m giá ti?n t? nhu là m?t trong nh?ng gi?i dáp cho các qu?c gia dang phát tri?n mà ti?p t?c nh?p c?ng nhi?u hon là h? có th? xu?t c?ng. Khi d?ng ti?n n?i d?a gi?m giá, giá c? hàng nh?p kh?u s? d?t hon và làm cho hàng xu?t kh?u s? r? hon.[3] Gi?m giá ti?n cung là m?t gi?i pháp thích h?p cho n?n th?t nghi?p khi nh?ng bi?n pháp khác nhu gia tang vi?c tiêu sài công c?ng không th? th?c hi?n du?c vì n? công dã cao, hay khi m?t nu?c có cán cân thanh toán thâm h?t. M?t lý do mà các nu?c dang phát tri?n hay gi?m giá ti?n t? vì duy trì m?t t? giá h?i doái th?p giúp d? tích tr? ti?n ngo?i t?, mà có th? b?o v? tru?c nh?ng cu?c kh?ng ho?ng tài chính trong tuong lai. Tuy nhiên khi các nu?c ban giao thuong m?i ph?n ?ng b?ng cách cung gi?m giá tr? d?ng ti?n c?a mình, thì vi?c gi?m giá s? không còn có hi?u qu? n?a. Trên nguyên t?c khi dó không nu?c nào có h?u qu? t?t hay x?u di. Tuy nhiên m?t chi?n tranh ti?n t? nhu v?y s? làm các doanh nghi?p, và các nhà d?u tu hoang mang, m?t ni?m tin, làm h?i cho vi?c thuong m?i qu?c t?, làm n?n chí các nhà d?u tu. H?u qu? gián ti?p c?a cu?c chi?n tranh ti?n t? này gây ?nh hu?ng không t?t cho t?t c? các nu?c liên h?.')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [SoLuong], [Gia], [GiaKhuyenMai], [TacGia], [NamXuatBan], [NhaXuatBan], [Anh], [MaTheLoai], [NgayNhap], [TrangThai], [MoTa]) VALUES (84, N'Cần bằng cảm xúc cả lúc bão giông', 20, 65000, 55000, N'Nguyễn Hoàng Tiến', 2011, N'Sài Gòn', N'image_195509_1_32561.jpg', 31, CAST(N'2020-04-21T00:00:00' AS SmallDateTime), 1, N'Gi?m giá ti?n t?, t? tru?c t?i gi?, không bao gi? là m?t chi?n thu?t c?a chính ph? du?c dân chúng ua chu?ng. Vì nó làm gi?m di m?c s?ng c?a ngu?i dân cung nhu kh? nang mua s?m khi h? mua hàng hóa nh?p c?ng hay khi di ra nu?c ngoài. Nó cung có th? dua t?i l?m phát. Gi?m giá ti?n t? có th? làm cho vi?c tr? lãi nh?ng món n? qu?c t? tr? nên d?t hon, n?u ph?i tr? b?ng ti?n ngo?i t?. Cho t?i bây gi?, m?t ti?n t? m?nh du?c xem là m?t d?u hi?u uy tín, trong khi gi?m giá ti?n t? du?c liên h? t?i m?t chính ph? y?u kém.[2]Tuy nhiên, khi m?t nu?c có n?n th?t nghi?p cao hay mu?n theo du?i chính sách tang tru?ng xu?t kh?u, t? giá h?i doái th?p hon là m?t l?i di?m. T? d?u th?p niên 1980 Qu? Ti?n t? Qu?c t? (IMF) dã d? xu?t gi?m giá ti?n t? nhu là m?t trong nh?ng gi?i dáp cho các qu?c gia dang phát tri?n mà ti?p t?c nh?p c?ng nhi?u hon là h? có th? xu?t c?ng. Khi d?ng ti?n n?i d?a gi?m giá, giá c? hàng nh?p kh?u s? d?t hon và làm cho hàng xu?t kh?u s? r? hon.[3] Gi?m giá ti?n cung là m?t gi?i pháp thích h?p cho n?n th?t nghi?p khi nh?ng bi?n pháp khác nhu gia tang vi?c tiêu sài công c?ng không th? th?c hi?n du?c vì n? công dã cao, hay khi m?t nu?c có cán cân thanh toán thâm h?t. M?t lý do mà các nu?c dang phát tri?n hay gi?m giá ti?n t? vì duy trì m?t t? giá h?i doái th?p giúp d? tích tr? ti?n ngo?i t?, mà có th? b?o v? tru?c nh?ng cu?c kh?ng ho?ng tài chính trong tuong lai. Tuy nhiên khi các nu?c ban giao thuong m?i ph?n ?ng b?ng cách cung gi?m giá tr? d?ng ti?n c?a mình, thì vi?c gi?m giá s? không còn có hi?u qu? n?a. Trên nguyên t?c khi dó không nu?c nào có h?u qu? t?t hay x?u di. Tuy nhiên m?t chi?n tranh ti?n t? nhu v?y s? làm các doanh nghi?p, và các nhà d?u tu hoang mang, m?t ni?m tin, làm h?i cho vi?c thuong m?i qu?c t?, làm n?n chí các nhà d?u tu. H?u qu? gián ti?p c?a cu?c chi?n tranh ti?n t? này gây ?nh hu?ng không t?t cho t?t c? các nu?c liên h?.')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [SoLuong], [Gia], [GiaKhuyenMai], [TacGia], [NamXuatBan], [NhaXuatBan], [Anh], [MaTheLoai], [NgayNhap], [TrangThai], [MoTa]) VALUES (85, N'Rèn luyện bộ não', 20, 65000, 55000, N'Nguyễn Hoàng Tiến', 2011, N'Sài Gòn', N'image_195509_1_35063.jpg', 31, CAST(N'2020-04-21T00:00:00' AS SmallDateTime), 1, N'Gi?m giá ti?n t?, t? tru?c t?i gi?, không bao gi? là m?t chi?n thu?t c?a chính ph? du?c dân chúng ua chu?ng. Vì nó làm gi?m di m?c s?ng c?a ngu?i dân cung nhu kh? nang mua s?m khi h? mua hàng hóa nh?p c?ng hay khi di ra nu?c ngoài. Nó cung có th? dua t?i l?m phát. Gi?m giá ti?n t? có th? làm cho vi?c tr? lãi nh?ng món n? qu?c t? tr? nên d?t hon, n?u ph?i tr? b?ng ti?n ngo?i t?. Cho t?i bây gi?, m?t ti?n t? m?nh du?c xem là m?t d?u hi?u uy tín, trong khi gi?m giá ti?n t? du?c liên h? t?i m?t chính ph? y?u kém.[2]Tuy nhiên, khi m?t nu?c có n?n th?t nghi?p cao hay mu?n theo du?i chính sách tang tru?ng xu?t kh?u, t? giá h?i doái th?p hon là m?t l?i di?m. T? d?u th?p niên 1980 Qu? Ti?n t? Qu?c t? (IMF) dã d? xu?t gi?m giá ti?n t? nhu là m?t trong nh?ng gi?i dáp cho các qu?c gia dang phát tri?n mà ti?p t?c nh?p c?ng nhi?u hon là h? có th? xu?t c?ng. Khi d?ng ti?n n?i d?a gi?m giá, giá c? hàng nh?p kh?u s? d?t hon và làm cho hàng xu?t kh?u s? r? hon.[3] Gi?m giá ti?n cung là m?t gi?i pháp thích h?p cho n?n th?t nghi?p khi nh?ng bi?n pháp khác nhu gia tang vi?c tiêu sài công c?ng không th? th?c hi?n du?c vì n? công dã cao, hay khi m?t nu?c có cán cân thanh toán thâm h?t. M?t lý do mà các nu?c dang phát tri?n hay gi?m giá ti?n t? vì duy trì m?t t? giá h?i doái th?p giúp d? tích tr? ti?n ngo?i t?, mà có th? b?o v? tru?c nh?ng cu?c kh?ng ho?ng tài chính trong tuong lai. Tuy nhiên khi các nu?c ban giao thuong m?i ph?n ?ng b?ng cách cung gi?m giá tr? d?ng ti?n c?a mình, thì vi?c gi?m giá s? không còn có hi?u qu? n?a. Trên nguyên t?c khi dó không nu?c nào có h?u qu? t?t hay x?u di. Tuy nhiên m?t chi?n tranh ti?n t? nhu v?y s? làm các doanh nghi?p, và các nhà d?u tu hoang mang, m?t ni?m tin, làm h?i cho vi?c thuong m?i qu?c t?, làm n?n chí các nhà d?u tu. H?u qu? gián ti?p c?a cu?c chi?n tranh ti?n t? này gây ?nh hu?ng không t?t cho t?t c? các nu?c liên h?.')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [SoLuong], [Gia], [GiaKhuyenMai], [TacGia], [NamXuatBan], [NhaXuatBan], [Anh], [MaTheLoai], [NgayNhap], [TrangThai], [MoTa]) VALUES (86, N'Hành trình phương đông', 20, 65000, 55000, N'Nguyễn Hoàng Tiến', 2011, N'Sài Gòn', N'4a.jpeg', 31, CAST(N'2020-04-21T00:00:00' AS SmallDateTime), 1, N'Gi?m giá ti?n t?, t? tru?c t?i gi?, không bao gi? là m?t chi?n thu?t c?a chính ph? du?c dân chúng ua chu?ng. Vì nó làm gi?m di m?c s?ng c?a ngu?i dân cung nhu kh? nang mua s?m khi h? mua hàng hóa nh?p c?ng hay khi di ra nu?c ngoài. Nó cung có th? dua t?i l?m phát. Gi?m giá ti?n t? có th? làm cho vi?c tr? lãi nh?ng món n? qu?c t? tr? nên d?t hon, n?u ph?i tr? b?ng ti?n ngo?i t?. Cho t?i bây gi?, m?t ti?n t? m?nh du?c xem là m?t d?u hi?u uy tín, trong khi gi?m giá ti?n t? du?c liên h? t?i m?t chính ph? y?u kém.[2]Tuy nhiên, khi m?t nu?c có n?n th?t nghi?p cao hay mu?n theo du?i chính sách tang tru?ng xu?t kh?u, t? giá h?i doái th?p hon là m?t l?i di?m. T? d?u th?p niên 1980 Qu? Ti?n t? Qu?c t? (IMF) dã d? xu?t gi?m giá ti?n t? nhu là m?t trong nh?ng gi?i dáp cho các qu?c gia dang phát tri?n mà ti?p t?c nh?p c?ng nhi?u hon là h? có th? xu?t c?ng. Khi d?ng ti?n n?i d?a gi?m giá, giá c? hàng nh?p kh?u s? d?t hon và làm cho hàng xu?t kh?u s? r? hon.[3] Gi?m giá ti?n cung là m?t gi?i pháp thích h?p cho n?n th?t nghi?p khi nh?ng bi?n pháp khác nhu gia tang vi?c tiêu sài công c?ng không th? th?c hi?n du?c vì n? công dã cao, hay khi m?t nu?c có cán cân thanh toán thâm h?t. M?t lý do mà các nu?c dang phát tri?n hay gi?m giá ti?n t? vì duy trì m?t t? giá h?i doái th?p giúp d? tích tr? ti?n ngo?i t?, mà có th? b?o v? tru?c nh?ng cu?c kh?ng ho?ng tài chính trong tuong lai. Tuy nhiên khi các nu?c ban giao thuong m?i ph?n ?ng b?ng cách cung gi?m giá tr? d?ng ti?n c?a mình, thì vi?c gi?m giá s? không còn có hi?u qu? n?a. Trên nguyên t?c khi dó không nu?c nào có h?u qu? t?t hay x?u di. Tuy nhiên m?t chi?n tranh ti?n t? nhu v?y s? làm các doanh nghi?p, và các nhà d?u tu hoang mang, m?t ni?m tin, làm h?i cho vi?c thuong m?i qu?c t?, làm n?n chí các nhà d?u tu. H?u qu? gián ti?p c?a cu?c chi?n tranh ti?n t? này gây ?nh hu?ng không t?t cho t?t c? các nu?c liên h?.')
INSERT [dbo].[Sach] ([MaSach], [TenSach], [SoLuong], [Gia], [GiaKhuyenMai], [TacGia], [NamXuatBan], [NhaXuatBan], [Anh], [MaTheLoai], [NgayNhap], [TrangThai], [MoTa]) VALUES (87, N'sách đại số tuyến tính 23', 13, 20, 20, N'Ngô Thừa Ân', 2020, N'Giáo Dục', N'Dịch_Vụ_Khách_Hàng_-_Thương_Vụ_1_Vốn_4_Lời__Bí_Mật_Thăng_Tiến_Của_Những_Bậc_Thầy_Dịch_Vụ_Hàng_Đầu_Thế_Giới_.jpg', 47, CAST(N'2020-04-23T00:00:00' AS SmallDateTime), 1, N'<p>kdkdkdjfhf</p>
')
SET IDENTITY_INSERT [dbo].[Sach] OFF
SET IDENTITY_INSERT [dbo].[TheLoai] ON 

INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai], [MaNhomTheLoai]) VALUES (16, N'Tiểu Thuyết', 5)
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai], [MaNhomTheLoai]) VALUES (17, N'Huyền Bí', 5)
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai], [MaNhomTheLoai]) VALUES (18, N'Giả Tưởng', 5)
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai], [MaNhomTheLoai]) VALUES (20, N'Kinh Dị ', 5)
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai], [MaNhomTheLoai]) VALUES (21, N'Sách Ngôn Tình', 5)
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai], [MaNhomTheLoai]) VALUES (22, N'Mẹ Và Bé', 7)
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai], [MaNhomTheLoai]) VALUES (23, N'Cẩm Nang Làm Cha Mẹ', 7)
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai], [MaNhomTheLoai]) VALUES (24, N'Giáo Dục Trẻ Nhỏ', 7)
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai], [MaNhomTheLoai]) VALUES (25, N'Nữ Công Gia Chánh', 8)
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai], [MaNhomTheLoai]) VALUES (26, N'Bí Quyết Làm Đẹp', 8)
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai], [MaNhomTheLoai]) VALUES (27, N'Bài Học Lãnh Đạo', 9)
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai], [MaNhomTheLoai]) VALUES (28, N'Quản Trị Kinh Doanh', 9)
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai], [MaNhomTheLoai]) VALUES (29, N'Kinh Nghiệm Bán Hàng', 9)
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai], [MaNhomTheLoai]) VALUES (30, N'Rèn Luyện Nhân Cách', 10)
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai], [MaNhomTheLoai]) VALUES (31, N'Sách Kỹ Năng Sống', 10)
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai], [MaNhomTheLoai]) VALUES (32, N'Sách Kiến Thức Tổng Hợp', 11)
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai], [MaNhomTheLoai]) VALUES (33, N'Sách Nông - Lâm - Ngư Nghiệp', 11)
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai], [MaNhomTheLoai]) VALUES (34, N'Dictionaries-Language', 12)
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai], [MaNhomTheLoai]) VALUES (35, N'Dictionaries', 12)
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai], [MaNhomTheLoai]) VALUES (36, N'Learning English', 12)
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai], [MaNhomTheLoai]) VALUES (37, N'Language Teaching', 12)
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai], [MaNhomTheLoai]) VALUES (38, N'Sách Kỹ Năng Sống Cho Trẻ', 13)
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai], [MaNhomTheLoai]) VALUES (39, N'Sách Kiến Thức Sống Cho Trẻ', 13)
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai], [MaNhomTheLoai]) VALUES (40, N'Truyện Thần Đồng Đất Việt', 17)
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai], [MaNhomTheLoai]) VALUES (41, N'Truyện Conan', 27)
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai], [MaNhomTheLoai]) VALUES (42, N'Truyên Doreamon', 27)
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai], [MaNhomTheLoai]) VALUES (43, N'Truyện One piece ', 27)
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai], [MaNhomTheLoai]) VALUES (44, N'Thể loại mới', 28)
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai], [MaNhomTheLoai]) VALUES (45, N'Thể loại mới 2', 29)
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai], [MaNhomTheLoai]) VALUES (46, N'Thể loại mới 3', 29)
INSERT [dbo].[TheLoai] ([MaTheLoai], [TenTheLoai], [MaNhomTheLoai]) VALUES (47, N'Thể loại mới 3 3', 30)
SET IDENTITY_INSERT [dbo].[TheLoai] OFF
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_HoaDon] FOREIGN KEY([MaHoaDon])
REFERENCES [dbo].[HoaDon] ([MaHoaDon])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_HoaDon]
GO
ALTER TABLE [dbo].[ChiTietHoaDon]  WITH CHECK ADD  CONSTRAINT [FK_ChiTietHoaDon_Sach] FOREIGN KEY([MaSach])
REFERENCES [dbo].[Sach] ([MaSach])
GO
ALTER TABLE [dbo].[ChiTietHoaDon] CHECK CONSTRAINT [FK_ChiTietHoaDon_Sach]
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD  CONSTRAINT [FK_GioHang_KhachHang] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KhachHang] ([MaKhachHang])
GO
ALTER TABLE [dbo].[GioHang] CHECK CONSTRAINT [FK_GioHang_KhachHang]
GO
ALTER TABLE [dbo].[GioHang]  WITH CHECK ADD  CONSTRAINT [FK_GioHang_Sach] FOREIGN KEY([MaSach])
REFERENCES [dbo].[Sach] ([MaSach])
GO
ALTER TABLE [dbo].[GioHang] CHECK CONSTRAINT [FK_GioHang_Sach]
GO
ALTER TABLE [dbo].[HoaDon]  WITH CHECK ADD  CONSTRAINT [FK_HoaDon_KhachHang] FOREIGN KEY([MaKhachHang])
REFERENCES [dbo].[KhachHang] ([MaKhachHang])
GO
ALTER TABLE [dbo].[HoaDon] CHECK CONSTRAINT [FK_HoaDon_KhachHang]
GO
ALTER TABLE [dbo].[NhomTheLoai]  WITH CHECK ADD  CONSTRAINT [FK_NhomTheLoai_DanhMuc] FOREIGN KEY([MaDanhMuc])
REFERENCES [dbo].[DanhMuc] ([MaDanhMuc])
GO
ALTER TABLE [dbo].[NhomTheLoai] CHECK CONSTRAINT [FK_NhomTheLoai_DanhMuc]
GO
ALTER TABLE [dbo].[Sach]  WITH CHECK ADD  CONSTRAINT [FK_Sach_TheLoai] FOREIGN KEY([MaTheLoai])
REFERENCES [dbo].[TheLoai] ([MaTheLoai])
GO
ALTER TABLE [dbo].[Sach] CHECK CONSTRAINT [FK_Sach_TheLoai]
GO
ALTER TABLE [dbo].[TheLoai]  WITH CHECK ADD  CONSTRAINT [FK_TheLoai_NhomTheLoai] FOREIGN KEY([MaNhomTheLoai])
REFERENCES [dbo].[NhomTheLoai] ([MaNhomTheLoai])
GO
ALTER TABLE [dbo].[TheLoai] CHECK CONSTRAINT [FK_TheLoai_NhomTheLoai]
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[60] 4[26] 2[5] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "ChiTietHoaDon"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 202
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "HoaDon"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 177
               Right = 465
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Sach"
            Begin Extent = 
               Top = 37
               Left = 608
               Bottom = 340
               Right = 786
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ChiTietSachHoaDon'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'ChiTietSachHoaDon'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[66] 4[5] 2[11] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "NhomTheLoai"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 159
               Right = 223
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "Sach"
            Begin Extent = 
               Top = 6
               Left = 261
               Bottom = 305
               Right = 431
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TheLoai"
            Begin Extent = 
               Top = 10
               Left = 618
               Bottom = 145
               Right = 800
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'SachDanhMuc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'SachDanhMuc'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPane1', @value=N'[0E232FF0-B466-11cf-A24F-00AA00A3EFFF, 1.00]
Begin DesignProperties = 
   Begin PaneConfigurations = 
      Begin PaneConfiguration = 0
         NumPanes = 4
         Configuration = "(H (1[66] 4[5] 2[12] 3) )"
      End
      Begin PaneConfiguration = 1
         NumPanes = 3
         Configuration = "(H (1 [50] 4 [25] 3))"
      End
      Begin PaneConfiguration = 2
         NumPanes = 3
         Configuration = "(H (1 [50] 2 [25] 3))"
      End
      Begin PaneConfiguration = 3
         NumPanes = 3
         Configuration = "(H (4 [30] 2 [40] 3))"
      End
      Begin PaneConfiguration = 4
         NumPanes = 2
         Configuration = "(H (1 [56] 3))"
      End
      Begin PaneConfiguration = 5
         NumPanes = 2
         Configuration = "(H (2 [66] 3))"
      End
      Begin PaneConfiguration = 6
         NumPanes = 2
         Configuration = "(H (4 [50] 3))"
      End
      Begin PaneConfiguration = 7
         NumPanes = 1
         Configuration = "(V (3))"
      End
      Begin PaneConfiguration = 8
         NumPanes = 3
         Configuration = "(H (1[56] 4[18] 2) )"
      End
      Begin PaneConfiguration = 9
         NumPanes = 2
         Configuration = "(H (1 [75] 4))"
      End
      Begin PaneConfiguration = 10
         NumPanes = 2
         Configuration = "(H (1[66] 2) )"
      End
      Begin PaneConfiguration = 11
         NumPanes = 2
         Configuration = "(H (4 [60] 2))"
      End
      Begin PaneConfiguration = 12
         NumPanes = 1
         Configuration = "(H (1) )"
      End
      Begin PaneConfiguration = 13
         NumPanes = 1
         Configuration = "(V (4))"
      End
      Begin PaneConfiguration = 14
         NumPanes = 1
         Configuration = "(V (2))"
      End
      ActivePaneConfig = 0
   End
   Begin DiagramPane = 
      Begin Origin = 
         Top = 0
         Left = 0
      End
      Begin Tables = 
         Begin Table = "Sach"
            Begin Extent = 
               Top = 6
               Left = 38
               Bottom = 293
               Right = 208
            End
            DisplayFlags = 280
            TopColumn = 0
         End
         Begin Table = "TheLoai"
            Begin Extent = 
               Top = 6
               Left = 246
               Bottom = 209
               Right = 428
            End
            DisplayFlags = 280
            TopColumn = 0
         End
      End
   End
   Begin SQLPane = 
   End
   Begin DataPane = 
      Begin ParameterDefaults = ""
      End
   End
   Begin CriteriaPane = 
      Begin ColumnWidths = 11
         Column = 1440
         Alias = 900
         Table = 1170
         Output = 720
         Append = 1400
         NewValue = 1170
         SortType = 1350
         SortOrder = 1410
         GroupBy = 1350
         Filter = 1350
         Or = 1350
         Or = 1350
         Or = 1350
      End
   End
End
' , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'SachNhomTheLoai'
GO
EXEC sys.sp_addextendedproperty @name=N'MS_DiagramPaneCount', @value=1 , @level0type=N'SCHEMA',@level0name=N'dbo', @level1type=N'VIEW',@level1name=N'SachNhomTheLoai'
GO
