
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
VALUES     ( 'username', N'123456', N'Phù Khắc Anh', CONVERT(DATETIME, '1990-01-03 00:00:00', 102), 1, 'black_bloodykiller@yahoo.com', 1, 150, 
                      1, 2, 0)

INSERT INTO THANH_VIEN
           ( TenTaiKhoan, MatKhau, HoTen, NgaySinh, GioiTinh, Email, TinhTrang, Diem, CapBac, MaLoaiTV, DaXoa)
VALUES     ( 'nguyenluuanhvu', N'nguyenluuanhvu', N'Nguyễn Lưu Anh vũ', CONVERT(DATETIME, '1990-12-07 00:00:00', 102), 1, 'nguyenluuanhvu@yahoo.com', 1, 300, 
                      2, 2, 0)

INSERT INTO THANH_VIEN
           ( TenTaiKhoan, MatKhau, HoTen, NgaySinh, GioiTinh, Email, TinhTrang, Diem, CapBac, MaLoaiTV, DaXoa)
VALUES     ( 'lethihiep', N'lethihiep', N'Lê Thị Hiệp', CONVERT(DATETIME, '1990-08-05 00:00:00', 102), 2, 'lethihiep@yahoo.com', 1, 700, 
                      2, 2, 0)

INSERT INTO THANH_VIEN
           ( TenTaiKhoan, MatKhau, HoTen, NgaySinh, GioiTinh, Email, TinhTrang, Diem, CapBac, MaLoaiTV, DaXoa)
VALUES     ( 'truongthithuha', N'truongthithuha', N'Trương Thị Thu Hà', CONVERT(DATETIME, '1989-10-10 00:00:00', 102), 2, 'truongthithuha@yahoo.com', 1, 1100, 
                      3, 2, 0)
INSERT INTO THANH_VIEN
           ( TenTaiKhoan, MatKhau, HoTen, NgaySinh, GioiTinh, Email, TinhTrang, Diem, CapBac, MaLoaiTV, DaXoa)
VALUES     ( 'nguyenthingocha', N'nguyenthingocha', N'Nguyễn Thị Ngọc Hà', CONVERT(DATETIME, '1990-12-9 00:00:00', 102), 2, 'nguyenthingocha@yahoo.com', 1, 2000, 
                      3, 2, 0)

INSERT INTO THANH_VIEN
           ( TenTaiKhoan, MatKhau, HoTen, NgaySinh, GioiTinh, Email, TinhTrang, Diem, CapBac, MaLoaiTV, DaXoa)
VALUES     ( 'tranminhanh', N'tranminhanh', N'Trần Minh Anh', CONVERT(DATETIME, '1992-02-02 00:00:00', 102), 1, 'tranminhanh@yahoo.com', 1, 100, 
                      1, 2, 0)

-- CÂU HỎI
INSERT INTO CAU_HOI(NgayHoi, NgayHetHan, DanhGia, BaoCaoViPham, NoiDungCauHoi, MaThanhVien, MaChuDe, SoNguoiBinhChon, DaXoa)
VALUES     (CONVERT(DATETIME, '1999-03-12 00:00:00', 102), CONVERT(DATETIME, '1999-03-15 00:00:00', 102), 1, 0,
		 N' cá thái miêng ướp gia vị rồi chiên lên vậy mà cũng gọi là chả cá ? ', 1, 1, 10, 0)

