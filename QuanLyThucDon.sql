Create Database QuanLyThucDon;
Use QuanLyThucDon;

Create Table ThucDon
(
	MaTD char(4) not null,
	NhomTD varchar(25) not null,
	LoaiTD varchar(25) not null,
	Constraint pk_ThucDon Primary Key (MaTD)
);
Create Table MonAn
(
	MaMA char(4)  not null,
	TenMA varchar(50) not null,
	ThutuMA varchar(4),
	DvtMA varchar(10),
	GiaMA float,
	Constraint pk_MonAn Primary Key (MaMA),
	MaTD char(4) not null,
	Constraint fk_MonAn Foreign Key (MaTD) references ThucDon (MaTD)
);
Create Table ThucUong
(
	MaTU char(4) not null,
	TenTU varchar(50) not null,
	ThutuTU varchar(4),
	DvtTU varchar(10),
	GiaTU float,        
	Constraint pk_ThucUong Primary Key (MaTU),
	MaTD char(4) not null,
	Constraint fk_ThucUong Foreign Key (MaTD) references ThucDon (MaTD)
);
Create Table Combo
(
	MaCB char(4) not null,
	TenCb varchar(50) not null,
	GiaCB float,
	ThutuCB varchar(4),
	Constraint pk_Combo Primary Key (MaCB),
	MaTD char(4) not null,
	Constraint fk_Combo Foreign Key (MaTD) references ThucDon (MaTD)
);
Create Table NhaCungCap
(
	MaNCC char(6) not null,
	TenNCC varchar(100) not null,
	DiaChiNCC varchar(100),
	SdtNCC varchar(10),
	Constraint pk_NhaCungCap Primary Key (MaNCC),
	MaTD char(4) not null,
	Constraint fk_NhaCungCap Foreign Key (MaTD) references ThucDon (MaTD),
);
Create Table NguyenLieu
(
	MaNL char(6) not null,
	TenNL varchar(50) not null,
	MaNCC char(6) not null,
	GiaNL float,
	Constraint pk_NguyenLieu Primary Key (MaNL),
	Constraint fk_NguyenLieu Foreign Key (MaNCC) references NhaCungCap (MaNCC)
);
Create Table NhanVien
(
	MaNV char(6) not null,
	TenNV nvarchar(100) not null,
	GioiTinh nvarchar(10),
	DiaChiNV nvarchar(100),
	DienThoaiNV nvarchar(10),
	MaMA char(4) not null,
	MaTU char(4) not null,
	Constraint pk_NhanVien Primary Key (MaNV),
	Constraint fk_NhanVien Foreign Key (MaMA) references MonAn (MaMA),
	Constraint fk_NhanVien2 Foreign Key (MaTU) references ThucUong (MaTU)
);

Create Table HoaDon
(
	MaHD char(5) not null,
	MaNV char(6) not null,
	NgayLapHD datetime,
	Constraint pk_HoaDon Primary Key (MaHD),
	Constraint fk_HoaDon Foreign Key (MaNV) references NhanVien (MaNV)
);

