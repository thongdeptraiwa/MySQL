create database ASM;
drop database ASM;
use ASM;

create table SV(
	MaSV nvarchar(10) not null,
    TenSV nvarchar(50) not null,
    NgayHetHan date not null,
    ChuyenNganh nvarchar(50),
    Email nvarchar(50) not null,
    SDT nvarchar(15) not null
);
create table LoaiSach(
	MaLoai nvarchar(10) not null,
    TenLoai nvarchar(50) not null
);
create table Sach(
	MaSach nvarchar(10) not null,
    TenSach nvarchar(50) not null,
    NhaXuatBan nvarchar(50) not null,
    TacGia nvarchar(50),
    SL int not null,
    Gia float not null,
    ViTri nvarchar(50) not null,
    MaLoai nvarchar(10) not null,
    NgayNhapKho date not null
);
create table PhieuMuon(
	MaPM nvarchar(10) not null,
    NgayMuon date not null,
    NgayTra date not null,
    MaSV nvarchar(10) not null,
    TrangThai nvarchar(50) not null
);
create table PhieuMuonCT(
	MaPM nvarchar(10) not null,
    MaSach nvarchar(10) not null,
    GhiChu nvarchar(255)
);

Alter table SV
ADD constraint SV_MaSV_PK
primary key(MaSV);

Alter table LoaiSach
ADD constraint LoaiSach_MaLoai_PK
primary key(MaLoai);

Alter table Sach
ADD constraint Sach_MaSach_PK
primary key(MaSach),
ADD constraint Sach_MaLoai_FK
foreign key(MaLoai) references LoaiSach(MaLoai)
on delete cascade;

Alter table PhieuMuon
ADD constraint PhieuMuon_MaPM_PK
primary key(MaPM),
ADD constraint PhieuMuon_MaSV_FK
foreign key(MaSV) references SV(MaSV)
on delete cascade;

Alter table PhieuMuonCT
ADD constraint PhieuMuonCT_MaPM_MaSach_PK
primary key(MaPM,MaSach),
ADD constraint PhieuMuonCT_MaPM_FK
foreign key(MaPM) references PhieuMuon(MaPM)
on delete cascade,
ADD constraint PhieuMuonCT_MaSach_FK
foreign key(MaSach) references Sach(MaSach)
on delete cascade;


INSERT INTO SV VALUES
  ('SV001', 'Nguyễn Văn An', '2023-12-31', 'Công nghệ thông tin', 'nguyenvanan@example.com', '123-456-7890'),
  ('SV002', 'Huỳnh Thị Mai', '2023-12-31', 'Kỹ thuật điện', 'huynhmai@example.com', '987-654-3210'),
  ('SV003', 'Trần Minh Đức', '2023-12-31', 'Quản trị kinh doanh', 'ductran@example.com', '555-123-4567'),
  ('SV004', 'Phạm Thị Hằng', '2023-12-31', 'Luật', 'hangpham@example.com', '888-999-7777'),
  ('SV005', 'Lê Thị Thảo', '2023-12-31', 'Tâm lý học', 'thaole@example.com', '111-222-3333'),
  ('SV006', 'Võ Minh Hiếu', '2023-12-31', 'Y học', 'hieuvominh@example.com', '999-888-5555'),
  ('SV007', 'Bùi Thị Ngọc', '2023-12-31', 'Ngôn ngữ học', 'ngocbuithi@example.com', '555-555-5555'),
  ('SV008', 'Đinh Hồng Trang', '2023-12-31', 'Tài chính', 'trangdinhhong@example.com', '333-111-9999'),
  ('SV009', 'Hoàng Quốc Bảo', '2023-12-31', 'Marketing', 'baoquoch@example.com', '222-333-4444'),
  ('SV010', 'Nguyễn Thị Linh', '2023-12-31', 'Ngành hóa', 'linhnguyenthi@example.com', '777-888-6666');
  
INSERT INTO LoaiSach VALUES
  ('LS001', 'Khoa học'),
  ('LS002', 'Tiểu thuyết'),
  ('LS003', 'Lịch sử'),
  ('LS004', 'Kinh tế'),
  ('LS005', 'Văn học'),
  ('LS006', 'Khoa học xã hội'),
  ('LS007', 'Truyện tranh'),
  ('LS008', 'Kỹ thuật'),
  ('LS009', 'Marketing'),
  ('LS010', 'Ngôn ngữ học');