INSERT INTO CAU_HOI( NgayHoi, NgayHetHan, DanhGia, BaoCaoViPham, NoiDungCauHoi, MaThanhVien, MaChuDe, SoNguoiBinhChon, DaXoa)
VALUES     ( CONVERT(DATETIME, '1999-03-21 00:00:00', 102), CONVERT(DATETIME, '1999-03-25 00:00:00', 102), 2, 0, N'Gân bò tiếng anh kêu là gì?
Xin cám ơn', 2, 1, 5, 0)

INSERT INTO CAU_HOI( NgayHoi, NgayHetHan, DanhGia, BaoCaoViPham, NoiDungCauHoi, MaThanhVien, MaChuDe, SoNguoiBinhChon, DaXoa)
VALUES     ( CONVERT(DATETIME, '2001-03-18 00:00:00', 102), CONVERT(DATETIME, '2001-03-30 00:00:00', 102), 4, 0, N'chào các bạn! có bạn nào biết nấu nước tương bằng đậu nành chỉ mình nha, thánk', 3, 1, 25, 0)

INSERT INTO CAU_HOI( NgayHoi, NgayHetHan, DanhGia, BaoCaoViPham, NoiDungCauHoi, MaThanhVien, MaChuDe, SoNguoiBinhChon, DaXoa)
VALUES     ( CONVERT(DATETIME, '2002-04-12 00:00:00', 102), CONVERT(DATETIME, '2002-04-15 00:00:00', 102), 3, 0, N'Thể loại nhạc R&B, ROCK, POP, K.POP, J.POP, ROCK&SLOW là gì?', 4, 3, 30, 0)

INSERT INTO CAU_HOI( NgayHoi, NgayHetHan, DanhGia, BaoCaoViPham, NoiDungCauHoi, MaThanhVien, MaChuDe, SoNguoiBinhChon, DaXoa)
VALUES     ( CONVERT(DATETIME, '2002-07-12 00:00:00', 102), CONVERT(DATETIME, '2002-07-21 00:00:00', 102), 2, 0, N'bai hat có lời:"đi về đâu hỡi những con tàu không bến đợi. .." là bài nào nhỉ ? ', 5, 2, 12, 0)

INSERT INTO CAU_HOI( NgayHoi, NgayHetHan, DanhGia, BaoCaoViPham, NoiDungCauHoi, MaThanhVien, MaChuDe, SoNguoiBinhChon, DaXoa)
VALUES     ( CONVERT(DATETIME, '2002-04-22 00:00:00', 102), CONVERT(DATETIME, '2002-04-25 00:00:00', 102), 13, 0, N'các bác ơi cho em hỏi một chút về âm nhạc cỏ điển nhé
_quãng của quỷ là quãng nào.', 6, 5, 20, 0)

INSERT INTO CAU_HOI( NgayHoi, NgayHetHan, DanhGia, BaoCaoViPham, NoiDungCauHoi, MaThanhVien, MaChuDe, SoNguoiBinhChon, DaXoa)
VALUES     ( CONVERT(DATETIME, '2002-06-12 00:00:00', 102), CONVERT(DATETIME, '2002-06-15 00:00:00', 102), 3, 1, N'Giải ft : 6căn(4x + 1) + 2căn(3 - x) = 3x + 14', 4, 5, 12, 0)

INSERT INTO CAU_HOI( NgayHoi, NgayHetHan, DanhGia, BaoCaoViPham, NoiDungCauHoi, MaThanhVien, MaChuDe, SoNguoiBinhChon, DaXoa)
VALUES     ( CONVERT(DATETIME, '2002-08-12 00:00:00', 102), CONVERT(DATETIME, '2002-08-15 00:00:00', 102), 3, 0, N'em đăng ký đi du học canada qua cty chuyên làm về du học từ tháng 11 năm 2009. Hơn nửa năm rồi vẫn chưa có thông tin mới gì từ ĐSQ', 6, 5, 10, 0)

INSERT INTO CAU_HOI( NgayHoi, NgayHetHan, DanhGia, BaoCaoViPham, NoiDungCauHoi, MaThanhVien, MaChuDe, SoNguoiBinhChon, DaXoa)
VALUES     ( CONVERT(DATETIME, '2002-11-12 00:00:00', 102), CONVERT(DATETIME, '2002-11-15 00:00:00', 102), 3, 0, N'Giữa hai ngành là ngành tiếng anh và tiếng anh thương mại thì nên chọn ngành nào ?', 5, 5, 8, 0)

INSERT INTO CAU_HOI( NgayHoi, NgayHetHan, DanhGia, BaoCaoViPham, NoiDungCauHoi, MaThanhVien, MaChuDe, SoNguoiBinhChon, DaXoa)
VALUES     ( CONVERT(DATETIME, '2002-12-12 00:00:00', 102), CONVERT(DATETIME, '2002-12-15 00:00:00', 102), 3, 0, N'Xin hỏi kênh nào sẽ trực tiếp chung kết C1 năm nay giữa Bacra vs M.U?
Cụ thể là mấy giờ và thứ mấy ngày mấy vậy mấy pro?', 5, 17, 10, 0)


--CÂU TRẢ LỜI

INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '1999-03-14 00:00:00', 102), 1, 2,0, N'mot so mon chien/nuong , nguoi bac goi là chả', 1, 3, 0)

INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '1999-05-14 00:00:00', 102), 1, 4,0, N'Ồng Trưởng Mềm có một cô con gái út tên là Thái. Cô con gái rất thích ông Lã Vọng.', 1, 2, 0)

INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '1999-05-15 00:00:00', 102), 1, 3,0, N'lã vọng là tên của ông già câu cá.', 1, 3, 0)

INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '1999-05-22 00:00:00', 102), 2, 5,0, N'beef tendon. lên hỏi mr.GoogleTrãnslate ý', 2, 4, 0)

INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '1999-05-24 00:00:00', 102), 1, 2,0, N'mình biết nè:
beef liver (là gân bò đó)', 2, 5, 0)

INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '1999-05-23 00:00:00', 102), 1, 0,0, N'KHÓ GHÊ
vÀO trang từ điển mà tìm', 2, 3, 0)

INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '2001-05-26 00:00:00', 102), 2, 10,0, N'1- Mốc: gạo nếp ngon. 2- Cạo lấy mốc này 3. Đỗ tương lọai tốt, rang chín, màu vàng nhạt thì tốt, hay màu', 3, 1, 0)

INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '2001-05-28 00:00:00', 102), 1, 3,0, N'Nước tương bằng đậu nành không phải nấu mà lên men từ đậu nành.', 3, 2, 0)

INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '2001-05-30 00:00:00', 102), 2, 8,0, N'Nguyên Vật Liệu chuẩn bị :
- 1 khạp sành 
- đậu nành 1 kg 
- thính gạo rang 150 gr
- muối 750 gr
- nước 5 lít', 3, 5, 0)

INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '2002-04-13 00:00:00', 102), 2, 7,0, N'♦thể loại nhạc R&B
http://www.vatgia.com/hoidap/detail.php?…', 4, 2, 0)

INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '2002-04-14 00:00:00', 102), 1, 3,0, N'nhạc r&b là nhạc có tiết tấu mạnh mẽ,sôi động,dồn dập.', 4, 1, 0)


INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '2002-04-15 00:00:00', 102), 2, 15,0, N'R&B viết tắt của Rhythm and blues xuất hiện tại Mỹ những năm 1949.', 4, 6, 0)


INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '2002-07-16 00:00:00', 102), 1, 3,0, N'Có thể là bài Bao giờ quên , Trình bày: Chế Phong, Sáng tác: Minh Thu - Hoài Linh
http://mp3.zing.vn/bai-hat/Bao-Gio-Quen/…', 5, 3, 0)

INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '2002-07-17 00:00:00', 102), 1, 2,0, N'http://www.dactrung.com/Bai-nh-14274-Bao… (Lời bài hát Bao giờ Quên)', 5, 5, 0)


INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '2003-07-18 00:00:00', 102), 1, 1,0, N'Chăc là bài Bao giờ quên đó bạn.', 5, 4, 0)


INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '2002-04-23 00:00:00', 102), 2, 4,0, N'Quãng "quỷ" trong âm nhạc cổ điển là "quãng 4 có 3 nguyên cung" trong Gam trưởng và thứ tự nhiên, VD Fa- Si trong giọng Đô Trưởng và La thứ vậy.', 6, 4, 0)


INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '2002-04-23 00:00:00', 102), 1, 1,0, N'Mình muốn hỏi thêm bạn câu nua mong bạn trả lời mình nhé;
_Trong vòng hòa thanh . an ; dm ; Bb ; F ; G ; am. thì Bb là hợp âm gì và có tác dụng như thế nào?', 6, 6, 0)


INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '2003-07-05 00:00:00', 102), 3, 7,0, N'Bạn dùng ký hiệu am để chỉ la thứ, theo mình không cần, nếu đã viết a thì coi như la thứ rồi.', 6, 4, 0)


INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '2002-06-14 00:00:00', 102), 1, 5,0, N'đặt √(4x + 1) = A và √(3 - x) = B
 pt có nghiệm duy nhất là x = 2', 7, 3, 0)

INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '2002-06-15 00:00:00', 102), 1, 11,0, N'ap dụng bđt bunhja
==>x=2 (3)
vậy x=2 để pt có ng.', 7, 2, 0)

INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '2002-06-15 00:00:00', 102), 3, 13,0, N'Mình chưa hiểu lắm về cách giải của bạn ??? Có thể add nick mình để hướng dẫn thêm ko, nick tui là thumikky', 7, 4, 0)

INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '2002-08-14 00:00:00', 102), 1, 1,0, N'Công ty nào vậy ? Môt hồ sơ du học Tốt,thì tứ ngày nộp đên khi có visa chỉ trong vong 2 đên 3 tháng,chắc lại hồ sơ fake rồi !!
hãy cho biết em đã nộp các loại giấy tờ gì ? tôi sẽ đanh giá giúp.', 8, 1, 0)


INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '2002-08-05 00:00:00', 102), 2, 3,0, N'bạn phải tìm một công ty có uy tín chứ nếu tìm đến những công ty chuyên lừa đảo thì thui rùi mệt lắm đó', 8, 1, 0)


INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '2003-08-05 00:00:00', 102), 4, 19,0, N'Em đã nhờ đến công ty tư vấn nào?', 8, 3, 0)


INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '2002-11-13 00:00:00', 102), 1, 17,0, N'Nên theo học ngành tiếng Anh thương mại bởi ra trường còn có thêm bằng về kinh tế dễ xin việc hơn!', 9, 6, 0)


INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '2003-11-14 00:00:00', 102), 1, 1,0, N'iếng anh thời nay la một báu vật kiến thức rất quan trọng của mọi người.Nếu bạn phân vân giữa hai ngành thì bạn nên tham khảo ý kiến của mọi người.', 9, 2, 0)


INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '2003-07-05 00:00:00', 102), 1, 1, 0, N'Theo mình bạn nên chọn ngành nào mà bạn đã và đang học thì sẽ dễ dàng hơn cho công việc sau này của bạn.', 9, 1, 0)


INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '2002-12-15 00:00:00', 102), 2, 10,0, N'VTV3 01h45 29/05/11 chủ nhật, kênh đó thì xem ngon rồi', 10, 1, 0)

insert INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '2003-07-05 00:00:00', 102), 2, 14, 0, N'Chu nhat,ngay 29 thang 5,1h 45.ok.chuc vui.nghia la thuc dem ngay thu 7 ay.hi', 10, 3, 0)

insert INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '2003-07-05 00:00:00', 102), 1, 1,0, N'ngay 29 thang 5,1h 45.Trên VTV3 ^^', 10, 6, 0)


-- Phù Khắc Anh - 10/5/2011
-- THÀNH VIÊN
INSERT INTO THANH_VIEN
           ( TenTaiKhoan, MatKhau, HoTen, NgaySinh, GioiTinh, Email, TinhTrang, Diem, CapBac, MaLoaiTV, DaXoa)