insert into ThucDon values('TR01', N'Tra� no�ng', N'Th��c U��ng')
insert into ThucDon values('TR02', N'Tra� tra�i c�y', N'Th��c U��ng')
insert into ThucDon values('TR03', N'Tra� detox', N'Th��c U��ng')
insert into ThucDon values('�X01', N'�a� xay co� ca� ph�', N'Th��c U��ng')
insert into ThucDon values('�X02', N'�a� xay kh�ng ca� ph�', N'Th��c U��ng')
insert into ThucDon values('�X03', N'N���c tra�i c�y �a� xay', N'Th��c U��ng')
insert into ThucDon values('CF01', N'Ca� Ph� Pha Ma�y', N'Th��c U��ng')
insert into ThucDon values('CF02', N'Ca� Ph� Pha Phin', N'Th��c U��ng')
insert into ThucDon values('BG01', N'Burger Ga� nho�', N'Mo�n �n')
insert into ThucDon values('BG02', N'Burger Ga� l��n', N'Mo�n �n')
insert into ThucDon values('BB01', N'Burger Bo� mi��ng nho�', N'Mo�n �n')
insert into ThucDon values('BB02', N'Burger Bo� mi��ng l��n', N'Mo�n �n')
insert into ThucDon values('BH00', N'Burger Heo', N'M�n �n')
insert into ThucDon values('BC00', N'Burger Ca�', N'M�n �n')
insert into ThucDon values('GR01', N'Ga� ra�n truy��n th��ng', N'M�n �n')
insert into ThucDon values('GR02', N'Ga� ra�n vi� cay', N'M�n �n')
insert into ThucDon values('HM00', N'Ph��n �n tre� em', N'Mo�n �n')
insert into ThucDon values('LTO1', 'Soup', N'Mo�n �n')
insert into ThucDon values('CB01', N'Combo 1 ng���i', 'Combo')
insert into ThucDon values('CB02', N'Combo 2 ng���i', 'Combo')
insert into ThucDon values('CB03', N'Combo 3 ng���i', 'Combo')
insert into ThucDon values('CB04', N'Combo gia �i�nh', 'Combo')
insert into ThucDon values('CB05', N'Combo ca� ph� chi��u', 'Combo')
insert into ThucDon values('CB06', N'Combo b��a sa�ng', 'Combo')
insert into ThucDon values('CB07', N'Combo b��a x��', 'Combo')

Insert Into MonAn Values ('MA01', N'Burger ga� nho� mayo', '1', N'1 ca�i', 29000, 'BG01')
Insert Into MonAn Values ('MA02', N'Burger ga� l��n mayo', '2', N'1 ca�i', 56000, 'BG02')
Insert Into MonAn Values ('MA03', N'Burger ga� cay mayo', '3', N'1 ca�i', 76000, 'BG02')
Insert Into MonAn Values ('MA04', N'Burger bo� ph� mai', '4', N'1 ca�i', 36000, 'BB01')
Insert Into MonAn Values ('MA05', N'Burger BigMac', '5', N'1 ca�i', 66000, 'BB01')
Insert Into MonAn Values ('MA06', N'Burger Bo� Ph� Mai ���c Bi��t', '6', N'1 ca�i', 46000, 'BB01')
Insert Into MonAn Values ('MA07', N'Burger Bo� Ph� mai 2 l��p', '7', N'1 ca�i', 56000, 'BB01')
Insert Into MonAn Values ('MA08', N'Burger Bo� Ph� mai 3 l��p', '8', N'1 ca�i', 76000, 'BB01')
Insert Into MonAn Values ('MA09', N'Burger Bo� Hoa�ng Gia ph� mai', '9', N'1 ca�i', 66000, 'BB02')
Insert Into MonAn Values ('MA10', N'Burger Bo� Hoa�ng Gia ���c Bi��t', '10', N'1 ca�i', 76000, 'BB02')
Insert Into MonAn Values ('MA11', N'Burger thi�t heo', '11', N'1 ca�i', 29000, 'BH00')
Insert Into MonAn Values ('MA12', N'Burger Ca� Tuy��t', '12', N'1 ca�i', 46000, 'BC00')
Insert Into MonAn Values ('MA13', N'Ph��n �n Tre� Em Burger', '13', N'1 ca�i', 69000, 'HM00')
Insert Into MonAn Values ('MA14', N'Ph��n �n Tre� Em Ga� Ra�n', '14', N'1 ca�i', 69000, 'HM00')
Insert Into MonAn Values ('MA15', N'Ga� Ra�n Truy��n Th��ng', '15', N'1 ca�i', 36000, 'GR01')
Insert Into MonAn Values ('MA16', N'Ga� Ra�n Vi� Cay', '16', N'1 ca�i', 36000, 'GR02')

