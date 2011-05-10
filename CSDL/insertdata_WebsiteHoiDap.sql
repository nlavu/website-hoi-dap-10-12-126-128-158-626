-- TÌNH TRẠNG
INSERT INTO TINH_TRANG  (TenTinhTrang) VALUES (N'Bình thường')
INSERT INTO TINH_TRANG  (TenTinhTrang) VALUES (N'Ban nick')
INSERT INTO TINH_TRANG  (TenTinhTrang) VALUES (N'Chờ kích hoạt')
INSERT INTO TINH_TRANG  (TenTinhTrang) VALUES (N'Chưa kích hoạt')

-- CHỦ ĐỀ
INSERT INTO CHU_DE (TenChuDe, DaXoa) VALUES (N'Ẩm thực', 0)
INSERT INTO CHU_DE (TenChuDe, DaXoa) VALUES (N'Doanh nghiệp địa phương',0)
INSERT INTO CHU_DE (TenChuDe, DaXoa) VALUES (N'Du lịch',0)
INSERT INTO CHU_DE (TenChuDe, DaXoa) VALUES (N'Giải trí - Âm nhạc',0)
INSERT INTO CHU_DE (TenChuDe, DaXoa) VALUES (N'Giáo dục - Tham khảo',0)
INSERT INTO CHU_DE (TenChuDe, DaXoa) VALUES (N'Gia đình - Quan hệ xã hội',0)
INSERT INTO CHU_DE (TenChuDe, DaXoa) VALUES (N'Khoa học Tự nhiên',0)
INSERT INTO CHU_DE (TenChuDe, DaXoa) VALUES (N'Khoa học Xã hội',0)
INSERT INTO CHU_DE (TenChuDe, DaXoa) VALUES (N'Kinh doanh - Tài chính',0)
INSERT INTO CHU_DE (TenChuDe, DaXoa) VALUES (N'Máy tính - Internet',0)
INSERT INTO CHU_DE (TenChuDe, DaXoa) VALUES (N'Môi trường',0)
INSERT INTO CHU_DE (TenChuDe, DaXoa) VALUES (N'Nhà - Vườn',0)
INSERT INTO CHU_DE (TenChuDe, DaXoa) VALUES (N'Nơi ăn uống',0)
INSERT INTO CHU_DE (TenChuDe, DaXoa) VALUES (N'Ô-tô - Vận tải',0)
INSERT INTO CHU_DE (TenChuDe, DaXoa) VALUES (N'Sức khỏe',0)
INSERT INTO CHU_DE (TenChuDe, DaXoa) VALUES (N'Thai nghén - Nuôi dạy con',0)
INSERT INTO CHU_DE (TenChuDe, DaXoa) VALUES (N'Thể thao',0)
INSERT INTO CHU_DE (TenChuDe, DaXoa) VALUES (N'Thủ tục hành chính',0)
INSERT INTO CHU_DE (TenChuDe, DaXoa) VALUES (N'Tin tức - Sự kiện',0)
INSERT INTO CHU_DE (TenChuDe, DaXoa) VALUES (N'Trò chơi - Giải trí',0)
INSERT INTO CHU_DE (TenChuDe, DaXoa) VALUES (N'Văn hóa - Xã hội',0)
INSERT INTO CHU_DE (TenChuDe, DaXoa) VALUES (N'Văn học - Nhân văn',0)
INSERT INTO CHU_DE (TenChuDe, DaXoa) VALUES (N'Vật nuôi',0)
INSERT INTO CHU_DE (TenChuDe, DaXoa) VALUES (N'Vẻ đẹp - Phong cách',0)
INSERT INTO CHU_DE (TenChuDe, DaXoa) VALUES (N'Điện tử tiêu dùng',0)


-- CẤP BẬC
INSERT INTO CAP_BAC (TenCapBac, Diem, TongCauHoi, TongCauTraLoi) VALUES (1, 1, 5, 20)
INSERT INTO CAP_BAC (TenCapBac, Diem, TongCauHoi, TongCauTraLoi) VALUES (2, 250, 10, 40)
INSERT INTO CAP_BAC (TenCapBac, Diem, TongCauHoi, TongCauTraLoi) VALUES (3, 1000, 15, 60)
INSERT INTO CAP_BAC (TenCapBac, Diem, TongCauHoi, TongCauTraLoi) VALUES (4, 2500, 20, 80)
INSERT INTO CAP_BAC (TenCapBac, Diem, TongCauHoi, TongCauTraLoi) VALUES (5, 5000, 0, 0 )
INSERT INTO CAP_BAC (TenCapBac, Diem, TongCauHoi, TongCauTraLoi) VALUES (6, 10000, 0, 0)
INSERT INTO CAP_BAC (TenCapBac, Diem, TongCauHoi, TongCauTraLoi) VALUES (7, 25000, 0, 0)