VALUES     ( 'phukhacanh', N'phukhacanh', N'Phù Khắc Anh', CONVERT(DATETIME, '1990-01-03 00:00:00', 102), 1, 'black_bloodykiller@yahoo.com', 1, 150, 
                      1, 2, 0)

INSERT INTO THANH_VIEN
           ( TenTaiKhoan, MatKhau, HoTen, NgaySinh, GioiTinh, Email, TinhTrang, Diem, CapBac, MaLoaiTV, DaXoa)
VALUES     ( 'nguyenluuanhvu', N'nguyenluuanhvu', N'Nguyễn Lưu Anh vũ', CONVERT(DATETIME, '1990-12-07 00:00:00', 102), 1, 'nguyenluuanhvu@yahoo.com', 1, 300, 
                      2, 2, 0)

INSERT INTO THANH_VIEN
           ( TenTaiKhoan, MatKhau, HoTen, NgaySinh, GioiTinh, Email, TinhTrang, Diem, CapBac, MaLoaiTV, DaXoa)
VALUES     ( 'lethihiep', N'lethihiep', N'Lê Thị Hiệp', CONVERT(DATETIME, '1990-08-05 00:00:00', 102), 2, 'lethihiep@yahoo.com', 1, 700, 
                      2, 2, 0)

INSERT INTO THANH_VIEN
           ( TenTaiKhoan, MatKhau, HoTen, NgaySinh, GioiTinh, Email, TinhTrang, Diem, CapBac, MaLoaiTV, DaXoa)
VALUES     ( 'truongthithuha', N'truongthithuha', N'Trương Thị Thu Hà', CONVERT(DATETIME, '1989-10-10 00:00:00', 102), 2, 'truongthithuha@yahoo.com', 1, 1100, 
                      3, 2, 0)
INSERT INTO THANH_VIEN
           ( TenTaiKhoan, MatKhau, HoTen, NgaySinh, GioiTinh, Email, TinhTrang, Diem, CapBac, MaLoaiTV, DaXoa)
VALUES     ( 'nguyenthingocha', N'nguyenthingocha', N'Nguyễn Thị Ngọc Hà', CONVERT(DATETIME, '1990-12-9 00:00:00', 102), 2, 'nguyenthingocha@yahoo.com', 1, 2000, 
                      3, 2, 0)

INSERT INTO THANH_VIEN
           ( TenTaiKhoan, MatKhau, HoTen, NgaySinh, GioiTinh, Email, TinhTrang, Diem, CapBac, MaLoaiTV, DaXoa)
VALUES     ( 'tranminhanh', N'tranminhanh', N'Trần Minh Anh', CONVERT(DATETIME, '1992-02-02 00:00:00', 102), 1, 'tranminhanh@yahoo.com', 1, 100, 
                      1, 2, 0)

-- CÂU HỎI
INSERT INTO CAU_HOI(NgayHoi, NgayHetHan, DanhGia, BaoCaoViPham, NoiDungCauHoi, MaThanhVien, MaChuDe, SoNguoiBinhChon, DaXoa)
VALUES     (CONVERT(DATETIME, '1999-03-12 00:00:00', 102), CONVERT(DATETIME, '1999-03-15 00:00:00', 102), 1, 0, N' cá thái miêng ướp gia vị rồi chiên lên vậy mà cũng gọi là chả cá ? ', 1, 1, 10, 0)

