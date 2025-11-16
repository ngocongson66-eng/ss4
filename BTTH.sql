CREATE DATABASE QuanLyNhanSu;
USE QuanLyNhanSu;
CREATE TABLE PhongBan (
    id INT PRIMARY KEY AUTO_INCREMENT, -- Mã phòng ban, Khóa chính, Tự động tăng
    ten_phong_ban VARCHAR(100) NOT NULL UNIQUE -- Tên phòng ban, Không được để trống, Duy nhất
);
CREATE TABLE NhanVien (
    id INT PRIMARY KEY AUTO_INCREMENT, -- Mã nhân viên, Khóa chính, Tự động tăng
    ho_ten VARCHAR(150) NOT NULL, -- Họ và tên, Không được để trống
    email VARCHAR(100) UNIQUE, -- Địa chỉ email, Duy nhất
    ngay_vao_lam DATE, -- Ngày vào làm
    phong_ban_id INT, -- Mã phòng ban mà nhân viên thuộc về
    -- Thiết lập Khóa ngoại (Foreign Key) liên kết với bảng PhongBan
    FOREIGN KEY (phong_ban_id) REFERENCES PhongBan(id)
);
INSERT INTO PhongBan (ten_phong_ban) VALUES
('Nhân sự'), -- id = 1
('Kế toán'), -- id = 2
('IT');       -- id = 3
INSERT INTO NhanVien (ho_ten, email, ngay_vao_lam, phong_ban_id) VALUES
('Trần Văn An', 'an.tv@email.com', '2023-10-25', 3),
('Lê Thị Bích', 'bich.lt@email.com', '2023-11-15', 2);
SELECT
    nv.ho_ten,
    nv.email,
    nv.ngay_vao_lam,
    pb.ten_phong_ban
FROM
    NhanVien nv
INNER JOIN
    PhongBan pb ON nv.phong_ban_id = pb.id
WHERE
    pb.ten_phong_ban = 'IT';
UPDATE
    NhanVien
SET
    phong_ban_id = (SELECT id FROM PhongBan WHERE ten_phong_ban = 'Nhân sự')
WHERE
    ho_ten = 'Trần Văn An';
DELETE FROM
    NhanVien
WHERE
    ho_ten = 'Lê Thị Bích';