Insert into ThucUong Values ('TU01', N'Tra� no�ng', '1', N'1 Ly',25000, 'TR01')
Insert into ThucUong Values ('TU02', N'Tra� va�i', '2', N'1 Ly',55000, 'TR02')
Insert into ThucUong Values ('TU03', N'Tra� �a�o', '3', N'1 Ly',55000, 'TR02')
Insert into ThucUong Values ('TU04', N'Detox Cam Ta�o', '4', N'1 Ly',59000, 'TR03')
Insert into ThucUong Values ('TU05', N'Detox Cam Th�m', '5', N'1 Ly',59000, 'TR03')
Insert into ThucUong Values ('TU06', N'Caramel Coffee', '6', N'1 Ly',69000, '�X01')
Insert into ThucUong Values ('TU07', N'Mocha Coffee', '7', N'1 Ly',69000, '�X01')
Insert into ThucUong Values ('TU08', N'Caremel Cream', '8', N'1 Ly',69000, '�X02')
Insert into ThucUong Values ('TU09', N'Mocha Cream', '9', N'1 Ly',69000, '�X02')
Insert into ThucUong Values ('TU10', N'Kiwi Blended', '10', N'1 Ly',69000, '�X03')
Insert into ThucUong Values ('TU11', N'Passion Blended', '11', N'1 Ly',69000, '�X03')
Insert into ThucUong Values ('TU12', N'Capucchino', '12', N'1 Ly',55000, 'CF01')
Insert into ThucUong Values ('TU13', N'Latte', '13', N'1 Ly',55000, 'CF01')
Insert into ThucUong Values ('TU14', N'�en �a� Vi��t Nam', '14', N'1 Ly',39000, 'CF02')
Insert into ThucUong Values ('TU15', N'S��a �a� Vi��t Nam', '15', N'1 Ly',39000, 'CF02')

Insert into Combo Values ('CB11', N'Combo b��a sa�ng', 29000,'1','CB06')
Insert into Combo Values ('CB12', N'Combo 1 ng���i', 79000,'2','CB01')
Insert into Combo Values ('CB13', N'Combo 2 ng���i ga� ra�n', 129000,'3','CB02')
Insert into Combo Values ('CB14', N'Combo 2 ng���i burger', 129000,'4','CB02')
Insert into Combo Values ('CB15', N'Combo 3 ng���i ga� ra�n', 179000,'5','CB03')
Insert into Combo Values ('CB16', N'Combo 3 ng���i burger', 179000,'6','CB03')
Insert into Combo Values ('CB17', N'Combo gia �i�nh A', 285000,'1','CB04')
Insert into Combo Values ('CB18', N'Combo gia �i�nh B', 285000,'1','CB04')
Insert into Combo Values ('CB19', N'Combo ca� ph� chi��u', 69000,'1','CB05')
Insert into Combo Values ('CB20', N'Combo b��a x��', 39000,'1','CB07')

Insert into NhaCungCap Values ('CTY101', N'CTY TNHH Tra� Tha�i Nguy�n', N'881/75 T? Quang B?u, Q8, TPHCM', '0288345345', 'TR01')
Insert into NhaCungCap Values ('CTY102', N'CTY TNHH Tra�i C�y T��i Linh T�y', N'784 CMT8, Q3, TPHCM', '0284678678', 'TR02')
Insert into NhaCungCap Values ('CTY103', N'CTY TNHH Tra�i C�y T��i Linh T�y', N'784 CMT8, Q3, TPHCM', '0284678678', 'TR03')
Insert into NhaCungCap Values ('CTY104', N'CTY TNHH Syrup Hoa�ng Ha�', N'860 Nguy��n �i�nh Chi��u, Q1, TPHCM', '0289765765', '�X01')
Insert into NhaCungCap Values ('CTY105', N'CTY TNHH Syrup Hoa�ng Ha�', N'860 Nguy��n �i�nh Chi��u, Q1, TPHCM', '0289765765', '�X02')
Insert into NhaCungCap Values ('CTY106', N'CTY TNHH Syrup Hoa�ng Ha�', N'860 Nguy��n �i�nh Chi��u, Q1, TPHCM', '0289765765', '�X03')
Insert into NhaCungCap Values ('CTY107', N'CTY TNHH Coffee Trung Nguy�n', N'345 Ng� �i�nh Nhi��m, Q6, TPHCM', '0288732732', 'CF01')
Insert into NhaCungCap Values ('CTY108', N'CTY TNHH Coffee Trung Nguy�n', N'345 Ng� �i�nh Nhi��m, Q6, TPHCM', '0288732732', 'CF02')
Insert into NhaCungCap Values ('CTY109', N'CTY TNHH Th��c ph��m ��ng la�nh 3S', N'765 Tr��n Xu�n Soa�n, Q7, TPHCM', '0284690690', 'BG01')
Insert into NhaCungCap Values ('CTY110', N'CTY TNHH Th��c ph��m ��ng la�nh 3S', N'765 Tr��n Xu�n Soa�n, Q7, TPHCM', '0284690690', 'BG02')
Insert into NhaCungCap Values ('CTY111', N'CTY TNHH Bo� UK', N'45 Tr��n Na�o, Q2, TP Thu� ���c', '0288245245', 'BB01')
Insert into NhaCungCap Values ('CTY112', N'CTY TNHH Bo� UK', N'45 Tr��n Na�o, Q2, TP Thu� ���c', '0288245245', 'BB02')
Insert into NhaCungCap Values ('CTY113', N'CTY TNHH Vissan', N'37 Ha�i Th���ng La�n �ng, Q1, TPHCM', '0286894894', 'BH00')
Insert into NhaCungCap Values ('CTY114', N'CTY TNHH Ha�i sa�n Kim H��ng', N'754 Vo� Thi� Sa�u, H.C��n Gi��, TPHCM', '0287378378', 'BC00')
Insert into NhaCungCap Values ('CTY115', N'CTY TNHH Ga� T��i Labourche', N'90 L� Thi� Ri�ng, Q7,TPHCM', '0285672672', 'GR01')
Insert into NhaCungCap Values ('CTY116', N'CTY TNHH Ga� T��i Labourche', N'90 L� Thi� Ri�ng, Q7,TPHCM', '0285672672', 'GR02')

