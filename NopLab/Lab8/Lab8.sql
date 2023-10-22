CREATE DATABASE Lab2B2;
drop database Lab2B2;
use Lab2B2; 
CREATE TABLE KhachHang(
    MaKH  VARCHAR(10),
    Ho NVARCHAR(20),
    Ten NVARCHAR(20),
    DiaChi NVARCHAR(500),
    Email NVARCHAR(50),
    DienThoai INT,
    PRIMARY KEY(MaKH)
);

CREATE TABLE SanPham(
    MaSP VARCHAR(10),
    TenSP NVARCHAR(100),
    DonGia Double,
    SoLuong INT,
    MoTa NVARCHAR(500),
    PRIMARY KEY(MaSP)
);

CREATE TABLE HoaDon(
    MaHD VARCHAR(10),
    NgayMua DATE,
    MaKH VARCHAR(10),
    TrangThai NVARCHAR(50),
    PRIMARY KEY(MaHD)
);

CREATE TABLE HoaDonCT(
    MaHD VARCHAR(10) ,
    MaSP VARCHAR(10) ,
    SL INT,
    Primary key(MaHD,MaSP)
);

Alter table HoaDon
ADD constraint HoaDon_MaKH_FK
foreign key(MaKH) references KhachHang(MaKH)
on delete cascade;

Alter table HoaDonCT
ADD constraint HoaDonCT_MaHD_FK
foreign key(MaHD) references HoaDon(MaHD)
on delete cascade,
ADD constraint HoaDonCT_MaSP_FK
foreign key(MaSP) references SanPham(MaSP)
on delete cascade;


INSERT INTO KhachHang VALUES
-- ('KH001', 'Trần Trọng', 'Trí', 'Gò Vấp', 'tri@gmail.com', '0983456654'),
-- ('KH002', 'Đàm Vĩnh', 'Hưng', 'Đà Nẵng', 'hung@gmail.com', '0988123567'),
-- ('KH003', 'Châu Đăng', 'Khoa', 'Quận 1', 'khoa@gmail.com', '0977874300'),
-- ('KH004', 'Phạm', 'Hương', 'Quận 2', 'huong@gmail.com', '0903090932'),
('KH005', 'Trường', 'Giang', 'Bình Thạnh', 'giang@gmail.com', '0933411154'),
('KH006', 'Hoài', 'Linh', 'Phú Nhuận', 'linhh@gmail.com', '0888012381'),
('KH007', 'Mỹ', 'Tâm', 'Quận 1', 'tam@gmail.com', '0977456654'),
('KH008', 'Ưng Hoàng', 'Phúc', 'Quận 5', 'phuc@gmail.com', '091950064'),
('KH009', 'Châu Tinh', 'Trì', 'Quận 1', 'tri@gmail.com', '0888456098'),
('KH010', 'Thành', 'Long', 'Quận 2', 'longt@gmail.com', '0903090908'),
('KH011', 'Lý Liên', 'Kiệt', 'Tân Bình', 'kiet@gmail.com', '0933410054'),
('KH012', 'Châu Khải', 'Phong', 'Đà Nẵng', 'phong@gmail.com', '0888022411'),
('KH013', 'Vân Quang', 'Long', 'Quận 12', 'longvq@gmail.com', '0983456633'),
('KH014', 'Châu Việt', 'Cường', 'Quận 8', 'cuong@gmail.com', '0988903664'),
('KH015', 'Ngọc', 'Sơn', 'Đà Nẵng', 'son@gmail.com', '0977766098'),
('KH016', 'Nguyễn Phi', 'Hùng', 'Quận 12', 'hung@gmail.com', '0903098032'),
('KH017', 'Trịnh Thăng', 'Bình', 'Bình Thạnh', 'binh@gmail.com', '0933477754'),
('KH018', 'Sơn', 'Tùng M-TP', 'Tân Phú', 'tung@gmail.com', '0888029999'),
('KH019', 'Ngô Thanh', 'Vân', 'Đà Nẵng', 'van@gmail.com', '0983456890'),
('KH020', 'Trương Quỳnh', 'Anh', 'Quận 3', 'anh@gmail.com', '0888053664'),
('KH021', 'Hoàng Thùy', 'Linh', 'Quận 1', 'linhht@gmail.com', '0977000098'),
('KH022', 'Tóc', 'Tiên', 'Đà Nẵng', 'tien@gmail.com', '0903090888'),
('KH023', 'Bích', 'Phương', 'Quận 1', 'phuong@gmail.com', '0933411010'),
('KH024', 'Thu', 'Minh', 'Đà Nẵng', 'minh@gmail.com', '0888022223');


INSERT into SanPham VALUES
-- (1, 'Samsung Galaxy Note 9', 20000000.0, 30, 'Hàng chính hãng'),
-- (2, 'IPHONE XS MAX', 30000000.0, 15, 'Hàng chính hãng'),
-- (3, 'Iphone7 32GB', 20000000.0, 40, 'Hàng xách tay'),
-- (4, 'BPhone 3', 70000000.0, 300, 'Hàng chính hãng'),
-- (5, 'Oppo F9', 7000000.0, 50, 'Hàng chính hãng'),
('6', 'Samsung Galaxy S9 Plus', 18000000.0, 30, 'Hàng xách tay');


