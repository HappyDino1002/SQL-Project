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

insert into ThucDon values('TR01', N'TraÌ noìng', N'Thýìc Uôìng')
insert into ThucDon values('TR02', N'TraÌ traìi cây', N'Thýìc Uôìng')
insert into ThucDon values('TR03', N'TraÌ detox', N'Thýìc Uôìng')
insert into ThucDon values('ÐX01', N'Ðaì xay coì caÌ phê', N'Thýìc Uôìng')
insert into ThucDon values('ÐX02', N'Ðaì xay không caÌ phê', N'Thýìc Uôìng')
insert into ThucDon values('ÐX03', N'Nýõìc traìi cây ðaì xay', N'Thýìc Uôìng')
insert into ThucDon values('CF01', N'CaÌ Phê Pha Maìy', N'Thýìc Uôìng')
insert into ThucDon values('CF02', N'CaÌ Phê Pha Phin', N'Thýìc Uôìng')
insert into ThucDon values('BG01', N'Burger GaÌ nhoÒ', N'Moìn Ãn')
insert into ThucDon values('BG02', N'Burger GaÌ lõìn', N'Moìn Ãn')
insert into ThucDon values('BB01', N'Burger BoÌ miêìng nhoÒ', N'Moìn Ãn')
insert into ThucDon values('BB02', N'Burger BoÌ miêìng lõìn', N'Moìn Ãn')
insert into ThucDon values('BH00', N'Burger Heo', N'Món Ãn')
insert into ThucDon values('BC00', N'Burger Caì', N'Món Ãn')
insert into ThucDon values('GR01', N'GaÌ raìn truyêÌn thôìng', N'Món Ãn')
insert into ThucDon values('GR02', N'GaÌ raìn viò cay', N'Món Ãn')
insert into ThucDon values('HM00', N'PhâÌn ãn treÒ em', N'Moìn Ãn')
insert into ThucDon values('LTO1', 'Soup', N'Moìn Ãn')
insert into ThucDon values('CB01', N'Combo 1 ngýõÌi', 'Combo')
insert into ThucDon values('CB02', N'Combo 2 ngýõÌi', 'Combo')
insert into ThucDon values('CB03', N'Combo 3 ngýõÌi', 'Combo')
insert into ThucDon values('CB04', N'Combo gia ðiÌnh', 'Combo')
insert into ThucDon values('CB05', N'Combo caÌ phê chiêÌu', 'Combo')
insert into ThucDon values('CB06', N'Combo býÞa saìng', 'Combo')
insert into ThucDon values('CB07', N'Combo býÞa xêì', 'Combo')

Insert Into MonAn Values ('MA01', N'Burger gaÌ nhoÒ mayo', '1', N'1 caìi', 29000, 'BG01')
Insert Into MonAn Values ('MA02', N'Burger gaÌ lõìn mayo', '2', N'1 caìi', 56000, 'BG02')
Insert Into MonAn Values ('MA03', N'Burger gaÌ cay mayo', '3', N'1 caìi', 76000, 'BG02')
Insert Into MonAn Values ('MA04', N'Burger boÌ phô mai', '4', N'1 caìi', 36000, 'BB01')
Insert Into MonAn Values ('MA05', N'Burger BigMac', '5', N'1 caìi', 66000, 'BB01')
Insert Into MonAn Values ('MA06', N'Burger BoÌ Phô Mai Ðãòc Biêòt', '6', N'1 caìi', 46000, 'BB01')
Insert Into MonAn Values ('MA07', N'Burger BoÌ Phô mai 2 lõìp', '7', N'1 caìi', 56000, 'BB01')
Insert Into MonAn Values ('MA08', N'Burger BoÌ Phô mai 3 lõìp', '8', N'1 caìi', 76000, 'BB01')
Insert Into MonAn Values ('MA09', N'Burger BoÌ HoaÌng Gia phô mai', '9', N'1 caìi', 66000, 'BB02')
Insert Into MonAn Values ('MA10', N'Burger BoÌ HoaÌng Gia Ðãòc Biêòt', '10', N'1 caìi', 76000, 'BB02')
Insert Into MonAn Values ('MA11', N'Burger thiòt heo', '11', N'1 caìi', 29000, 'BH00')
Insert Into MonAn Values ('MA12', N'Burger Caì Tuyêìt', '12', N'1 caìi', 46000, 'BC00')
Insert Into MonAn Values ('MA13', N'PhâÌn Ãn TreÒ Em Burger', '13', N'1 caìi', 69000, 'HM00')
Insert Into MonAn Values ('MA14', N'PhâÌn Ãn TreÒ Em GaÌ Raìn', '14', N'1 caìi', 69000, 'HM00')
Insert Into MonAn Values ('MA15', N'GaÌ Raìn TruyêÌn Thôìng', '15', N'1 caìi', 36000, 'GR01')
Insert Into MonAn Values ('MA16', N'GaÌ Raìn Viò Cay', '16', N'1 caìi', 36000, 'GR02')