Insert into NguyenLieu Values ('NL0101', N'Tra� xanh','CTY101',400000)
Insert into NguyenLieu Values ('NL0102', N'Tra�i c�y c��t s��n','CTY102',350000)
Insert into NguyenLieu Values ('NL0103', N'Tra�i c�y �o�ng h��p','CTY103',150000)
Insert into NguyenLieu Values ('NL0104', N'Syrup ca� ph�','CTY104',420000)
Insert into NguyenLieu Values ('NL0105', N'Syrup kem','CTY105',420000)
Insert into NguyenLieu Values ('NL0106', N'Syrup tra�i c�y','CTY106',270000)
Insert into NguyenLieu Values ('NL0107', N'Ca� ph� Robusta','CTY107',290000)
Insert into NguyenLieu Values ('NL0108', N'Ca� ph� Arabica','CTY108',350000)
Insert into NguyenLieu Values ('NL0109', N'Ga� chi�n mi��ng nho�','CTY109',30000)
Insert into NguyenLieu Values ('NL0110', N'Ga� chi�n mi��ng l��n','CTY110',60000)
Insert into NguyenLieu Values ('NL0111', N'Bo� UK mi��ng nho�','CTY111',80000)
Insert into NguyenLieu Values ('NL0112', N'Bo� UK mi��ng l��n','CTY112',90000)
Insert into NguyenLieu Values ('NL0113', N'Heo chi�n xu�','CTY113',70000)
Insert into NguyenLieu Values ('NL0114', N'Ca� tuy��t chi�n xu�','CTY114',48000)
Insert into NguyenLieu Values ('NL0115', N'Ga� t��m ���p truy��n th��ng','CTY115',90000)
Insert into NguyenLieu Values ('NL0116', N'Ga� t��m ���p vi� cay','CTY116',95000)

