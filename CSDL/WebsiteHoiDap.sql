SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[THAM_SO]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[THAM_SO](
	[Ma] [int] IDENTITY(1,1) NOT NULL,
	[TenThamSo] [nvarchar](100) NOT NULL,
	[GiaTri] [int] NOT NULL,
 CONSTRAINT [PK_THAM_SO_1] PRIMARY KEY CLUSTERED 
(
	[Ma] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CHU_DE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CHU_DE](
	[MaChuDe] [int] IDENTITY(1,1) NOT NULL,
	[TenChuDe] [nvarchar](50) NOT NULL,
	[DaXoa] [bit] NOT NULL,
 CONSTRAINT [PK_CHU_DE] PRIMARY KEY CLUSTERED 
(
	[MaChuDe] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[TINH_TRANG]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[TINH_TRANG](
	[MaTinhTrang] [int] IDENTITY(1,1) NOT NULL,
	[TenTinhTrang] [nvarchar](50) NULL,
 CONSTRAINT [PK_TINH_TRANG] PRIMARY KEY CLUSTERED 
(
	[MaTinhTrang] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CAP_BAC]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CAP_BAC](
	[MaCapBac] [int] IDENTITY(1,1) NOT NULL,
	[TenCapBac] [nvarchar](50) NOT NULL,
	[Diem] [int] NOT NULL,
	[TongCauHoi] [int] NOT NULL,
	[TongCauTraLoi] [int] NOT NULL,
 CONSTRAINT [PK_THAM_SO] PRIMARY KEY CLUSTERED 
(
	[MaCapBac] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[LOAI_THANH_VIEN]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[LOAI_THANH_VIEN](
	[MaLoaiTV] [int] IDENTITY(1,1) NOT NULL,
	[TenLoaiTV] [nvarchar](20) NOT NULL,
 CONSTRAINT [PK_LOAI_THANH_VIEN] PRIMARY KEY CLUSTERED 
(
	[MaLoaiTV] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CAU_HOI]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CAU_HOI](
	[MaCauHoi] [int] IDENTITY(1,1) NOT NULL,
	[NgayHoi] [datetime] NOT NULL,
	[NgayHetHan] [datetime] NULL,
	[DanhGia] [bit] NULL,
	[BaoCaoViPham] [bit] NOT NULL,
	[NoiDungCauHoi] [nvarchar](160) NOT NULL,
	[GhiChu] [nvarchar](160) NULL,
	[MaThanhVien] [int] NOT NULL,
	[MaChuDe] [int] NOT NULL,
	[LoaiCauHoi] [nvarchar](20) NOT NULL,
	[DaXoa] [bit] NOT NULL,
	[LyDo] [nvarchar](100) NULL,
	[NgayXoa] [datetime] NULL,
	[NguoiXoa] [int] NULL,
	[SoNguoiBinhChon] [int] NULL,
	[NgayCapNhat] [datetime] NULL,
	[NguoiCapNhat] [int] NULL,
 CONSTRAINT [PK_CAU_HOI] PRIMARY KEY CLUSTERED 
(
	[MaCauHoi] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DS_CAU_HOI_THEO_DOI]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DS_CAU_HOI_THEO_DOI](
	[MaTV] [int] NOT NULL,
	[MaCauHoi] [int] NOT NULL,
 CONSTRAINT [PK_DS_CAU_HOI_THEO_DOI] PRIMARY KEY CLUSTERED 
(
	[MaTV] ASC,
	[MaCauHoi] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DANH_GIA_CAU_HOI]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DANH_GIA_CAU_HOI](
	[MaCauHoi] [int] NOT NULL,
	[MaThanhVien] [int] NOT NULL,
 CONSTRAINT [PK_DANH_GIA_CAU_HOI] PRIMARY KEY CLUSTERED 
(
	[MaCauHoi] ASC,
	[MaThanhVien] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CAU_TRA_LOI]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CAU_TRA_LOI](
	[MaCauTraLoi] [int] IDENTITY(1,1) NOT NULL,
	[NgayTraLoi] [datetime] NOT NULL,
	[SoSao] [int] NULL,
	[SoNguoiBinhChon] [int] NULL,
	[BaoCaoViPham] [bit] NULL,
	[GhiChu] [nvarchar](160) NULL,
	[NoiDung] [nvarchar](1000) NOT NULL,
	[MaCauHoi] [int] NOT NULL,
	[MaThanhVien] [int] NOT NULL,
	[DaXoa] [bit] NOT NULL,
	[LyDo] [nvarchar](100) NULL,
	[NgayXoa] [datetime] NULL,
	[NguoiXoa] [int] NULL,
	[NgayCapNhat] [datetime] NULL,
	[NguoiCapNhat] [int] NULL,
 CONSTRAINT [PK_CAU_TRA_LOI] PRIMARY KEY CLUSTERED 
(
	[MaCauTraLoi] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DANH_GIA_CAU_TRA_LOI]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DANH_GIA_CAU_TRA_LOI](
	[MaCauTraLoi] [int] NOT NULL,
	[MaThanhVien] [int] NOT NULL,
	[SoSao] [int] NULL,
 CONSTRAINT [PK_DANH_GIA_CAU_TRA_LOI] PRIMARY KEY CLUSTERED 
(
	[MaCauTraLoi] ASC,
	[MaThanhVien] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[THANH_VIEN]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[THANH_VIEN](
	[MaThanhVien] [int] IDENTITY(1,1) NOT NULL,
	[TenTaiKhoan] [varchar](50) NOT NULL,
	[MatKhau] [nvarchar](30) NOT NULL,
	[HoTen] [nvarchar](50) NOT NULL,
	[NgaySinh] [datetime] NOT NULL,
	[GioiTinh] [nvarchar](5) NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[TinhTrang] [int] NOT NULL,
	[Diem] [int] NOT NULL,
	[CapBac] [int] NOT NULL,
	[MaLoaiTV] [int] NOT NULL,
	[DaXoa] [bit] NOT NULL,
	[LyDo] [nvarchar](100) NULL,
	[NgayXoa] [datetime] NULL,
	[NguoiXoa] [int] NULL,
 CONSTRAINT [PK_THANH_VIEN] PRIMARY KEY CLUSTERED 
(
	[MaThanhVien] ASC
)WITH (IGNORE_DUP_KEY = OFF) ON [PRIMARY]
) ON [PRIMARY]
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spThemThanhVien]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spThemThanhVien]	
(
@tentaikhoan nvarchar(50),
@matkhau varchar(30),
@hoten nvarchar(50),
@ngaysinh datetime,
@gioitinh nvarchar(5),
@email varchar(100),
@tinhtrang int,
@diem int,
@capbac int,
@maloaitv int,
@daxoa int,
@lydo nvarchar(100),
@ngayxoa datetime,
@nguoixoa int
)	
AS
	INSERT INTO THANH_VIEN (TenTaiKhoan, MatKhau, HoTen, NgaySinh, GioiTinh, Email, TinhTrang, 
	Diem, CapBac, MaLoaiTV, DaXoa, LyDo, NgayXoa, NguoiXoa)
	VALUES(@tentaikhoan,@matkhau,@hoten,@ngaysinh,@gioitinh,@email,@tinhtrang,
	@diem,@capbac,@maloaitv,@daxoa, @lydo, @ngayxoa, @nguoixoa)
RETURN
' 
END
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CAU_HOI_CHU_DE]') AND parent_object_id = OBJECT_ID(N'[dbo].[CAU_HOI]'))
ALTER TABLE [dbo].[CAU_HOI]  WITH CHECK ADD  CONSTRAINT [FK_CAU_HOI_CHU_DE] FOREIGN KEY([MaChuDe])
REFERENCES [dbo].[CHU_DE] ([MaChuDe])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CAU_HOI_THANH_VIEN]') AND parent_object_id = OBJECT_ID(N'[dbo].[CAU_HOI]'))
ALTER TABLE [dbo].[CAU_HOI]  WITH CHECK ADD  CONSTRAINT [FK_CAU_HOI_THANH_VIEN] FOREIGN KEY([MaThanhVien])
REFERENCES [dbo].[THANH_VIEN] ([MaThanhVien])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CAU_HOI_THANH_VIEN1]') AND parent_object_id = OBJECT_ID(N'[dbo].[CAU_HOI]'))
ALTER TABLE [dbo].[CAU_HOI]  WITH NOCHECK ADD  CONSTRAINT [FK_CAU_HOI_THANH_VIEN1] FOREIGN KEY([NguoiXoa])
REFERENCES [dbo].[THANH_VIEN] ([MaThanhVien])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CAU_HOI_THANH_VIEN2]') AND parent_object_id = OBJECT_ID(N'[dbo].[CAU_HOI]'))
ALTER TABLE [dbo].[CAU_HOI]  WITH NOCHECK ADD  CONSTRAINT [FK_CAU_HOI_THANH_VIEN2] FOREIGN KEY([NguoiCapNhat])
REFERENCES [dbo].[THANH_VIEN] ([MaThanhVien])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DS_CAU_HOI_THEO_DOI_CAU_HOI]') AND parent_object_id = OBJECT_ID(N'[dbo].[DS_CAU_HOI_THEO_DOI]'))
ALTER TABLE [dbo].[DS_CAU_HOI_THEO_DOI]  WITH CHECK ADD  CONSTRAINT [FK_DS_CAU_HOI_THEO_DOI_CAU_HOI] FOREIGN KEY([MaCauHoi])
REFERENCES [dbo].[CAU_HOI] ([MaCauHoi])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DS_CAU_HOI_THEO_DOI_THANH_VIEN]') AND parent_object_id = OBJECT_ID(N'[dbo].[DS_CAU_HOI_THEO_DOI]'))
ALTER TABLE [dbo].[DS_CAU_HOI_THEO_DOI]  WITH CHECK ADD  CONSTRAINT [FK_DS_CAU_HOI_THEO_DOI_THANH_VIEN] FOREIGN KEY([MaTV])
REFERENCES [dbo].[THANH_VIEN] ([MaThanhVien])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DANH_GIA_CAU_HOI_CAU_HOI]') AND parent_object_id = OBJECT_ID(N'[dbo].[DANH_GIA_CAU_HOI]'))
ALTER TABLE [dbo].[DANH_GIA_CAU_HOI]  WITH CHECK ADD  CONSTRAINT [FK_DANH_GIA_CAU_HOI_CAU_HOI] FOREIGN KEY([MaCauHoi])
REFERENCES [dbo].[CAU_HOI] ([MaCauHoi])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DANH_GIA_CAU_HOI_THANH_VIEN]') AND parent_object_id = OBJECT_ID(N'[dbo].[DANH_GIA_CAU_HOI]'))
ALTER TABLE [dbo].[DANH_GIA_CAU_HOI]  WITH CHECK ADD  CONSTRAINT [FK_DANH_GIA_CAU_HOI_THANH_VIEN] FOREIGN KEY([MaThanhVien])
REFERENCES [dbo].[THANH_VIEN] ([MaThanhVien])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CAU_TRA_LOI_CAU_HOI]') AND parent_object_id = OBJECT_ID(N'[dbo].[CAU_TRA_LOI]'))
ALTER TABLE [dbo].[CAU_TRA_LOI]  WITH CHECK ADD  CONSTRAINT [FK_CAU_TRA_LOI_CAU_HOI] FOREIGN KEY([MaCauHoi])
REFERENCES [dbo].[CAU_HOI] ([MaCauHoi])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CAU_TRA_LOI_THANH_VIEN]') AND parent_object_id = OBJECT_ID(N'[dbo].[CAU_TRA_LOI]'))
ALTER TABLE [dbo].[CAU_TRA_LOI]  WITH CHECK ADD  CONSTRAINT [FK_CAU_TRA_LOI_THANH_VIEN] FOREIGN KEY([MaThanhVien])
REFERENCES [dbo].[THANH_VIEN] ([MaThanhVien])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CAU_TRA_LOI_THANH_VIEN1]') AND parent_object_id = OBJECT_ID(N'[dbo].[CAU_TRA_LOI]'))
ALTER TABLE [dbo].[CAU_TRA_LOI]  WITH NOCHECK ADD  CONSTRAINT [FK_CAU_TRA_LOI_THANH_VIEN1] FOREIGN KEY([NguoiXoa])
REFERENCES [dbo].[THANH_VIEN] ([MaThanhVien])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CAU_TRA_LOI_THANH_VIEN2]') AND parent_object_id = OBJECT_ID(N'[dbo].[CAU_TRA_LOI]'))
ALTER TABLE [dbo].[CAU_TRA_LOI]  WITH NOCHECK ADD  CONSTRAINT [FK_CAU_TRA_LOI_THANH_VIEN2] FOREIGN KEY([NguoiCapNhat])
REFERENCES [dbo].[THANH_VIEN] ([MaThanhVien])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DANH_GIA_CAU_TRA_LOI_CAU_TRA_LOI]') AND parent_object_id = OBJECT_ID(N'[dbo].[DANH_GIA_CAU_TRA_LOI]'))
ALTER TABLE [dbo].[DANH_GIA_CAU_TRA_LOI]  WITH CHECK ADD  CONSTRAINT [FK_DANH_GIA_CAU_TRA_LOI_CAU_TRA_LOI] FOREIGN KEY([MaCauTraLoi])
REFERENCES [dbo].[CAU_TRA_LOI] ([MaCauTraLoi])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DANH_GIA_CAU_TRA_LOI_THANH_VIEN]') AND parent_object_id = OBJECT_ID(N'[dbo].[DANH_GIA_CAU_TRA_LOI]'))
ALTER TABLE [dbo].[DANH_GIA_CAU_TRA_LOI]  WITH CHECK ADD  CONSTRAINT [FK_DANH_GIA_CAU_TRA_LOI_THANH_VIEN] FOREIGN KEY([MaThanhVien])
REFERENCES [dbo].[THANH_VIEN] ([MaThanhVien])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_THANH_VIEN_CAP_BAC]') AND parent_object_id = OBJECT_ID(N'[dbo].[THANH_VIEN]'))
ALTER TABLE [dbo].[THANH_VIEN]  WITH CHECK ADD  CONSTRAINT [FK_THANH_VIEN_CAP_BAC] FOREIGN KEY([CapBac])
REFERENCES [dbo].[CAP_BAC] ([MaCapBac])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_THANH_VIEN_LOAI_THANH_VIEN]') AND parent_object_id = OBJECT_ID(N'[dbo].[THANH_VIEN]'))
ALTER TABLE [dbo].[THANH_VIEN]  WITH CHECK ADD  CONSTRAINT [FK_THANH_VIEN_LOAI_THANH_VIEN] FOREIGN KEY([MaLoaiTV])
REFERENCES [dbo].[LOAI_THANH_VIEN] ([MaLoaiTV])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_THANH_VIEN_THANH_VIEN]') AND parent_object_id = OBJECT_ID(N'[dbo].[THANH_VIEN]'))
ALTER TABLE [dbo].[THANH_VIEN]  WITH NOCHECK ADD  CONSTRAINT [FK_THANH_VIEN_THANH_VIEN] FOREIGN KEY([NguoiXoa])
REFERENCES [dbo].[THANH_VIEN] ([MaThanhVien])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_THANH_VIEN_TINH_TRANG]') AND parent_object_id = OBJECT_ID(N'[dbo].[THANH_VIEN]'))
ALTER TABLE [dbo].[THANH_VIEN]  WITH CHECK ADD  CONSTRAINT [FK_THANH_VIEN_TINH_TRANG] FOREIGN KEY([TinhTrang])
REFERENCES [dbo].[TINH_TRANG] ([MaTinhTrang])