Insert into ThucUong Values ('TU01', N'TraÌ noìng', '1', N'1 Ly',25000, 'TR01')
Insert into ThucUong Values ('TU02', N'TraÌ vaÒi', '2', N'1 Ly',55000, 'TR02')
Insert into ThucUong Values ('TU03', N'TraÌ ÐaÌo', '3', N'1 Ly',55000, 'TR02')
Insert into ThucUong Values ('TU04', N'Detox Cam Taìo', '4', N'1 Ly',59000, 'TR03')
Insert into ThucUong Values ('TU05', N'Detox Cam Thõm', '5', N'1 Ly',59000, 'TR03')
Insert into ThucUong Values ('TU06', N'Caramel Coffee', '6', N'1 Ly',69000, 'ÐX01')
Insert into ThucUong Values ('TU07', N'Mocha Coffee', '7', N'1 Ly',69000, 'ÐX01')
Insert into ThucUong Values ('TU08', N'Caremel Cream', '8', N'1 Ly',69000, 'ÐX02')
Insert into ThucUong Values ('TU09', N'Mocha Cream', '9', N'1 Ly',69000, 'ÐX02')
Insert into ThucUong Values ('TU10', N'Kiwi Blended', '10', N'1 Ly',69000, 'ÐX03')
Insert into ThucUong Values ('TU11', N'Passion Blended', '11', N'1 Ly',69000, 'ÐX03')
Insert into ThucUong Values ('TU12', N'Capucchino', '12', N'1 Ly',55000, 'CF01')
Insert into ThucUong Values ('TU13', N'Latte', '13', N'1 Ly',55000, 'CF01')
Insert into ThucUong Values ('TU14', N'Ðen Ðaì Viêòt Nam', '14', N'1 Ly',39000, 'CF02')
Insert into ThucUong Values ('TU15', N'SýÞa Ðaì Viêòt Nam', '15', N'1 Ly',39000, 'CF02')

Insert into Combo Values ('CB11', N'Combo býÞa saìng', 29000,'1','CB06')
Insert into Combo Values ('CB12', N'Combo 1 ngýõÌi', 79000,'2','CB01')
Insert into Combo Values ('CB13', N'Combo 2 ngýõÌi gaÌ raìn', 129000,'3','CB02')
Insert into Combo Values ('CB14', N'Combo 2 ngýõÌi burger', 129000,'4','CB02')
Insert into Combo Values ('CB15', N'Combo 3 ngýõÌi gaÌ raìn', 179000,'5','CB03')
Insert into Combo Values ('CB16', N'Combo 3 ngýõÌi burger', 179000,'6','CB03')
Insert into Combo Values ('CB17', N'Combo gia ðiÌnh A', 285000,'1','CB04')
Insert into Combo Values ('CB18', N'Combo gia ðiÌnh B', 285000,'1','CB04')
Insert into Combo Values ('CB19', N'Combo caÌ phê chiêÌu', 69000,'1','CB05')
Insert into Combo Values ('CB20', N'Combo býÞa xêì', 39000,'1','CB07')

