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
('KH006', 'Hoài', 'Linh', 'Phú Nhuận', 'linh@gmail.com', '0888012381'),
('KH007', 'Mỹ', 'Tâm', 'Quận 1', 'tam@gmail.com', '0977456654'),
('KH008', 'Ưng Hoàng', 'Phúc', 'Quận 5', 'phuc@gmail.com', '091950064'),
('KH009', 'Châu Tinh', 'Trì', 'Quận 1', 'tri@gmail.com', '0888456098'),
('KH010', 'Thành', 'Long', 'Quận 2', 'long@gmail.com', '0903090908'),
('KH011', 'Lý Liên', 'Kiệt', 'Tân Bình', 'kiet@gmail.com', '0933410054'),
('KH012', 'Châu Khải', 'Phong', 'Đà Nẵng', 'phong@gmail.com', '0888022411'),
('KH013', 'Vân Quang', 'Long', 'Quận 12', 'long@gmail.com', '0983456633'),
('KH014', 'Châu Việt', 'Cường', 'Quận 8', 'cuong@gmail.com', '0988903664'),
('KH015', 'Ngọc', 'Sơn', 'Đà Nẵng', 'son@gmail.com', '0977766098'),
('KH016', 'Nguyễn Phi', 'Hùng', 'Quận 12', 'hung@gmail.com', '0903098032'),
('KH017', 'Trịnh Thăng', 'Bình', 'Bình Thạnh', 'binh@gmail.com', '0933477754'),
('KH018', 'Sơn', 'Tùng M-TP', 'Tân Phú', 'tung@gmail.com', '0888029999'),
('KH019', 'Ngô Thanh', 'Vân', 'Đà Nẵng', 'van@gmail.com', '0983456890'),
('KH020', 'Trương Quỳnh', 'Anh', 'Quận 3', 'anh@gmail.com', '0888053664'),
('KH021', 'Hoàng Thùy', 'Linh', 'Quận 1', 'linh@gmail.com', '0977000098'),
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


-- ***Lab5***
-- ***B1***
-- a. Hiển thị tất cả thông tin có trong bảng khách hàng bao gồm tất cả các cột
select * from KhachHang;

-- b. Hiển thị 10 khách hàng đầu tiên trong bảng khách hàng bao gồm các cột: mã
-- khách hàng, họ và tên, email, số điện thoại
select MaKH, concat(Ho," ",Ten) as "Ho va Ten", Email, DienThoai
from KhachHang
limit 10;

-- c. Hiển thị thông tin từ bảng Sản phẩm gồm các cột: mã sản phẩm, tên sản phẩm,
-- tổng tiền tồn kho. Với tổng tiền tồn kho = đơn giá* số lượng
select MaSP, TenSP, DonGia*SoLuong as "Tong tien ton kho"
from SanPham;

-- d. Hiển thị danh sách khách hàng có tên bắt đầu bởi kí tự ‘H’ gồm các cột:
-- maKhachHang, hoVaTen, diaChi. Trong đó cột hoVaTen ghép từ 2 cột
-- hoVaTenLot và Ten
select MaKH, concat(Ho," ",Ten) as "Ho va Ten", DiaChi
from KhachHang
where ten like "H%";

-- e. Hiển thị tất cả thông tin các cột của khách hàng có địa chỉ chứa chuỗi ‘Đà Nẵng’
select *
from KhachHang
where Diachi = "Đà Nẵng";

-- f. Hiển thị các sản phẩm có số lượng nằm trong khoảng từ 100 đến 500.
select *
from SanPham
where SoLuong >= 100 and SoLuong <= 500;

-- g. Hiểnthịdanhsáchcáchoáhơncótrạngtháilàchưathanhtoánvàngàymuahàng
-- trong năm 2016
select *
from Hoadon
where TrangThai = "Chưa thanh toán" and year(NgayMua)  = 2016;

-- h. Hiển thị các hoá đơn có mã Khách hàng thuộc 1 trong 3 mã sau: KH001, KH003,
-- KH006
select * 
from HoaDon
where MaKH = "KH001" or MaKH = "KH003" or MaKH = "KH006";



