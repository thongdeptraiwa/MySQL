CREATE DATABASE thi;
drop database thi;
use thi; 

CREATE TABLE SuKien(
    ID  int auto_increment primary key,
    TenSK NVARCHAR(50),
    Ngay date
);

CREATE TABLE DiaDiem(
    MaDD  char(5),
    DiaChi NVARCHAR(100)
);

CREATE TABLE ChiTiet(
    ID  int,
    MaDD char(5),
    NoiDung NVARCHAR(100)
);

Alter table DiaDiem
ADD constraint DiaDiem_MaDD_PK
primary key(MaDD);


Alter table ChiTiet
ADD constraint ChiTiet_ID_MaDD_PK
primary key(ID, MaDD),
ADD constraint ChiTiet_ID_FK
foreign key(ID) references SuKien(ID)
on delete cascade,
ADD constraint ChiTiet_MaDD_FK
foreign key(MaDD) references DiaDiem(MaDD)
on delete cascade;

INSERT INTO SuKien VALUES
('1', 'Workshop API', '2023-10-16'),
('2', 'Talkshow Softskill', '2023-09-10');

INSERT INTO DiaDiem VALUES
('00001', 'Công viên phần mềm Quang Trung'),
('00002', 'Nhà hát Hòa Bình'),
('00003', 'Đại học Tôn Đức Thắng');

INSERT INTO ChiTiet VALUES
('1','00001', 'Tác giả kỹ sư NVCMIS đến từ NashTech Việt Nam'),
('1','00003', 'Diễn giả kỹ sư NVC đến từ Alta Software'),
('2','00002', 'Diễn giả Miss Tran Linh đến từ cty TNHH ANBC');

-- Câu 4: Lấy tất cả các sự kiện đã diễn ra do diễn giả đến từ NashTech Việt Nam 
-- trình bày (gồm ID, TenSK và Ngày)
select SuKien.ID, SuKien.TenSK, SuKien.Ngay
from SuKien
inner join ChiTiet on SuKien.ID = ChiTiet.ID
where ChiTiet.NoiDung like "%đến từ NashTech Việt Nam";

-- Câu 5: Đếm xem mỗi địa điểm diễn ra bao nhiêu sự kiện
--  (gồm MaDD, Diachi và số lượng sự kiện)
select DiaDiem.MaDD, DiaDiem.DiaChi, count(SuKien.ID) as "So su kien"
from DiaDiem
inner join ChiTiet on DiaDiem.MaDD = ChiTiet.MaDD
inner join SuKien on SuKien.ID = ChiTiet.ID
group by DiaDiem.MaDD;

-- Câu 6: Lấy ra MaDD, Diachi, TenSK với những sự kiện đã diễn ra 
-- và cả những địa chỉ chưa diễn ra sự kiện nào
select DiaDiem.MaDD, DiaDiem.DiaChi, SuKien.TenSK
from DiaDiem
left join ChiTiet on DiaDiem.MaDD = ChiTiet.MaDD
right join SuKien on SuKien.ID = ChiTiet.ID;