Insert into NhaCungCap Values ('CTY101', N'CTY TNHH TraÌ Thaìi Nguyên', N'881/75 T? Quang B?u, Q8, TPHCM', '0288345345', 'TR01')
Insert into NhaCungCap Values ('CTY102', N'CTY TNHH Traìi Cây Týõi Linh Tây', N'784 CMT8, Q3, TPHCM', '0284678678', 'TR02')
Insert into NhaCungCap Values ('CTY103', N'CTY TNHH Traìi Cây Týõi Linh Tây', N'784 CMT8, Q3, TPHCM', '0284678678', 'TR03')
Insert into NhaCungCap Values ('CTY104', N'CTY TNHH Syrup HoaÌng HaÌ', N'860 NguyêÞn ÐiÌnh ChiêÒu, Q1, TPHCM', '0289765765', 'ÐX01')
Insert into NhaCungCap Values ('CTY105', N'CTY TNHH Syrup HoaÌng HaÌ', N'860 NguyêÞn ÐiÌnh ChiêÒu, Q1, TPHCM', '0289765765', 'ÐX02')
Insert into NhaCungCap Values ('CTY106', N'CTY TNHH Syrup HoaÌng HaÌ', N'860 NguyêÞn ÐiÌnh ChiêÒu, Q1, TPHCM', '0289765765', 'ÐX03')
Insert into NhaCungCap Values ('CTY107', N'CTY TNHH Coffee Trung Nguyên', N'345 Ngô ÐiÌnh Nhiêòm, Q6, TPHCM', '0288732732', 'CF01')
Insert into NhaCungCap Values ('CTY108', N'CTY TNHH Coffee Trung Nguyên', N'345 Ngô ÐiÌnh Nhiêòm, Q6, TPHCM', '0288732732', 'CF02')
Insert into NhaCungCap Values ('CTY109', N'CTY TNHH Thýòc phâÒm ðông laònh 3S', N'765 TrâÌn Xuân Soaòn, Q7, TPHCM', '0284690690', 'BG01')
Insert into NhaCungCap Values ('CTY110', N'CTY TNHH Thýòc phâÒm ðông laònh 3S', N'765 TrâÌn Xuân Soaòn, Q7, TPHCM', '0284690690', 'BG02')
Insert into NhaCungCap Values ('CTY111', N'CTY TNHH BoÌ UK', N'45 TrâÌn NaÞo, Q2, TP ThuÒ Ðýìc', '0288245245', 'BB01')
Insert into NhaCungCap Values ('CTY112', N'CTY TNHH BoÌ UK', N'45 TrâÌn NaÞo, Q2, TP ThuÒ Ðýìc', '0288245245', 'BB02')
Insert into NhaCungCap Values ('CTY113', N'CTY TNHH Vissan', N'37 HaÒi Thýõòng LaÞn Ông, Q1, TPHCM', '0286894894', 'BH00')
Insert into NhaCungCap Values ('CTY114', N'CTY TNHH HaÒi saÒn Kim HôÌng', N'754 VoÞ Thiò Saìu, H.CâÌn GiõÌ, TPHCM', '0287378378', 'BC00')
Insert into NhaCungCap Values ('CTY115', N'CTY TNHH GaÌ Týõi Labourche', N'90 Lê Thiò Riêng, Q7,TPHCM', '0285672672', 'GR01')
Insert into NhaCungCap Values ('CTY116', N'CTY TNHH GaÌ Týõi Labourche', N'90 Lê Thiò Riêng, Q7,TPHCM', '0285672672', 'GR02')