-- ***B2***
-- a. Hiển thị số lượng khách hàng có trong bảng khách hàng
select count(MaKh) as "So luong khach hang"
from KhachHang;

-- b. Hiển thị đơn giá lớn nhất trong bảng SanPham
select max(DonGia) as "Don gia lon nhat"
from SanPham;

-- c. Hiển thị số lượng sản phẩm thấp nhất trong bảng sản phẩm
select min(SoLuong) as "San pham thap nhat"
from SanPham;

-- d. Hiển thị tổng tất cả số lượng sản phẩm có trong bảng sản phẩm
select sum(SoLuong) as "Tat ca so luong san pham"
from SanPham;

-- e. Hiển thị số hoá đơn đã xuất trong tháng 12/2016 mà có trạng thái chưa thanh toán
select count(*) as "So hoa don da xuat trong thang 12/2016 ma co trang thai chua thanh toan"
from HoaDon
where year(NgayMua) = 2016 and month(NgayMua) = 12 and TrangThai = "Chưa thanh toán";

-- f. Hiển thị mã hoá đơn và số loại sản phẩm được mua trong từng hoá đơn.
select MaHD, count(MaSP) as "so loai sp"
from HoaDonCT
group by MaHD;

-- g. Hiển thị mã hoá đơn và số loại sản phẩm được mua trong từng hoá đơn. Yêu cầu
-- chỉ hiển thị hàng nào có số loại sản phẩm được mua >=5.
select MaHD, count(MaSP) as "so loai sp"
from HoaDonCT
group by MaHD
having count(MaSP) >= 5;

-- h. Hiển thị thông tin bảng HoaDon gồm các cột maHoaDon, ngayMuaHang,
-- maKhachHang. Sắp xếp theo thứ tự giảm dần của ngayMuaHang
select MaHD, NgayMua, MaKH
from HoaDon
order by NgayMua Desc;


-- ***Lab6***
-- ***B1***
-- a. Hiểnthịtấtcảthôngtincótrong2bảngHoáđơnvàHoáđơnchitiếtgồmcáccột sau: maHoaDon, maKhachHang, trangThai, maSanPham, soLuong, ngayMua
select A.MaHD, A.MaKH, A.TrangThai, B.MaSP, B.SL, A.NgayMua
from HoaDon A 
inner join HoaDonCT B on A.MaHD = B.MaHD;

-- b. Hiểnthịtấtcảthôngtincótrong2bảngHoáđơnvàHoáđơnchitiếtgồmcáccột sau: maHoaDon, maKhachHang, trangThai, maSanPham, soLuong, ngayMua 
-- với điều kiện maKhachHang = ‘KH001’
select A.MaHD, A.MaKH, A.TrangThai, B.MaSP, B.SL, A.NgayMua
from HoaDon A 
inner join HoaDonCT B on A.MaHD = B.MaHD and A.MaKh = "KH001";

-- c. Hiểnthịthôngtintừ3bảngHoáđơn,HoáđơnchitiếtvàSảnphẩmgồmcáccột sau:
--  maHoaDon, ngayMua, tenSP, donGia, soLuong mua trong hoá đơn, thành tiền. Với thành tiền= donGia* soLuong
select A.MaHD, A.NgayMua, C.TenSP, C.DonGia, B.SL, (C.DonGia *  B.SL) as "Thanh Tien"
from HoaDon A 
inner join HoaDonCT B on A.MaHD = B.MaHD 
inner join SanPham C on B.MaSP = C.MaSP ;

-- d. Hiển thị thông tin từ bảng khách hàng, bảng hoá đơn, hoá đơn chi tiết gồm các cột:
--  họ và tên khách hàng, email, điện thoại, mã hoá đơn, trạng thái hoá đơn và tổng tiền đã mua trong hoá đơn.
--  Chỉ hiển thị thông tin các hoá đơn chưa thanh toán.
select concat(A.Ho," ",A.Ten) as "Ho va Ten", A.Email, A.DienThoai, B.MaHD, B.TrangThai, C.SL, (D.DonGia *  C.SL) as "Tong tien da mua "
from KhachHang A 
inner join HoaDon B on A.MaKH = B.MaKH 
inner join HoaDonCT C on B.MaHD = C.MaHD 
inner join SanPham D on C.MaSP = D.MaSP 
where B.TrangThai = "Chưa thanh toán";