-- LOẠI THÀNH VIÊN
INSERT INTO LOAI_THANH_VIEN (TenLoaiTV) VALUES (N'Admin')
INSERT INTO LOAI_THANH_VIEN (TenLoaiTV) VALUES  (N'Thành viên')


-- THAM SỐ
INSERT INTO THAM_SO (TenThamSo, GiaTri) VALUES (N'Đăng ký thành viên',100)
INSERT INTO THAM_SO (TenThamSo, GiaTri) VALUES (N'Đặt câu hỏi', -5)
INSERT INTO THAM_SO (TenThamSo, GiaTri) VALUES (N'Trả lời câu hỏi', 2)
INSERT INTO THAM_SO (TenThamSo, GiaTri) VALUES (N'Xóa câu trả lời', -2)
INSERT INTO THAM_SO (TenThamSo, GiaTri) VALUES (N'Đăng nhập vào website ', 1)
INSERT INTO THAM_SO (TenThamSo, GiaTri) VALUES (N'Bình chọn câu trả lời', 1)
INSERT INTO THAM_SO (TenThamSo, GiaTri) VALUES (N'Câu trả lời của bạn là câu trả lời hay nhất', 10)

INSERT INTO THAM_SO (TenThamSo, GiaTri) VALUES (N'Thời gian trả lời câu hỏi max', 336)
INSERT INTO THAM_SO (TenThamSo, GiaTri) VALUES (N'Thời gian tối thiểu để đánh giá', 1)

INSERT INTO THAM_SO (TenThamSo, GiaTri) VALUES (N'Số điểm tối thiểu để được đánh giá câu hỏi', 200)
INSERT INTO THAM_SO (TenThamSo, GiaTri) VALUES (N'Số điểm tối thiểu để được đánh giá câu trả lời', 200)

INSERT INTO THAM_SO (TenThamSo, GiaTri) VALUES (N'Số sao', 5)
INSERT INTO THAM_SO (TenThamSo, GiaTri) VALUES (N'Xóa - cập nhật câu hỏi', 24)
INSERT INTO THAM_SO (TenThamSo, GiaTri) VALUES (N'Xóa câu trả lời', 1)
INSERT INTO THAM_SO (TenThamSo, GiaTri) VALUES (N'Thời gian ban nick', 72)
INSERT INTO THAM_SO (TenThamSo, GiaTri) VALUES (N'Thời gian kích hoạt mật khẩu mới', 24)

-- Phù Khắc Anh - 10/5/2011
-- THÀNH VIÊN
INSERT INTO THANH_VIEN
           ( TenTaiKhoan, MatKhau, HoTen, NgaySinh, GioiTinh, Email, TinhTrang, Diem, CapBac, MaLoaiTV, DaXoa)
VALUES     ( 'phukhacanh', N'phukhacanh', N'phù khắc anh', CONVERT(DATETIME, '1990-01-03 00:00:00', 102), 1, 'black_bloodykiller@yahoo.com', 1, 100, 
                      1, 2, 0)

INSERT INTO THANH_VIEN
           ( TenTaiKhoan, MatKhau, HoTen, NgaySinh, GioiTinh, Email, TinhTrang, Diem, CapBac, MaLoaiTV, DaXoa)
VALUES     ( 'nguyenluuanhvu', N'nguyenluuanhvu', N'Nguyễn Lưu Anh vũ', CONVERT(DATETIME, '1991-01-03 00:00:00', 102), 0, 'nguyenluuanhvu@yahoo.com', 1, 100, 
                      1, 2, 0)

INSERT INTO THANH_VIEN
           ( TenTaiKhoan, MatKhau, HoTen, NgaySinh, GioiTinh, Email, TinhTrang, Diem, CapBac, MaLoaiTV, DaXoa)
VALUES     ( 'Lethihiep', N'lethihiep', N'Lê Thị Hiệp', CONVERT(DATETIME, '1992-01-03 00:00:00', 102), 0, 'lethihiep@yahoo.com', 1, 100, 
                      1, 2, 0)

INSERT INTO THANH_VIEN
           ( TenTaiKhoan, MatKhau, HoTen, NgaySinh, GioiTinh, Email, TinhTrang, Diem, CapBac, MaLoaiTV, DaXoa)
VALUES     ( 'TruongThiThuHa', N'truongthithuha', N'trương thị thu hà', CONVERT(DATETIME, '1993-01-03 00:00:00', 102), 0, 'truongthithuha@yahoo.com', 1, 100, 
                      1, 2, 0)
INSERT INTO THANH_VIEN
           ( TenTaiKhoan, MatKhau, HoTen, NgaySinh, GioiTinh, Email, TinhTrang, Diem, CapBac, MaLoaiTV, DaXoa)