Insert into NhanVien Values ('ID0010',N'Nguy��n Thi� Tra� My',N'N��',N'12 Nguy?n Duy Trinh, Q2, Tp Thu� ���c','0337738123','MA01','TU01')
Insert into NhanVien Values ('ID0011',N'H? Th? T�',N'N��',N'T?a nh� C8, B?nh T�n, TP HCM','033852814','MA02','TU02')
Insert into NhanVien Values ('ID0012',N'Tr?n Kh�nh V�n',N'N��',N'16/6A  Cao Th?ng, Q5, Tphcm','0933124110','MA03','TU03')
Insert into NhanVien Values ('ID0013',N'Tr?n Ch� B?o','Nam',N'41/6/3C Nam K? Kh?i Ngh?a, Q1, TPHCM','037722124','MA04','TU04')
Insert into NhanVien Values ('ID0014',N'H? Th? Lam',N'N��',N'29 Qu?c l? 1, D? An, B?nh D��ng','0978741458','MA05','TU05')
Insert into NhanVien Values ('ID0015',N'Nguy?n Gia Tu?',N'N��',N'122/5/1A An D��ng V��ng, D? An, B?nh D��ng','037748412','MA06','TU06')
Insert into NhanVien Values ('ID0016',N'Nguy?n Th? G?m',N'N��',N'87/2A Nguy?n Duy Trinh, Q2, TP Thu� ���c','033324274','MA07','TU07')
Insert into NhanVien Values ('ID0017',N'�? Quang ��ng','Nam',N'H?m 156 Nguy?n Tr�?ng T?, Q5, TPHCM','0938845657','MA08','TU08')
Insert into NhanVien Values ('ID0018',N'Cao M? Duy�n',N'N��',N'106/23 L� H?ng Phong, Q8, TPHCM','0949578741','MA09','TU09')
Insert into NhanVien Values ('ID0019',N'Tr��ng Tr� Nam','Nam',N'792-794 L? Xu�n Oai, Q9, TP Thu� ���c','038847679','MA09','TU09')
Insert into NhanVien Values ('ID0020',N'Nguy��n Thi� Tra� My',N'N��',N'115 Cao Th?ng, Q3, TPHCM','0949568721','MA10','TU10')
Insert into NhanVien Values ('ID0021',N'L?i V�n Minh','Nam',N'12/45B H? Th? T�, Q8, TPHCM','036661739','MA11','TU12')
Insert into NhanVien Values ('ID0022',N'Nguy?n �? Th�y Linh',N'N��',N'Nh� C9 L� V�n Vi?t, Q9, TP Thu� ���c','0984637478','MA12','TU13')

Insert into HoaDon Values ('HD100', 'ID0010',Convert(datetime, '03/19/2021'))
Insert into HoaDon Values ('HD101', 'ID0011',Convert(datetime, '03/19/2021'))
Insert into HoaDon Values ('HD102', 'ID0012',Convert(datetime, '03/19/2021'))
Insert into HoaDon Values ('HD103', 'ID0013',Convert(datetime, '03/19/2021'))
Insert into HoaDon Values ('HD104', 'ID0014',Convert(datetime, '03/19/2021'))
Insert into HoaDon Values ('HD105', 'ID0015',Convert(datetime, '03/20/2021'))
Insert into HoaDon Values ('HD106', 'ID0016',Convert(datetime, '03/20/2021'))
Insert into HoaDon Values ('HD107', 'ID0017',Convert(datetime, '03/20/2021'))
Insert into HoaDon Values ('HD108', 'ID0018',Convert(datetime, '03/20/2021'))
Insert into HoaDon Values ('HD109', 'ID0019',Convert(datetime, '03/20/2021'))
Insert into HoaDon Values ('HD110', 'ID0020',Convert(datetime, '03/20/2021'))
Insert into HoaDon Values ('HD111', 'ID0021',Convert(datetime, '03/21/2021'))
Insert into HoaDon Values ('HD112', 'ID0022',Convert(datetime, '03/21/2021'))
Insert into HoaDon Values ('HD113', 'ID0010',Convert(datetime, '03/21/2021'))
Insert into HoaDon Values ('HD114', 'ID0011',Convert(datetime, '03/21/2021'))
Insert into HoaDon Values ('HD115', 'ID0012',Convert(datetime, '03/21/2021'))
Insert into HoaDon Values ('HD116', 'ID0013',Convert(datetime, '03/22/2021'))
Insert into HoaDon Values ('HD117', 'ID0014',Convert(datetime, '03/22/2021'))
Insert into HoaDon Values ('HD118', 'ID0015',Convert(datetime, '03/22/2021'))
Insert into HoaDon Values ('HD119', 'ID0016',Convert(datetime, '03/22/2021'))
Insert into HoaDon Values ('HD120', 'ID0017',Convert(datetime, '03/22/2021'))
Insert into HoaDon Values ('HD121', 'ID0018',Convert(datetime, '03/23/2021'))
Insert into HoaDon Values ('HD122', 'ID0019',Convert(datetime, '03/23/2021'))
Insert into HoaDon Values ('HD123', 'ID0020',Convert(datetime, '03/23/2021'))
Insert into HoaDon Values ('HD124', 'ID0021',Convert(datetime, '03/23/2021'))
Insert into HoaDon Values ('HD125', 'ID0022',Convert(datetime, '03/23/2021'))
Insert into HoaDon Values ('HD126', 'ID0010',Convert(datetime, '03/24/2021'))
Insert into HoaDon Values ('HD127', 'ID0011',Convert(datetime, '03/24/2021'))
Insert into HoaDon Values ('HD128', 'ID0012',Convert(datetime, '03/24/2021'))
Insert into HoaDon Values ('HD129', 'ID0013',Convert(datetime, '03/24/2021'))
Insert into HoaDon Values ('HD130', 'ID0014',Convert(datetime, '03/24/2021'))
Insert into HoaDon Values ('HD131', 'ID0015',Convert(datetime, '03/25/2021'))
Insert into HoaDon Values ('HD132', 'ID0016',Convert(datetime, '03/25/2021'))




