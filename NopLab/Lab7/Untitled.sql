create database bt1;
drop database b1;
use bt1;

create table kh(
	 MaKH char(5),
     Ma int auto_increment
);

alter table kh
add constraint kh_makh_pk
primary key(MaKH);