-- e. HiểnthịmaHoaDon,ngàyMuahang,tổngsốtiềnđãmuatrongtừnghoáđơn.
-- Chỉ hiển thị những hóa đơn có tổng số tiền >=500.000 và sắp xếp theo thứ tự giảm dần của cột tổng tiền.
select A.MaHD, A.NgayMua, (C.DonGia *  B.SL) as "Tong tien da mua "
from HoaDon A
inner join HoaDonCT B on A.MaHD = B.MaHD
inner join SanPham C on B.MaSP = C.MaSP 
where (C.DonGia *  B.SL) >= 500
order by (C.DonGia *  B.SL) desc;

-- ***B2***
-- a. Hiển thị danh sách các khách hàng chưa mua hàng lần nào kể từ tháng 1/1/2016
select *
from KhachHang 
where KhachHang.MaKH not in(
	select HoaDon.MaKH
    from HoaDon
    where NgayMua >= "2016/01/01"
);

-- b. Hiển thị mã sản phẩm, tên sản phẩm có lượt mua nhiều nhất trong tháng 12/2016
select SanPham.MaSP, SanPham.TenSP, Sum(HoaDonCT.SL) as "Luot mua"
from SanPham
inner join HoaDonCT on SanPham.MaSP = HoaDonCT.MaSP
inner join HoaDon on HoaDonCT.MaHD = HoaDon.MaHD
where month(HoaDon.NgayMua) = "12" and  year(HoaDon.NgayMua) = "2016"
group by SanPham.MaSP
order by Sum(SL) desc
limit 1;

-- c. Hiển thị top 5 khách hàng có tổng số tiền mua hàng nhiều nhất trong năm 2016
select HoaDon.MaKH, (SanPham.DonGia*SanPham.SoLuong) as "Tong so tien mua hang"
from SanPham
inner join HoaDonCT on SanPham.MaSP = HoaDonCT.MaSP
inner join HoaDon on HoaDonCT.MaHD = HoaDon.MaHD
where year(HoaDon.NgayMua) = "2016"
order by (DonGia*SoLuong) desc
limit 5;

-- d. Hiển thị thông tin các khách hàng sống ở ‘Đà Nẵng’ có mua sản phẩm có tên
-- “Iphone 7 32GB” trong tháng 12/2016
select concat(KhachHang.Ho, " ", KhachHang.Ten) as "Ho va ten" , Khachhang.MaKH
from Khachhang
inner join HoaDon on KhachHang.MaKH = HoaDon.MaKH
inner join HoaDonCT on HoaDon.MaHD = HoaDonCT.MaHD
inner join SanPham on HoaDonCT.MaSP = SanPham.MaSP
where KhachHang.DiaChi = "Đà Nẵng" 
	and SanPham.TenSP = "Iphone7 32GB" 
	and month(HoaDon.NgayMua) = "12"
    and  year(HoaDon.NgayMua) = "2016";
    

-- e. Hiển thị tên sản phẩm có lượt đặt mua nhỏ hơn lượt mua trung bình các các sản
-- phẩm.
select SanPham.TenSP, count(HoaDonCT.MaSP) as "Luot mua"
from SanPham
inner join HoaDonCT on SanPham.MaSP = HoaDonCT.MaSP
group by HoaDonCT.MaSP
having count(HoaDonCT.MaSP) < (
		select avg(temp.Luotmua)
        from (
			select count(HoaDonCT.MaSP) as "Luotmua"
			from HoaDonCT
			group by HoaDonCT.MaSP
			) as temp
);