VALUES     ( 'nguyenthingocha', N'nguyenthingocha', N'Nguyễn Thị Ngọc Hà', CONVERT(DATETIME, '1994-01-03 00:00:00', 102), 0, 'nguyenthingocha@yahoo.com', 1, 100, 
                      1, 2, 0)

INSERT INTO THANH_VIEN
           ( TenTaiKhoan, MatKhau, HoTen, NgaySinh, GioiTinh, Email, TinhTrang, Diem, CapBac, MaLoaiTV, DaXoa)
VALUES     ( 'tranminhanh', N'tranminhanh', N'Trần Minh Anh', CONVERT(DATETIME, '1995-01-03 00:00:00', 102), 1, 'tranminhanh@yahoo.com', 1, 100, 
                      1, 2, 0)

-- CÂU HỎI
INSERT INTO CAU_HOI(NgayHoi, NgayHetHan, DanhGia, BaoCaoViPham, NoiDungCauHoi, MaThanhVien, MaChuDe, SoNguoiBinhChon, DaXoa)
VALUES     (CONVERT(DATETIME, '1989-03-12 00:00:00', 102), CONVERT(DATETIME, '1989-03-15 00:00:00', 102), 1, 0, N'Món bún', 1, 1, 10, 0)

INSERT INTO CAU_HOI( NgayHoi, NgayHetHan, DanhGia, BaoCaoViPham, NoiDungCauHoi, MaThanhVien, MaChuDe, SoNguoiBinhChon, DaXoa)
VALUES     ( CONVERT(DATETIME, '1999-03-12 00:00:00', 102), CONVERT(DATETIME, '1999-03-15 00:00:00', 102), 3, 0, N'Món thịt', 2, 1, 10, 0)

INSERT INTO CAU_HOI( NgayHoi, NgayHetHan, DanhGia, BaoCaoViPham, NoiDungCauHoi, MaThanhVien, MaChuDe, SoNguoiBinhChon, DaXoa)
VALUES     ( CONVERT(DATETIME, '2001-03-12 00:00:00', 102), CONVERT(DATETIME, '2001-03-15 00:00:00', 102), 3, 0, N'Món canh', 3, 1, 10, 0)

INSERT INTO CAU_HOI( NgayHoi, NgayHetHan, DanhGia, BaoCaoViPham, NoiDungCauHoi, MaThanhVien, MaChuDe, SoNguoiBinhChon, DaXoa)
VALUES     ( CONVERT(DATETIME, '2002-03-12 00:00:00', 102), CONVERT(DATETIME, '2002-03-15 00:00:00', 102), 3, 0, N'thể lọai nhạc', 4, 3, 10, 0)

INSERT INTO CAU_HOI( NgayHoi, NgayHetHan, DanhGia, BaoCaoViPham, NoiDungCauHoi, MaThanhVien, MaChuDe, SoNguoiBinhChon, DaXoa)
VALUES     ( CONVERT(DATETIME, '2002-03-12 00:00:00', 102), CONVERT(DATETIME, '2002-03-15 00:00:00', 102), 3, 0, N'Ca sĩ nam', 5, 2, 10, 0)

INSERT INTO CAU_HOI( NgayHoi, NgayHetHan, DanhGia, BaoCaoViPham, NoiDungCauHoi, MaThanhVien, MaChuDe, SoNguoiBinhChon, DaXoa)
VALUES     ( CONVERT(DATETIME, '2002-03-12 00:00:00', 102), CONVERT(DATETIME, '2002-03-15 00:00:00', 102), 3, 0, N'Ca sĩ nữ', 6, 5, 10, 0)

INSERT INTO CAU_HOI( NgayHoi, NgayHetHan, DanhGia, BaoCaoViPham, NoiDungCauHoi, MaThanhVien, MaChuDe, SoNguoiBinhChon, DaXoa)
VALUES     ( CONVERT(DATETIME, '2002-03-12 00:00:00', 102), CONVERT(DATETIME, '2002-03-15 00:00:00', 102), 3, 0, N'các khoa truong DHKHTN', 4, 5, 10, 0)

INSERT INTO CAU_HOI( NgayHoi, NgayHetHan, DanhGia, BaoCaoViPham, NoiDungCauHoi, MaThanhVien, MaChuDe, SoNguoiBinhChon, DaXoa)
VALUES     ( CONVERT(DATETIME, '2002-03-12 00:00:00', 102), CONVERT(DATETIME, '2002-03-15 00:00:00', 102), 3, 0, N'các môn thi tốt nghiệp', 6, 5, 10, 0)