Insert into NguyenLieu Values ('NL0101', N'TraÌ xanh','CTY101',400000)
Insert into NguyenLieu Values ('NL0102', N'Traìi cây cãìt sãÞn','CTY102',350000)
Insert into NguyenLieu Values ('NL0103', N'Traìi cây ðoìng hôòp','CTY103',150000)
Insert into NguyenLieu Values ('NL0104', N'Syrup caÌ phê','CTY104',420000)
Insert into NguyenLieu Values ('NL0105', N'Syrup kem','CTY105',420000)
Insert into NguyenLieu Values ('NL0106', N'Syrup traìi cây','CTY106',270000)
Insert into NguyenLieu Values ('NL0107', N'CaÌ phê Robusta','CTY107',290000)
Insert into NguyenLieu Values ('NL0108', N'CaÌ phê Arabica','CTY108',350000)
Insert into NguyenLieu Values ('NL0109', N'GaÌ chiên miêìng nhoÒ','CTY109',30000)
Insert into NguyenLieu Values ('NL0110', N'GaÌ chiên miêìng lõìn','CTY110',60000)
Insert into NguyenLieu Values ('NL0111', N'BoÌ UK miêìng nhoÒ','CTY111',80000)
Insert into NguyenLieu Values ('NL0112', N'BoÌ UK miêìng lõìn','CTY112',90000)
Insert into NguyenLieu Values ('NL0113', N'Heo chiên xuÌ','CTY113',70000)
Insert into NguyenLieu Values ('NL0114', N'Caì tuyêìt chiên xuÌ','CTY114',48000)
Insert into NguyenLieu Values ('NL0115', N'GaÌ tâÒm ýõìp truyêÌn thôìng','CTY115',90000)
Insert into NguyenLieu Values ('NL0116', N'GaÌ tâÒm ýõìp viò cay','CTY116',95000)

Insert into NhanVien Values ('ID0010',N'NguyêÞn Thiò TraÌ My',N'NýÞ',N'12 Nguy?n Duy Trinh, Q2, Tp ThuÒ Ðýìc','0337738123','MA01','TU01')
Insert into NhanVien Values ('ID0011',N'H? Th? Tú',N'NýÞ',N'T?a nhà C8, B?nh Tân, TP HCM','033852814','MA02','TU02')
Insert into NhanVien Values ('ID0012',N'Tr?n Khánh Vân',N'NýÞ',N'16/6A  Cao Th?ng, Q5, Tphcm','0933124110','MA03','TU03')
Insert into NhanVien Values ('ID0013',N'Tr?n Chí B?o','Nam',N'41/6/3C Nam K? Kh?i Ngh?a, Q1, TPHCM','037722124','MA04','TU04')
Insert into NhanVien Values ('ID0014',N'H? Th? Lam',N'NýÞ',N'29 Qu?c l? 1, D? An, B?nh Dýõng','0978741458','MA05','TU05')
Insert into NhanVien Values ('ID0015',N'Nguy?n Gia Tu?',N'NýÞ',N'122/5/1A An Dýõng Výõng, D? An, B?nh Dýõng','037748412','MA06','TU06')
Insert into NhanVien Values ('ID0016',N'Nguy?n Th? G?m',N'NýÞ',N'87/2A Nguy?n Duy Trinh, Q2, TP ThuÒ Ðýìc','033324274','MA07','TU07')
Insert into NhanVien Values ('ID0017',N'Ð? Quang Ðãng','Nam',N'H?m 156 Nguy?n Trý?ng T?, Q5, TPHCM','0938845657','MA08','TU08')
Insert into NhanVien Values ('ID0018',N'Cao M? Duyên',N'NýÞ',N'106/23 Lê H?ng Phong, Q8, TPHCM','0949578741','MA09','TU09')
Insert into NhanVien Values ('ID0019',N'Trýõng Trí Nam','Nam',N'792-794 L? Xuân Oai, Q9, TP ThuÒ Ðýìc','038847679','MA09','TU09')
Insert into NhanVien Values ('ID0020',N'NguyêÞn Thiò TraÌ My',N'NýÞ',N'115 Cao Th?ng, Q3, TPHCM','0949568721','MA10','TU10')
Insert into NhanVien Values ('ID0021',N'L?i Vãn Minh','Nam',N'12/45B H? Th? Tý, Q8, TPHCM','036661739','MA11','TU12')
Insert into NhanVien Values ('ID0022',N'Nguy?n Ð? Thùy Linh',N'NýÞ',N'Nhà C9 Lê Vãn Vi?t, Q9, TP ThuÒ Ðýìc','0984637478','MA12','TU13')

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