-- ***Lab7***
-- ***B1***
-- a. Sử dụng câu lệnh INSERT để thêm dữ liệu các các bảng như sau:

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
    
    
--     b. Tạo 1 bảng có tên KhachHang_daNang chứa thông tin tin đầy đủ 
--     về các khách hàng đến từ Đà Nẵng (sử dụng SELECT INTO)

create table KhachHang_daNang 
SELECT * 
FROM KhachHang
WHERE DiaChi = "Đà Nẵng";

select * from KhachHang_daNang;


-- ***B2***
-- a. Cậpnhậtlạithôngtinsốđiệnthoạicủakháchhàngcómã‘KH002’cógiátrịmới là ‘16267788989’ (0267788989)
update KhachHang
set DienThoai = '0267788989'
where MaKH = 'KH002';

select * from KhachHang;

-- b. Tăng số lượng mặt hàng có mã ‘3’ lên thêm ‘200’ đơn vị
update SanPham
set SoLuong = SoLuong + 200
where MaSP = '3';

select * from SanPham;

-- c. Giảm giá cho tất cả sản phẩm giảm 5%
update SanPham
set DonGia = DonGia * 0.95;

select * from SanPham;

-- d. Tăng số lượng của mặt hàng bán chạy nhất trong tháng 12/2016 lên 100 đơn vị
update SanPham
set SoLuong = SoLuong + 100
where MaSP = (
	select * 
	from HoaDon 
	inner join HoaDonCT on HoaDon.MaHD = HoaDonCT.MaHD
	where month(HoaDon.NgayMua) = 12 and year(HoaDon.NgayMua) = 2016
	group by MaSP
	order by sum(HoaDonCT.SL) desc
	limit 1
);

select * from SanPham;

-- e. Giảm giá 10% cho 2 sản phẩm bán ít nhất trong năm 2016
-- cach1
update SanPham
set DonGia = DonGia * 0.9
where MaSP =(
	select MaSP 
	from HoaDon 
	inner join HoaDonCT on HoaDon.MaHD = HoaDonCT.MaHD
	where year(HoaDon.NgayMua) = 2016
	group by MaSP
	order by sum(HoaDonCT.SL)
	limit 1 
) or MaSP = (
	select MaSP
	from HoaDon 
	inner join HoaDonCT on HoaDon.MaHD = HoaDonCT.MaHD
	where year(HoaDon.NgayMua) = 2016 
    and  not MaSP = (
		select MaSP 
		from HoaDon 
		inner join HoaDonCT on HoaDon.MaHD = HoaDonCT.MaHD
		where year(HoaDon.NgayMua) = 2016
		group by MaSP
		order by sum(HoaDonCT.SL)
		limit 1 )
	group by MaSP
	order by sum(HoaDonCT.SL)
	limit 1
);

select * from SanPham;
-- cach2
update SanPham
set DonGia = DonGia * 0.9
where MaSP in(
	select top1and2.MaSP
    from(select MaSP 
	from HoaDon 
	inner join HoaDonCT on HoaDon.MaHD = HoaDonCT.MaHD
	where year(HoaDon.NgayMua) = 2016
	group by MaSP
	order by sum(HoaDonCT.SL)
	limit 2 ) as top1and2
);
	

-- f. Cập nhật lại trạng thái “đã thanh toán” cho hoá đơn có mã 120956
update HoaDon
set TrangThai = "Đã thanh toán"
where MaHD = "120956";

select * from HoaDon;

-- g. Xoá mặt hàng có mã sản phẩm là ‘2’ ra khỏi hoá đơn ‘120956’ và trạng thái là
-- chưa thanh toán.
delete from HoaDonCT
where MaHD = (
	select MaHD
	from HoaDon 
	where MaHD = "120956" and TrangThai = "Chưa thanh toán"
) and MaSP = "2";

select * from HoaDonCT;

-- h. Xoá khách hàng chưa từng mua hàng kể từ ngày “1-1-2016”
delete from KhachHang
where MaKH in (
select MaKH 
from HoaDon
where NgayMua >= '2016-1-1' and TrangThai ="Chưa thanh toán"
);

select * from KhachHang;