INSERT into HoaDon VALUES
('1', '2016-12-12', 'KH002','Đã thanh toán'),
('2', '2017-10-05', 'KH001','Chưa thanh toán'),
('3', '2016-01-01', 'KH004','Thanh toán qua thẻ'),
('4', '2015-07-05', 'KH003','Đã thanh toán'),
('5', '2018-07-05', 'KH005','Chưa thanh toán'),
('6', '2012-07-05', 'KH007','Chưa thanh toán'),
('7', '2014-07-05', 'KH010','Đã Thanh Toán'),
('8', '2017-07-05', 'KH001','Chưa thanh toán'),
('9', '2018-07-05', 'KH006','Đã Thanh Toán'),
('10', '2019-07-05', 'KH008','Chưa thanh toán'),
('11', '2016-12-12', 'KH003','Chưa thanh toán'),
('12', '2018-01-29', 'KH002','Đã Thanh Toán'),
('13', '2018-01-29', 'KH003','Đã thanh toán'),
('14', '2018-01-29', 'KH011','Đã thanh toán'),
('15', '2018-01-29', 'KH015','Đã thanh toán'),
('16', '2015-01-29', 'KH020','Chưa thanh toán'),
('17', '2018-01-29', 'KH021','Chưa thanh toán'),
('18', '2018-01-29', 'KH020','Chưa thanh toán'),
('19', '2015-01-29', 'KH003','Chưa thanh toán'),
('20', '2016-12-12', 'KH022','Chưa thanh toán'),
('21', '2018-01-29', 'KH009','Chưa thanh toán'),
('22', '2018-01-29', 'KH008','Chưa thanh toán'),
('23', '2018-01-29', 'KH016','Chưa thanh toán'),
('24', '2013-01-29', 'KH013','Chưa thanh toán'),
('25', '2014-01-29', 'KH011','Chưa thanh toán'),
('26', '2015-01-29', 'KH010','Chưa thanh toán'),
('27', '2018-01-29', 'KH001','Chưa thanh toán'),
('28', '2012-01-29', 'KH001','Chưa thanh toán'),
('29', '2010-01-29', 'KH002','Chưa thanh toán');


INSERT INTO HoaDonCT VALUES
('1', '3', 5),
('11', '2', 3),
('2', '3', 2),
('5', '1', 1),
('2', '2', 6),
('2', '5', 2),
('20', '3', 7),
('3', '3', 2),
('3', '4', 4),
('21', '1', 1),
('2', '6', 1),
('2', '4', 1),
('3', '2', 1),
('13', '3', 1),
('4', '6', 3),
('15', '2', 2),
('5', '3', 1);

insert into KhachHang values
('KH001', 'Nguyễn Thị', 'Nga', '15 Quang Trung TP Đà Nẵng', 'ngant@gamil.com', '0912345670'),
('KH002', 'Trần Công', 'Thành', '234 Lê Lợi Quảng Nam', 'thanhtc@gmail.com', '0109423443'),
('KH003', 'Lê Hoàng', 'Nam', '23 Trần Phú TP Huế', 'namlt@yahoo.com', '0989354556'),
('KH004', 'Vũ Ngọc', 'Hiền', '37 Nguyễn Thị Thập TP Đà Nẵng', 'hienvn@gmail.com', '094545435');

insert into SanPham values
('1', 'Samsung Galaxy J7 Pro',6600000.0, 800, 'Samsung Galaxy J7 Pro là một chiếc smartphone phù hợp với những người yêu thích một sản phẩm pin tốt, thích hệ điều hành mới cùng những tính năng đi kèm độc quyền'),
('2', 'iPhone 6 32GB',8990000.0, 500, 'iPhone 6 là một trong những smartphone được yêu thích nhất. Lắng nghe nhu cầu về thiết kế, khả năng lưu trữ và giá cả, iPhone 6 32GB được chính thức phân phối chính hãng tại Việt Nam hứa hẹn sẽ là một sản phẩm rất "Hot"'),
('3', 'Laptop Dell Inspiron 3467',11290000, 507, 'Dell Inspiron 3467 i3 7100U/4GB/1TB/Win10/(M20NR21)'),
('4', 'Pin sạc dự phòng',200000.0, 600, 'Pin sạc dự phòng Polymer 5.000 mAh eSaver JP85'),
('5', 'Nokia 3100',700000.0, 100, 'Nokia 3100 phù hợp với SINH VIÊN');

INSERT into HoaDon values
('120954', '2016-03-22', 'KH001','Đã thanh toán'),
('120955', '2016-04-02', 'KH002','Đã thanh toán'),
('120956', '2016-07-12', 'KH001','Chưa thanh toán'),
('125957', '2016-12-04', 'KH004','Chưa thanh toán');

INSERT into HoaDonCT values
('120954', 3, 40),
('120954', 1, 20),
('120955', 2, 100),
('120956', 4, 6),
('120956', 2, 60),
('120956', 1, 10),
('125957', 2, 50);

-- ***Lab8***
-- Bài 1 (4 điểm) Tạo chỉ mục trên các bảng có tần suất truy vấn nhiều
-- a. Tạo chỉ mục UNIQUE trên cột điện thoại của bảng khách hàng
create unique index index_Khachhang_DT
 on KhachHang(DienThoai);

-- b. Tạo chỉ mục UNIQUE trên cột email của bảng khách hàng
create unique index index_Khachhang_Email
 on KhachHang(Email);

-- Bài 2 (4 điểm) Thao tác sao lưu dự phòng, import, export và bảo mật dữ liệu
--  Thực hiện các thao tác import/export DB ra file .sql
--  Sao lưu dự phòng
--  Tạo user trong my sql