INSERT INTO Sach VALUES
  ('S001', 'Sách 1', 'Nhà xuất bản 1', 'Tác giả 1', 100, 25.5, 'Vị trí 1', 'LS001', '2020-10-15'),
  ('S002', 'Sách 2', 'Nhà xuất bản 2', 'Tác giả 2', 75, 30.0, 'Vị trí 2', 'LS002', '2014-10-15'),
  ('S003', 'Sách 3', 'Nhà xuất bản 3', 'Tác giả 3', 50, 15.75, 'Vị trí 3', 'LS003', '2013-10-15'),
  ('S004', 'Sách 4', 'Nhà xuất bản 4', 'Tác giả 4', 125, 42.9, 'Vị trí 4', 'LS004', '2012-10-15'),
  ('S005', 'Sách 5', 'Nhà xuất bản 5', 'Tác giả 5', 90, 20.0, 'Vị trí 5', 'LS005', '2009-10-15'),
  ('S006', 'Sách 6', 'Nhà xuất bản 6', 'Tác giả 6', 60, 18.5, 'Vị trí 6', 'LS006', '2022-10-15'),
  ('S007', 'Sách 7', 'Nhà xuất bản 7', 'Tác giả 7', 80, 22.75, 'Vị trí 7', 'LS007', '2023-10-15'),
  ('S008', 'Sách 8', 'Nhà xuất bản 8', 'Tác giả 8', 110, 29.0, 'Vị trí 8', 'LS008', '2023-10-15'),
  ('S009', 'Sách 9', 'Nhà xuất bản 9', 'Tác giả 9', 70, 24.5, 'Vị trí 9', 'LS009', '2021-10-15'),
  ('S010', 'Sách 10', 'Nhà xuất bản 10', 'Tác giả 10', 95, 35.25, 'Vị trí 10', 'LS010', '2023-10-15');

INSERT INTO PhieuMuon VALUES
  ('PM001', '2023-10-15', '2023-11-15', 'SV001', 'chưa trả sách'),
  ('PM002', '2022-10-16', '2022-11-16', 'SV002', 'đã trả sách'),
  ('PM003', '2009-10-13', '2009-10-15', 'SV003', 'chưa trả sách'),
  ('PM004', '2018-10-18', '2019-11-18', 'SV004', 'đã trả sách'),
  ('PM005', '2015-10-19', '2015-11-19', 'SV005', 'đã trả sách'),
  ('PM006', '2023-10-20', '2023-11-20', 'SV006', 'chưa trả sách'),
  ('PM007', '2023-10-21', '2023-11-21', 'SV007', 'chưa trả sách'),
  ('PM008', '2012-10-22', '2013-11-22', 'SV008', 'đã trả sách'),
  ('PM009', '2023-10-23', '2023-11-23', 'SV009', 'chưa trả sách'),
  ('PM010', '2023-10-24', '2023-11-24', 'SV010', 'chưa trả sách');

INSERT INTO PhieuMuonCT VALUES
  ('PM001', 'S001', 'Ghi chú 1'),
  ('PM001', 'S002', 'Ghi chú 2'),
  ('PM002', 'S003', 'Ghi chú 3'),
  ('PM002', 'S004', 'Ghi chú 4'),
  ('PM006', 'S004', 'Ghi chú 4'),
  ('PM003', 'S005', 'Ghi chú 5'),
  ('PM003', 'S006', 'Ghi chú 6'),
  ('PM004', 'S007', 'Ghi chú 7'),
  ('PM004', 'S008', 'Ghi chú 8'),
  ('PM005', 'S009', 'Ghi chú 9'),
  ('PM005', 'S010', 'Ghi chú 10');
  
--   Y6. Viết các câu truy vấn sau:
-- 6.1 Liệt kê tất cả thông tin của các đầu sách gồm tên sách, mã sách, giá tiền , tác giả thuộc loại sách có mã “LS”.
select TenSach, MaSach, Gia, TacGia
from Sach
where MaLoai like "LS%";

-- 6.2 Liệt kê các phiếu mượn gồm các thông tin mã phiếu mượn, mã sách , ngày mượn, mã sinh viên có ngày mượn trong tháng 10/2023.
select PhieuMuon.MaPM, PhieuMuonCT.MaSach, PhieuMuon.NgayMuon, PhieuMuon.MaSV
from PhieuMuon
inner join PhieuMuonCT on PhieuMuon.MaPM = PhieuMuonCT.MaPM
where month(PhieuMuon.NgayMuon) = 10 and year(PhieuMuon.NgayMuon) = 2023;

