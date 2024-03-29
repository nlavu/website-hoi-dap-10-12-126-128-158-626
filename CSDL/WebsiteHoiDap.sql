CREATE DATABASE [WebsiteHoiDap]
GO
USE [WebsiteHoiDap]
GO

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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spCapNhatCauHoi]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--31 Cap Nhat Cau Hoi
create procedure [dbo].[spCapNhatCauHoi]	
@macauhoi int,
@ngayhoi datetime,
@ngayhethan datetime,
@danhgia bit,
@baocaovipham bit,
@noidungcauhoi nvarchar (160),
@ghichu nvarchar (160),
@mathanhvien int,
@machude int,
@songuoibinhchon int ,	
@ngaycapnhat datetime ,
@nguoicapnhat int 
as
	begin
		update CAU_HOI
		set
		NgayHoi = @ngayhoi,
		NgayHetHan = @ngayhethan,
		DanhGia = @danhgia,
		BaoCaoViPham = @baocaovipham,
		NoiDungCauHoi = @noidungcauhoi,
		GhiChu = @ghichu,
		MaThanhVien = @mathanhvien,
		MaChuDe = @machude,		
		SoNguoiBinhChon = @songuoibinhchon,	
		NgayCapNhat = @ngaycapnhat,
		NguoiCapNhat = @nguoicapnhat
		where MaCauHoi = @macauhoi
	end
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spLayDSTinhTrang]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--33.Lấy ds tình trạng - thu hà
CREATE PROCEDURE [dbo].[spLayDSTinhTrang]
AS
BEGIN
	SELECT     MaTinhTrang, TenTinhTrang
	FROM         TINH_TRANG
END
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spTimKiem]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spTimKiem]
@chuoitimkiem nvarchar(200)
AS
BEGIN
	SELECT * FROM CAU_HOI
	WHERE NoiDungCauHoi LIKE @chuoitimkiem OR GhiChu LIKE @chuoitimkiem
END
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spTimKiemNangCao]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--34. Tìm kiếm câu hỏi nâng cao
CREATE PROCEDURE [dbo].[spTimKiemNangCao]
@noidungcauhoi nvarchar(200),
@ghichu nvarchar(200),
@ngayhoimin datetime,
@ngayhoimax datetime
AS
BEGIN
	SELECT * FROM CAU_HOI
	WHERE NoiDungCauHoi LIKE @noidungcauhoi AND GhiChu LIKE @ghichu AND
	(NgayHoi BETWEEN @ngayhoimin AND @ngayhoimax)
END
' 
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
	[TenTinhTrang] [nvarchar](50) NOT NULL,
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CHU_DE]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CHU_DE](
	[MaChuDe] [int] IDENTITY(1,1) NOT NULL,
	[TenChuDe] [nvarchar](50) NOT NULL,
	[DaXoa] [int] NOT NULL,
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spThemCauHoi]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- 5. Lấy danh sách câu hỏi theo nguời trả lời : Khắc Anh
--create procedure spLayDSCauHoiTheoNguoiTraLoi
--@NguoiTraLoi nvarchar
--as
--begin
--	select CAU_HOI.MaCauHoi,NgayHoi,NgayHetHan,DanhGia,CAU_HOI.BaoCaoViPham,NoiDungCauHoi,CAU_HOI.GhiChu,CAU_HOI.MaThanhVien,MaChuDe,CAU_HOI.DaXoa,CAU_HOI.Lydo,CAU_HOI.NgayXoa,CAU_HOI.NguoiXoa,CAU_HOI.SoNguoiBinhChon,CAU_HOI.NgayCapNhat,CAU_HOI.NguoiCapNhat
--	from CAU_HOI,CAU_TRA_LOI	
--	where CAU_HOI.MaCauHoi=CAU_TRA_LOI.MaCauHoi and CAU_TRA_LOI.MaThanhVien=@NguoiTraLoi
--end