Select MaNV, TenNV, DiaChiNV
From NhanVien

--Cho bi��t danh sa�ch nh�n vi�n n��
Select *
From NhanVien
Where GioiTinh = N'N��'

--Cho bi��t t��ng s�� hoa� ��n cu�a m��i nh�n vi�n nam
Select NhanVien.MaNV,TenNV,GioiTinh,count(HoaDon.MaHD) as TongHoaDon
From NhanVien inner join HoaDon on NhanVien.MaNV = HoaDon.MaNV
Where GioiTinh = 'Nam'
Group by NhanVien.MaNV,TenNV, GioiTinh

--Cho bi��t ca�c nh�n vi�n l��p tr�n 2 hoa� ��n
Select NhanVien.MaNV,TenNV,count(HoaDon.MaHD) as TongHoaDon
From NhanVien inner join HoaDon on NhanVien.MaNV = HoaDon.MaNV
Group by NhanVien.MaNV,TenNV
Having count(HoaDon.MaHD) > 2
Order by TongHoaDon desc

--Ta�o t�n ���ng nghi�a NV truy xu��t va�o NhanVien
Create Synonym NV
For NhanVien

Select *
From NV

--Ta�o t�n ���ng nghi�a HD truy xu��t va�o HoaDon
Create Synonym HD
For HoaDon

Select *
From HD

--Ta�o Index tr�n thu��c ti�nh t�n mo�n �n cu�a ba�ng mo�n �n. So sa�nh hi��u qua� khi s�� du�ng index va� kh�ng s�� du�ng index
Create Index Indexdemo on MonAn (TenMA)
Drop Index HoaDon.IndexHoaDon
Select *
From MonAn
Where TenMA = 'Ga� Ra�n Truy��n Th��ng'
Select *
From MonAn
With (index(Indexdemo))
Where TenMA = 'Ga� Ra�n Truy��n Th��ng'

--Ta�o Index tr�n thu��c ti�nh Ma� hoa� ��n cu�a ba�ng hoa� ��n. So sa�nh hi��u qua� khi s�� du�ng index va� kh�ng s�� du�ng index
Create Index IndexHoadon on HoaDon(MaHD)

Select *
From HoaDon
Where MaHD = 'HD117'
Select *
From HoaDon
With (Index(IndexHoaDon))
Where MaHD = 'HD117'

--Ta�o vwDanhsachthucuong v��i ca�c th�ng tin : ma� th��c u��ng, t�n th��c u��ng, s�� th�� t��, gia�.

Create View vwDanhsachthucuong
As
Select MaTU,TenTU,ThutuTU,GiaTU
From ThucUong

Select *
From vwDanhsachthucuong

--Ta�o vwDanhsachnvtheogtinh v��i ca�c th�ng tin : s�� l���ng , gi��i ti�nh
Create View vwDanhsachnvtheogtinh
As
Select count (MaNV) as 'so luong', GioiTinh
From NhanVien
Group by GioiTinh

