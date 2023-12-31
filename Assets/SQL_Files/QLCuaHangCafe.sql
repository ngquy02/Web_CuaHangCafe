USE [QLCuaHangCafe]
GO
/****** Object:  Table [dbo].[tbChiTietHoaDonBan]    Script Date: 14/12/2023 15:41:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbChiTietHoaDonBan](
	[MaHoaDon] [int] NOT NULL,
	[MaSanPham] [int] NOT NULL,
	[GiaBan] [money] NULL,
	[GiamGia] [int] NULL,
	[SoLuong] [int] NULL,
	[ThanhTien] [money] NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC,
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbHoaDonBan]    Script Date: 14/12/2023 15:41:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbHoaDonBan](
	[MaHoaDon] [int] IDENTITY(1,1) NOT NULL,
	[SoHoaDon] [nvarchar](14) NOT NULL,
	[NgayBan] [datetime] NULL,
	[TongTien] [money] NULL,
	[CustomerId] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbKhachHang]    Script Date: 14/12/2023 15:41:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbKhachHang](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenKhachHang] [nvarchar](50) NOT NULL,
	[SDTKhachHang] [nvarchar](10) NOT NULL,
	[DiaChi] [nvarchar](max) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbNhomSanPham]    Script Date: 14/12/2023 15:41:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbNhomSanPham](
	[MaNhomSP] [int] IDENTITY(1,1) NOT NULL,
	[TenNhomSP] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaNhomSP] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbPhanHoi]    Script Date: 14/12/2023 15:41:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbPhanHoi](
	[MaPhanHoi] [nvarchar](6) NOT NULL,
	[TieuDe] [nvarchar](50) NOT NULL,
	[SoDienThoai] [nvarchar](10) NULL,
	[NoiDung] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaPhanHoi] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbQuanTriVien]    Script Date: 14/12/2023 15:41:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbQuanTriVien](
	[Id] [int] IDENTITY(1,1) NOT NULL,
	[TenNguoiDung] [nvarchar](50) NOT NULL,
	[MatKhau] [nvarchar](255) NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[Id] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbSanPham]    Script Date: 14/12/2023 15:41:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbSanPham](
	[MaSanPham] [int] IDENTITY(1,1) NOT NULL,
	[TenSanPham] [nvarchar](255) NOT NULL,
	[GiaBan] [money] NULL,
	[MoTa] [nvarchar](max) NULL,
	[HinhAnh] [nvarchar](max) NULL,
	[GhiChu] [nvarchar](max) NULL,
	[MaNhomSP] [int] NOT NULL,
PRIMARY KEY CLUSTERED 
(
	[MaSanPham] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
/****** Object:  Table [dbo].[tbTinTuc]    Script Date: 14/12/2023 15:41:22 ******/
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
CREATE TABLE [dbo].[tbTinTuc](
	[MaTinTuc] [int] IDENTITY(1,1) NOT NULL,
	[TieuDe] [nvarchar](255) NOT NULL,
	[NgayDang] [date] NULL,
	[NoiDung] [nvarchar](max) NULL,
	[HinhAnh] [nvarchar](max) NULL,
PRIMARY KEY CLUSTERED 
(
	[MaTinTuc] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, IGNORE_DUP_KEY = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY] TEXTIMAGE_ON [PRIMARY]
GO
INSERT [dbo].[tbChiTietHoaDonBan] ([MaHoaDon], [MaSanPham], [GiaBan], [GiamGia], [SoLuong], [ThanhTien]) VALUES (1, 1, 39000.0000, NULL, 2, 78000.0000)
INSERT [dbo].[tbChiTietHoaDonBan] ([MaHoaDon], [MaSanPham], [GiaBan], [GiamGia], [SoLuong], [ThanhTien]) VALUES (1, 2, 39000.0000, NULL, 2, 78000.0000)
GO
SET IDENTITY_INSERT [dbo].[tbHoaDonBan] ON 

INSERT [dbo].[tbHoaDonBan] ([MaHoaDon], [SoHoaDon], [NgayBan], [TongTien], [CustomerId]) VALUES (1, N'202304260001', CAST(N'2023-04-26T00:00:00.000' AS DateTime), 156000.0000, 1)
SET IDENTITY_INSERT [dbo].[tbHoaDonBan] OFF
GO
SET IDENTITY_INSERT [dbo].[tbKhachHang] ON 

INSERT [dbo].[tbKhachHang] ([Id], [TenKhachHang], [SDTKhachHang], [DiaChi]) VALUES (1, N'Hyakky', N'404', N'Hà Nội')
SET IDENTITY_INSERT [dbo].[tbKhachHang] OFF
GO
SET IDENTITY_INSERT [dbo].[tbNhomSanPham] ON 

INSERT [dbo].[tbNhomSanPham] ([MaNhomSP], [TenNhomSP]) VALUES (1, N'Cà phê')
INSERT [dbo].[tbNhomSanPham] ([MaNhomSP], [TenNhomSP]) VALUES (2, N'Các loại đồ uống khác')
INSERT [dbo].[tbNhomSanPham] ([MaNhomSP], [TenNhomSP]) VALUES (3, N'Nước ép/Sinh tố')
INSERT [dbo].[tbNhomSanPham] ([MaNhomSP], [TenNhomSP]) VALUES (4, N'Trà sữa')
INSERT [dbo].[tbNhomSanPham] ([MaNhomSP], [TenNhomSP]) VALUES (5, N'Trà')
SET IDENTITY_INSERT [dbo].[tbNhomSanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[tbQuanTriVien] ON 

INSERT [dbo].[tbQuanTriVien] ([Id], [TenNguoiDung], [MatKhau]) VALUES (1, N'admin', N'admin')
SET IDENTITY_INSERT [dbo].[tbQuanTriVien] OFF
GO
SET IDENTITY_INSERT [dbo].[tbSanPham] ON 

INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [HinhAnh], [GhiChu], [MaNhomSP]) VALUES (1, N'Cà phê sữa đá', 39000.0000, N'Cà phê là thức uống tuyệt vời cho những người yêu thích hương vị đậm đà và năng lượng bùng nổ. Cà phê được làm từ hạt cà phê rang xay, có chứa caffeine và các chất chống oxy hóa có lợi cho sức khỏe. Bạn có thể thưởng thức cà phê theo nhiều cách khác nhau, từ cà phê đen đơn giản đến cà phê sữa đá ngọt ngào, hay cà phê latte béo ngậy. Cà phê là bạn đồng hành lý tưởng cho mỗi buổi sáng, giúp bạn tỉnh táo và sẵn sàng cho một ngày mới. Hãy thử cà phê ngay hôm nay và cảm nhận sự khác biệt!', N'ca-phe-sua-da.jpeg', NULL, 1)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [HinhAnh], [GhiChu], [MaNhomSP]) VALUES (2, N'Cà phê sữa nóng', 39000.0000, N'Cà phê là thức uống tuyệt vời cho những người yêu thích hương vị đậm đà và năng lượng bùng nổ. Cà phê được làm từ hạt cà phê rang xay, có chứa caffeine và các chất chống oxy hóa có lợi cho sức khỏe. Bạn có thể thưởng thức cà phê theo nhiều cách khác nhau, từ cà phê đen đơn giản đến cà phê sữa đá ngọt ngào, hay cà phê latte béo ngậy. Cà phê là bạn đồng hành lý tưởng cho mỗi buổi sáng, giúp bạn tỉnh táo và sẵn sàng cho một ngày mới. Hãy thử cà phê ngay hôm nay và cảm nhận sự khác biệt!', N'ca-phe-sua-nong.jpeg', NULL, 1)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [HinhAnh], [GhiChu], [MaNhomSP]) VALUES (3, N'Bạc xỉu đá', 29000.0000, N'Cà phê là thức uống tuyệt vời cho những người yêu thích hương vị đậm đà và năng lượng bùng nổ. Cà phê được làm từ hạt cà phê rang xay, có chứa caffeine và các chất chống oxy hóa có lợi cho sức khỏe. Bạn có thể thưởng thức cà phê theo nhiều cách khác nhau, từ cà phê đen đơn giản đến cà phê sữa đá ngọt ngào, hay cà phê latte béo ngậy. Cà phê là bạn đồng hành lý tưởng cho mỗi buổi sáng, giúp bạn tỉnh táo và sẵn sàng cho một ngày mới. Hãy thử cà phê ngay hôm nay và cảm nhận sự khác biệt!', N'bac-xiu-da.jpeg', NULL, 1)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [HinhAnh], [GhiChu], [MaNhomSP]) VALUES (4, N'Bạc xỉu nóng', 39000.0000, N'Cà phê là thức uống tuyệt vời cho những người yêu thích hương vị đậm đà và năng lượng bùng nổ. Cà phê được làm từ hạt cà phê rang xay, có chứa caffeine và các chất chống oxy hóa có lợi cho sức khỏe. Bạn có thể thưởng thức cà phê theo nhiều cách khác nhau, từ cà phê đen đơn giản đến cà phê sữa đá ngọt ngào, hay cà phê latte béo ngậy. Cà phê là bạn đồng hành lý tưởng cho mỗi buổi sáng, giúp bạn tỉnh táo và sẵn sàng cho một ngày mới. Hãy thử cà phê ngay hôm nay và cảm nhận sự khác biệt!', N'bac-xiu-nong.jpeg', NULL, 1)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [HinhAnh], [GhiChu], [MaNhomSP]) VALUES (5, N'Cà phê đen', 29000.0000, N'Cà phê là thức uống tuyệt vời cho những người yêu thích hương vị đậm đà và năng lượng bùng nổ. Cà phê được làm từ hạt cà phê rang xay, có chứa caffeine và các chất chống oxy hóa có lợi cho sức khỏe. Bạn có thể thưởng thức cà phê theo nhiều cách khác nhau, từ cà phê đen đơn giản đến cà phê sữa đá ngọt ngào, hay cà phê latte béo ngậy. Cà phê là bạn đồng hành lý tưởng cho mỗi buổi sáng, giúp bạn tỉnh táo và sẵn sàng cho một ngày mới. Hãy thử cà phê ngay hôm nay và cảm nhận sự khác biệt!', N'ca-phe-den.jpeg', NULL, 1)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [HinhAnh], [GhiChu], [MaNhomSP]) VALUES (6, N'Cà phê đen nóng', 39000.0000, N'Cà phê là thức uống tuyệt vời cho những người yêu thích hương vị đậm đà và năng lượng bùng nổ. Cà phê được làm từ hạt cà phê rang xay, có chứa caffeine và các chất chống oxy hóa có lợi cho sức khỏe. Bạn có thể thưởng thức cà phê theo nhiều cách khác nhau, từ cà phê đen đơn giản đến cà phê sữa đá ngọt ngào, hay cà phê latte béo ngậy. Cà phê là bạn đồng hành lý tưởng cho mỗi buổi sáng, giúp bạn tỉnh táo và sẵn sàng cho một ngày mới. Hãy thử cà phê ngay hôm nay và cảm nhận sự khác biệt!', N'ca-phe-den-nong.jpeg', NULL, 1)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [HinhAnh], [GhiChu], [MaNhomSP]) VALUES (7, N'Caramel Macchiato đá', 55000.0000, N'Cà phê là thức uống tuyệt vời cho những người yêu thích hương vị đậm đà và năng lượng bùng nổ. Cà phê được làm từ hạt cà phê rang xay, có chứa caffeine và các chất chống oxy hóa có lợi cho sức khỏe. Bạn có thể thưởng thức cà phê theo nhiều cách khác nhau, từ cà phê đen đơn giản đến cà phê sữa đá ngọt ngào, hay cà phê latte béo ngậy. Cà phê là bạn đồng hành lý tưởng cho mỗi buổi sáng, giúp bạn tỉnh táo và sẵn sàng cho một ngày mới. Hãy thử cà phê ngay hôm nay và cảm nhận sự khác biệt!', N'caramel-macchiato-da.jpeg', NULL, 1)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [HinhAnh], [GhiChu], [MaNhomSP]) VALUES (8, N'Caramel Macchiato nóng', 55000.0000, N'Cà phê là thức uống tuyệt vời cho những người yêu thích hương vị đậm đà và năng lượng bùng nổ. Cà phê được làm từ hạt cà phê rang xay, có chứa caffeine và các chất chống oxy hóa có lợi cho sức khỏe. Bạn có thể thưởng thức cà phê theo nhiều cách khác nhau, từ cà phê đen đơn giản đến cà phê sữa đá ngọt ngào, hay cà phê latte béo ngậy. Cà phê là bạn đồng hành lý tưởng cho mỗi buổi sáng, giúp bạn tỉnh táo và sẵn sàng cho một ngày mới. Hãy thử cà phê ngay hôm nay và cảm nhận sự khác biệt!', N'caramel-macchiato-nong.jpeg', NULL, 1)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [HinhAnh], [GhiChu], [MaNhomSP]) VALUES (9, N'Latte đá', 55000.0000, N'Cà phê là thức uống tuyệt vời cho những người yêu thích hương vị đậm đà và năng lượng bùng nổ. Cà phê được làm từ hạt cà phê rang xay, có chứa caffeine và các chất chống oxy hóa có lợi cho sức khỏe. Bạn có thể thưởng thức cà phê theo nhiều cách khác nhau, từ cà phê đen đơn giản đến cà phê sữa đá ngọt ngào, hay cà phê latte béo ngậy. Cà phê là bạn đồng hành lý tưởng cho mỗi buổi sáng, giúp bạn tỉnh táo và sẵn sàng cho một ngày mới. Hãy thử cà phê ngay hôm nay và cảm nhận sự khác biệt!', N'latte-da.jpeg', NULL, 1)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [HinhAnh], [GhiChu], [MaNhomSP]) VALUES (10, N'Latte nóng', 55000.0000, N'Cà phê là thức uống tuyệt vời cho những người yêu thích hương vị đậm đà và năng lượng bùng nổ. Cà phê được làm từ hạt cà phê rang xay, có chứa caffeine và các chất chống oxy hóa có lợi cho sức khỏe. Bạn có thể thưởng thức cà phê theo nhiều cách khác nhau, từ cà phê đen đơn giản đến cà phê sữa đá ngọt ngào, hay cà phê latte béo ngậy. Cà phê là bạn đồng hành lý tưởng cho mỗi buổi sáng, giúp bạn tỉnh táo và sẵn sàng cho một ngày mới. Hãy thử cà phê ngay hôm nay và cảm nhận sự khác biệt!', N'latte-nong.jpeg', NULL, 1)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [HinhAnh], [GhiChu], [MaNhomSP]) VALUES (11, N'Americano đá', 45000.0000, N'Cà phê là thức uống tuyệt vời cho những người yêu thích hương vị đậm đà và năng lượng bùng nổ. Cà phê được làm từ hạt cà phê rang xay, có chứa caffeine và các chất chống oxy hóa có lợi cho sức khỏe. Bạn có thể thưởng thức cà phê theo nhiều cách khác nhau, từ cà phê đen đơn giản đến cà phê sữa đá ngọt ngào, hay cà phê latte béo ngậy. Cà phê là bạn đồng hành lý tưởng cho mỗi buổi sáng, giúp bạn tỉnh táo và sẵn sàng cho một ngày mới. Hãy thử cà phê ngay hôm nay và cảm nhận sự khác biệt!', N'americano-da.jpeg', NULL, 1)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [HinhAnh], [GhiChu], [MaNhomSP]) VALUES (12, N'Americano nóng', 45000.0000, N'Cà phê là thức uống tuyệt vời cho những người yêu thích hương vị đậm đà và năng lượng bùng nổ. Cà phê được làm từ hạt cà phê rang xay, có chứa caffeine và các chất chống oxy hóa có lợi cho sức khỏe. Bạn có thể thưởng thức cà phê theo nhiều cách khác nhau, từ cà phê đen đơn giản đến cà phê sữa đá ngọt ngào, hay cà phê latte béo ngậy. Cà phê là bạn đồng hành lý tưởng cho mỗi buổi sáng, giúp bạn tỉnh táo và sẵn sàng cho một ngày mới. Hãy thử cà phê ngay hôm nay và cảm nhận sự khác biệt!', N'americano-nong.jpeg', NULL, 1)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [HinhAnh], [GhiChu], [MaNhomSP]) VALUES (13, N'Capucchino đá', 55000.0000, N'Cà phê là thức uống tuyệt vời cho những người yêu thích hương vị đậm đà và năng lượng bùng nổ. Cà phê được làm từ hạt cà phê rang xay, có chứa caffeine và các chất chống oxy hóa có lợi cho sức khỏe. Bạn có thể thưởng thức cà phê theo nhiều cách khác nhau, từ cà phê đen đơn giản đến cà phê sữa đá ngọt ngào, hay cà phê latte béo ngậy. Cà phê là bạn đồng hành lý tưởng cho mỗi buổi sáng, giúp bạn tỉnh táo và sẵn sàng cho một ngày mới. Hãy thử cà phê ngay hôm nay và cảm nhận sự khác biệt!', N'capucchino-da.jpeg', NULL, 1)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [HinhAnh], [GhiChu], [MaNhomSP]) VALUES (14, N'Capucchino nóng', 55000.0000, N'Cà phê là thức uống tuyệt vời cho những người yêu thích hương vị đậm đà và năng lượng bùng nổ. Cà phê được làm từ hạt cà phê rang xay, có chứa caffeine và các chất chống oxy hóa có lợi cho sức khỏe. Bạn có thể thưởng thức cà phê theo nhiều cách khác nhau, từ cà phê đen đơn giản đến cà phê sữa đá ngọt ngào, hay cà phê latte béo ngậy. Cà phê là bạn đồng hành lý tưởng cho mỗi buổi sáng, giúp bạn tỉnh táo và sẵn sàng cho một ngày mới. Hãy thử cà phê ngay hôm nay và cảm nhận sự khác biệt!', N'capucchino-nong.jpeg', NULL, 1)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [HinhAnh], [GhiChu], [MaNhomSP]) VALUES (15, N'Espresso đá', 49000.0000, N'Cà phê là thức uống tuyệt vời cho những người yêu thích hương vị đậm đà và năng lượng bùng nổ. Cà phê được làm từ hạt cà phê rang xay, có chứa caffeine và các chất chống oxy hóa có lợi cho sức khỏe. Bạn có thể thưởng thức cà phê theo nhiều cách khác nhau, từ cà phê đen đơn giản đến cà phê sữa đá ngọt ngào, hay cà phê latte béo ngậy. Cà phê là bạn đồng hành lý tưởng cho mỗi buổi sáng, giúp bạn tỉnh táo và sẵn sàng cho một ngày mới. Hãy thử cà phê ngay hôm nay và cảm nhận sự khác biệt!', N'espresso-da.jpeg', NULL, 1)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [HinhAnh], [GhiChu], [MaNhomSP]) VALUES (16, N'Espresso nóng', 45000.0000, N'Cà phê là thức uống tuyệt vời cho những người yêu thích hương vị đậm đà và năng lượng bùng nổ. Cà phê được làm từ hạt cà phê rang xay, có chứa caffeine và các chất chống oxy hóa có lợi cho sức khỏe. Bạn có thể thưởng thức cà phê theo nhiều cách khác nhau, từ cà phê đen đơn giản đến cà phê sữa đá ngọt ngào, hay cà phê latte béo ngậy. Cà phê là bạn đồng hành lý tưởng cho mỗi buổi sáng, giúp bạn tỉnh táo và sẵn sàng cho một ngày mới. Hãy thử cà phê ngay hôm nay và cảm nhận sự khác biệt!', N'espresso-nong.jpeg', NULL, 1)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [HinhAnh], [GhiChu], [MaNhomSP]) VALUES (17, N'Cold Brew truyền thống', 45000.0000, N'Cà phê là thức uống tuyệt vời cho những người yêu thích hương vị đậm đà và năng lượng bùng nổ. Cà phê được làm từ hạt cà phê rang xay, có chứa caffeine và các chất chống oxy hóa có lợi cho sức khỏe. Bạn có thể thưởng thức cà phê theo nhiều cách khác nhau, từ cà phê đen đơn giản đến cà phê sữa đá ngọt ngào, hay cà phê latte béo ngậy. Cà phê là bạn đồng hành lý tưởng cho mỗi buổi sáng, giúp bạn tỉnh táo và sẵn sàng cho một ngày mới. Hãy thử cà phê ngay hôm nay và cảm nhận sự khác biệt!', N'cold-brew-truyen-thong.jpeg', NULL, 1)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [HinhAnh], [GhiChu], [MaNhomSP]) VALUES (18, N'Cold Brew sữa tươi', 49000.0000, N'Cà phê là thức uống tuyệt vời cho những người yêu thích hương vị đậm đà và năng lượng bùng nổ. Cà phê được làm từ hạt cà phê rang xay, có chứa caffeine và các chất chống oxy hóa có lợi cho sức khỏe. Bạn có thể thưởng thức cà phê theo nhiều cách khác nhau, từ cà phê đen đơn giản đến cà phê sữa đá ngọt ngào, hay cà phê latte béo ngậy. Cà phê là bạn đồng hành lý tưởng cho mỗi buổi sáng, giúp bạn tỉnh táo và sẵn sàng cho một ngày mới. Hãy thử cà phê ngay hôm nay và cảm nhận sự khác biệt!', N'cold-brew-sua-tuoi.jpeg', NULL, 1)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [HinhAnh], [GhiChu], [MaNhomSP]) VALUES (19, N'Cacao nóng', 30000.0000, N'Cacao nóng là một loại thức uống ấm áp và thơm ngon, được làm từ bột cacao hoặc sô cô la tan chảy với sữa hoặc nước. Bạn có thể thêm đường, bột quế, kem tươi hoặc các nguyên liệu khác để tăng hương vị và độ béo. Cacao nóng có nhiều lợi ích cho sức khỏe như cung cấp chất chống oxy hóa, tăng cường tuần hoàn máu, giảm đau nhức và cải thiện tinh thần. Cacao nóng là một lựa chọn tuyệt vời cho những người yêu thích thức uống ấm nóng và ngọt ngào.', N'cacao-nong.jpeg', NULL, 2)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [HinhAnh], [GhiChu], [MaNhomSP]) VALUES (20, N'Sữa chua mận', 28000.0000, N'Sữa chua là một loại thực phẩm ngon miệng và tốt cho sức khỏe, được làm từ sữa tươi hoặc sữa bột lên men với vi sinh vật có lợi. Bạn có thể chọn nhiều hương vị khác nhau như chanh, dâu, việt quất, xoài, nho hoặc kết hợp nhiều loại trái cây lại với nhau. Sữa chua có nhiều lợi ích cho sức khỏe như cung cấp canxi, protein, probiotic và vitamin, giúp tiêu hóa tốt, tăng cường hệ miễn dịch và ngăn ngừa nhiễm trùng. Sữa chua là một lựa chọn hoàn hảo cho những người yêu thích thực phẩm mát lạnh và giàu dinh dưỡng.', N'sua-chua-man.jpeg', NULL, 2)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [HinhAnh], [GhiChu], [MaNhomSP]) VALUES (21, N'Sữa chua dâu', 28000.0000, N'Sữa chua là một loại thực phẩm ngon miệng và tốt cho sức khỏe, được làm từ sữa tươi hoặc sữa bột lên men với vi sinh vật có lợi. Bạn có thể chọn nhiều hương vị khác nhau như chanh, dâu, việt quất, xoài, nho hoặc kết hợp nhiều loại trái cây lại với nhau. Sữa chua có nhiều lợi ích cho sức khỏe như cung cấp canxi, protein, probiotic và vitamin, giúp tiêu hóa tốt, tăng cường hệ miễn dịch và ngăn ngừa nhiễm trùng. Sữa chua là một lựa chọn hoàn hảo cho những người yêu thích thực phẩm mát lạnh và giàu dinh dưỡng.', N'sua-chua-dau.jpeg', NULL, 2)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [HinhAnh], [GhiChu], [MaNhomSP]) VALUES (22, N'Nước táo ép', 45000.0000, N'Nước ép sinh tố trái cây là một loại thức uống tươi mát và ngon lành, được làm từ các loại trái cây tươi hoặc đông lạnh xay nhuyễn với nước, sữa hoặc kem. Bạn có thể chọn nhiều hương vị khác nhau như dâu, cam, chuối, xoài, dứa, kiwi hoặc kết hợp nhiều loại trái cây lại với nhau. Nước ép sinh tố trái cây có nhiều lợi ích cho sức khỏe như cung cấp vitamin, khoáng chất, chất xơ và chất chống oxy hóa, giúp thanh lọc cơ thể, tăng cường năng lượng và làm đẹp da. Nước ép sinh tố trái cây là một lựa chọn hoàn hảo cho những người yêu thích thức uống tự nhiên và đầy dinh dưỡng.', N'nuoc-tao-ep.jpeg', NULL, 3)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [HinhAnh], [GhiChu], [MaNhomSP]) VALUES (23, N'Nước dâu ép', 45000.0000, N'Nước ép sinh tố trái cây là một loại thức uống tươi mát và ngon lành, được làm từ các loại trái cây tươi hoặc đông lạnh xay nhuyễn với nước, sữa hoặc kem. Bạn có thể chọn nhiều hương vị khác nhau như dâu, cam, chuối, xoài, dứa, kiwi hoặc kết hợp nhiều loại trái cây lại với nhau. Nước ép sinh tố trái cây có nhiều lợi ích cho sức khỏe như cung cấp vitamin, khoáng chất, chất xơ và chất chống oxy hóa, giúp thanh lọc cơ thể, tăng cường năng lượng và làm đẹp da. Nước ép sinh tố trái cây là một lựa chọn hoàn hảo cho những người yêu thích thức uống tự nhiên và đầy dinh dưỡng.', N'nuoc-dau-ep.jpeg', NULL, 3)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [HinhAnh], [GhiChu], [MaNhomSP]) VALUES (24, N'Nước cam ép', 45000.0000, N'Nước ép sinh tố trái cây là một loại thức uống tươi mát và ngon lành, được làm từ các loại trái cây tươi hoặc đông lạnh xay nhuyễn với nước, sữa hoặc kem. Bạn có thể chọn nhiều hương vị khác nhau như dâu, cam, chuối, xoài, dứa, kiwi hoặc kết hợp nhiều loại trái cây lại với nhau. Nước ép sinh tố trái cây có nhiều lợi ích cho sức khỏe như cung cấp vitamin, khoáng chất, chất xơ và chất chống oxy hóa, giúp thanh lọc cơ thể, tăng cường năng lượng và làm đẹp da. Nước ép sinh tố trái cây là một lựa chọn hoàn hảo cho những người yêu thích thức uống tự nhiên và đầy dinh dưỡng.', N'nuoc-cam-ep.jpeg', NULL, 3)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [HinhAnh], [GhiChu], [MaNhomSP]) VALUES (25, N'Sinh tố chanh', 50000.0000, N'Nước ép sinh tố trái cây là một loại thức uống tươi mát và ngon lành, được làm từ các loại trái cây tươi hoặc đông lạnh xay nhuyễn với nước, sữa hoặc kem. Bạn có thể chọn nhiều hương vị khác nhau như dâu, cam, chuối, xoài, dứa, kiwi hoặc kết hợp nhiều loại trái cây lại với nhau. Nước ép sinh tố trái cây có nhiều lợi ích cho sức khỏe như cung cấp vitamin, khoáng chất, chất xơ và chất chống oxy hóa, giúp thanh lọc cơ thể, tăng cường năng lượng và làm đẹp da. Nước ép sinh tố trái cây là một lựa chọn hoàn hảo cho những người yêu thích thức uống tự nhiên và đầy dinh dưỡng.', N'sinh-to-chanh.jpeg', NULL, 3)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [HinhAnh], [GhiChu], [MaNhomSP]) VALUES (26, N'Sinh tố dâu', 55000.0000, N'Nước ép sinh tố trái cây là một loại thức uống tươi mát và ngon lành, được làm từ các loại trái cây tươi hoặc đông lạnh xay nhuyễn với nước, sữa hoặc kem. Bạn có thể chọn nhiều hương vị khác nhau như dâu, cam, chuối, xoài, dứa, kiwi hoặc kết hợp nhiều loại trái cây lại với nhau. Nước ép sinh tố trái cây có nhiều lợi ích cho sức khỏe như cung cấp vitamin, khoáng chất, chất xơ và chất chống oxy hóa, giúp thanh lọc cơ thể, tăng cường năng lượng và làm đẹp da. Nước ép sinh tố trái cây là một lựa chọn hoàn hảo cho những người yêu thích thức uống tự nhiên và đầy dinh dưỡng.', N'sinh-to-dau.jpeg', NULL, 3)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [HinhAnh], [GhiChu], [MaNhomSP]) VALUES (27, N'Sinh tố xoài', 55000.0000, N'Nước ép sinh tố trái cây là một loại thức uống tươi mát và ngon lành, được làm từ các loại trái cây tươi hoặc đông lạnh xay nhuyễn với nước, sữa hoặc kem. Bạn có thể chọn nhiều hương vị khác nhau như dâu, cam, chuối, xoài, dứa, kiwi hoặc kết hợp nhiều loại trái cây lại với nhau. Nước ép sinh tố trái cây có nhiều lợi ích cho sức khỏe như cung cấp vitamin, khoáng chất, chất xơ và chất chống oxy hóa, giúp thanh lọc cơ thể, tăng cường năng lượng và làm đẹp da. Nước ép sinh tố trái cây là một lựa chọn hoàn hảo cho những người yêu thích thức uống tự nhiên và đầy dinh dưỡng.', N'sinh-to-xoai.jpeg', NULL, 3)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [HinhAnh], [GhiChu], [MaNhomSP]) VALUES (28, N'Trà sữa', 20000.0000, N'Trà sữa là một loại thức uống ngon miệng và bổ dưỡng, được làm từ trà đen hoặc trà xanh pha với sữa tươi hoặc sữa đặc. Bạn có thể thêm đường, kem, trân châu, thạch hoặc các nguyên liệu khác để tăng hương vị và độ ngọt. Trà sữa có nhiều lợi ích cho sức khỏe như cung cấp chất chống oxy hóa, tăng cường hệ miễn dịch, giảm căng thẳng và cải thiện tâm trạng. Trà sữa là một lựa chọn tuyệt vời cho những người yêu thích thức uống mát lạnh và béo ngậy.', N'tra-sua.jpeg', NULL, 4)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [HinhAnh], [GhiChu], [MaNhomSP]) VALUES (29, N'Trà sữa phô mai tươi', 28000.0000, N'Trà sữa là một loại thức uống ngon miệng và bổ dưỡng, được làm từ trà đen hoặc trà xanh pha với sữa tươi hoặc sữa đặc. Bạn có thể thêm đường, kem, trân châu, thạch hoặc các nguyên liệu khác để tăng hương vị và độ ngọt. Trà sữa có nhiều lợi ích cho sức khỏe như cung cấp chất chống oxy hóa, tăng cường hệ miễn dịch, giảm căng thẳng và cải thiện tâm trạng. Trà sữa là một lựa chọn tuyệt vời cho những người yêu thích thức uống mát lạnh và béo ngậy.', N'tra-sua-pho-mai-tuoi.jpeg', NULL, 4)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [HinhAnh], [GhiChu], [MaNhomSP]) VALUES (30, N'Trà sữa matcha', 40000.0000, N'Trà sữa là một loại thức uống ngon miệng và bổ dưỡng, được làm từ trà đen hoặc trà xanh pha với sữa tươi hoặc sữa đặc. Bạn có thể thêm đường, kem, trân châu, thạch hoặc các nguyên liệu khác để tăng hương vị và độ ngọt. Trà sữa có nhiều lợi ích cho sức khỏe như cung cấp chất chống oxy hóa, tăng cường hệ miễn dịch, giảm căng thẳng và cải thiện tâm trạng. Trà sữa là một lựa chọn tuyệt vời cho những người yêu thích thức uống mát lạnh và béo ngậy.', N'tra-sua-matcha.jpeg', NULL, 4)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [HinhAnh], [GhiChu], [MaNhomSP]) VALUES (31, N'Trà sữa Ô Long', 22000.0000, N'Trà sữa là một loại thức uống ngon miệng và bổ dưỡng, được làm từ trà đen hoặc trà xanh pha với sữa tươi hoặc sữa đặc. Bạn có thể thêm đường, kem, trân châu, thạch hoặc các nguyên liệu khác để tăng hương vị và độ ngọt. Trà sữa có nhiều lợi ích cho sức khỏe như cung cấp chất chống oxy hóa, tăng cường hệ miễn dịch, giảm căng thẳng và cải thiện tâm trạng. Trà sữa là một lựa chọn tuyệt vời cho những người yêu thích thức uống mát lạnh và béo ngậy.', N'tra-sua-o-long.jpeg', NULL, 4)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [HinhAnh], [GhiChu], [MaNhomSP]) VALUES (32, N'Trà sữa Sô cô la', 22000.0000, N'Trà sữa là một loại thức uống ngon miệng và bổ dưỡng, được làm từ trà đen hoặc trà xanh pha với sữa tươi hoặc sữa đặc. Bạn có thể thêm đường, kem, trân châu, thạch hoặc các nguyên liệu khác để tăng hương vị và độ ngọt. Trà sữa có nhiều lợi ích cho sức khỏe như cung cấp chất chống oxy hóa, tăng cường hệ miễn dịch, giảm căng thẳng và cải thiện tâm trạng. Trà sữa là một lựa chọn tuyệt vời cho những người yêu thích thức uống mát lạnh và béo ngậy.', N'tra-sua-so-co-la.jpeg', NULL, 4)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [HinhAnh], [GhiChu], [MaNhomSP]) VALUES (33, N'Trà sữa bạc hà', 22000.0000, N'Trà sữa là một loại thức uống ngon miệng và bổ dưỡng, được làm từ trà đen hoặc trà xanh pha với sữa tươi hoặc sữa đặc. Bạn có thể thêm đường, kem, trân châu, thạch hoặc các nguyên liệu khác để tăng hương vị và độ ngọt. Trà sữa có nhiều lợi ích cho sức khỏe như cung cấp chất chống oxy hóa, tăng cường hệ miễn dịch, giảm căng thẳng và cải thiện tâm trạng. Trà sữa là một lựa chọn tuyệt vời cho những người yêu thích thức uống mát lạnh và béo ngậy.', N'tra-sua-bac-ha.jpeg', NULL, 4)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [HinhAnh], [GhiChu], [MaNhomSP]) VALUES (34, N'Trà sữa dâu tây', 22000.0000, N'Trà sữa là một loại thức uống ngon miệng và bổ dưỡng, được làm từ trà đen hoặc trà xanh pha với sữa tươi hoặc sữa đặc. Bạn có thể thêm đường, kem, trân châu, thạch hoặc các nguyên liệu khác để tăng hương vị và độ ngọt. Trà sữa có nhiều lợi ích cho sức khỏe như cung cấp chất chống oxy hóa, tăng cường hệ miễn dịch, giảm căng thẳng và cải thiện tâm trạng. Trà sữa là một lựa chọn tuyệt vời cho những người yêu thích thức uống mát lạnh và béo ngậy.', N'tra-sua-dau-tay.jpeg', NULL, 4)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [HinhAnh], [GhiChu], [MaNhomSP]) VALUES (35, N'Trà nhãn', 50000.0000, N'Trà là thức uống thanh mát và thơm ngon cho những người yêu thích sự nhẹ nhàng và dịu êm. Trà được làm từ lá trà phơi khô, có chứa các chất chống oxy hóa và flavonoid có lợi cho sức khỏe. Bạn có thể thưởng thức trà theo nhiều cách khác nhau, từ trà xanh đơn giản đến trà sữa trân châu đầy hấp dẫn, hay trà hoa quả nhiều màu sắc. Trà là bạn đồng hành lý tưởng cho mỗi buổi chiều, giúp bạn thư giãn và xua tan mệt mỏi. Hãy thử trà ngay hôm nay và cảm nhận sự khác biệt!', N'tra-nhan.jpeg', NULL, 5)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [HinhAnh], [GhiChu], [MaNhomSP]) VALUES (36, N'Trà vải', 50000.0000, N'Trà là thức uống thanh mát và thơm ngon cho những người yêu thích sự nhẹ nhàng và dịu êm. Trà được làm từ lá trà phơi khô, có chứa các chất chống oxy hóa và flavonoid có lợi cho sức khỏe. Bạn có thể thưởng thức trà theo nhiều cách khác nhau, từ trà xanh đơn giản đến trà sữa trân châu đầy hấp dẫn, hay trà hoa quả nhiều màu sắc. Trà là bạn đồng hành lý tưởng cho mỗi buổi chiều, giúp bạn thư giãn và xua tan mệt mỏi. Hãy thử trà ngay hôm nay và cảm nhận sự khác biệt!', N'tra-vai.jpeg', NULL, 5)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [HinhAnh], [GhiChu], [MaNhomSP]) VALUES (37, N'Trà lài', 50000.0000, N'Trà là thức uống thanh mát và thơm ngon cho những người yêu thích sự nhẹ nhàng và dịu êm. Trà được làm từ lá trà phơi khô, có chứa các chất chống oxy hóa và flavonoid có lợi cho sức khỏe. Bạn có thể thưởng thức trà theo nhiều cách khác nhau, từ trà xanh đơn giản đến trà sữa trân châu đầy hấp dẫn, hay trà hoa quả nhiều màu sắc. Trà là bạn đồng hành lý tưởng cho mỗi buổi chiều, giúp bạn thư giãn và xua tan mệt mỏi. Hãy thử trà ngay hôm nay và cảm nhận sự khác biệt!', N'tra-lai.jpg', NULL, 5)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [HinhAnh], [GhiChu], [MaNhomSP]) VALUES (38, N'Hồng trà', 70000.0000, N'Trà là thức uống thanh mát và thơm ngon cho những người yêu thích sự nhẹ nhàng và dịu êm. Trà được làm từ lá trà phơi khô, có chứa các chất chống oxy hóa và flavonoid có lợi cho sức khỏe. Bạn có thể thưởng thức trà theo nhiều cách khác nhau, từ trà xanh đơn giản đến trà sữa trân châu đầy hấp dẫn, hay trà hoa quả nhiều màu sắc. Trà là bạn đồng hành lý tưởng cho mỗi buổi chiều, giúp bạn thư giãn và xua tan mệt mỏi. Hãy thử trà ngay hôm nay và cảm nhận sự khác biệt!', N'hong-tra.png', NULL, 5)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [HinhAnh], [GhiChu], [MaNhomSP]) VALUES (39, N'Trà đào', 50000.0000, N'Trà là thức uống thanh mát và thơm ngon cho những người yêu thích sự nhẹ nhàng và dịu êm. Trà được làm từ lá trà phơi khô, có chứa các chất chống oxy hóa và flavonoid có lợi cho sức khỏe. Bạn có thể thưởng thức trà theo nhiều cách khác nhau, từ trà xanh đơn giản đến trà sữa trân châu đầy hấp dẫn, hay trà hoa quả nhiều màu sắc. Trà là bạn đồng hành lý tưởng cho mỗi buổi chiều, giúp bạn thư giãn và xua tan mệt mỏi. Hãy thử trà ngay hôm nay và cảm nhận sự khác biệt!', N'tra-dao.jpeg', NULL, 5)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [HinhAnh], [GhiChu], [MaNhomSP]) VALUES (40, N'Hồng trà chanh', 40000.0000, N'Trà là thức uống thanh mát và thơm ngon cho những người yêu thích sự nhẹ nhàng và dịu êm. Trà được làm từ lá trà phơi khô, có chứa các chất chống oxy hóa và flavonoid có lợi cho sức khỏe. Bạn có thể thưởng thức trà theo nhiều cách khác nhau, từ trà xanh đơn giản đến trà sữa trân châu đầy hấp dẫn, hay trà hoa quả nhiều màu sắc. Trà là bạn đồng hành lý tưởng cho mỗi buổi chiều, giúp bạn thư giãn và xua tan mệt mỏi. Hãy thử trà ngay hôm nay và cảm nhận sự khác biệt!', N'hong-tra-chanh.jpeg', NULL, 5)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [HinhAnh], [GhiChu], [MaNhomSP]) VALUES (41, N'Trà hoa hồng', 50000.0000, N'Trà là thức uống thanh mát và thơm ngon cho những người yêu thích sự nhẹ nhàng và dịu êm. Trà được làm từ lá trà phơi khô, có chứa các chất chống oxy hóa và flavonoid có lợi cho sức khỏe. Bạn có thể thưởng thức trà theo nhiều cách khác nhau, từ trà xanh đơn giản đến trà sữa trân châu đầy hấp dẫn, hay trà hoa quả nhiều màu sắc. Trà là bạn đồng hành lý tưởng cho mỗi buổi chiều, giúp bạn thư giãn và xua tan mệt mỏi. Hãy thử trà ngay hôm nay và cảm nhận sự khác biệt!', N'tra-hoa-hong.jpeg', NULL, 5)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [HinhAnh], [GhiChu], [MaNhomSP]) VALUES (42, N'Trà đào sữa', 40000.0000, N'Trà là thức uống thanh mát và thơm ngon cho những người yêu thích sự nhẹ nhàng và dịu êm. Trà được làm từ lá trà phơi khô, có chứa các chất chống oxy hóa và flavonoid có lợi cho sức khỏe. Bạn có thể thưởng thức trà theo nhiều cách khác nhau, từ trà xanh đơn giản đến trà sữa trân châu đầy hấp dẫn, hay trà hoa quả nhiều màu sắc. Trà là bạn đồng hành lý tưởng cho mỗi buổi chiều, giúp bạn thư giãn và xua tan mệt mỏi. Hãy thử trà ngay hôm nay và cảm nhận sự khác biệt!', N'tra-dao-sua.jpeg', NULL, 5)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [HinhAnh], [GhiChu], [MaNhomSP]) VALUES (43, N'Trà chanh', 25000.0000, N'Trà là thức uống thanh mát và thơm ngon cho những người yêu thích sự nhẹ nhàng và dịu êm. Trà được làm từ lá trà phơi khô, có chứa các chất chống oxy hóa và flavonoid có lợi cho sức khỏe. Bạn có thể thưởng thức trà theo nhiều cách khác nhau, từ trà xanh đơn giản đến trà sữa trân châu đầy hấp dẫn, hay trà hoa quả nhiều màu sắc. Trà là bạn đồng hành lý tưởng cho mỗi buổi chiều, giúp bạn thư giãn và xua tan mệt mỏi. Hãy thử trà ngay hôm nay và cảm nhận sự khác biệt!', N'tra-chanh.jpeg', NULL, 5)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [HinhAnh], [GhiChu], [MaNhomSP]) VALUES (44, N'Trà đào dâu tây', 28000.0000, N'Trà là thức uống thanh mát và thơm ngon cho những người yêu thích sự nhẹ nhàng và dịu êm. Trà được làm từ lá trà phơi khô, có chứa các chất chống oxy hóa và flavonoid có lợi cho sức khỏe. Bạn có thể thưởng thức trà theo nhiều cách khác nhau, từ trà xanh đơn giản đến trà sữa trân châu đầy hấp dẫn, hay trà hoa quả nhiều màu sắc. Trà là bạn đồng hành lý tưởng cho mỗi buổi chiều, giúp bạn thư giãn và xua tan mệt mỏi. Hãy thử trà ngay hôm nay và cảm nhận sự khác biệt!', N'tra-dao-dau-tay.jpeg', NULL, 5)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [HinhAnh], [GhiChu], [MaNhomSP]) VALUES (45, N'Trà đào bưởi', 28000.0000, N'Trà là thức uống thanh mát và thơm ngon cho những người yêu thích sự nhẹ nhàng và dịu êm. Trà được làm từ lá trà phơi khô, có chứa các chất chống oxy hóa và flavonoid có lợi cho sức khỏe. Bạn có thể thưởng thức trà theo nhiều cách khác nhau, từ trà xanh đơn giản đến trà sữa trân châu đầy hấp dẫn, hay trà hoa quả nhiều màu sắc. Trà là bạn đồng hành lý tưởng cho mỗi buổi chiều, giúp bạn thư giãn và xua tan mệt mỏi. Hãy thử trà ngay hôm nay và cảm nhận sự khác biệt!', N'tra-dao-buoi.jpeg', NULL, 5)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [HinhAnh], [GhiChu], [MaNhomSP]) VALUES (46, N'Trà xoài', 28000.0000, N'Trà là thức uống thanh mát và thơm ngon cho những người yêu thích sự nhẹ nhàng và dịu êm. Trà được làm từ lá trà phơi khô, có chứa các chất chống oxy hóa và flavonoid có lợi cho sức khỏe. Bạn có thể thưởng thức trà theo nhiều cách khác nhau, từ trà xanh đơn giản đến trà sữa trân châu đầy hấp dẫn, hay trà hoa quả nhiều màu sắc. Trà là bạn đồng hành lý tưởng cho mỗi buổi chiều, giúp bạn thư giãn và xua tan mệt mỏi. Hãy thử trà ngay hôm nay và cảm nhận sự khác biệt!', N'tra-xoai.jpeg', NULL, 5)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [HinhAnh], [GhiChu], [MaNhomSP]) VALUES (47, N'Trà mận hạt sen', 28000.0000, N'Trà là thức uống thanh mát và thơm ngon cho những người yêu thích sự nhẹ nhàng và dịu êm. Trà được làm từ lá trà phơi khô, có chứa các chất chống oxy hóa và flavonoid có lợi cho sức khỏe. Bạn có thể thưởng thức trà theo nhiều cách khác nhau, từ trà xanh đơn giản đến trà sữa trân châu đầy hấp dẫn, hay trà hoa quả nhiều màu sắc. Trà là bạn đồng hành lý tưởng cho mỗi buổi chiều, giúp bạn thư giãn và xua tan mệt mỏi. Hãy thử trà ngay hôm nay và cảm nhận sự khác biệt!', N'tra-man-hat-sen.jpg', NULL, 5)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [HinhAnh], [GhiChu], [MaNhomSP]) VALUES (48, N'Hồng trà bưởi mật ong', 28000.0000, N'Trà là thức uống thanh mát và thơm ngon cho những người yêu thích sự nhẹ nhàng và dịu êm. Trà được làm từ lá trà phơi khô, có chứa các chất chống oxy hóa và flavonoid có lợi cho sức khỏe. Bạn có thể thưởng thức trà theo nhiều cách khác nhau, từ trà xanh đơn giản đến trà sữa trân châu đầy hấp dẫn, hay trà hoa quả nhiều màu sắc. Trà là bạn đồng hành lý tưởng cho mỗi buổi chiều, giúp bạn thư giãn và xua tan mệt mỏi. Hãy thử trà ngay hôm nay và cảm nhận sự khác biệt!', N'hong-tra-buoi-mat-ong.jpeg', NULL, 5)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [HinhAnh], [GhiChu], [MaNhomSP]) VALUES (49, N'Trà dứa', 28000.0000, N'Trà là thức uống thanh mát và thơm ngon cho những người yêu thích sự nhẹ nhàng và dịu êm. Trà được làm từ lá trà phơi khô, có chứa các chất chống oxy hóa và flavonoid có lợi cho sức khỏe. Bạn có thể thưởng thức trà theo nhiều cách khác nhau, từ trà xanh đơn giản đến trà sữa trân châu đầy hấp dẫn, hay trà hoa quả nhiều màu sắc. Trà là bạn đồng hành lý tưởng cho mỗi buổi chiều, giúp bạn thư giãn và xua tan mệt mỏi. Hãy thử trà ngay hôm nay và cảm nhận sự khác biệt!', N'tra-dua.jpeg', NULL, 5)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [HinhAnh], [GhiChu], [MaNhomSP]) VALUES (50, N'Trà Ô Long dâu', 50000.0000, N'Trà là thức uống thanh mát và thơm ngon cho những người yêu thích sự nhẹ nhàng và dịu êm. Trà được làm từ lá trà phơi khô, có chứa các chất chống oxy hóa và flavonoid có lợi cho sức khỏe. Bạn có thể thưởng thức trà theo nhiều cách khác nhau, từ trà xanh đơn giản đến trà sữa trân châu đầy hấp dẫn, hay trà hoa quả nhiều màu sắc. Trà là bạn đồng hành lý tưởng cho mỗi buổi chiều, giúp bạn thư giãn và xua tan mệt mỏi. Hãy thử trà ngay hôm nay và cảm nhận sự khác biệt!', N'tra-o-long-dau.jpeg', NULL, 5)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [HinhAnh], [GhiChu], [MaNhomSP]) VALUES (51, N'Trà Ô Long sữa', 45000.0000, N'Trà là thức uống thanh mát và thơm ngon cho những người yêu thích sự nhẹ nhàng và dịu êm. Trà được làm từ lá trà phơi khô, có chứa các chất chống oxy hóa và flavonoid có lợi cho sức khỏe. Bạn có thể thưởng thức trà theo nhiều cách khác nhau, từ trà xanh đơn giản đến trà sữa trân châu đầy hấp dẫn, hay trà hoa quả nhiều màu sắc. Trà là bạn đồng hành lý tưởng cho mỗi buổi chiều, giúp bạn thư giãn và xua tan mệt mỏi. Hãy thử trà ngay hôm nay và cảm nhận sự khác biệt!', N'tra-o-long-sua.jpeg', NULL, 5)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [HinhAnh], [GhiChu], [MaNhomSP]) VALUES (52, N'Trà Ô Long mãng cầu', 54000.0000, N'Trà là thức uống thanh mát và thơm ngon cho những người yêu thích sự nhẹ nhàng và dịu êm. Trà được làm từ lá trà phơi khô, có chứa các chất chống oxy hóa và flavonoid có lợi cho sức khỏe. Bạn có thể thưởng thức trà theo nhiều cách khác nhau, từ trà xanh đơn giản đến trà sữa trân châu đầy hấp dẫn, hay trà hoa quả nhiều màu sắc. Trà là bạn đồng hành lý tưởng cho mỗi buổi chiều, giúp bạn thư giãn và xua tan mệt mỏi. Hãy thử trà ngay hôm nay và cảm nhận sự khác biệt!', N'tra-o-long-mang-cau.jpeg', NULL, 5)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [HinhAnh], [GhiChu], [MaNhomSP]) VALUES (53, N'Trà Ô Long trân châu', 49000.0000, N'Trà là thức uống thanh mát và thơm ngon cho những người yêu thích sự nhẹ nhàng và dịu êm. Trà được làm từ lá trà phơi khô, có chứa các chất chống oxy hóa và flavonoid có lợi cho sức khỏe. Bạn có thể thưởng thức trà theo nhiều cách khác nhau, từ trà xanh đơn giản đến trà sữa trân châu đầy hấp dẫn, hay trà hoa quả nhiều màu sắc. Trà là bạn đồng hành lý tưởng cho mỗi buổi chiều, giúp bạn thư giãn và xua tan mệt mỏi. Hãy thử trà ngay hôm nay và cảm nhận sự khác biệt!', N'tra-o-long-tran-chau.jpeg', NULL, 5)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [HinhAnh], [GhiChu], [MaNhomSP]) VALUES (54, N'Matcha', 45000.0000, N'Trà là thức uống thanh mát và thơm ngon cho những người yêu thích sự nhẹ nhàng và dịu êm. Trà được làm từ lá trà phơi khô, có chứa các chất chống oxy hóa và flavonoid có lợi cho sức khỏe. Bạn có thể thưởng thức trà theo nhiều cách khác nhau, từ trà xanh đơn giản đến trà sữa trân châu đầy hấp dẫn, hay trà hoa quả nhiều màu sắc. Trà là bạn đồng hành lý tưởng cho mỗi buổi chiều, giúp bạn thư giãn và xua tan mệt mỏi. Hãy thử trà ngay hôm nay và cảm nhận sự khác biệt!', N'matcha.jpeg', NULL, 5)
INSERT [dbo].[tbSanPham] ([MaSanPham], [TenSanPham], [GiaBan], [MoTa], [HinhAnh], [GhiChu], [MaNhomSP]) VALUES (55, N'Matcha đậu đỏ', 49000.0000, N'Trà là thức uống thanh mát và thơm ngon cho những người yêu thích sự nhẹ nhàng và dịu êm. Trà được làm từ lá trà phơi khô, có chứa các chất chống oxy hóa và flavonoid có lợi cho sức khỏe. Bạn có thể thưởng thức trà theo nhiều cách khác nhau, từ trà xanh đơn giản đến trà sữa trân châu đầy hấp dẫn, hay trà hoa quả nhiều màu sắc. Trà là bạn đồng hành lý tưởng cho mỗi buổi chiều, giúp bạn thư giãn và xua tan mệt mỏi. Hãy thử trà ngay hôm nay và cảm nhận sự khác biệt!', N'matcha-dau-do.jpg', NULL, 5)
SET IDENTITY_INSERT [dbo].[tbSanPham] OFF
GO
SET IDENTITY_INSERT [dbo].[tbTinTuc] ON 