-- 6. Thêm câu hỏi : Khắc Anh
create procedure [dbo].[spThemCauHoi]	
	@ngayhoi datetime,
	@ngayhethan datetime ,
	@danhgia int ,
	@baocaovipham int ,	
	@noidungcauhoi nvarchar(160),
	@ghichu nvarchar(160),
	@mathanhvien int,
	@machude int ,
	@daxoa int,
	@lydo nvarchar(100),
	@ngayxoa datetime,
	@nguoixoa int ,	
	@songuoibinhchon int ,	
	@ngaycapnhat datetime ,
	@nguoicapnhat int 
as
begin
	INSERT INTO CAU_HOI (NgayHoi, NgayHetHan, DanhGia, BaoCaoViPham, NoiDungCauHoi, GhiChu, MaThanhVien, MaChuDe, 
				DaXoa, LyDo, NgayXoa, NguoiXoa, SoNguoiBinhChon, NgayCapNhat, NguoiCapNhat)
	 values(@ngayhoi,@ngayhethan,@danhgia,@baocaovipham,@noidungcauhoi,@ghichu,@mathanhvien,@machude,
				@daxoa, @lydo,@ngayxoa,	@nguoixoa,@songuoibinhchon,@ngaycapnhat,@nguoicapnhat) 
end
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spXoaCauHoi]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--7. Xóa câu hỏi : Khắc Anh
create procedure [dbo].[spXoaCauHoi]
@macauhoi int,
@lydo	nvarchar(100),
@ngayxoa	datetime,
@nguoixoa	int
as 
begin
	UPDATE CAU_HOI	SET DaXoa = 1, NgayXoa = @ngayxoa, NguoiXoa = @nguoixoa
	WHERE MaCauHoi=@macauhoi
end
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spLayDSCauTraLoiTheoMaCauHoi]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--8. Lấy danh sách câu trả lời theo mã câu hỏi
create proc [dbo].[spLayDSCauTraLoiTheoMaCauHoi]
@macauhoi int
as
	begin
		SELECT  MaCauTraLoi, NgayTraLoi, SoSao, SoNguoiBinhChon, BaoCaoViPham, GhiChu, NoiDung, MaCauHoi, 
				MaThanhVien, DaXoa, LyDo, NgayXoa, NguoiXoa, NgayCapNhat, NguoiCapNhat
		FROM  CAU_TRA_LOI WHERE DaXoa = 0 AND MaCauHoi = @macauhoi
		ORDER BY NgayTraLoi, MaCauTraLoi		
	end
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spLayDSCauTraLoiTheoMaNguoiTraLoi]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--9. Lấy danh sách câu trả lời theo mã người trả lời
create proc [dbo].[spLayDSCauTraLoiTheoMaNguoiTraLoi]
@mathanhvien int
as
	begin
		SELECT  MaCauTraLoi, NgayTraLoi, SoSao, SoNguoiBinhChon, BaoCaoViPham, GhiChu, NoiDung, MaCauHoi, 
				MaThanhVien, DaXoa, LyDo, NgayXoa, NguoiXoa, NgayCapNhat, NguoiCapNhat
		FROM  CAU_TRA_LOI WHERE DaXoa = 0 AND MaThanhVien = @mathanhvien
		ORDER BY NgayTraLoi, MaCauTraLoi		
	end
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spThemCauTraLoi]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--10. Thêm câu trả lời
create proc [dbo].[spThemCauTraLoi]
@ngaytraloi	datetime,
@sosao	int,
@songuoibinhchon	int,
@baocaovipham	int,
@ghichu	nvarchar(160),
@noidung	nvarchar(1000),
@macauhoi	int,
@mathanhvien	int,
@daxoa	int,
@lydo	nvarchar(100),
@ngayxoa	datetime,
@nguoixoa	int
as
	begin
		INSERT INTO CAU_TRA_LOI
                      (NgayTraLoi, SoSao, SoNguoiBinhChon, BaoCaoViPham, GhiChu, NoiDung, MaCauHoi, MaThanhVien, DaXoa, LyDo, NgayXoa, NguoiXoa)
		VALUES     (@ngaytraloi,@sosao,@songuoibinhchon,@baocaovipham,@ghichu,@noidung,@macauhoi,@mathanhvien,@daxoa,@lydo,@ngayxoa,@nguoixoa)
		
	end
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spXoaCauTraLoi]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--11. Xóa câu trả lời
create proc [dbo].[spXoaCauTraLoi]
@macautraloi int,
@lydo	nvarchar(100),
@ngayxoa	datetime,
@nguoixoa	int
as
	begin
		UPDATE    CAU_TRA_LOI
		SET       DaXoa = 1, LyDo = @lydo, NgayXoa = @ngayxoa, NguoiXoa = @nguoixoa
		where macautraloi = @macautraloi
	end
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spLayDSCauHoi]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-------------------PROCEDURE -----------------------
---------- CÂU HỎI
-- 1. Lấy danh sách tất cả câu hỏi : Khắc Anh
create procedure [dbo].[spLayDSCauHoi]
as
begin
	SELECT MaCauHoi, NgayHoi, NgayHetHan, DanhGia, BaoCaoViPham, NoiDungCauHoi, GhiChu, MaThanhVien, MaChuDe,
				DaXoa, LyDo, NgayXoa, NguoiXoa, SoNguoiBinhChon, NgayCapNhat, NguoiCapNhat	
	FROM  CAU_HOI WHERE DaXoa = 0
	ORDER BY NgayHoi DESC