Select *
From vwDanhsachnvtheogtinh

--Ta�o vwDanhsachnhacungcap v��i ca�c th�ng tin : ma� nha� cung c��p,t�n nha� cung c��p, ma� nguy�n li��u, t�n nguy�n li��u
Create View vwDanhsachnhacungcap
As
Select NhaCungCap.MaNCC,TenNCC,MaNL,TenNL
From NhaCungCap join NguyenLieu on NhaCungCap.MaNCC = NguyenLieu.MaNCC
Group by NhaCungCap.MaNCC,TenNCC,MaNL,TenNL

Select *
From vwDanhsachnhacungcap

--Ta�o vwDanhsachthucdon v��i ca�c th�ng tin : ma� mo�n �n, t�n mo�n �n, gia� mo�n �n thu��c nho�m th��c ��n burger bo� mi��ng nho�
Create View vwDanhsachthucdon
As
Select MonAn.MaMA,MonAn.TenMA, MonAn.GiaMA
From MonAn join ThucDon on MonAn.MaTD=ThucDon.MaTD
where MonAn.MaTD in (Select ThucDon.MaTD
					from ThucDon
					where NhomTD=N'Burger bo� mi��ng nho�')
Drop view vwDanhsachthucdon
Select*
From vwDanhsachthucdon

-- Vi��t ha�m xem th�ng tin ca�c loa�i th��c u��ng ( tra� v�� ba�ng )
Create Function f_danhsachthucuong (@Matu char(4))
Returns table
As
Return ( Select * From ThucUong Where @Matu = ThucUong.MaTU )

Select *
from f_danhsachthucuong ('TU01')

--Vi��t ham xem gia� trung bi�nh cu�a ca�c nguy�n li��u
Create Function f_giatrungbinhNL()
Returns float
As
Begin
Return ( Select Avg(NguyenLieu.GiaNL) From NguyenLieu)
End

Select dbo.f_giatrungbinhNL() as 'Gia� trung bi�nh cu�a nguy�n li��u'
--Xem th�ng tin hoa� ��n, th�ng tin nh�n vi�n v��i ma� hoa� ��n do ng���i du�ng nh��p
Create Proc sp_Tracuuhoadon @MaHd char(5)
As
Select HoaDon.MaHD, NhanVien.MaNV, NhanVien.TenNV, MonAn.TenMA, ThucUong.TenTU
From NhanVien join HoaDon on NhanVien.MaNV = HoaDon.MaNV join MonAn on NhanVien.MaMA = MonAn.MaMA
		join ThucUong on NhanVien.MaTU =  ThucUong.MaTU
Where @MaHd = MaHD
Group by HoaDon.MaHD, NhanVien.MaNV, NhanVien.TenNV, MonAn.TenMA, ThucUong.TenTU

Drop Proc sp_Tracuuhoadon
Exec sp_Tracuuhoadon 'HD111'

--Xem danh sa�ch hoa� ��n cu�a m��t nh�n vi�n v��i ma� nh�n vi�n do ng���i du�ng nh��p
Create Proc sp_Danhsachhoadon @MaNv nchar(6)
As
Select NhanVien.MaNV,HoaDon.MaHD,HoaDon.NgayLapHD, count (HoaDon.MaHD) as SoluongHoaDon
From NhanVien inner join HoaDon on NhanVien.MaNV = HoaDon.MaNV
Where @MaNv = NhanVien.MaNV
Group by NhanVien.MaNV,HoaDon.MaHD,HoaDon.NgayLapHD

Exec sp_Danhsachhoadon 'ID0012'