INSERT [dbo].[tbTinTuc] ([MaTinTuc], [TieuDe], [NgayDang], [NoiDung], [HinhAnh]) VALUES (1, N'Chào mừng đến với THE SPACE COFFEE', CAST(N'2023-01-20' AS Date), N'Cửa hàng cà phê THE SPACE COFFEE là một địa điểm thưởng thức cà phê độc đáo và sáng tạo, với không gian thiết kế theo phong cách vũ trụ hiện đại và ấn tượng.
Cửa hàng cà phê THE SPACE COFFEE cung cấp nhiều loại cà phê chất lượng cao, được chọn lọc từ những hạt cà phê tươi ngon nhất và rang xay tại chỗ. Bạn có thể thưởng thức những ly cà phê đậm đà và thơm ngon, với nhiều hương vị khác nhau như cà phê sữa, cappuccino, latte, mocha, americano, espresso hay cold brew.
Ngoài ra, cửa hàng cà phê The Space Coffee còn có nhiều loại thức uống khác như trà, sinh tố, nước ép, soda và các món ăn nhẹ như bánh ngọt, bánh mì, sandwich, salad và pizza. Bạn có thể lựa chọn thức uống và món ăn theo sở thích và khẩu vị của mình.
Cửa hàng cà phê THE SPACE COFFEE là một nơi lý tưởng để bạn có những giây phút thư giãn và tận hưởng cuộc sống. Bạn có thể đến đây để học tập, làm việc, gặp gỡ bạn bè, hẹn hò hay tổ chức các sự kiện và tiệc nhỏ. Cửa hàng cà phê THE SPACE COFFEE luôn sẵn sàng phục vụ bạn với thái độ nhiệt tình và chuyên nghiệp.', N'tt00001.jpg')
INSERT [dbo].[tbTinTuc] ([MaTinTuc], [TieuDe], [NgayDang], [NoiDung], [HinhAnh]) VALUES (2, N'Ưu đãi lần đầu của chúng tôi', CAST(N'2023-01-21' AS Date), N'Bạn là một tín đồ của cà phê và yêu thích không gian vũ trụ? Bạn muốn có những trải nghiệm mới lạ và thú vị khi thưởng thức cà phê? Nếu vậy, bạn không thể bỏ qua cơ hội hấp dẫn này từ cửa hàng cà phê THE SPACE COFFEE.

Chỉ trong tháng 4 này, cửa hàng cà phê THE SPACE COFFEE dành tặng cho bạn nhiều ưu đãi hấp dẫn như sau:

Giảm giá 20% cho tất cả các loại cà phê khi mua mang về hoặc giao hàng tận nơi.
Tặng một ly cà phê miễn phí cho khách hàng khi mua hai ly cà phê bất kỳ.
Tặng một phiếu quà tặng trị giá 100.000 đồng cho khách hàng khi tích lũy đủ 10 dấu trên thẻ thành viên.
Tặng một voucher giảm giá 50% cho khách hàng khi check-in và chia sẻ bài viết về cửa hàng cà phê THE SPACE COFFEE trên Facebook hoặc Instagram.
Đây là những ưu đãi vô cùng hấp dẫn mà bạn không nên bỏ lỡ. Hãy nhanh chóng đến với cửa hàng cà phê THE SPACE COFFEE để thưởng thức những ly cà phê ngon tuyệt và khám phá không gian vũ trụ độc đáo. Cửa hàng cà phê THE SPACE COFFEE luôn chào đón bạn với sự phục vụ tận tâm và chuyên nghiệp.', N'tt00002.jpg')
INSERT [dbo].[tbTinTuc] ([MaTinTuc], [TieuDe], [NgayDang], [NoiDung], [HinhAnh]) VALUES (3, N'Thư giãn và tận hưởng ly cà phê ngon', CAST(N'2023-01-22' AS Date), N'Bạn đang tìm kiếm một nơi để thư giãn và tận hưởng ly cà phê ngon? Hãy đến với THE SPACE COFFEE, cửa hàng cà phê mới mở tại số 3 phố Cầu Giấy, quận Đống Đa. THE SPACE COFFEE là một không gian hiện đại và sang trọng, với thiết kế nội thất theo phong cách vũ trụ. Bạn sẽ được chiêm ngưỡng những hình ảnh đẹp mắt của các hành tinh, sao và thiên hà trên các bức tường và trần nhà. Bên cạnh đó, bạn cũng có thể thưởng thức những món cà phê đặc biệt của THE SPACE COFFEE, như Milky Way Latte, Galaxy Frappe hay Starry Night Mocha. Các món cà phê của THE SPACE COFFEE được pha chế từ những hạt cà phê chất lượng cao, mang đến cho bạn hương vị thơm ngon và đậm đà. Ngoài ra, bạn cũng có thể thử những món bánh ngọt và đồ ăn nhẹ hấp dẫn khác tại THE SPACE COFFEE. Hãy đến với THE SPACE COFFEE để có những giây phút thư giãn và tận hưởng không gian vũ trụ tuyệt vời. THE SPACE COFFEE - Cà phê không giới hạn!', N'tt00003.jpg')
INSERT [dbo].[tbTinTuc] ([MaTinTuc], [TieuDe], [NgayDang], [NoiDung], [HinhAnh]) VALUES (4, N'Mùa hè đến rồi', CAST(N'2023-01-22' AS Date), N'Mùa hè đến rồi, bạn đã có kế hoạch gì để giải nhiệt chưa? Nếu bạn đang tìm kiếm một nơi để trốn khỏi cái nóng oi bức của thành phố, hãy đến với THE SPACE COFFEE, cửa hàng cà phê vũ trụ độc đáo và lạ mắt. Tại đây, bạn sẽ được thưởng thức những ly cà phê mát lạnh và ngon miệng, như Galaxy Frappe, Starry Night Mocha hay Milky Way Latte. Bạn cũng có thể chọn những món đồ uống khác như trà sữa, sinh tố hay nước ép trái cây. Không chỉ vậy, bạn còn được ngắm nhìn những hình ảnh tuyệt đẹp của vũ trụ trên các bức tường và trần nhà, tạo cho bạn cảm giác như đang lạc vào một thế giới khác. THE SPACE COFFEE còn có không gian rộng rãi và thoáng mát, phù hợp cho bạn tụ tập cùng bạn bè hay làm việc. Hãy đến với THE SPACE COFFEE để có những trải nghiệm thú vị và khác biệt trong mùa hè này. THE SPACE COFFEE - Cà phê không giới hạn!', N'tt00004.jpg')
SET IDENTITY_INSERT [dbo].[tbTinTuc] OFF
GO
SET ANSI_PADDING ON
GO
/****** Object:  Index [UQ__tbHoaDon__012E9E535A9D96B4]    Script Date: 14/12/2023 15:41:22 ******/
ALTER TABLE [dbo].[tbHoaDonBan] ADD UNIQUE NONCLUSTERED 
(
	[SoHoaDon] ASC
)WITH (PAD_INDEX = OFF, STATISTICS_NORECOMPUTE = OFF, SORT_IN_TEMPDB = OFF, IGNORE_DUP_KEY = OFF, ONLINE = OFF, ALLOW_ROW_LOCKS = ON, ALLOW_PAGE_LOCKS = ON, OPTIMIZE_FOR_SEQUENTIAL_KEY = OFF) ON [PRIMARY]
GO
ALTER TABLE [dbo].[tbChiTietHoaDonBan]  WITH CHECK ADD FOREIGN KEY([MaHoaDon])
REFERENCES [dbo].[tbHoaDonBan] ([MaHoaDon])
GO
ALTER TABLE [dbo].[tbChiTietHoaDonBan]  WITH CHECK ADD FOREIGN KEY([MaSanPham])
REFERENCES [dbo].[tbSanPham] ([MaSanPham])
GO
ALTER TABLE [dbo].[tbHoaDonBan]  WITH CHECK ADD FOREIGN KEY([CustomerId])
REFERENCES [dbo].[tbKhachHang] ([Id])
GO
ALTER TABLE [dbo].[tbSanPham]  WITH CHECK ADD FOREIGN KEY([MaNhomSP])
REFERENCES [dbo].[tbNhomSanPham] ([MaNhomSP])
GO