-- 6.3 Liệt kê các phiếu mượn chưa trả sách cho thư viên theo thứ tự tăng dần của ngày mượn sách.
select *
from PhieuMuon
where TrangThai = "chưa trả sách"
order by NgayMuon;

-- 6.4 Liệt kê tổng số đầu sách của mỗi loại sách ( gồm mã loại sách, tên loại sách, tổng số lượng sách mỗi loại).
select count(LoaiSach.MaLoai) as "tong so dau sach", LoaiSach.MaLoai, LoaiSach.TenLoai, sum(Sach.SL) as "tong SL sach moi loai"
from LoaiSach
inner join Sach on LoaiSach.MaLoai = Sach.MaLoai
group by LoaiSach.MaLoai;


-- 6.5 Đếm xem có bao nhiêu lượt sinh viên đã mượn sách.
select COUNT(MaPM) as "So Luot"
from PhieuMuon;


-- 6.6 Hiển thị tất cả các quyển sách có tiêu đề chứa từ khoá “Sách 4”.
select *
from Sach
where TenSach = "Sách 4";

-- 6.7 Hiển thị thông tin mượn sách gồm các thông tin: mã sinh viên, tên sinh viên, mã
-- phiếu mượn, tiêu đề sách, ngày mượn, ngày trả. Sắp xếp thứ tự theo ngày mượn sách.
select SV.MaSv, SV.TenSV, PhieuMuon.MaPM, Sach.TenSach, PhieuMuon.NgayMuon, PhieuMuon.NgayTra
from SV
inner join PhieuMuon on SV.MaSV = PhieuMuon.MaSV
inner join PhieuMuonCT on PhieuMuon.MaPM = PhieuMuonCT.MaPM
inner join Sach on PhieuMuonCT.MaSach = Sach.MaSach
order by PhieuMuon.NgayMuon;

-- 6.8 Liệt kê các đầu sách có lượt mượn lớn hơn 1 lần.
select MaSach, COUNT(MaSach) AS "SOLUOT" 
from PhieuMuonCT
group by MaSach
having COUNT(MaSach) > 1;

-- 6.9 Viết câu lệnh cập nhật lại giá tiền của các quyển sách có ngày nhập kho trước năm
-- 2014 giảm 30%.
update Sach
set Gia = Gia * 0.7
where year(NgayNhapKho) < 2014;

select MaSach, Gia
from Sach
where year(NgayNhapKho) < 2014;

-- 6.10 Viết câu lệnh cập nhật lại trạng thái đã trả sách cho phiếu mượn của sinh viên có mã
-- sinh viên SV001 (ví dụ).
update PhieuMuon
set TrangThai = "đã trả sách"
where MaSV = "SV001";

select MaSV, TrangThai
from PhieuMuon
where MaSV = "SV001";

-- 6.11 Lập danh sách các phiếu mượn quá hạn chưa trả gồm các thông tin: mã phiếu mượn,
-- tên sinh viên, email, danh sách các sách đã mượn, ngày mượn.
select PhieuMuon.MaPM, SV.TenSV, SV.Email, PhieuMuonCT.MaSach, PhieuMuon.NgayMuon
from SV
inner join PhieuMuon on SV.MaSV = PhieuMuon.MaSV
inner join PhieuMuonCT on PhieuMuon.MaPM = PhieuMuonCT.MaPM
where NgayTra < now() and TrangThai = "chưa trả sách";

-- 6.12 Viết câu lệnh cập nhật lại số lượng bản sao tăng lên 5 đơn vị đối với các đầu sách có
-- lượt mượn lớn hơn 1
update Sach
set SL = SL + 5
where MaSach in(
select MaSach
from PhieuMuonCT
group by MaSach
having COUNT(MaSach) > 1
);

select MaSach, SL
from Sach;

-- 6.13 Viết câu lệnh xoá các phiếu mượn có ngày mượn và ngày trả trước „1/1/2010‟
delete from PhieuMuon 
where NgayTra < "2010-1-1" and NgayMuon < "2010-1-1";

select *
from PhieuMuon;