--Xem Th�ng tin mo�n �n g��m th�ng tin nha� cung c��p va� th�ng tin trong th��c ��n v��i ma� th��c �n do ng���i du�ng nh��p
Create Proc sp_Thongtinmonan @MaMa char(4)
As
Select MonAn.MaMA,MonAn.TenMA, ThucDon.MaTD, ThucDon.NhomTD 
,NhaCungCap.MaNCC,NhaCungCap.TenNCC, NhaCungCap.DiaChiNCC, NhaCungCap.SdtNCC
From ThucDon inner join MonAn on ThucDon.MaTD = MonAn.MaTD inner join NhaCungCap on NhaCungCap.MaTD = ThucDon.MaTD
Where @MaMa = MonAn.MaMA
Group by MonAn.MaMA,MonAn.TenMA, ThucDon.MaTD, ThucDon.LoaiTD, ThucDon.NhomTD 
,NhaCungCap.MaNCC,NhaCungCap.TenNCC, NhaCungCap.DiaChiNCC, NhaCungCap.SdtNCC

Exec sp_Thongtinmonan 'MA05'

--Xem th�ng tin nh�n vi�n v��i ma� nh�n vi�n do ng���i du�ng nh��p
Create Proc sp_Thongtinnhanvien @MaNv char(6)
As
Select NhanVien.MaNV,NhanVien.TenNV,NhanVien.GioiTinh,NhanVien.DiaChiNV,NhanVien.DienThoaiNV
From NhanVien 
Where @MaNv = MaNV

Exec sp_Thongtinnhanvien 'ID0010'

--Xem th�ng tin mo�n �n ho��c th��c u��ng v��i ma� nguy�n li��u do ng���i du�ng nh��p
Create Proc sp_Sanphamtunguyenlieu @MaNL char(6)
As
Select NguyenLieu.MaNL,NguyenLieu.TenNL, NhaCungCap.MaNCC, ThucDon.NhomTD
From NhaCungCap inner join NguyenLieu on NguyenLieu.MaNCC = NhaCungCap.MaNCC 
				inner join ThucDon on NhaCungCap.MaTD = ThucDon.MaTD
Where @MaNL = NguyenLieu.MaNL
Group by NguyenLieu.MaNL,NguyenLieu.TenNL, NhaCungCap.MaNCC, ThucDon.NhomTD

Exec sp_Sanphamtunguyenlieu 'NL0110'

--Xem gia� ti��n cu�a 1 combo v��i ma� combo do ng���i du�ng nh��p
--Ti��n nh��n t�� kha�ch la� 800000 , n��u �u� ti��n thi� hi��n s�� ti��n th��i
--co�n kh�ng �u� thi� hi��n s�� ti��n kh�ng �u�
Create Proc sp_Giacombo @MaCb char(4)
As
Declare @Giacb int, @Tienthoi int,@Sotiennhan int
Set @Sotiennhan = 800000
Select @Giacb = Combo.GiaCB, @Tienthoi = @Sotiennhan - @Giacb
From Combo
Where @MaCb = Combo.MaCB 
If @Tienthoi > 0 
Begin
	Print N'Ti��n th��i : ' + cast (@Tienthoi as nvarchar(6))
End
Else
	Print N'Kh�ng �u� ti��n'
Print N'Gia� combo : ' + cast (@Giacb as nvarchar(6))

Drop Proc sp_Giacombo
Exec sp_Giacombo 'CB17'

--C��p nh��t gia� m��i pha�i l��n h�n gia� cu� cu�a th��c u��ng
Create Trigger tg_GiaNuoc
on ThucUong
For Update
As	
Begin
	Declare @Giamoi int, @Giacu int
	Select @Giamoi = GiaTU From inserted
	Select @Giacu = GiaTU From deleted	
	If (@Giacu > @Giamoi)
	Begin
	Print(N'Kh�ng ����c nho� h�n gia� cu�')
	Rollback
	End
End

Update ThucUong
Set GiaTU = 30000
Where MaTU = 'TU02'
--Insert va� update ��n vi� ti�nh
Create Trigger tg_DonvitinhMonAn
on MonAn
For Insert,Update
As	
Begin
	Declare @Somoi int
	Select @Somoi = DvtMA From inserted
	If (@Somoi < 0)
	Begin
	Print(N'��n vi� ti�nh kh�ng ����c �m')
	Rollback
	End
End

Insert into MonAn values ('MA17',N'Cha�o dinh d���ng','17',-3,100000,'LTO1')

Use QuanLyThucDon
Create Login AbcUser with password = '1234'
Create user AbcUser for login AbcUser