end
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spLayCauHoiTheoMa]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
--2.lấy câu hỏi theo mã --Ngoc Ha
create proc [dbo].[spLayCauHoiTheoMa]
@macauhoi int
as
	begin
		SELECT MaCauHoi, NgayHoi, NgayHetHan, DanhGia, BaoCaoViPham, NoiDungCauHoi, GhiChu, MaThanhVien, MaChuDe,
				DaXoa, LyDo, NgayXoa, NguoiXoa, SoNguoiBinhChon, NgayCapNhat, NguoiCapNhat
		from CAU_HOI where MaCauHoi = @macauhoi AND DaXoa = 0
	end
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spLayDSCauHoiTheoMaChuDe]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
--3.lấy danh sách câu hỏi theo chủ đề - Ngọc Hà
create proc [dbo].[spLayDSCauHoiTheoMaChuDe]
@machude int
as
	begin
		SELECT MaCauHoi, NgayHoi, NgayHetHan, DanhGia, BaoCaoViPham, NoiDungCauHoi, GhiChu, MaThanhVien, MaChuDe,
				DaXoa, LyDo, NgayXoa, NguoiXoa, SoNguoiBinhChon, NgayCapNhat, NguoiCapNhat
		FROM  CAU_HOI WHERE MaChuDe = @machude AND DaXoa = 0
		ORDER BY NgayHoi DESC
	end
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spLayDSCauHoiTheoNguoiHoi]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
-- 4. Lấy danh sách câu hỏi theo người đặt :Khắc Anh
create procedure [dbo].[spLayDSCauHoiTheoNguoiHoi]
@mathanhvien int
as
begin
	SELECT   MaCauHoi, NgayHoi, NgayHetHan, DanhGia, BaoCaoViPham, NoiDungCauHoi, GhiChu, MaThanhVien, MaChuDe, 
			DaXoa, LyDo, NgayXoa, NguoiXoa, SoNguoiBinhChon, NgayCapNhat, NguoiCapNhat
	FROM   CAU_HOI	where MaThanhVien=@mathanhvien AND DaXoa = 0
	ORDER BY NgayHoi DESC	