INSERT INTO CAU_HOI( NgayHoi, NgayHetHan, DanhGia, BaoCaoViPham, NoiDungCauHoi, MaThanhVien, MaChuDe, SoNguoiBinhChon, DaXoa)
VALUES     ( CONVERT(DATETIME, '1999-03-21 00:00:00', 102), CONVERT(DATETIME, '1999-03-25 00:00:00', 102), 2, 0, N'Gân bò tiếng anh kêu là gì?
Xin cám ơn', 2, 1, 5, 0)

INSERT INTO CAU_HOI( NgayHoi, NgayHetHan, DanhGia, BaoCaoViPham, NoiDungCauHoi, MaThanhVien, MaChuDe, SoNguoiBinhChon, DaXoa)
VALUES     ( CONVERT(DATETIME, '2001-03-18 00:00:00', 102), CONVERT(DATETIME, '2001-03-30 00:00:00', 102), 4, 0, N'chào các bạn! có bạn nào biết nấu nước tương bằng đậu nành chỉ mình nha, thánk', 3, 1, 25, 0)

INSERT INTO CAU_HOI( NgayHoi, NgayHetHan, DanhGia, BaoCaoViPham, NoiDungCauHoi, MaThanhVien, MaChuDe, SoNguoiBinhChon, DaXoa)
VALUES     ( CONVERT(DATETIME, '2002-04-12 00:00:00', 102), CONVERT(DATETIME, '2002-04-15 00:00:00', 102), 3, 0, N'Thể loại nhạc R&B, ROCK, POP, K.POP, J.POP, ROCK&SLOW là gì?', 4, 3, 30, 0)

INSERT INTO CAU_HOI( NgayHoi, NgayHetHan, DanhGia, BaoCaoViPham, NoiDungCauHoi, MaThanhVien, MaChuDe, SoNguoiBinhChon, DaXoa)
VALUES     ( CONVERT(DATETIME, '2002-07-12 00:00:00', 102), CONVERT(DATETIME, '2002-07-21 00:00:00', 102), 2, 0, N'bai hat có lời:"đi về đâu hỡi những con tàu không bến đợi. .." là bài nào nhỉ ? ', 5, 2, 12, 0)

INSERT INTO CAU_HOI( NgayHoi, NgayHetHan, DanhGia, BaoCaoViPham, NoiDungCauHoi, MaThanhVien, MaChuDe, SoNguoiBinhChon, DaXoa)
VALUES     ( CONVERT(DATETIME, '2002-04-22 00:00:00', 102), CONVERT(DATETIME, '2002-04-25 00:00:00', 102), 13, 0, N'các bác ơi cho em hỏi một chút về âm nhạc cỏ điển nhé
_quãng của quỷ là quãng nào.', 6, 5, 20, 0)

INSERT INTO CAU_HOI( NgayHoi, NgayHetHan, DanhGia, BaoCaoViPham, NoiDungCauHoi, MaThanhVien, MaChuDe, SoNguoiBinhChon, DaXoa)
VALUES     ( CONVERT(DATETIME, '2002-06-12 00:00:00', 102), CONVERT(DATETIME, '2002-06-15 00:00:00', 102), 3, 1, N'Giải ft : 6căn(4x + 1) + 2căn(3 - x) = 3x + 14', 4, 5, 12, 0)

INSERT INTO CAU_HOI( NgayHoi, NgayHetHan, DanhGia, BaoCaoViPham, NoiDungCauHoi, MaThanhVien, MaChuDe, SoNguoiBinhChon, DaXoa)
VALUES     ( CONVERT(DATETIME, '2002-08-12 00:00:00', 102), CONVERT(DATETIME, '2002-08-15 00:00:00', 102), 3, 0, N'em đăng ký đi du học canada qua cty chuyên làm về du học từ tháng 11 năm 2009. Hơn nửa năm rồi vẫn chưa có thông tin mới gì từ ĐSQ', 6, 5, 10, 0)

INSERT INTO CAU_HOI( NgayHoi, NgayHetHan, DanhGia, BaoCaoViPham, NoiDungCauHoi, MaThanhVien, MaChuDe, SoNguoiBinhChon, DaXoa)
VALUES     ( CONVERT(DATETIME, '2002-11-12 00:00:00', 102), CONVERT(DATETIME, '2002-11-15 00:00:00', 102), 3, 0, N'Giữa hai ngành là ngành tiếng anh và tiếng anh thương mại thì nên chọn ngành nào ?', 5, 5, 8, 0)

INSERT INTO CAU_HOI( NgayHoi, NgayHetHan, DanhGia, BaoCaoViPham, NoiDungCauHoi, MaThanhVien, MaChuDe, SoNguoiBinhChon, DaXoa)
VALUES     ( CONVERT(DATETIME, '2002-12-12 00:00:00', 102), CONVERT(DATETIME, '2002-12-15 00:00:00', 102), 3, 0, N'Xin hỏi kênh nào sẽ trực tiếp chung kết C1 năm nay giữa Bacra vs M.U?
Cụ thể là mấy giờ và thứ mấy ngày mấy vậy mấy pro?', 5, 17, 10, 0)


--CÂU TRẢ LỜI

INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '1999-03-14 00:00:00', 102), 1, 2,0, N'mot so mon chien/nuong , nguoi bac goi là chả', 1, 3, 0)

INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '1999-05-14 00:00:00', 102), 1, 4,0, N'Ồng Trưởng Mềm có một cô con gái út tên là Thái. Cô con gái rất thích ông Lã Vọng.', 1, 2, 0)

INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '1999-05-15 00:00:00', 102), 1, 3,0, N'lã vọng là tên của ông già câu cá.', 1, 3, 0)

INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '1999-05-22 00:00:00', 102), 2, 5,0, N'beef tendon. lên hỏi mr.GoogleTrãnslate ý', 2, 4, 0)

INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '1999-05-24 00:00:00', 102), 1, 2,0, N'mình biết nè:
beef liver (là gân bò đó)', 2, 5, 0)

INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '1999-05-23 00:00:00', 102), 1, 0,0, N'KHÓ GHÊ
vÀO trang từ điển mà tìm', 2, 3, 0)

INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '2001-05-26 00:00:00', 102), 2, 10,0, N'1- Mốc: gạo nếp ngon. 2- Cạo lấy mốc này 3. Đỗ tương lọai tốt, rang chín, màu vàng nhạt thì tốt, hay màu', 3, 1, 0)

INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '2001-05-28 00:00:00', 102), 1, 3,0, N'Nước tương bằng đậu nành không phải nấu mà lên men từ đậu nành.', 3, 2, 0)

INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '2001-05-30 00:00:00', 102), 2, 8,0, N'Nguyên Vật Liệu chuẩn bị :
- 1 khạp sành 
- đậu nành 1 kg 
- thính gạo rang 150 gr
- muối 750 gr
- nước 5 lít', 3, 5, 0)

INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '2002-04-13 00:00:00', 102), 2, 7,0, N'♦thể loại nhạc R&B
http://www.vatgia.com/hoidap/detail.php?…', 4, 2, 0)

INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '2002-04-14 00:00:00', 102), 1, 3,0, N'nhạc r&b là nhạc có tiết tấu mạnh mẽ,sôi động,dồn dập.', 4, 1, 0)


INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '2002-04-15 00:00:00', 102), 2, 15,0, N'R&B viết tắt của Rhythm and blues xuất hiện tại Mỹ những năm 1949.', 4, 6, 0)


INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '2002-07-16 00:00:00', 102), 1, 3,0, N'Có thể là bài Bao giờ quên , Trình bày: Chế Phong, Sáng tác: Minh Thu - Hoài Linh
http://mp3.zing.vn/bai-hat/Bao-Gio-Quen/…', 5, 3, 0)

INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '2002-07-17 00:00:00', 102), 1, 2,0, N'http://www.dactrung.com/Bai-nh-14274-Bao… (Lời bài hát Bao giờ Quên)', 5, 5, 0)


INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '2003-07-18 00:00:00', 102), 1, 1,0, N'Chăc là bài Bao giờ quên đó bạn.', 5, 4, 0)


INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '2002-04-23 00:00:00', 102), 2, 4,0, N'Quãng "quỷ" trong âm nhạc cổ điển là "quãng 4 có 3 nguyên cung" trong Gam trưởng và thứ tự nhiên, VD Fa- Si trong giọng Đô Trưởng và La thứ vậy.', 6, 4, 0)


INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '2002-04-23 00:00:00', 102), 1, 1,0, N'Mình muốn hỏi thêm bạn câu nua mong bạn trả lời mình nhé;
_Trong vòng hòa thanh . an ; dm ; Bb ; F ; G ; am. thì Bb là hợp âm gì và có tác dụng như thế nào?', 6, 6, 0)


INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '2003-07-05 00:00:00', 102), 3, 7,0, N'Bạn dùng ký hiệu am để chỉ la thứ, theo mình không cần, nếu đã viết a thì coi như la thứ rồi.', 6, 4, 0)


INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '2002-06-14 00:00:00', 102), 1, 5,0, N'đặt √(4x + 1) = A và √(3 - x) = B
 pt có nghiệm duy nhất là x = 2', 7, 3, 0)

INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '2002-06-15 00:00:00', 102), 1, 11,0, N'ap dụng bđt bunhja
==>x=2 (3)
vậy x=2 để pt có ng.', 7, 2, 0)

INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '2002-06-15 00:00:00', 102), 3, 13,0, N'Mình chưa hiểu lắm về cách giải của bạn ??? Có thể add nick mình để hướng dẫn thêm ko, nick tui là thumikky', 7, 4, 0)

INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '2002-08-14 00:00:00', 102), 1, 1,0, N'Công ty nào vậy ? Môt hồ sơ du học Tốt,thì tứ ngày nộp đên khi có visa chỉ trong vong 2 đên 3 tháng,chắc lại hồ sơ fake rồi !!
hãy cho biết em đã nộp các loại giấy tờ gì ? tôi sẽ đanh giá giúp.', 8, 1, 0)


INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '2002-08-05 00:00:00', 102), 2, 3,0, N'bạn phải tìm một công ty có uy tín chứ nếu tìm đến những công ty chuyên lừa đảo thì thui rùi mệt lắm đó', 8, 1, 0)


INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '2003-08-05 00:00:00', 102), 4, 19,0, N'Em đã nhờ đến công ty tư vấn nào?', 8, 3, 0)


INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '2002-11-13 00:00:00', 102), 1, 17,0, N'Nên theo học ngành tiếng Anh thương mại bởi ra trường còn có thêm bằng về kinh tế dễ xin việc hơn!', 9, 6, 0)


INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '2003-11-14 00:00:00', 102), 1, 1,0, N'iếng anh thời nay la một báu vật kiến thức rất quan trọng của mọi người.Nếu bạn phân vân giữa hai ngành thì bạn nên tham khảo ý kiến của mọi người.', 9, 2, 0)


INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '2003-07-05 00:00:00', 102), 1, 1, 0, N'Theo mình bạn nên chọn ngành nào mà bạn đã và đang học thì sẽ dễ dàng hơn cho công việc sau này của bạn.', 9, 1, 0)


INSERT INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '2002-12-15 00:00:00', 102), 2, 10,0, N'VTV3 01h45 29/05/11 chủ nhật, kênh đó thì xem ngon rồi', 10, 1, 0)

insert INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '2003-07-05 00:00:00', 102), 2, 14, 0, N'Chu nhat,ngay 29 thang 5,1h 45.ok.chuc vui.nghia la thuc dem ngay thu 7 ay.hi', 10, 3, 0)

insert INTO CAU_TRA_LOI(NgayTraLoi, SoSao, SoNguoiBinhChon,BaoCaoViPham, NoiDung, MaCauHoi, MaThanhVien, DaXoa)
VALUES     (CONVERT(DATETIME, '2003-07-05 00:00:00', 102), 1, 1,0, N'ngay 29 thang 5,1h 45.Trên VTV3 ^^', 10, 6, 0)