--Cho biêìt danh saìch nhân viên nýÞ
Select *
From NhanVien
Where GioiTinh = N'NýÞ'

--Cho biêìt tôÒng sôì hoaì ðõn cuÒa môÞi nhân viên nam
Select NhanVien.MaNV,TenNV,GioiTinh,count(HoaDon.MaHD) as TongHoaDon
From NhanVien inner join HoaDon on NhanVien.MaNV = HoaDon.MaNV
Where GioiTinh = 'Nam'
Group by NhanVien.MaNV,TenNV, GioiTinh

--Cho biêìt caìc nhân viên lâòp trên 2 hoaì ðõn
Select NhanVien.MaNV,TenNV,count(HoaDon.MaHD) as TongHoaDon
From NhanVien inner join HoaDon on NhanVien.MaNV = HoaDon.MaNV
Group by NhanVien.MaNV,TenNV
Having count(HoaDon.MaHD) > 2
Order by TongHoaDon desc

--Taòo tên ðôÌng nghiÞa NV truy xuâìt vaÌo NhanVien
Create Synonym NV
For NhanVien

Select *
From NV

--Taòo tên ðôÌng nghiÞa HD truy xuâìt vaÌo HoaDon
Create Synonym HD
For HoaDon

Select *
From HD

--Taòo Index trên thuôòc tiình tên moìn ãn cuÒa baÒng moìn ãn. So saình hiêòu quaÒ khi sýÒ duòng index vaÌ không sýÒ duòng index
Create Index Indexdemo on MonAn (TenMA)
Drop Index HoaDon.IndexHoaDon
Select *
From MonAn
Where TenMA = 'GaÌ Raìn TruyêÌn Thôìng'
Select *
From MonAn
With (index(Indexdemo))
Where TenMA = 'GaÌ Raìn TruyêÌn Thôìng'

--Taòo Index trên thuôòc tiình MaÞ hoaì ðõn cuÒa baÒng hoaì ðõn. So saình hiêòu quaÒ khi sýÒ duòng index vaÌ không sýÒ duòng index
Create Index IndexHoadon on HoaDon(MaHD)

Select *
From HoaDon
Where MaHD = 'HD117'
Select *
From HoaDon
With (Index(IndexHoaDon))
Where MaHD = 'HD117'

--Taòo vwDanhsachthucuong võìi caìc thông tin : maÞ thýìc uôìng, tên thýìc uôìng, sôì thýì týò, giaì.

Create View vwDanhsachthucuong
As
Select MaTU,TenTU,ThutuTU,GiaTU
From ThucUong

Select *
From vwDanhsachthucuong

--Taòo vwDanhsachnvtheogtinh võìi caìc thông tin : sôì lýõòng , giõìi tiình
Create View vwDanhsachnvtheogtinh
As
Select count (MaNV) as 'so luong', GioiTinh
From NhanVien
Group by GioiTinh

Select *
From vwDanhsachnvtheogtinh