end
' 
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
	[GioiTinh] [int] NOT NULL,
	[Email] [varchar](100) NOT NULL,
	[TinhTrang] [int] NOT NULL,
	[Diem] [int] NOT NULL,
	[CapBac] [int] NOT NULL,
	[MaLoaiTV] [int] NOT NULL,
	[DaXoa] [int] NOT NULL,
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CAU_HOI]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CAU_HOI](
	[MaCauHoi] [int] IDENTITY(1,1) NOT NULL,
	[NgayHoi] [datetime] NOT NULL,
	[NgayHetHan] [datetime] NULL,
	[DanhGia] [int] NOT NULL,
	[BaoCaoViPham] [int] NOT NULL,
	[NoiDungCauHoi] [nvarchar](160) NOT NULL,
	[GhiChu] [nvarchar](160) NULL,
	[MaThanhVien] [int] NOT NULL,
	[MaChuDe] [int] NOT NULL,
	[DaXoa] [int] NOT NULL,
	[LyDo] [nvarchar](100) NULL,
	[NgayXoa] [datetime] NULL,
	[NguoiXoa] [int] NULL,
	[SoNguoiBinhChon] [int] NOT NULL,
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[DANH_GIA_CAU_TRA_LOI]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[DANH_GIA_CAU_TRA_LOI](
	[MaCauTraLoi] [int] NOT NULL,
	[MaThanhVien] [int] NOT NULL,
	[SoSao] [int] NOT NULL,
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[CAU_TRA_LOI]') AND type in (N'U'))
BEGIN
CREATE TABLE [dbo].[CAU_TRA_LOI](
	[MaCauTraLoi] [int] IDENTITY(1,1) NOT NULL,
	[NgayTraLoi] [datetime] NOT NULL,
	[SoSao] [int] NOT NULL,
	[SoNguoiBinhChon] [int] NOT NULL,
	[BaoCaoViPham] [int] NOT NULL,
	[GhiChu] [nvarchar](160) NULL,
	[NoiDung] [nvarchar](1000) NOT NULL,
	[MaCauHoi] [int] NOT NULL,
	[MaThanhVien] [int] NOT NULL,
	[DaXoa] [int] NOT NULL,
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
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spCapNhatThamSo]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE PROCEDURE [dbo].[spCapNhatThamSo]
@ma int,
@giatri int
AS
BEGIN
	UPDATE    THAM_SO
	SET    GiaTri = @giatri
	WHERE Ma = @ma
END' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spLayDSChuDe]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'CREATE procedure [dbo].[spLayDSChuDe]
as
	begin
		select *
		from CHU_DE
		where DaXoa = 0
	end
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spCapNhatChuDe]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'create procedure [dbo].[spCapNhatChuDe]
@machude int,
@tenchude nvarchar (50)
as
	begin
		update CHU_DE
		set TenChuDe = @tenchude
		where MaChuDe = @machude
	end
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spThemChuDe]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- 22 Them Chu De - HIỆP
create procedure [dbo].[spThemChuDe]
@tenchude nvarchar (50)
as
	begin
		insert into CHU_DE (TenChuDe,DaXoa)
		values  (@tenchude,0)
	end
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spXoaChuDe]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- 23 Xoa Chu De - HIỆP
create procedure [dbo].[spXoaChuDe]
@machude int
as
	begin
		UPDATE CHU_DE SET DaXoa = 1
		WHERE MaChuDe = @machude
	end
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spLayDSCapBac]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--24. Lấy danh sách cấp bậc
create proc [dbo].[spLayDSCapBac]
as
	begin
		select * from CAP_BAC
	end
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spLayCapBacTheoMa]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--25. Lấy cấp bậc theo mã
create proc [dbo].[spLayCapBacTheoMa]
@macapbac int
as
	begin
		select * from CAP_BAC where MaCapBac = @macapbac
	end
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spCapNhatCapBac]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--26 Cập nhật cấp bậc
create proc [dbo].[spCapNhatCapBac]
@macapbac int,
@tencapbac	nvarchar(50),
@diem	int,
@tongcauhoi	int,
@tongcautraloi	int
as
	begin
		UPDATE    CAP_BAC
		SET       TenCapBac = @tencapbac, Diem = @diem, TongCauHoi = @tongcauhoi, TongCauTraLoi = @tongcautraloi
		where macapbac = @macapbac
	end
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spThemCapBac]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--27. Thêm cấp bậc - Ngọc Hà
create proc [dbo].[spThemCapBac]
@tencapbac	nvarchar(50),
@diem	int,
@tongcauhoi	int,
@tongcautraloi	int
as
	begin
		INSERT INTO CAP_BAC(TenCapBac, Diem, TongCauHoi, TongCauTraLoi)
		VALUES (@tencapbac, @diem, @tongcauhoi, @tongcautraloi)		
	end
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spThemThanhVien]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- 12.Thêm thành viên - THU HÀ
CREATE PROCEDURE [dbo].[spThemThanhVien]	
(
@tentaikhoan nvarchar(50),
@matkhau varchar(30),
@hoten nvarchar(50),
@ngaysinh datetime,
@gioitinh int,
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
BEGIN
	INSERT INTO THANH_VIEN (TenTaiKhoan, MatKhau, HoTen, NgaySinh, GioiTinh, Email, TinhTrang, 
	Diem, CapBac, MaLoaiTV, DaXoa, LyDo, NgayXoa, NguoiXoa)
	VALUES(@tentaikhoan,@matkhau,@hoten,@ngaysinh,@gioitinh,@email,@tinhtrang,
	@diem,@capbac,@maloaitv,@daxoa, @lydo, @ngayxoa, @nguoixoa)
END
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spCapNhatThongTinCaNhan]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- 13. Cập nhật thông tin tài khoản - ANH VŨ
create proc [dbo].[spCapNhatThongTinCaNhan]
(
	@mathanhvien int,
	@tentaikhoan nvarchar(50),	
	@hoten nvarchar(50),
	@ngaysinh datetime,
	@gioitinh int,
	@email varchar(100)
)	
AS
begin
	update THANH_VIEN
	set HoTen = @hoten, NgaySinh = @ngaysinh, GioiTinh = @gioitinh, Email = @email		
	where MaThanhVien = @mathanhvien
