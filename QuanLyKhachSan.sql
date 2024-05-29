create database QuanLyKhachSan
go

use QuanLyKhachSan
go

create table HoaDon
(
	HoaDonID char(10),
	NhanVienID char(10),
	KhachHangID char(10),
	PhongID char(10),
	TenLoai nvarchar(10),
	NgayDen date,
	NgayDi date,
	SoNgay int,
	SoKhach int,
	NgayHD date,
	TongTien int,
	primary key(HoaDonID)
)
create table LichLamViec
(
	LichLamViecID char(10),
	NhanVienID char(10),
	Ca nvarchar(10),
	Ngay date,
	primary key(LichLamViecID)
)

create table KhachHang
(
	KhachHangID char(10),
	TenKH nvarchar(50),
	QuocTich nvarchar(30),
	primary key (KhachHangID)
)
create table ChiTietHoaDon
(
	ChiTietHoaDonID char (10),
	HoaDonID char(10),
	DichVuID char(10),
	GiaDV int,
	SoLuong int,
	ThanhTien int,
	primary key(ChiTietHoaDonID)
)

create table DichVu
(
	DichVuID char(10),
	TenDV nvarchar(50),
	GiaDV int,
	primary key(DichVuID)
)

create table NhanVien
(
	NhanVienID char(10),
	TenNV nvarchar(50),
	ImageNhanVien varchar(50),
	primary key (NhanVienID)
)

create table MatKhau
(
	username varchar(50),
	NhanVienID char(10),
	password varchar(50)
)

create table Phong
(
	PhongID char(10),
	LoaiPhongID char(10),
	GiaPhong int,
	primary key(PhongID)
)

create table LoaiPhong
(
	LoaiPhongID char(10),
	TenLoai nvarchar(50),
	primary key(LoaiPhongID)
)

create table VatTu
(
	VatTuID char(10),
	PhongID char(10),
	TenVT nvarchar(50),
	primary key (VatTuID)
)

alter table HoaDon
add constraint fk_HD_KH foreign key (KhachHangID) references KhachHang(KhachHangID)

alter table HoaDon
add constraint fk_HD_NV foreign key (NhanVienID) references NhanVien(NhanVienID)

alter table HoaDon
add constraint fk_HD_P foreign key (PhongID) references Phong(PhongID)

alter table LichLamViec
add constraint fk_LLV_NV foreign key (NhanVienID) references NhanVien(NhanVienID)

alter table ChiTietHoaDon
add constraint fk_CTHD_DV foreign key (DichVuID) references DichVu(DichVuID)

alter table ChiTietHoaDon
add constraint fk_CTHD_HD foreign key (HoaDonID) references HoaDon(HoaDonID)

alter table Phong
add constraint fk_P_LP foreign key (LoaiPhongID) references LoaiPhong(LoaiPhongID)

alter table VatTu
add constraint fk_VT_P foreign key (PhongID) references Phong(PhongID)

alter table MatKhau
add constraint fk_MK_NV foreign key (NhanVienID) references NhanVien(NhanVienID)