--Taòo vwDanhsachnhacungcap võìi caìc thông tin : maÞ nhaÌ cung câìp,tên nhaÌ cung câìp, maÞ nguyên liêòu, tên nguyên liêòu
Create View vwDanhsachnhacungcap
As
Select NhaCungCap.MaNCC,TenNCC,MaNL,TenNL
From NhaCungCap join NguyenLieu on NhaCungCap.MaNCC = NguyenLieu.MaNCC
Group by NhaCungCap.MaNCC,TenNCC,MaNL,TenNL

Select *
From vwDanhsachnhacungcap

--Taòo vwDanhsachthucdon võìi caìc thông tin : maÞ moìn ãn, tên moìn ãn, giaì moìn ãn thuôòc nhoìm thýòc ðõn burger boÌ miêìng nhoÒ
Create View vwDanhsachthucdon
As
Select MonAn.MaMA,MonAn.TenMA, MonAn.GiaMA
From MonAn join ThucDon on MonAn.MaTD=ThucDon.MaTD
where MonAn.MaTD in (Select ThucDon.MaTD
					from ThucDon
					where NhomTD=N'Burger boÌ miêìng nhoÒ')
Drop view vwDanhsachthucdon
Select*
From vwDanhsachthucdon

-- Viêìt haÌm xem thông tin caìc loaòi thýìc uôìng ( traÒ vêÌ baÒng )
Create Function f_danhsachthucuong (@Matu char(4))
Returns table
As
Return ( Select * From ThucUong Where @Matu = ThucUong.MaTU )

Select *
from f_danhsachthucuong ('TU01')

--Viêìt ham xem giaì trung biÌnh cuÒa caìc nguyên liêòu
Create Function f_giatrungbinhNL()
Returns float
As
Begin
Return ( Select Avg(NguyenLieu.GiaNL) From NguyenLieu)
End

Select dbo.f_giatrungbinhNL() as 'Giaì trung biÌnh cuÒa nguyên liêòu'
--Xem thông tin hoaì ðõn, thông tin nhân viên võìi maÞ hoaì ðõn do ngýõÌi duÌng nhâòp
Create Proc sp_Tracuuhoadon @MaHd char(5)
As
Select HoaDon.MaHD, NhanVien.MaNV, NhanVien.TenNV, MonAn.TenMA, ThucUong.TenTU
From NhanVien join HoaDon on NhanVien.MaNV = HoaDon.MaNV join MonAn on NhanVien.MaMA = MonAn.MaMA
		join ThucUong on NhanVien.MaTU =  ThucUong.MaTU
Where @MaHd = MaHD
Group by HoaDon.MaHD, NhanVien.MaNV, NhanVien.TenNV, MonAn.TenMA, ThucUong.TenTU

Drop Proc sp_Tracuuhoadon
Exec sp_Tracuuhoadon 'HD111'

--Xem danh saìch hoaì ðõn cuÒa môòt nhân viên võìi maÞ nhân viên do ngýõÌi duÌng nhâòp
Create Proc sp_Danhsachhoadon @MaNv nchar(6)
As
Select NhanVien.MaNV,HoaDon.MaHD,HoaDon.NgayLapHD, count (HoaDon.MaHD) as SoluongHoaDon
From NhanVien inner join HoaDon on NhanVien.MaNV = HoaDon.MaNV
Where @MaNv = NhanVien.MaNV
Group by NhanVien.MaNV,HoaDon.MaHD,HoaDon.NgayLapHD

Exec sp_Danhsachhoadon 'ID0012'

--Xem Thông tin moìn ãn gôÌm thông tin nhaÌ cung câìp vaÌ thông tin trong thýòc ðõn võìi maÞ thýìc ãn do ngýõÌi duÌng nhâòp
Create Proc sp_Thongtinmonan @MaMa char(4)
As
Select MonAn.MaMA,MonAn.TenMA, ThucDon.MaTD, ThucDon.NhomTD 
,NhaCungCap.MaNCC,NhaCungCap.TenNCC, NhaCungCap.DiaChiNCC, NhaCungCap.SdtNCC
From ThucDon inner join MonAn on ThucDon.MaTD = MonAn.MaTD inner join NhaCungCap on NhaCungCap.MaTD = ThucDon.MaTD
Where @MaMa = MonAn.MaMA
Group by MonAn.MaMA,MonAn.TenMA, ThucDon.MaTD, ThucDon.LoaiTD, ThucDon.NhomTD 
,NhaCungCap.MaNCC,NhaCungCap.TenNCC, NhaCungCap.DiaChiNCC, NhaCungCap.SdtNCC