end
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spCapNhatDiemVaCapBac]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--34.Cập nhật điểm & cấp bậc cho thành viên - thu hà
CREATE PROCEDURE [dbo].[spCapNhatDiemVaCapBac]
@mathanhvien int,
@diem int,
@capbac int
AS
BEGIN
	UPDATE    THANH_VIEN
	SET        Diem = @diem, CapBac = @capbac
	WHERE	MaThanhVien = @mathanhvien
END
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spDoiMatKhau]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--Câu 14 : Đổi mật khẩu  - ANH VŨ
create proc [dbo].[spDoiMatKhau]
(
	@mathanhvien int,
	@matkhau varchar(30)
)
as
begin
	update THANH_VIEN
	set MatKhau = @matkhau
	where MaThanhVien = @mathanhvien
end
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spLayThongTinThanhVienTheoMa]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--Cau 15 : Lay thong tin thanh vien theo ma - ANH VŨ
--Cập nhật 11/5/2011
CREATE proc [dbo].[spLayThongTinThanhVienTheoMa]
(
	@mathanhvien int
)
as
begin
	select	MaThanhVien,TenTaiKhoan, MatKhau, HoTen, NgaySinh, GioiTinh, Email, TinhTrang, 
			Diem, CapBac, MaLoaiTV, DaXoa, LyDo, NgayXoa, NguoiXoa
	from THANH_VIEN
	where MaThanhVien = @mathanhvien AND DaXoa = 0
end
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spXoaThanhVien]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--Cau 16 : Xoa Thanh Vien -- Anh Vũ
create proc [dbo].[spXoaThanhVien]
(
@mathanhvien int,
@lydo	nvarchar(100),
@ngayxoa	datetime,
@nguoixoa	int
)
as
begin
	UPDATE THANH_VIEN SET DaXoa = 1, LyDo=@lydo, NgayXoa=@ngayxoa, NguoiXoa=@nguoixoa
	WHERE MaThanhVien = @mathanhvien
end
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spLayDSThanhVien]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'
--Cau 17: Lay Danh Sach Thanh Vien -- Anh Vũ
CREATE proc [dbo].[spLayDSThanhVien]
as
Begin
	SELECT MaThanhVien, TenTaiKhoan, MatKhau, HoTen, NgaySinh, GioiTinh, Email, TinhTrang, 
			Diem, CapBac, MaLoaiTV, DaXoa, LyDo, NgayXoa,NguoiXoa
	FROM  THANH_VIEN
	WHERE DaXoa=0 
	ORDER BY CapBac DESC, Diem DESC
end
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spLayDSThanhVienTheoTinhTrang]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--Cau 18 : Lay Danh Sach Thanh Vien Theo Tinh Trang -- Anh Vũ
create proc [dbo].[spLayDSThanhVienTheoTinhTrang]
(
	@tinhtrang int
)
as
begin
	select TenTaiKhoan, MatKhau, HoTen, NgaySinh, GioiTinh, Email, TinhTrang, 
			Diem, CapBac, MaLoaiTV, DaXoa, LyDo, NgayXoa, NguoiXoa
	from THANH_VIEN
	where TinhTrang = @tinhtrang and DaXoa = 0
