create database Lab4;
drop database Lab4;
use Lab4;

create table ThanNhan(
    TenTN nvarchar(45) primary key,
    NgaySinh date,
    Quanhe nvarchar(20),
    MaNv nvarchar(5)
);
create table NhanVien(
	MaNV nvarchar(5) primary key,
    TenNV nvarchar(45),
    MaVP nvarchar(5)
);
create table VanPhong(
	MaVP nvarchar(5) primary key,
    DiaDiem nvarchar(100)
);
create table BDS(
	MaBDS nvarchar(5) primary key,
    DiaDiem nvarchar(100),
    MaVP nvarchar(5),
    MaCSH nvarchar(5),
    foreign key(MaVP) references VanPhong(MaVP),
	foreign key(MaCSH) references ChuSoHuu(MaCSH)
);
create table ChuSoHuu(
	MaCSH nvarchar(5) primary key,
	TenCSH nvarchar(45),
    DiaDiem nvarchar(100),
    SDT int
);


Alter table ThanNhan
ADD constraint ThanNhan_MaNV_FK
foreign key(MaNV) references NhanVien(MaNV)
on delete cascade;

Alter table NhanVien
ADD constraint NhanVien_MaVP_FK
foreign key(MaVP) references VanPhong(MaVP)
on delete cascade;