Exec sp_Thongtinmonan 'MA05'

--Xem thông tin nhân viên võìi maÞ nhân viên do ngýõÌi duÌng nhâòp
Create Proc sp_Thongtinnhanvien @MaNv char(6)
As
Select NhanVien.MaNV,NhanVien.TenNV,NhanVien.GioiTinh,NhanVien.DiaChiNV,NhanVien.DienThoaiNV
From NhanVien 
Where @MaNv = MaNV

Exec sp_Thongtinnhanvien 'ID0010'

--Xem thông tin moìn ãn hoãòc thýìc uôìng võìi maÞ nguyên liêòu do ngýõÌi duÌng nhâòp
Create Proc sp_Sanphamtunguyenlieu @MaNL char(6)
As
Select NguyenLieu.MaNL,NguyenLieu.TenNL, NhaCungCap.MaNCC, ThucDon.NhomTD
From NhaCungCap inner join NguyenLieu on NguyenLieu.MaNCC = NhaCungCap.MaNCC 
				inner join ThucDon on NhaCungCap.MaTD = ThucDon.MaTD
Where @MaNL = NguyenLieu.MaNL
Group by NguyenLieu.MaNL,NguyenLieu.TenNL, NhaCungCap.MaNCC, ThucDon.NhomTD

Exec sp_Sanphamtunguyenlieu 'NL0110'

--Xem giaì tiêÌn cuÒa 1 combo võìi maÞ combo do ngýõÌi duÌng nhâòp
--TiêÌn nhâòn týÌ khaìch laÌ 800000 , nêìu ðuÒ tiêÌn thiÌ hiêòn sôì tiêÌn thôìi
--coÌn không ðuÒ thiÌ hiêòn sôì tiêÌn không ðuÒ
Create Proc sp_Giacombo @MaCb char(4)
As
Declare @Giacb int, @Tienthoi int,@Sotiennhan int
Set @Sotiennhan = 800000
Select @Giacb = Combo.GiaCB, @Tienthoi = @Sotiennhan - @Giacb
From Combo
Where @MaCb = Combo.MaCB 
If @Tienthoi > 0 
Begin
	Print N'TiêÌn thôìi : ' + cast (@Tienthoi as nvarchar(6))
End
Else
	Print N'Không ðuÒ tiêÌn'
Print N'Giaì combo : ' + cast (@Giacb as nvarchar(6))

Drop Proc sp_Giacombo
Exec sp_Giacombo 'CB17'

--Câòp nhâòt giaì mõìi phaÒi lõìn hõn giaì cuÞ cuÒa thýìc uôìng
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
	Print(N'Không ðýõòc nhoÒ hõn giaì cuÞ')
	Rollback
	End
End

Update ThucUong
Set GiaTU = 30000
Where MaTU = 'TU02'
--Insert vaÌ update ðõn viò tiình
Create Trigger tg_DonvitinhMonAn
on MonAn
For Insert,Update
As	
Begin
	Declare @Somoi int
	Select @Somoi = DvtMA From inserted
	If (@Somoi < 0)
	Begin
	Print(N'Ðõn viò tiình không ðýõòc âm')
	Rollback
	End
End

Insert into MonAn values ('MA17',N'Chaìo dinh dýõÞng','17',-3,100000,'LTO1')

Use QuanLyThucDon
Create Login AbcUser with password = '1234'
Create user AbcUser for login AbcUser