end
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spCapNhatTinhTrangThanhVien]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'--Cau 19: Cap Nhat Tinh Trang Thanh Vien -- Anh Vũ
create procedure [dbo].[spCapNhatTinhTrangThanhVien]
(
	@tinhtrang int, 
	@mathanhvien int
)
as
begin
	update THANH_VIEN
	set TinhTrang = @tinhtrang
	where MaThanhVien = @mathanhvien
end' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spLayThongTinThanhVienTheoTenTaiKhoan]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'

--Cau  : Lay thong tin thanh vien theo ten tai khoan - ANH VŨ
--Cập nhật 11/5/2011
CREATE proc [dbo].[spLayThongTinThanhVienTheoTenTaiKhoan]
(
	@tentaikhoan varchar(20)
)
as
begin
	select	MaThanhVien,TenTaiKhoan, MatKhau, HoTen, NgaySinh, GioiTinh, Email, TinhTrang, 
			Diem, CapBac, MaLoaiTV, DaXoa, LyDo, NgayXoa, NguoiXoa
	from THANH_VIEN
	where TenTaiKhoan like @tentaikhoan AND DaXoa = 0
end


' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spThemCauHoiVaoDanhSachTheoDoi]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- 28 Them Cau Hoi Vao Danh Sach Theo Doi -- hiệp
create procedure [dbo].[spThemCauHoiVaoDanhSachTheoDoi]
@mathanhvien int,
@macauhoi int
as
	begin
		insert into DS_CAU_HOI_THEO_DOI (MaTV, MaCauHoi)
		values (@mathanhvien, @macauhoi)
	end
' 
END
GO
SET ANSI_NULLS ON
GO
SET QUOTED_IDENTIFIER ON
GO
IF NOT EXISTS (SELECT * FROM sys.objects WHERE object_id = OBJECT_ID(N'[dbo].[spXoaCauHoiKhoiDanhSachTheoDoi]') AND type in (N'P', N'PC'))
BEGIN
EXEC dbo.sp_executesql @statement = N'-- 29 Xoa Cau Hoi Khoi Danh Sach Theo Doi -- hiệp
create procedure [dbo].[spXoaCauHoiKhoiDanhSachTheoDoi]
@mathanhvien int,
@macauhoi int
as
	begin
		delete from DS_CAU_HOI_THEO_DOI
		where MaCauHoi = @macauhoi AND MaTV=@mathanhvien
	end