INSERT INTO CAU_HOI( NgayHoi, NgayHetHan, DanhGia, BaoCaoViPham, NoiDungCauHoi, MaThanhVien, MaChuDe, SoNguoiBinhChon, DaXoa)
VALUES     ( CONVERT(DATETIME, '2002-03-12 00:00:00', 102), CONVERT(DATETIME, '2002-03-15 00:00:00', 102), 3, 0, N'Các cách để làm bài trắc nghiệm tốt', 5, 5, 10, 0)

INSERT INTO CAU_HOI( NgayHoi, NgayHetHan, DanhGia, BaoCaoViPham, NoiDungCauHoi, MaThanhVien, MaChuDe, SoNguoiBinhChon, DaXoa)
VALUES     ( CONVERT(DATETIME, '2002-03-12 00:00:00', 102), CONVERT(DATETIME, '2002-03-15 00:00:00', 102), 3, 0, N'Các môn thể thao dưới nước', 5, 17, 10, 0)


--CÂU TRẢ LỜI

INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '1989-07-05 00:00:00', 102), 1, 1,0, N'bún chả cá', 1, 1, 0)

INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '1989-07-05 00:00:00', 102), 1, 1,0, N'bún chả giò', 1, 2, 0)

INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '1989-07-05 00:00:00', 102), 1, 1,0, N'bún mắm nêm', 1, 3, 0)

INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '1999-07-05 00:00:00', 102), 1, 1,0, N'thịt kho', 2, 4, 0)

INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '1999-07-05 00:00:00', 102), 1, 1,0, N'thịt luộc', 2, 5, 0)

INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '1999-07-05 00:00:00', 102), 1, 1,0, N'thịt nướng', 2, 3, 0)

INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '2001-07-05 00:00:00', 102), 1, 1,0, N'canh chua', 3, 4, 0)

INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '2001-07-05 00:00:00', 102), 1, 1,0, N'canh khoai mỡ', 3, 1, 0)

INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '2001-07-05 00:00:00', 102), 1, 1,0, N'canh rau dền', 3, 5, 0)

INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '2002-07-05 00:00:00', 102), 1, 1,0, N'nhạc rock', 4, 2, 0)

INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '2002-07-05 00:00:00', 102), 1, 1,0, N'nhạc pop', 4, 2, 0)


INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '2002-07-05 00:00:00', 102), 1, 1,0, N'nhạc dance', 4, 6, 0)


INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '2003-07-05 00:00:00', 102), 1, 1,0, N'Đan Trường', 5, 2, 0)

INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '2003-07-05 00:00:00', 102), 1, 1,0, N'Lam Trường', 5, 5, 0)


INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '2003-07-05 00:00:00', 102), 1, 1,0, N'Đàm Vĩnh Hưng', 5, 2, 0)


INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '2003-07-05 00:00:00', 102), 1, 1,0, N'Cẩm Ly', 6, 4, 0)


INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '2003-07-05 00:00:00', 102), 1, 10,0, N'Mỹ Tâm', 6, 3, 0)


INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '2003-07-05 00:00:00', 102), 3, 7,0, N'Bảo Thy', 6, 6, 0)


INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '2003-07-05 00:00:00', 102), 1, 5,0, N'Hóa, CNTT, Tóan Tin, Sinh', 7, 3, 0)

INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '2003-07-05 00:00:00', 102), 1, 11,0, N'Hóa, CNTT, Tóan Tin, DTVT', 7, 2, 0)

INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '2003-07-05 00:00:00', 102), 3, 13,0, N'Hóa, CNTT, Tóan Tin, Sinh, KHVL', 7, 6, 0)

INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '2003-07-05 00:00:00', 102), 1, 1,0, N'Hóa, Tóan, Sinh, Văn, AV, Sử', 8, 1, 0)


INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '2003-07-05 00:00:00', 102), 2, 3,0, N'Hóa, Tóan, Sinh, Văn, AV, Địa', 8, 1, 0)


INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '2003-07-05 00:00:00', 102), 4, 19,0, N'Lý, Tóan, Sinh, Văn, AV, Sử', 8, 3, 0)


INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '2003-07-05 00:00:00', 102), 1, 17,0, N'Đọc kỹ đề', 9, 6, 0)


INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '2003-07-05 00:00:00', 102), 1, 1,0, N'Đánh đại', 9, 2, 0)


INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '2003-07-05 00:00:00', 102), 1, 1, 0, N'Hên xui', 9, 1, 0)


INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '2003-07-05 00:00:00', 102), 2, 10,0, N'Bơi, lặn, lướt ván', 10, 1, 0)

insert INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '2003-07-05 00:00:00', 102), 2, 14, 0, N'Bơi, lặn, lướt ván, nhảy cầu, lướt thuyền buồm', 10, 3, 0)

insert INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '2003-07-05 00:00:00', 102), 1, 1,0, N'Bơi, lặn', 10, 6, 0)