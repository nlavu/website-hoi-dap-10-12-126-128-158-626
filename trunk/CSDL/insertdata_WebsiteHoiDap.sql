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