' 
END
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_THANH_VIEN_CAP_BAC]') AND parent_object_id = OBJECT_ID(N'[dbo].[THANH_VIEN]'))
ALTER TABLE [dbo].[THANH_VIEN]  WITH CHECK ADD  CONSTRAINT [FK_THANH_VIEN_CAP_BAC] FOREIGN KEY([CapBac])
REFERENCES [dbo].[CAP_BAC] ([MaCapBac])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_THANH_VIEN_LOAI_THANH_VIEN]') AND parent_object_id = OBJECT_ID(N'[dbo].[THANH_VIEN]'))
ALTER TABLE [dbo].[THANH_VIEN]  WITH CHECK ADD  CONSTRAINT [FK_THANH_VIEN_LOAI_THANH_VIEN] FOREIGN KEY([MaLoaiTV])
REFERENCES [dbo].[LOAI_THANH_VIEN] ([MaLoaiTV])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_THANH_VIEN_TINH_TRANG]') AND parent_object_id = OBJECT_ID(N'[dbo].[THANH_VIEN]'))
ALTER TABLE [dbo].[THANH_VIEN]  WITH CHECK ADD  CONSTRAINT [FK_THANH_VIEN_TINH_TRANG] FOREIGN KEY([TinhTrang])
REFERENCES [dbo].[TINH_TRANG] ([MaTinhTrang])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CAU_HOI_CHU_DE]') AND parent_object_id = OBJECT_ID(N'[dbo].[CAU_HOI]'))
ALTER TABLE [dbo].[CAU_HOI]  WITH CHECK ADD  CONSTRAINT [FK_CAU_HOI_CHU_DE] FOREIGN KEY([MaChuDe])
REFERENCES [dbo].[CHU_DE] ([MaChuDe])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_CAU_HOI_THANH_VIEN]') AND parent_object_id = OBJECT_ID(N'[dbo].[CAU_HOI]'))
ALTER TABLE [dbo].[CAU_HOI]  WITH NOCHECK ADD  CONSTRAINT [FK_CAU_HOI_THANH_VIEN] FOREIGN KEY([MaThanhVien])
REFERENCES [dbo].[THANH_VIEN] ([MaThanhVien])
GO
ALTER TABLE [dbo].[CAU_HOI] CHECK CONSTRAINT [FK_CAU_HOI_THANH_VIEN]
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DANH_GIA_CAU_TRA_LOI_CAU_TRA_LOI]') AND parent_object_id = OBJECT_ID(N'[dbo].[DANH_GIA_CAU_TRA_LOI]'))
ALTER TABLE [dbo].[DANH_GIA_CAU_TRA_LOI]  WITH CHECK ADD  CONSTRAINT [FK_DANH_GIA_CAU_TRA_LOI_CAU_TRA_LOI] FOREIGN KEY([MaCauTraLoi])
REFERENCES [dbo].[CAU_TRA_LOI] ([MaCauTraLoi])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DANH_GIA_CAU_TRA_LOI_THANH_VIEN]') AND parent_object_id = OBJECT_ID(N'[dbo].[DANH_GIA_CAU_TRA_LOI]'))
ALTER TABLE [dbo].[DANH_GIA_CAU_TRA_LOI]  WITH CHECK ADD  CONSTRAINT [FK_DANH_GIA_CAU_TRA_LOI_THANH_VIEN] FOREIGN KEY([MaThanhVien])
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
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DANH_GIA_CAU_HOI_CAU_HOI]') AND parent_object_id = OBJECT_ID(N'[dbo].[DANH_GIA_CAU_HOI]'))
ALTER TABLE [dbo].[DANH_GIA_CAU_HOI]  WITH CHECK ADD  CONSTRAINT [FK_DANH_GIA_CAU_HOI_CAU_HOI] FOREIGN KEY([MaCauHoi])
REFERENCES [dbo].[CAU_HOI] ([MaCauHoi])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DANH_GIA_CAU_HOI_THANH_VIEN]') AND parent_object_id = OBJECT_ID(N'[dbo].[DANH_GIA_CAU_HOI]'))
ALTER TABLE [dbo].[DANH_GIA_CAU_HOI]  WITH CHECK ADD  CONSTRAINT [FK_DANH_GIA_CAU_HOI_THANH_VIEN] FOREIGN KEY([MaThanhVien])
REFERENCES [dbo].[THANH_VIEN] ([MaThanhVien])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DS_CAU_HOI_THEO_DOI_CAU_HOI]') AND parent_object_id = OBJECT_ID(N'[dbo].[DS_CAU_HOI_THEO_DOI]'))
ALTER TABLE [dbo].[DS_CAU_HOI_THEO_DOI]  WITH CHECK ADD  CONSTRAINT [FK_DS_CAU_HOI_THEO_DOI_CAU_HOI] FOREIGN KEY([MaCauHoi])
REFERENCES [dbo].[CAU_HOI] ([MaCauHoi])
GO
IF NOT EXISTS (SELECT * FROM sys.foreign_keys WHERE object_id = OBJECT_ID(N'[dbo].[FK_DS_CAU_HOI_THEO_DOI_THANH_VIEN]') AND parent_object_id = OBJECT_ID(N'[dbo].[DS_CAU_HOI_THEO_DOI]'))
ALTER TABLE [dbo].[DS_CAU_HOI_THEO_DOI]  WITH CHECK ADD  CONSTRAINT [FK_DS_CAU_HOI_THEO_DOI_THANH_VIEN] FOREIGN KEY([MaTV])
REFERENCES [dbo].[THANH_VIEN] ([MaThanhVien])
