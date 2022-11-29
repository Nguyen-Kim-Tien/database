USE FashionStoreManager
GO

--*************************** THÊM DỮ LIỆU MẪU ******************************

EXEC insertCUSTOMER 'CUS0001', '20220112', N'Nguyễn Văn', 	N'Đức',	N'Nam',	'20020317',	N'An Phú,Thủ Đức,TPHCM'
GO
EXEC insertCUSTOMER 'CUS0002', '20220117', N'Nguyễn Đình',	N'Duy',	N'Nam',	'20020512',	N'An Phú,Thủ Đức,TPHCM'
GO
EXEC insertCUSTOMER 'CUS0003', '20220129', N'Hà Huy',	N'Nam',	N'Nam',	'20021119',	N'An Phú,Thủ Đức,TPHCM'
GO
EXEC insertCUSTOMER 'CUS0004', '20220202', N'Dương Nhật',	N'Văn',	N'Nam',	'20041103',	N'An Phú,Thủ Đức,TPHCM'
GO
EXEC insertCUSTOMER 'CUS0005', '20220210', N'Nguyễn Hà',	N'My',	N'Nữ',	'20050318',	N'An Phú,Thủ Đức,TPHCM'
GO
EXEC insertCUSTOMER 'CUS0006', '20220217', N'Trần Thị',	N'Hà',	N'Nữ',	'20010929',	N'An Phú,Thủ Đức,TPHCM'
GO
EXEC insertCUSTOMER 'CUS0007', '20220219', N'Nguyễn Huy',	N'Hùng',	N'Nam',	'20000523',	N'An Phú,Thủ Đức,TPHCM'
GO
EXEC insertCUSTOMER 'CUS0008', '20220227', N'Đào Duy',	N'Khánh',	N'Nam',	'20030109',	N'An Phú,Thủ Đức,TPHCM'
GO
EXEC insertCUSTOMER 'CUS0009', '20220301', N'Ngô Tiến',	N'Đạt',	N'Nam',	'20050716',	N'An Phú,Thủ Đức,TPHCM'
GO
EXEC insertCUSTOMER 'CUS0010', '20220306', N'Nguyễn Đình',	N'Bảo',	N'Nam',	'20020619',	N'An Phú,Thủ Đức,TPHCM'
GO
EXEC insertCUSTOMER 'CUS0011', '20220311', N'Lê Huyền',	N'Linh',	N'Nữ',	'20010311',	N'An Phú,Thủ Đức,TPHCM'
GO
EXEC insertCUSTOMER 'CUS0012', '20220314', N'Trần Bảo',	N'Châu',	N'Nữ',	'20050802',	N'An Phú,Thủ Đức,TPHCM'
GO
EXEC insertCUSTOMER 'CUS0013', '20220328', N'Lê Văn',	N'Nam',	N'Nam',	'20010210',	N'An Phú,Thủ Đức,TPHCM'
GO
EXEC insertCUSTOMER 'CUS0014', '20220407', N'Nguyễn Khánh',	N'Linh',	N'Nữ',	'20031205',	N'An Phú,Thủ Đức,TPHCM'
GO
EXEC insertCUSTOMER 'CUS0015', '20220416', N'Nguyễn Văn', 	N'Dương',	N'Nam',	'20040506',	N'An Phú,Thủ Đức,TPHCM'
GO
EXEC insertCUSTOMER 'CUS0016', '20220521', N'Nguyễn Văn', 	N'Thịnh',	N'Nam',	'20020122',	N'An Phú,Thủ Đức,TPHCM'
GO
EXEC insertCUSTOMER 'CUS0017', '20220529', N'Trần Cẩm',	N'Nguyên',	N'Nữ',	'20020319',	N'An Phú,Thủ Đức,TPHCM'
GO
EXEC insertCUSTOMER 'CUS0018', '20220609', N'Nguyễn Thị',	N'My',	N'Nữ',	'20000202',	N'An Phú,Thủ Đức,TPHCM'
GO
EXEC insertCUSTOMER 'CUS0019', '20220701', N'Nguyễn Quỳnh',	N'Phương',	N'Nữ',	'20000429',	N'An Phú,Thủ Đức,TPHCM'
GO
EXEC insertCUSTOMER 'CUS0020', '20220724', N'Lê Huyền',	N'Trân',	N'Nữ',	'20050216',	N'An Phú,Thủ Đức,TPHCM'
GO


EXEC insertCART 'CRT0001','CUS0001'
EXEC insertCART 'CRT0002','CUS0002'
EXEC insertCART 'CRT0003','CUS0003'
EXEC insertCART 'CRT0004','CUS0004'
EXEC insertCART 'CRT0005','CUS0005'
EXEC insertCART 'CRT0006','CUS0006'
EXEC insertCART 'CRT0007','CUS0007'
EXEC insertCART 'CRT0008','CUS0008'
EXEC insertCART 'CRT0009','CUS0009'
EXEC insertCART 'CRT0010','CUS0010'
EXEC insertCART 'CRT0011','CUS0011'
EXEC insertCART 'CRT0012','CUS0012'
EXEC insertCART 'CRT0013','CUS0013'
EXEC insertCART 'CRT0014','CUS0014'
EXEC insertCART 'CRT0015','CUS0015'
EXEC insertCART 'CRT0016','CUS0016'
EXEC insertCART 'CRT0017','CUS0017'
EXEC insertCART 'CRT0018','CUS0018'
EXEC insertCART 'CRT0019','CUS0019'
EXEC insertCART 'CRT0020','CUS0020'
GO

EXEC insertEMPLOYEE_Temp 'EMP0001', N'Nguyễn Văn', N'Tiến', '20021203', N'Nam', N'An Phú,Thủ Đức,TPHCM', 6000000, N'Cấp 3', '20220101', N'Nhân viên bán hàng'
EXEC insertEMPLOYEE_Temp 'EMP0002', N'Dương Nhật', N'Hào', '20031108', N'Nam', N'An Phú,Thủ Đức,TPHCM', 6000000, N'Cấp 2', '20220101', N'Nhân viên bán hàng'
EXEC insertEMPLOYEE_Temp 'EMP0003', N'Nguyễn Khánh', N'Huyền', '20020218', N'Nữ', N'An Phú,Thủ Đức,TPHCM', 9000000, N'Trung Cấp', '20220101', N'Nhân viên quản lý'
EXEC insertEMPLOYEE_Temp 'EMP0004', N'Hà Văn', N'Hạnh',	'20010119',	N'Nam',	N'An Phú,Thủ Đức,TPHCM',	7500000, N'Cấp 3',	'20220101', N'Nhân viên kế toán'
EXEC insertEMPLOYEE_Temp 'EMP0005', N'Nguyễn Quỳnh',	N'Nhi', '20000415',	N'Nữ', N'An Phú,Thủ Đức,TPHCM', 9000000, N'Trung Cấp', '20220101', N'Nhân viên quản lý'
EXEC insertEMPLOYEE_Temp 'EMP0006', N'Nguyễn Thị', N'Hà Vy', '20030317',	N'Nữ', N'An Phú,Thủ Đức,TPHCM', 6000000, N'Cấp 2', '20220101', N'Nhân viên bán hàng'
EXEC insertEMPLOYEE_Temp 'EMP0007', N'Nguyễn Văn', N'Anh', '20040317', N'Nam', N'An Phú,Thủ Đức,TPHCM', 6000000, N'Cấp 2', '20220101', N'Nhân viên bán hàng'
EXEC insertEMPLOYEE_Temp 'EMP0008', N'Nguyễn Hà', N'Anh', '20031018', N'Nữ',	N'An Phú,Thủ Đức,TPHCM',	9000000, N'Trung Cấp', '20220101', N'Nhân viên quản lý'
EXEC insertEMPLOYEE_Temp 'EMP0009', N'Hà Huy', N'Quyền',	'20001127',	N'Nam',	N'An Phú,Thủ Đức,TPHCM',	6000000, N'Cấp 2', '20220101', N'Nhân viên bán hàng'
EXEC insertEMPLOYEE_Temp 'EMP0010', N'Thái Xuân', N'Huyền', '20030409',	N'Nam',	N'An Phú,Thủ Đức,TPHCM',	6000000, N'Cấp 2', '20220101', N'Nhân viên bán hàng'
GO

EXEC insertBRANCH 'BRA0001', N'Chi nhánh Quận 1', N'Quận 1,Thủ Đức,TPHCM', 'EMP0003'
EXEC insertBRANCH 'BRA0002', N'Chi nhánh Quận 2', N'Quận 2,Thủ Đức,TPHCM', 'EMP0005'
EXEC insertBRANCH 'BRA0003', N'Chi nhánh Quận 3', N'Quận 3,Thủ Đức,TPHCM', 'EMP0008'
GO

EXEC updateEMPLOYEE_Temp 'EMP0001', 'EMP0003', 'BRA0001'
EXEC updateEMPLOYEE_Temp 'EMP0002', 'EMP0003', 'BRA0001'
EXEC updateEMPLOYEE_Temp 'EMP0003', 'EMP0003', 'BRA0001'
EXEC updateEMPLOYEE_Temp 'EMP0004', 'EMP0003', 'BRA0001'
EXEC updateEMPLOYEE_Temp 'EMP0005', 'EMP0005', 'BRA0002'
EXEC updateEMPLOYEE_Temp 'EMP0006', 'EMP0005', 'BRA0002'
EXEC updateEMPLOYEE_Temp 'EMP0007', 'EMP0005', 'BRA0002'
EXEC updateEMPLOYEE_Temp 'EMP0008', 'EMP0008', 'BRA0003'
EXEC updateEMPLOYEE_Temp 'EMP0009', 'EMP0008', 'BRA0003'
EXEC updateEMPLOYEE_Temp 'EMP0010', 'EMP0008', 'BRA0003'
GO


EXEC insertACCOUNT_CUS 'ACC0001', 'duc123',	'mt20kh07@', N'Tài khoản khách hàng', 'CUS0001'
EXEC insertACCOUNT_CUS 'ACC0002', 'duyhcmut',	'123456a@f', N'Tài khoản khách hàng', 'CUS0002'
EXEC insertACCOUNT_CUS 'ACC0003', 'nam123bku',	'abcdef11$', N'Tài khoản khách hàng	', 'CUS0003'
EXEC insertACCOUNT_CUS 'ACC0004', 'vanvan11',	'12abcdefg$', N'Tài khoản khách hàng', 'CUS0004'
EXEC insertACCOUNT_CUS 'ACC0005', 'my123abc',	'hcmfgut123&', N'Tài khoản khách hàng', 'CUS0005'
EXEC insertACCOUNT_CUS 'ACC0006', 'ha00000',	'hcmuthk11$', N'Tài khoản khách hàng',	'CUS0006'
EXEC insertACCOUNT_CUS 'ACC0007', 'hung2002',	'abch12345@v', N'Tài khoản khách hàng',	 'CUS0007'
EXEC insertACCOUNT_CUS 'ACC0008', 'khanh2004',	'mi20kh07@j', N'Tài khoản khách hàng', 'CUS0008'
EXEC insertACCOUNT_CUS 'ACC0009', 'dathcmut1',	'1234556a@t', N'Tài khoản khách hàng', 'CUS0009'
EXEC insertACCOUNT_CUS 'ACC0010', 'baohcmut22',	'abcdef11$', N'Tài khoản khách hàng', 'CUS0010'
EXEC insertACCOUNT_CUS 'ACC0011', 'linhbku123',	'12abcdefg$', N'Tài khoản khách hàng', 'CUS0011'
EXEC insertACCOUNT_CUS 'ACC0012', 'chau1a2b3c',	'hcmutt123&', N'Tài khoản khách hàng', 'CUS0012'
EXEC insertACCOUNT_CUS 'ACC0013', 'namctcx11',	'hcmuttt11$', N'Tài khoản khách hàng', 'CUS0013'
EXEC insertACCOUNT_CUS 'ACC0014', 'linh9900',	'abch12345@h', N'Tài khoản khách hàng',	 'CUS0014'
EXEC insertACCOUNT_CUS 'ACC0015', 'duong789',	'mt20kh07@u', N'Tài khoản khách hàng',  'CUS0015'
EXEC insertACCOUNT_CUS 'ACC0016', 'thinhabc',	'123456a@h', N'Tài khoản khách hàng', 'CUS0016'
EXEC insertACCOUNT_CUS 'ACC0017', 'nguyen1221',	'abcdeft11$', N'Tài khoản khách hàng', 'CUS0017'
EXEC insertACCOUNT_CUS 'ACC0018', 'my012hcmut',	'1b2abcdefg$', N'Tài khoản khách hàng', 'CUS0018'
EXEC insertACCOUNT_CUS 'ACC0019', 'phuongfa',	'hcmut1423&', N'Tài khoản khách hàng', 'CUS0019'
EXEC insertACCOUNT_CUS 'ACC0020', 'tranhihi',	'hcmut1331$', N'Tài khoản khách hàng', 'CUS0020'
EXEC insertACCOUNT_EMP 'ACC0021', 'tienphuong',	'abch12345@', N'Tài khoản nhân viên', 'EMP0001'
EXEC insertACCOUNT_EMP 'ACC0022', 'hao123',	'abhcdef11$', N'Tài khoản nhân viên', 'EMP0002'
EXEC insertACCOUNT_EMP 'ACC0023', 'huyenabc',	'124abcdefg$', N'Tài khoản nhân viên', 'EMP0003'	
EXEC insertACCOUNT_EMP 'ACC0024', 'hanh112',	'hcmut1223&', N'Tài khoản nhân viên', 'EMP0004'
EXEC insertACCOUNT_EMP 'ACC0025', 'nhihcmut',	'hcmut121$', N'Tài khoản nhân viên', 'EMP0005'	
EXEC insertACCOUNT_EMP 'ACC0026', 'vyvyvy',	'abcdyef11$', N'Tài khoản nhân viên', 'EMP0006'	
EXEC insertACCOUNT_EMP 'ACC0027', 'anhlove',	'12abddefg$', N'Tài khoản nhân viên', 'EMP0007'
EXEC insertACCOUNT_EMP 'ACC0028', 'anhlofichill',	'hcmyut123&', N'Tài khoản nhân viên', 'EMP0008'
EXEC insertACCOUNT_EMP 'ACC0029', 'quyenquyen',	'ehcmut11$', N'Tài khoản nhân viên', 'EMP0009'	
EXEC insertACCOUNT_EMP 'ACC0030', 'huyen12341',	'13abcdefg$', N'Tài khoản nhân viên', 'EMP0010'

GO


EXEC insertCUSTOMER_PHONE 'CUS0001', '0923236277'
EXEC insertCUSTOMER_PHONE 'CUS0001', '0925221877'
EXEC insertCUSTOMER_PHONE 'CUS0002', '0927207477'
EXEC insertCUSTOMER_PHONE 'CUS0002', '0929193077'
EXEC insertCUSTOMER_PHONE 'CUS0003', '0931178677'
EXEC insertCUSTOMER_PHONE 'CUS0004', '0933164277'
EXEC insertCUSTOMER_PHONE 'CUS0004', '0935149877'
EXEC insertCUSTOMER_PHONE 'CUS0005', '0937135477'
EXEC insertCUSTOMER_PHONE 'CUS0006', '0939121077'
EXEC insertCUSTOMER_PHONE 'CUS0006', '0941106677'
EXEC insertCUSTOMER_PHONE 'CUS0007', '0943092277'
EXEC insertCUSTOMER_PHONE 'CUS0008', '0945077877'
EXEC insertCUSTOMER_PHONE 'CUS0009', '0947063477'
EXEC insertCUSTOMER_PHONE 'CUS0009', '0949049077'
EXEC insertCUSTOMER_PHONE 'CUS0010', '0951034677'
EXEC insertCUSTOMER_PHONE 'CUS0011', '0953020277'
EXEC insertCUSTOMER_PHONE 'CUS0012', '0955005877'
EXEC insertCUSTOMER_PHONE 'CUS0013', '0956991477'
EXEC insertCUSTOMER_PHONE 'CUS0014', '0958977077'
EXEC insertCUSTOMER_PHONE 'CUS0015', '0960962677'
EXEC insertCUSTOMER_PHONE 'CUS0015', '0962948277'
EXEC insertCUSTOMER_PHONE 'CUS0015', '0964933877'
EXEC insertCUSTOMER_PHONE 'CUS0016', '0966919477'
EXEC insertCUSTOMER_PHONE 'CUS0017', '0968905077'
EXEC insertCUSTOMER_PHONE 'CUS0017', '0970890677'
EXEC insertCUSTOMER_PHONE 'CUS0018', '0972876277'
EXEC insertCUSTOMER_PHONE 'CUS0019', '0974861877'
EXEC insertCUSTOMER_PHONE 'CUS0019', '0976847477'
EXEC insertCUSTOMER_PHONE 'CUS0020', '0978833077'
GO


EXEC insertCUSTOMER_EMAIL 'CUS0001', 'cus01@gmail.com'
EXEC insertCUSTOMER_EMAIL 'CUS0002', 'cus02@gmail.com'
EXEC insertCUSTOMER_EMAIL 'CUS0003', 'cus03@gmail.com'
EXEC insertCUSTOMER_EMAIL 'CUS0004', 'cus04@gmail.com'
EXEC insertCUSTOMER_EMAIL 'CUS0005', 'cus05@gmail.com'
EXEC insertCUSTOMER_EMAIL 'CUS0006', 'cus06@gmail.com'
EXEC insertCUSTOMER_EMAIL 'CUS0007', 'cus07@gmail.com'
EXEC insertCUSTOMER_EMAIL 'CUS0008', 'cus08@gmail.com'
EXEC insertCUSTOMER_EMAIL 'CUS0009', 'cus09@gmail.com'
EXEC insertCUSTOMER_EMAIL 'CUS0010', 'cus10@gmail.com'
EXEC insertCUSTOMER_EMAIL 'CUS0011', 'cus11@gmail.com'
EXEC insertCUSTOMER_EMAIL 'CUS0012', 'cus12@gmail.com'
EXEC insertCUSTOMER_EMAIL 'CUS0013', 'cus13@gmail.com'
EXEC insertCUSTOMER_EMAIL 'CUS0014', 'cus14@gmail.com'
EXEC insertCUSTOMER_EMAIL 'CUS0015', 'cus15@gmail.com'
EXEC insertCUSTOMER_EMAIL 'CUS0016', 'cus16@gmail.com'
EXEC insertCUSTOMER_EMAIL 'CUS0017', 'cus17@gmail.com'
EXEC insertCUSTOMER_EMAIL 'CUS0018', 'cus18@gmail.com'
EXEC insertCUSTOMER_EMAIL 'CUS0019', 'cus19@gmail.com'
EXEC insertCUSTOMER_EMAIL 'CUS0020', 'cus20@gmail.com' 
GO


EXEC insertMATERIAL 'MAT0001', 'cotton'
EXEC insertMATERIAL 'MAT0002', 'kaki'
EXEC insertMATERIAL 'MAT0003', 'jean'
EXEC insertMATERIAL 'MAT0004', 'len'
EXEC insertMATERIAL 'MAT0005', 'kate'
GO


EXEC insertMATERIAL_CHARACTERISTIC 'MAT0001', N'Nhẹ, bền, co dãn cao'
EXEC insertMATERIAL_CHARACTERISTIC 'MAT0001', N'Đẹp, giá cả rẻ'
EXEC insertMATERIAL_CHARACTERISTIC 'MAT0002', N'Bề mặt thô cứng, ít nhăn'
EXEC insertMATERIAL_CHARACTERISTIC 'MAT0003', N'Bền, chắc, ko bị co rút'
EXEC insertMATERIAL_CHARACTERISTIC 'MAT0004', N'Giữ nhiệt, mềm mại'
EXEC insertMATERIAL_CHARACTERISTIC 'MAT0005', N'Không phai màu'
GO


EXEC insertCATEGORY 'CAT0001', 'TANKTOP'
EXEC insertCATEGORY 'CAT0002', 'SHOE'
EXEC insertCATEGORY 'CAT0003', 'PANT'
EXEC insertCATEGORY 'CAT0004', 'POLO'
EXEC insertCATEGORY 'CAT0005', 'WINTER'
EXEC insertCATEGORY 'CAT0006', 'SHORT'
GO


EXEC insertEMPLOYEE_PHONE 'EMP0001', '0934789123'
EXEC insertEMPLOYEE_PHONE 'EMP0001', '0922123789'
EXEC insertEMPLOYEE_PHONE 'EMP0001', '0909458455'
EXEC insertEMPLOYEE_PHONE 'EMP0002', '0896793121'
EXEC insertEMPLOYEE_PHONE 'EMP0002', '0884127787'
EXEC insertEMPLOYEE_PHONE 'EMP0003', '0871462453'
EXEC insertEMPLOYEE_PHONE 'EMP0004', '0858797119'
EXEC insertEMPLOYEE_PHONE 'EMP0004', '0846131785'
EXEC insertEMPLOYEE_PHONE 'EMP0005', '0833466451'
EXEC insertEMPLOYEE_PHONE 'EMP0006', '0820801117'
EXEC insertEMPLOYEE_PHONE 'EMP0006', '0808135783'
EXEC insertEMPLOYEE_PHONE 'EMP0007', '0795470449'
EXEC insertEMPLOYEE_PHONE 'EMP0008', '0782805115'
EXEC insertEMPLOYEE_PHONE 'EMP0009', '0770139781'
EXEC insertEMPLOYEE_PHONE 'EMP0010', '0757474447'
EXEC insertEMPLOYEE_PHONE 'EMP0010', '0744809113'
GO


EXEC insertEMPLOYEE_EMAIL 'EMP0001', 'emp1@gmail.com'
EXEC insertEMPLOYEE_EMAIL 'EMP0002', 'emp2@gmail.com'
EXEC insertEMPLOYEE_EMAIL 'EMP0003', 'emp1@gmail.com'
EXEC insertEMPLOYEE_EMAIL 'EMP0004', 'emp2@gmail.com'
EXEC insertEMPLOYEE_EMAIL 'EMP0005', 'emp1@gmail.com'
EXEC insertEMPLOYEE_EMAIL 'EMP0006', 'emp2@gmail.com'
EXEC insertEMPLOYEE_EMAIL 'EMP0007', 'emp1@gmail.com'
EXEC insertEMPLOYEE_EMAIL 'EMP0008', 'emp2@gmail.com'
EXEC insertEMPLOYEE_EMAIL 'EMP0009', 'emp1@gmail.com'
EXEC insertEMPLOYEE_EMAIL 'EMP0010', 'emp2@gmail.com'
GO


EXEC insertSHOWROOM_BRANCH 'BRA0001'	--Cửa hàng offline
EXEC insertSHOWROOM_BRANCH 'BRA0002'	--Cửa hàng offline
GO


EXEC insertONLINE_BRANCH 'BRA0003'		--Cửa hàng online
GO


EXEC insertFURNITURE 'FUR0001',	'BRA0002', 4, N'Tủ đồ nhân viên'
EXEC insertFURNITURE 'FUR0002',	'BRA0002', 5, N'Bàn làm việc'
EXEC insertFURNITURE 'FUR0001',	'BRA0001', 4, N'Tủ đồ nhân viên'
EXEC insertFURNITURE 'FUR0003',	'BRA0002', 18, N'Ghế làm việc'
EXEC insertFURNITURE 'FUR0002',	'BRA0001', 5, N'Bàn làm việc'
EXEC insertFURNITURE 'FUR0003',	'BRA0001', 20, N'Ghế làm việc'
EXEC insertFURNITURE 'FUR0004',	'BRA0002', 3, N'Máy in'
EXEC insertFURNITURE 'FUR0004',	'BRA0001', 2, N'Máy in'
GO



EXEC insert_ORDER 'ORD0001', N'Đơn hàng 1', '20221129', '12:12', 'CUS0001', 'EMP0001'	-- đơn hàng offline
EXEC insert_ORDER 'ORD0002', N'Đơn hàng 2', '20221129', '12:12', 'CUS0002', 'EMP0001'	-- đơn hàng offline
EXEC insert_ORDER 'ORD0003', N'Đơn hàng 3', '20221129', '12:12', 'CUS0003', 'EMP0001'	-- đơn hàng offline
EXEC insert_ORDER 'ORD0004', N'Đơn hàng 4', '20221129', '12:12', 'CUS0004', 'EMP0002'	-- đơn hàng offline
EXEC insert_ORDER 'ORD0005', N'Đơn hàng 5', '20221129', '12:12', 'CUS0005', 'EMP0002'	-- đơn hàng offline
EXEC insert_ORDER 'ORD0006', N'Đơn hàng 6', '20221129', '12:12', 'CUS0006', 'EMP0002'	-- đơn hàng offline
EXEC insert_ORDER 'ORD0007', N'Đơn hàng 7', '20221129', '12:12', 'CUS0007', 'EMP0002'	-- đơn hàng offline
EXEC insert_ORDER 'ORD0008', N'Đơn hàng 8', '20221129', '12:12', 'CUS0008', 'EMP0004'	-- đơn hàng offline
EXEC insert_ORDER 'ORD0009', N'Đơn hàng 9', '20221129', '12:12', 'CUS0009', 'EMP0007'	-- đơn hàng offline
EXEC insert_ORDER 'ORD0010', N'Đơn hàng10', '20221129', '12:12', 'CUS0010', 'EMP0007'	-- đơn hàng offline
EXEC insert_ORDER 'ORD0011', N'Đơn hàng11', '20221129', '12:12', 'CUS0010', 'EMP0009'	-- đơn hàng online
EXEC insert_ORDER 'ORD0012', N'Đơn hàng12', '20221129', '12:12', 'CUS0010', 'EMP0009'	-- đơn hàng online
EXEC insert_ORDER 'ORD0013', N'Đơn hàng13', '20221129', '12:12', 'CUS0010', 'EMP0009'	-- đơn hàng online
EXEC insert_ORDER 'ORD0014', N'Đơn hàng14', '20221129', '12:12', 'CUS0010', 'EMP0009'	-- đơn hàng online
EXEC insert_ORDER 'ORD0015', N'Đơn hàng15', '20221129', '12:12', 'CUS0010', 'EMP0009'	-- đơn hàng online
GO


EXEC insertORDER_BRANCH 'ORD0001', 'BRA0001'
EXEC insertORDER_BRANCH 'ORD0002', 'BRA0001'
EXEC insertORDER_BRANCH 'ORD0003', 'BRA0001'
EXEC insertORDER_BRANCH 'ORD0004', 'BRA0001'
EXEC insertORDER_BRANCH 'ORD0005', 'BRA0001'
EXEC insertORDER_BRANCH 'ORD0006', 'BRA0001'
EXEC insertORDER_BRANCH 'ORD0007', 'BRA0001'
EXEC insertORDER_BRANCH 'ORD0008', 'BRA0001'
EXEC insertORDER_BRANCH 'ORD0009', 'BRA0002'
EXEC insertORDER_BRANCH 'ORD0010', 'BRA0002'
GO


EXEC insertPROMOTION 'PRO0001', N'Khuyễn mãi 1', N'Loại 1',	'20221101',	'20221231', 600000,	110000, 15, 20, N'Điều kiện 1', N'Quà tặng 1', 'BRA0001'
EXEC insertPROMOTION 'PRO0002', N'Khuyến mãi 2', N'Loại 2',	'20221101',	'20221231', 300000,	60000, 10, 20, N'Điều kiện 2', N'Quà tặng 2', 'BRA0001'
EXEC insertPROMOTION 'PRO0003', N'Khuyến mãi 3', N'Loại 3',	'20221101',	'20221231', 100000,	20000, 5, 20, N'Điều kiện 3', N'Quà tặng 3', 'BRA0002'
EXEC insertPROMOTION 'PRO0004', N'Khuyến mãi 4', N'Loại 4',	'20221101',	'20221231', 800000,	160000, 15, 20, N'Điều kiện 4', N'Quà tặng 4', 'BRA0003'
EXEC insertPROMOTION 'PRO0005', N'Khuyến mãi 5', N'Loại 5',	'20221101',	'20221231', 300000,	50000, 10, 20, N'Điều kiện 5', N'Quà tặng 5', 'BRA0003'
EXEC insertPROMOTION 'PRO0006', N'Khuyến mãi 6', N'Loại 6',	'20221101',	'20221231', 200000,	20000, 5, 20, N'Điều kiện 6', N'Quà tặng 6', 'BRA0003'
GO



EXEC insertSHIPPING 'SHI0001',   N'Đơn vị vận chuyển 1'
EXEC insertSHIPPING 'SHI0002',   N'Đơn vị vận chuyển 2'
GO

--comment
EXEC insertORDER_ONLINE 'ORD0011', 'BRA0003', N'An Phú,Thủ Đức,TPHCM',  20000, '20220304', '12:12', N'Phương tiện 1',  N'Lái xe 1',   N'Người nhận 1', '0923236277',  'SHI0001'
EXEC insertORDER_ONLINE 'ORD0012', 'BRA0003', N'An Phú,Thủ Đức,TPHCM',  20000, '20220304', '12:12', N'Phương tiện 2',  N'Lái xe 2',   N'Người nhận 2', '0923236277',  'SHI0002'
EXEC insertORDER_ONLINE 'ORD0013', 'BRA0003', N'An Phú,Thủ Đức,TPHCM',  20000, '20220304', '12:12', N'Phương tiện 3',  N'Lái xe 3',   N'Người nhận 3', '0923236277',  'SHI0001'
EXEC insertORDER_ONLINE 'ORD0014', 'BRA0003', N'An Phú,Thủ Đức,TPHCM',  20000, '20220304', '12:12', N'Phương tiện 4',  N'Lái xe 4',   N'Người nhận 4', '0923236277',  'SHI0001'
EXEC insertORDER_ONLINE 'ORD0015', 'BRA0003', N'An Phú,Thủ Đức,TPHCM',  20000, '20220304', '12:12', N'Phương tiện 5',  N'Lái xe 5',   N'Người nhận 5', '0923236277',  'SHI0002'
GO


EXEC insertSUPPLIER 'SUP0001', N'Nhà cung cấp 1', N'Thủ Đức, TPHCM'
EXEC insertSUPPLIER 'SUP0002', N'Nhà cung cấp 2', N'Thủ Đức, TPHCM'
GO


EXEC insertSUPPLIER_PHONE 'SUP0001', '0927345678'
EXEC insertSUPPLIER_PHONE 'SUP0001', '0923333789'
EXEC insertSUPPLIER_PHONE 'SUP0002', '0927888456'
GO

EXEC insertPRODUCT
    'PRD0001',
    N'Áo Polo nam Pique Cotton USA thấm hút tối đa (kẻ sọc) - Vàng sọc đen          ',
    N'Hãng sản xuất 1',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/August2022/DSC05323-copy_51.jpg',
    40000.000,
  	60000.000,
    'CAT0004','SUP0001'

EXEC insertPRODUCT
    'PRD0002',
    N'Áo Polo nam Pique Cotton USA thấm hút tối đa (kẻ sọc) - Trắng sọc xanh ',
    N'Hãng sản xuất 1',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/August2022/DSC05295-copy_73.jpg',
    40000.000,
  	60000.000,
    'CAT0004','SUP0001'
     
EXEC insertPRODUCT
    'PRD0003',
    N'Áo Polo nam Pique Cotton USA thấm hút tối đa (kẻ sọc) - Đen sọc vàng          ',
    N'Hãng sản xuất 1',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/August2022/DSC04936-copy-1.jpg',
    40000.000,
  	60000.000,
    'CAT0004','SUP0001'
     
EXEC insertPRODUCT
    'PRD0004',
    N'Áo Polo nam Pique Cotton USA thấm hút tối đa (kẻ sọc) - Đen sọc xanh          ',
    N'Hãng sản xuất 1',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/August2022/USA_den_soc_xanh_bien_2.jpg',
    40000.000,
  	60000.000,
    'CAT0004','SUP0001'
     
EXEC insertPRODUCT
    'PRD0005',
    N'Áo Polo nam Pique Cotton USA thấm hút tối đa (kẻ sọc) - Rêu sọc trắng          ',
    N'Hãng sản xuất 1',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/August2022/DSC04847-copy-1.jpg',
    40000.000,
  	60000.000,
    'CAT0004','SUP0001'
     
EXEC insertPRODUCT
    'PRD0006',
    N'Áo Polo nam Pique Cotton USA thấm hút tối đa (kẻ sọc) - Xanh da trời sọc xanh đen          ',
    N'Hãng sản xuất 1',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/August2022/DSC05191-copy_89.jpg',
    40000.000,
  	60000.000,
    'CAT0004','SUP0001'
     
EXEC insertPRODUCT
    'PRD0007',
    N'Áo Polo nam Pique Cotton USA thấm hút tối đa (kẻ sọc) - Xanh đậm sọc xanh          ',
    N'Hãng sản xuất 1',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/August2022/DSC05242-copy.jpg',
    40000.000,
  	60000.000,
    'CAT0004','SUP0001'
     
EXEC insertPRODUCT
    'PRD0008',
    N'Áo Polo nam Pique Cotton USA thấm hút tối đa (trơn) - Xanh rêu          ',
    N'Hãng sản xuất 1',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/September2022/USA_REU_1.jpg',
    40000.000,
    60000.000,
    'CAT0004','SUP0001'
     
EXEC insertPRODUCT
    'PRD0009',
    N'Áo Polo nam Pique Cotton USA thấm hút tối đa (trơn) - Xanh Navy          ',
    N'Hãng sản xuất 1',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/September2022/polousanavyy_2.jpg',
    40000.000,
  	60000.000,
    'CAT0004','SUP0001'
     
EXEC insertPRODUCT
    'PRD0010',
    N'Áo Polo nam Pique Cotton USA thấm hút tối đa (trơn) - Đen          ',
    N'Hãng sản xuất 1',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/August2022/DSC04797-copy-1.jpg',
    40000.000,
  	60000.000,
    'CAT0004','SUP0001'
     
EXEC insertPRODUCT
    'PRD0011',
    N'Áo Polo nam công nghệ khử mùi Anti-Smell - Trắng          ',
    N'Hãng sản xuất 1',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/April2022/polo-anti-trang-copy.jpg',
    40000.000,
  	60000.000,
  	'CAT0004','SUP0001'
  
EXEC insertPRODUCT
    'PRD0012',
    N'Áo Polo nam công nghệ khử mùi Anti-Smell - Xanh Navy          ',
    N'Hãng sản xuất 1',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/May2022/polo-anti-navy_15_copy.jpg',
    40000.000,
  	60000.000,
  	'CAT0004','SUP0001'
  
EXEC insertPRODUCT
    'PRD0013',
    N'Áo Polo nam công nghệ khử mùi Anti-Smell - Đen          ',
    N'Hãng sản xuất 1',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/May2022/polo-anti-navy_15den.jpg',
    40000.000,
  	60000.000,
  	'CAT0004','SUP0001' 

EXEC insertPRODUCT
    'PRD0020',
    N'Áo sơ mi nam dài tay Café-DriS khử mùi hiệu quả - Xám nhạt          ',
    N'HÃNG SẢN XUẤT 1',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/May2022/somicfxam4.jpg',
    40000.000,
  	60000.000,  
 	'CAT0004','SUP0001'

EXEC insertPRODUCT
    'PRD0021',
    N'Áo sơ mi nam dài tay Café-DriS khử mùi hiệu quả - Xanh Aqua          ',
    N'HÃNG SẢN XUẤT 1',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/May2022/somicfaqua2_48.jpg',
    40000.000,
  	60000.000,
    'CAT0004','SUP0001'
  
EXEC insertPRODUCT
    'PRD0022',
    N'Áo sơ mi nam dài tay Café-DriS khử mùi hiệu quả - Trắng          ',
    N'HÃNG SẢN XUẤT 1',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/November2021/cae28.jpg',
    40000.000,
  	60000.000,
  	'CAT0004','SUP0001'
  
EXEC insertPRODUCT
    'PRD0023',
    N'Áo sơ mi nam dài tay Café-DriS khử mùi hiệu quả - Xanh nhạt          ',
    N'HÃNG SẢN XUẤT 1',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/November2021/2uIMG_1077_copy.jpg',
    40000.000,
  	60000.000,
  	'CAT0004','SUP0001'
    
EXEC insertPRODUCT
    'PRD0024',
    N'Outlet - Áo Sơ mi nam Excool Limited ngắn tay chui đầu - Xám          ',
    N'HÃNG SẢN XUẤT 1',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/August2022/DSC00703_copy.jpg',
    40000.000,
  	60000.000,
 	 'CAT0004','SUP0001'
    
EXEC insertPRODUCT
    'PRD0025',
    N'Outlet - Áo Sơ mi nam Excool Limited ngắn tay chui đầu - Đen          ',
    N'HÃNG SẢN XUẤT 1',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/June2022/DSC00773_copy.jpg',
    40000.000,
  	60000.000,
  	'CAT0004','SUP0001'
    
EXEC insertPRODUCT
    'PRD0026',
    N'Outlet - Áo Sơ mi nam Excool Limited ngắn tay chui đầu - Xanh Navy          ',
    N'HÃNG SẢN XUẤT 1',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/June2022/DSC00579_copy.jpg',
    40000.000,
  	60000.000,
  	'CAT0004','SUP0001'
    
EXEC insertPRODUCT
    'PRD0027',
    N'Outlet - Áo Polo thể thao nam ProMax-S2 thoáng khí - Neon          ',
    N'HÃNG SẢN XUẤT 1',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/May2022/neons2pro1.jpg',
    40000.000,
  	60000.000,
  	'CAT0004','SUP0001'
  
EXEC insertPRODUCT
    'PRD0028',
    N'Outlet - Áo Polo thể thao nam ProMax-S2 thoáng khí - Đen          ',
    N'HÃNG SẢN XUẤT 1',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/May2022/Pro_s2_den.jpg',
    40000.000,
  	60000.000,
  	'CAT0004','SUP0001'
    
  
EXEC insertPRODUCT
    'PRD0029',
    N'Outlet - Áo Polo thể thao nam ProMax-S2 thoáng khí - Cam          ',
    N'HÃNG SẢN XUẤT 1',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/August2022/_MG_2652_(1).jpg',
    40000.000,
  	60000.000,
  	'CAT0004','SUP0001'
  
EXEC insertPRODUCT
    'PRD0030',
    N'Outlet - Áo Polo thể thao nam ProMax-S2 thoáng khí - Xanh aqua          ',
    N'HÃNG SẢN XUẤT 1',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/May2022/DSC01546_copyu.jpg',
    40000.000,
  	60000.000,
  	'CAT0004','SUP0001'
    
  
EXEC insertPRODUCT
    'PRD0031',
    N'Outlet - Áo sơ mi nam dài tay Bamboo Ex-Soft kháng khuẩn màu xanh DBlue          ',
    N'HÃNG SẢN XUẤT 1',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/November2021/uSomi_blue-071_copy.jpg',
    40000.000,
  	60000.000,
  	'CAT0004','SUP0001'
    
  
EXEC insertPRODUCT
    'PRD0032',
    N'Outlet - Áo sơ mi nam dài tay Bamboo Ex-Soft kháng khuẩn màu đen          ',
    N'HÃNG SẢN XUẤT 1',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/November2021/uSomi_den-054_copy.jpg',
    40000.000,
  	60000.000,
  	'CAT0004','SUP0001'
    
EXEC insertPRODUCT
    'PRD0033',
    N'Áo Polo nam thể thao thoáng khí, nhuộm sạch Cleandye - Trắng          ',
    N'HÃNG SẢN XUẤT 1',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/May2022/DSC05252_copy.jpg',
    40000.000,
  	60000.000,
  	'CAT0004','SUP0001'
    
EXEC insertPRODUCT
    'PRD0034',
    N'Áo Polo nam thể thao thoáng khí, nhuộm sạch Cleandye - Đen          ',
    N'HÃNG SẢN XUẤT 1',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/May2022/DSC05220_copy.jpg',
    40000.000,
  	60000.000,
  	'CAT0004','SUP0001'
    
EXEC insertPRODUCT
    'PRD0035',
    N'Áo Polo nam thể thao thoáng khí, nhuộm sạch Cleandye - Xanh bóng đêm          ',
    N'HÃNG SẢN XUẤT 1',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/May2022/12DSC05091_copy.jpg',
    40000.000,
  	60000.000,
    'CAT0004','SUP0001'
  
EXEC insertPRODUCT
    'PRD0036',
    N'Áo Polo nam thể thao thoáng khí, nhuộm sạch Cleandye - Xanh Aqua          ',
    N'HÃNG SẢN XUẤT 1',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/May2022/DSC05372_copy.jpg',
    40000.000,
  	60000.000,
    'CAT0004','SUP0001'
  
EXEC insertPRODUCT
    'PRD0037',
    N'Áo Polo nam Excool - Xanh lá nhạt          ',
    N'HÃNG SẢN XUẤT 1',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/September2022/untitled-5_32.jpg',
    40000.000,
  	60000.000, 
  	'CAT0004','SUP0001'
  
EXEC insertPRODUCT
    'PRD0038',
    N'Áo Polo nam Excool - Xanh bạc hà          ',
    N'HÃNG SẢN XUẤT 1',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/September2022/xanh-bac-ha-2.jpg',
    40000.000,
 	60000.000,
  	'CAT0004','SUP0001'
    
EXEC insertPRODUCT
    'PRD0039',
    N'Áo Polo nam Excool - Xanh Navy          ',
    N'HÃNG SẢN XUẤT 1',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/November2021/BT5A9235f_46.jpg',
    40000.000,
  	60000.000,
  	'CAT0004','SUP0001'
    
EXEC insertPRODUCT
    'PRD0040',
    N'Áo Polo nam Excool - Rêu          ',
    N'HÃNG SẢN XUẤT 1',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/August2022/xanh_reu_ex_1.jpg',
    40000.000,
  	60000.000,
  	'CAT0004','SUP0001'
    
EXEC insertPRODUCT
    'PRD0041',
    N'Áo Polo nam Excool - Trắng          ',
    N'HÃNG SẢN XUẤT 1',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/November2021/aBT5A8965.jpg',
    40000.000,
  	60000.000,
  	'CAT0004','SUP0001'
  
EXEC insertPRODUCT
    'PRD0042',
    N'Áo Polo nam Excool - Đen          ',
    N'HÃNG SẢN XUẤT 1',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/November2021/BT5A9094_copy.jpg',
    40000.000,
  	60000.000,
  	'CAT0004','SUP0001'
    
EXEC insertPRODUCT
    'PRD0043',
    N'Outlet - Áo Polo Pique Fitsoft phiên bản kháng khuẩn đặc biệt - Xám          ',
    N'HÃNG SẢN XUẤT 1',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/November2021/IMG_1863_65_82_copya.jpg',
    40000.000,
  	60000.000,
  	'CAT0004','SUP0001'
    
EXEC insertPRODUCT
    'PRD0044',
    N'Outlet - Áo Polo Pique Fitsoft phiên bản kháng khuẩn đặc biệt - Đen          ',
    N'HÃNG SẢN XUẤT 1',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/November2021/IMG_1829_copy_90_copyvv.jpg',
    40000.000,
  	60000.000,
  	'CAT0004','SUP0001'
    
EXEC insertPRODUCT
    'PRD0045',
    N'Outlet - Áo Polo Pique Fitsoft phiên bản kháng khuẩn đặc biệt - Xanh Navy          ',
    N'HÃNG SẢN XUẤT 1',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/November2021/IMG_1849_copy_11_copyvv.jpg',
    40000.000,
  	60000.000,
  	'CAT0004','SUP0001'
    
EXEC insertPRODUCT
    'PRD0046',
    N'Áo Polo nam Café - khử mùi hiệu quả - Xanh aqua          ',
    N'HÃNG SẢN XUẤT 1',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/May2022/cafe_xanh_moi_1.jpg',
    40000.000,
  	60000.000,
  	'CAT0004','SUP0001'
    
EXEC insertPRODUCT
    'PRD0047',
    N'Áo Polo nam Café - khử mùi hiệu quả - Trắng          ',
    N'HÃNG SẢN XUẤT 1',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/May2022/Cafe_trang_1.jpg',
    40000.000,
  	60000.000,
  	'CAT0004','SUP0001'
  
EXEC insertPRODUCT
    'PRD0048',
    N'Áo Polo nam Café - khử mùi hiệu quả - Xám đậm          ',
    N'HÃNG SẢN XUẤT 1',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/May2022/Cafe_xam.jpg',
    40000.000,
  	60000.000,
  	'CAT0004','SUP0001'
  
EXEC insertPRODUCT
    'PRD0049',
    N'Áo Polo nam Café - khử mùi hiệu quả - Đỏ          ',
    N'HÃNG SẢN XUẤT 1',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/November2021/IMG_5641.jpg',
    40000.000,
  	60000.000,
  	'CAT0004','SUP0001'
  
EXEC insertPRODUCT 
	'PRD0050',N'Quần nam Printed Short chống UV (túi sau có khóa) - Camo Xanh Navy',
	'Hãng Sản xuất 2', 
	'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/October2022/quan-printed-short-camo-xanh-navy8.jpg',
	300000,
	400000   ,
	 'CAT0006', 'SUP0001'

EXEC insertPRODUCT  
	'PRD0051',
  	N'Quần Short Nam New French Terry V2 (thêu logo) - Xám đậm',
 	N'Hãng Sản xuất 2',
  	'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/September2022/terry_shorts_xam_dam_1.jpg',
	300000,
	400000   ,
	'CAT0006','SUP0001'

EXEC insertPRODUCT   
	'PRD0052',
	N'Quần short nam thể thao Movement 7 co giãn - Xanh rêu',
	N'Hãng Sản xuất 2',
	'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/August2022/DSC01693-copymovexanh_6.jpg',
	300000,
	400000   ,
	'CAT0006','SUP0001'

EXEC insertPRODUCT  
	'PRD0053',
	N'Quần Short Outdoor vải Nylon 7 Co giãn (có túi sau) - Tím than',
	N'Hãng Sản xuất 2',
	'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/May2022/outdor23_2.jpg',
	300000,
	400000   ,
	 'CAT0006', 'SUP0001'

EXEC insertPRODUCT  
	'PRD0054',
	N'Quần short nam thể thao ProMax-S1 thoáng khí - Xanh Aqua',
	N'Hãng Sản xuất 2',
	'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/May2022/DSC05731-copy.jpg',
	300000,
	400000   ,
	 'CAT0006', 'SUP0001'

EXEC insertPRODUCT   
	'PRD0055',
	N'Quần shorts nam thể thao Recycle 7 V2 (túi sau có khóa kéo) - Xanh navy',
	N'Hãng Sản xuất 2',
	'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/October2022/quan-short-recycle-7inch-v2-mau-xanh-navy2.jpg',
	300000,
	400000   ,
	 'CAT0006', 'SUP0001'

EXEC insertPRODUCT
	'PRD0056',
	N'Quần short nam thể thao Recycle 5 thoáng khí - Xanh ngọc',
	N'Hãng Sản xuất 2',
	'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/October2022/quan-short-recycle-5-inch-xanh-ngoc5.jpg',
	300000,
	400000   ,
	 'CAT0006', 'SUP0001'

EXEC insertPRODUCT
	'PRD0057',
	N'Quần short nam thể thao Movement 5 co giãn - Xanh rêu',
	N'Hãng Sản xuất 2',
	'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/July2022/_CMM2015.jpg',
	300000,
	400000   ,
	 'CAT0006', 'SUP0001'

EXEC insertPRODUCT  
	'PRD0058',
	N'Quần short nam thể thao 5 New Ultra (có xẻ gấu ngắn & túi khóa sau) - Xám xanh',
	N'Hãng Sản xuất 2',
	'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/May2022/DSC01382-copy.jpg',
	300000,
	400000   ,
	 'CAT0006', 'SUP0001'

EXEC insertPRODUCT   
	'PRD0059',
	N'Quần short nam thể thao 7” Function - Đen',
	N'Hãng Sản xuất 2',
	'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/August2022/2.jpg',
	300000,
	400000   ,
	 'CAT0006', 'SUP0001'

EXEC insertPRODUCT   
	'PRD0060',
	N'Quần nam Printed Short chống UV (túi sau có khóa) - Camo Xanh bóng đêm',
	N'Hãng Sản xuất 2',
	'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/October2022/quan-printed-short-camo-xanh-bong-dem6.jpg',
	300000,
	400000   ,
	 'CAT0006', 'SUP0001'

EXEC insertPRODUCT
    'PRD0071',
    N'Áo khoác nam có mũ Daily Wear - trượt nước, chống UV 99% - Đen',
    N'Hãng sản xuất 3',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/September2022/ao-khoac-mu-daily-wear-den-6.jpg',
    50000.000,
    75000.000,
    'CAT0005','SUP0001'
    
EXEC insertPRODUCT
    'PRD0072',
    N'Áo khoác nỉ nam For Winter (có mũ trùm tiện  lợi) - Đen',
    N'Hãng sản xuất 3',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/September2022/ao-khoac-for-winter-den-3_29.jpg',
    50000.000,
    75000.000,
    'CAT0005','SUP0001'
    
EXEC insertPRODUCT
    'PRD0073',
    N'Áo nỉ dài tay Lifewear - thoải mái khi mặc - Đen',
    N'Hãng sản xuất 3',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/October2022/ao-ni-dai-tay-lifewear-den-5_26.jpg',
    45000.000,
    55000.000,
    'CAT0005','SUP0001'
    
EXEC insertPRODUCT
    'PRD0074',
    N'Áo giữ nhiệt nam Modal Ultra Warm - mặc là ấm, thoáng khí - Đen',
    N'Hãng sản xuất 3',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/September2022/modal-ultra-warm-den-1-1.jpg',
    55000.000,
    85000.000,
    'CAT0005','SUP0001'
    
EXEC insertPRODUCT
    'PRD0075',
    N'Áo khoác gió thể thao HeiQ ViroBlock, chống UV & trượt nước - Đen',
    N'Hãng sản xuất 3',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/August2022/_MG_2369-2_(1).jpg',
    50000.000,
    75000.000,
    'CAT0005','SUP0001'
    
    
EXEC insertPRODUCT
    'PRD0076',
    N'Áo khoác gió thể thao đa năng cản gió và chống UV - Đen',
    N'Hãng sản xuất 3',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/May2022/DSC04823_copy.jpg',
    50000.000,
    75000.000,
    'CAT0005','SUP0001'
    
    
EXEC insertPRODUCT
    'PRD0077',
    N'Quần nam Daily Pants - sợi Sorona, nhuộm Cleandye - Xanh Navy',
    N'Hãng sản xuất 3',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/February2022/11-181.jpg',
    85000.000,
    115000.000,
    'CAT0005','SUP0001'
    
    
EXEC insertPRODUCT
    'PRD0078',
    N'Quần nỉ nam Jogger Casual co giãn - Xám nhạt',
    N'Hãng sản xuất 3',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/September2022/jogger-casual-xam-nhat2_60.jpg',
    60000.000,
    85000.000,
    'CAT0005','SUP0001'
    
    
EXEC insertPRODUCT
    'PRD0079',
    N'Áo thun thể thao dài tay nam Recycle Active - Xanh Navy',
    N'Hãng sản xuất 3',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/October2022/ao-thun-the-thao-dai-tay-recycle-active-navy-1.jpg',
    55000.000,
    85000.000,
    'CAT0005','SUP0001'
    
    
EXEC insertPRODUCT
    'PRD0080',
    N'Áo Hoodie nam Daily Wear (mũ trùm có dây rút) - Đen',
    N'Hãng sản xuất 3',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/October2022/ao-hoodie-den4_23.jpg',
    30000.000,
    55000.000,
    'CAT0005','SUP0001'
    
    
EXEC insertPRODUCT
    'PRD0081',
    N'Áo khoác nam có mũ Daily Wear - trượt nước, chống UV 99% - Xám',
    N'Hãng sản xuất 3',
     N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/September2022/ao-khoac-mu-daily-wear-xam-6_48.jpg',
     50000.000,
     75000.000,
     'CAT0005','SUP0001'
     
EXEC insertPRODUCT
    'PRD0082',
    N'Áo khoác nỉ nam For Winter (có mũ trùm tiện lợi) - Xám đậm',
    N'Hãng sản xuất 3',
     N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/September2022/ao-khoac-for-winter-xam-dam-2.jpg',
     50000.000,
     75000.000,
     'CAT0005','SUP0001'
     
EXEC insertPRODUCT
    'PRD0083',
    N'Áo nỉ dài tay Lifewear - thoải mái khi mặc - Xám đậm',
    N'Hãng sản xuất 3',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/October2022/ao-ni-dai-tay-lifewear-xam-dam-2.jpg',
    45000.000,
    65000.000,
    'CAT0005','SUP0001'
     
EXEC insertPRODUCT
    'PRD0084',
    N'Áo giữ nhiệt nam Modal Ultra Warm - mặc là ấm, thoáng khí - Xám',
    N'Hãng sản xuất 3',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/September2022/modal-ultra-warm-3_75.jpg',
    55000.000,
    85000.000,
    'CAT0005','SUP0001' 
  
EXEC insertPRODUCT
    'PRD0090',
    N'Outlet - Áo Tank top thể thao nam thoáng khí - Xanh da trời',
    N'HÃNG SẢN XUẤT 4',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/August2022/tanktop_da_troi_1.jpg',
    45000.000,
    60000.000,
    'CAT0001','SUP0001'
   
EXEC insertPRODUCT
    'PRD0091',  
    N'Áo sát nách thể thao nam Dri-Breathe thoáng mát tối đa - Đen',
    N'HÃNG SẢN XUẤT 4',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/April2022/thumb_sat_nach_den.jpg',
    40000.000,
    55000.000,
    'CAT0001','SUP0001'
   
EXEC insertPRODUCT
    'PRD0092',
    N'Outlet - Áo sát nách thể thao nam Dri-Breathe thoáng mát tối đa - Xanh Aqua',
    N'HÃNG SẢN XUẤT 4',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/October2022/sat-nach-aqua_1.jpg.jpg',
    45000.000,
    75000.000,
    'CAT0001','SUP0001'
     
EXEC insertPRODUCT
    'PRD0093',    
    N'Áo Tank Top thể thao nam Recycle Active V1 - Đen',
    N'HÃNG SẢN XUẤT 4',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/August2022/_MG_2334-Recovered1.jpg',
    35000.000,
    65000.000,
    'CAT0001','SUP0001'
     
EXEC insertPRODUCT
    'PRD0094',   
    N'Outlet - Áo Tank top thể thao nam thoáng khí - Trắng',
    N'HÃNG SẢN XUẤT 4',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/August2022/tanktop_trang_1.jpg',
    45000.000,
    70000.000,
    'CAT0001','SUP0001'
     
EXEC insertPRODUCT
    'PRD0095',
    N'Áo sát nách thể thao nam Dri-Breathe thoáng mát tối đa - Trắng',
    N'HÃNG SẢN XUẤT 4',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/April2022/thumb_sat_nach_trang.jpg',
    30000.000,
    45000.000,
    'CAT0001','SUP0001'
     
EXEC insertPRODUCT
    'PRD0096',
    N'Outlet - Áo sát nách thể thao nam Dri-Breathe thoáng mát tối đa - Xanh bóng đêm',
    N'HÃNG SẢN XUẤT 4',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/October2022/sat-nach-xanh-bong-dem.jpg',
    45000.000,
    90000.000,
    'CAT0001','SUP0001'
     
EXEC insertPRODUCT
    'PRD0097',
    N'Áo Tank Top thể thao nam Recycle Active V1 - Xám đậm',
    N'HÃNG SẢN XUẤT 4',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/August2022/Tank_xam_dam_11.jpg',
    55000.000,
    70000.000,
    'CAT0001','SUP0001'
     
EXEC insertPRODUCT      
    'PRD0098',
    N'Outlet - Áo Tank top thể thao nam thoáng khí - Xanh Navy',
    N'HÃNG SẢN XUẤT 4',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/August2022/tanktop_navy_2.jpg',
    45000.000,
    65000.000,
    'CAT0001','SUP0001'
              
EXEC insertPRODUCT
    'PRD0099',
    N'Áo sát nách thể thao nam Dri-Breathe thoáng mát tối đa - Xám Xanh',
    N'HÃNG SẢN XUẤT 4',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/April2022/thumb_sat_nach_xam.jpg',
    55000.000,
    85000.000,
    'CAT0001','SUP0001'
      
EXEC insertPRODUCT
    'PRD0100',
    N'Outlet - Áo sát nách thể thao nam Dri-Breathe thoáng mát tối đa - Xanh bạc hà',
    N'HÃNG SẢN XUẤT 4',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/August2022/dri_bac_ha.jpg',
    45000.000,
    75000.000,
    'CAT0001','SUP0001'
      
EXEC insertPRODUCT
    'PRD0101',
    N'Áo Tank Top thể thao nam Recycle Active V1 - Xám nhạt',
    N'HÃNG SẢN XUẤT 4',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/August2022/tank_recy_xam_nhat.jpg',
    65000.000,
    100000.000,
    'CAT0001','SUP0001'
      
EXEC insertPRODUCT
    'PRD0110',
    N'Quần dài Kaki Excool co giãn - Xám đen',
    N'Hãng Sản Xuất 5',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/June2022/kaki-excool-xam-den.jpg',
    40000.000,  
    50000.000,
    'CAT0003','SUP0001'
    
EXEC insertPRODUCT
    'PRD0111',
    N'Quần nam Daily Pants - sợi Sorona, nhuộm Cleandye - Xanh Navy',
    N'Hãng Sản Xuất 5',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/February2022/11-181.jpg',
    85000.000,
    120000.000,
    'CAT0003','SUP0001'
    
EXEC insertPRODUCT
    'PRD0112',
    N'Quần nỉ nam Jogger Casual co giãn - Xám nhạt',
    N'Hãng Sản Xuất 5',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/September2022/jogger-casual-xam-nhat2_60.jpg',
    45000.000,
    80000.000,
    'CAT0003','SUP0001'
     
EXEC insertPRODUCT
    'PRD0113',
    N'Quần Jeans Clean Denim dáng Slimfit - Xanh nhạt',
    N'Hãng Sản Xuất 5',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/April2022/1DSC06643-copy-2.jpg',
    45000.000,
    75000.000,
    'CAT0003','SUP0001'
     
EXEC insertPRODUCT
    'PRD0114',
    N'Quần thể thao Jogger co giãn - Xám nhạt',
    N'Hãng Sản Xuất 5',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/July2022/1234231.jpg',
    55000.000,
    90000.000,
    'CAT0003','SUP0001'
     
EXEC insertPRODUCT
    'PRD0115',
    N'Quần Jogger thể thao co giãn Graphene - Đen',
    N'Hãng Sản Xuất 5',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/June2022/graphenee.jpg',
    45000.000,
    90000.000,
    'CAT0003','SUP0001'
     
EXEC insertPRODUCT
	'PRD0116',
    N'Quần Jeans Clean Denim dáng Slimfit S3 - Xanh nhạt',
    N'Hãng Sản Xuất 5',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/August2022/xanh_nhat_s3_1.jpg',
    45000.000,
    80000.000,
    'CAT0003','SUP0001'
     
   
EXEC insertPRODUCT
    'PRD0117',
    N'Quần Jeans Clean Denim dáng Slimfit S2 - Xanh đậm',
    N'Hãng Sản Xuất 5',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/August2022/Jeans_moi_dam_1.jpg',
    45000.000,
    90000.000,
    'CAT0003','SUP0001'
     
EXEC insertPRODUCT
    'PRD0118',
    N'Quần dài Kaki Excool co giãn - Beige',
    N'Hãng Sản Xuất 5',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/June2022/kaki-excool-begie.jpg',
    45000.000,
    75000.000,
    'CAT0003','SUP0001'
     
EXEC insertPRODUCT
    'PRD0119',
    N'Quần nam Daily Pants - sợi Sorona, nhuộm Cleandye - Xám xanh',
    N'Hãng Sản Xuất 5',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/February2022/soronada112.jpg',
    85000.000,
    130000.000,
    'CAT0003','SUP0001'
     
EXEC insertPRODUCT
    'PRD0120', 
    N'Jordan Break',
    N'Hãng Sản Xuất 2',
    N'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/2c46e149-c4c4-4608-a85b-0ae0a67ab8db/jordan-break-slides-QmwKlG.png',
    120000.000,
    150000.000,
    'CAT0002','SUP0001'
           
EXEC insertPRODUCT
    'PRD0121',  
    N'Zoom Freak 4',
    N'Hãng Sản Xuất 2',
    N'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/d08feb3d-d04b-4251-9362-eb14398b82cf/zoom-freak-4-basketball-shoes-zmXv3D.png',
    320000.000,
    360000.000,
    'CAT0002','SUP0001'
           
EXEC insertPRODUCT
    'PRD0122',
    N'Nike ZoomX Vaporfly Next% 2',
    N'Hãng Sản Xuất 2',
    N'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/93536e83-3116-4e49-81b5-fa66060473d8/zoomx-vaporfly-next-2-road-racing-shoes-D4ntS0.png',
    200000.000,
    300000.000,
    'CAT0002','SUP0001'

EXEC insertPRODUCT
    'PRD0123', 
    N'Nike Flex Experience Run 11 Next Nature',
     N'Hãng Sản Xuất 2',
    N'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/c19997f7-9241-441c-9a2d-f5514e90c86b/flex-experience-run-11-next-nature-road-running-shoes-CTCNv3.png',
    170000.000,
    230000.000,
    'CAT0002','SUP0001'
               
EXEC insertPRODUCT
    'PRD0124',
    N'Nike ZoomX Invincible Run Flyknit 2',
    N'Hãng Sản Xuất 2',
    N'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/0e7455dd-c1e4-4148-b4c7-9897304f0508/zoomx-invincible-run-flyknit-2-road-running-shoes-xrCMmF.png',
    170000.000,
    250000.000,
    'CAT0002','SUP0001'
               
EXEC insertPRODUCT
    'PRD0125',
    N'Nike Phantom GT2 Elite FG',
    N'Hãng Sản Xuất 2',
    N'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/20477ebc-c447-44d7-98bc-eb3523cc933f/phantom-gt2-elite-fg-football-boot-wRNH0g.png',
    230000.000,
    300000.000,
    'CAT0002','SUP0001'
            
EXEC insertPRODUCT
    'PRD0126',
    N'Nike ZoomX Vaporfly NEXT% 2',
    N'Hãng Sản Xuất 2',
    N'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/e7d0cf10-58fc-4f0d-95c7-6352301a0f9d/zoomx-vaporfly-next-2-road-racing-shoes-zgvZjF.png',
    150000.000,
    260000.000,
    'CAT0002','SUP0001'
                
EXEC insertPRODUCT
    'PRD0127', 
    N'Nike Revolution 6 Next Nature',
    N'Hãng Sản Xuất 2',
    N'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/b05afb11-db22-461d-b94e-49bdc316b445/revolution-6-next-nature-road-running-shoes-NC0P7k.png',
    165000.000,
    195000.000,
    'CAT0002','SUP0001'
                    
EXEC insertPRODUCT
    'PRD0128', 
    N'Nike Air Zoom Pegasus 39 A.I.R. Hola Lou',
    N'Hãng Sản Xuất 2',
    N'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/cc8e8ae1-5e2a-40ac-b8ba-77515d72ecb6/air-zoom-pegasus-39-air-hola-lou-road-running-shoes-HzV9f8.png',
    320000.000,
    400000.000,
    'CAT0002','SUP0001'
                
EXEC insertPRODUCT
    'PRD0129',
    N'Nike Air Max 90',
    N'Hãng Sản Xuất 2',
    N'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/779ed33d-2b5b-4ef8-a0ef-4ead046e7b1f/air-max-90-slides-bPJh33.png',
    210000.000,
    250000.000,
    'CAT0002','SUP0001'
                        
EXEC insertPRODUCT
    'PRD0130',
	N'Nike Hyperdunk X EP',
    N'Hãng Sản Xuất 2',
    N'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/vf6pvilvy7ijoryp4vow/hyperdunk-ep-basketball-shoes-J050xp.png',
	300000.000,
    350000.000,
    'CAT0002','SUP0001'
            
EXEC insertPRODUCT
    'PRD0131',
    N'Air Jordan 3 Retro',
	N'Hãng Sản Xuất 2',
    N'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/2dcd5e01-4313-486e-946f-387f10eb276a/air-jordan-3-retro-shoes-TJf2lm.png',
    160000.000,
    190000.000,
    'CAT0002','SUP0001'
            
EXEC insertPRODUCT
    'PRD0132',
    N'Nike Air Force 1 07 LV8 Next Nature',
    N'Hãng Sản Xuất 2',
    N'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/74c5cc3e-375d-4663-b1db-7f6f81242aab/air-force-1-07-lv8-next-nature-shoes-X2nrqR.png',
    300000.000,
    330000.000,
    'CAT0002','SUP0001'
            
EXEC insertPRODUCT
    'PRD0133',
    N'Nike Air Zoom Pegasus 39 By You',
	N'Hãng Sản Xuất 2',
    N'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/ae1ebb03-d904-4380-a9ff-297bb9655a3b/custom-nike-air-zoom-pegasus-39-by-you.png',
    210000.000,
    250000.000,
    'CAT0002','SUP0001'
            
EXEC insertPRODUCT
    'PRD0134',   
    N'Nike Air Zoom Pegasus 39 By Bretman Rock',
	N'Hãng Sản Xuất 2',
    N'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/ee0c388a-d267-4daf-b69e-10cfa77fccfe/custom-nike-air-zoom-pegasus-39-by-you.png',
    160000.000,
    220000.000,
    'CAT0002','SUP0001'
            
EXEC insertPRODUCT
    'PRD0135', 
    N'Nike Go FlyEase',
    N'Hãng Sản Xuất 2',
    N'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/247616b5-1d3b-4777-abbb-d5e08a924b78/go-flyease-easy-on-off-shoes-3svRCL.png',
    220000.000,
    280000.000,
    'CAT0002','SUP0001'
            
EXEC insertPRODUCT
    'PRD0136',   
    N'Luka 1 Next Nature PF',
    N'Hãng Sản Xuất 2',
    N'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/721f7f93-0f2a-4cbf-baf4-72c841f60c21/luka-1-next-nature-pf-basketball-shoes-szjnCq.png',
    220000.000,
    260000.000,
    'CAT0002','SUP0001'
            
EXEC insertPRODUCT
    'PRD0137',
    N'Jordan Series ES',
    N'Hãng Sản Xuất 2',
    N'https://static.nike.com/a/images/c_limit,w_592,f_auto/t_product_v1/4638b3b8-c27c-440a-9b59-2a82897e16f1/jordan-series-es-shoes-FDtg9v.png',
    230000.000,
    260000.000,
    'CAT0002','SUP0001'  
GO


EXEC insertCART_PRODUCT 'PRD0001',  'CRT0001', 1
GO
EXEC insertCART_PRODUCT 'PRD0003',  'CRT0001', 2
GO
EXEC insertCART_PRODUCT 'PRD0005',  'CRT0001', 2
GO
EXEC insertCART_PRODUCT 'PRD0009',  'CRT0001', 5
GO
EXEC insertCART_PRODUCT 'PRD0001',  'CRT0002', 2
GO
EXEC insertCART_PRODUCT 'PRD0006',  'CRT0002', 1
GO
EXEC insertCART_PRODUCT 'PRD0009',  'CRT0002', 3
GO
EXEC insertCART_PRODUCT 'PRD0090',  'CRT0003', 5
GO
EXEC insertCART_PRODUCT 'PRD0003',  'CRT0003', 1
GO
EXEC insertCART_PRODUCT 'PRD0005',  'CRT0003', 2
GO
EXEC insertCART_PRODUCT 'PRD0004',  'CRT0004', 2
GO
EXEC insertCART_PRODUCT 'PRD0005',  'CRT0004', 3
GO
EXEC insertCART_PRODUCT 'PRD0006',  'CRT0004', 3
GO
EXEC insertCART_PRODUCT 'PRD0005',  'CRT0005', 2
GO
EXEC insertCART_PRODUCT 'PRD0006',  'CRT0006', 1
GO
EXEC insertCART_PRODUCT 'PRD0007',  'CRT0006', 1
GO
EXEC insertCART_PRODUCT 'PRD0009',  'CRT0006', 2
GO
EXEC insertCART_PRODUCT 'PRD0011',  'CRT0007', 3
GO
EXEC insertCART_PRODUCT 'PRD0008',  'CRT0008', 2
GO
EXEC insertCART_PRODUCT 'PRD0009',  'CRT0009', 5
GO
EXEC insertCART_PRODUCT 'PRD0013',  'CRT0009', 1
GO
EXEC insertCART_PRODUCT 'PRD0020',  'CRT0009', 2
GO
EXEC insertCART_PRODUCT 'PRD0120',  'CRT0009', 2
GO
EXEC insertCART_PRODUCT 'PRD0122',  'CRT0009', 1
GO
EXEC insertCART_PRODUCT 'PRD0001',  'CRT0010', 1
GO
EXEC insertCART_PRODUCT 'PRD0002',  'CRT0010', 1
GO
EXEC insertCART_PRODUCT 'PRD0003',  'CRT0010', 2
GO
EXEC insertCART_PRODUCT 'PRD0001',  'CRT0011', 3
GO
EXEC insertCART_PRODUCT 'PRD0002',  'CRT0011', 3
GO
EXEC insertCART_PRODUCT 'PRD0003',  'CRT0011', 2
GO
EXEC insertCART_PRODUCT 'PRD0004',  'CRT0011', 2
GO
EXEC insertCART_PRODUCT 'PRD0010',  'CRT0011', 2
GO
EXEC insertCART_PRODUCT 'PRD0010',  'CRT0012', 2
GO
EXEC insertCART_PRODUCT 'PRD0011',  'CRT0012', 2
GO
EXEC insertCART_PRODUCT 'PRD0013',  'CRT0012', 2
GO
EXEC insertCART_PRODUCT 'PRD0090',  'CRT0013', 2
GO
EXEC insertCART_PRODUCT 'PRD0091',  'CRT0013', 3
GO
EXEC insertCART_PRODUCT 'PRD0010',  'CRT0014', 1
GO
EXEC insertCART_PRODUCT 'PRD0011',  'CRT0014', 1
GO
EXEC insertCART_PRODUCT 'PRD0012',  'CRT0014', 2
GO
EXEC insertCART_PRODUCT 'PRD0011',  'CRT0015', 1
GO
EXEC insertCART_PRODUCT 'PRD0120',  'CRT0015', 2
GO


--comment PRODUCT_id 1 -> 119
GO
EXEC insertCLOTHES 'CLO0001', 'PRD0001',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0002', 'PRD0001',  N'Tính co giãn 1',  'M',   N'Vàng',   N'Loại 1'
EXEC insertCLOTHES 'CLO0003', 'PRD0001',  N'Tính co giãn 1',  'M',   N'Đỏ',   N'Loại 1'
EXEC insertCLOTHES 'CLO0004', 'PRD0001',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0005', 'PRD0001',  N'Tính co giãn 1',  'S',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0006', 'PRD0001',  N'Tính co giãn 1',  'S',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0007', 'PRD0001',  N'Tính co giãn 1',  'S',   N'Đỏ',   N'Loại 1'
EXEC insertCLOTHES 'CLO0008', 'PRD0001',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0009', 'PRD0001',  N'Tính co giãn 1',  'XL',   N'Vàng',   N'Loại 1'
EXEC insertCLOTHES 'CLO0010', 'PRD0001',  N'Tính co giãn 1',  'M',   N'Đỏ',   N'Loại 1'
EXEC insertCLOTHES 'CLO0011', 'PRD0001',  N'Tính co giãn 1',  'M',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0012', 'PRD0001',  N'Tính co giãn 1',  'M',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0013', 'PRD0001',  N'Tính co giãn 1',  'XL',   N'Đỏ',   N'Loại 1'
EXEC insertCLOTHES 'CLO0014', 'PRD0001',  N'Tính co giãn 1',  'XL',   N'Vàng',   N'Loại 1'
EXEC insertCLOTHES 'CLO0015', 'PRD0001',  N'Tính co giãn 1',  'S',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0016', 'PRD0001',  N'Tính co giãn 1',  'XL',   N'Đỏ',   N'Loại 1'
EXEC insertCLOTHES 'CLO0017', 'PRD0001',  N'Tính co giãn 1',  'S',   N'Đỏ',   N'Loại 1'
EXEC insertCLOTHES 'CLO0018', 'PRD0001',  N'Tính co giãn 1',  'XL',   N'Vàng',   N'Loại 1'
EXEC insertCLOTHES 'CLO0019', 'PRD0001',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0020', 'PRD0002',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0021', 'PRD0002',  N'Tính co giãn 1',  'S',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0022', 'PRD0002',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0023', 'PRD0002',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0024', 'PRD0002',  N'Tính co giãn 1',  'S',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0025', 'PRD0002',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0026', 'PRD0002',  N'Tính co giãn 1',  'S',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0027', 'PRD0002',  N'Tính co giãn 1',  'XXL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0028', 'PRD0002',  N'Tính co giãn 1',  'XXL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0029', 'PRD0002',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0030', 'PRD0002',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0031', 'PRD0002',  N'Tính co giãn 1',  'XXL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0032', 'PRD0002',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0033', 'PRD0002',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0034', 'PRD0002',  N'Tính co giãn 1',  'XXL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0035', 'PRD0002',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0036', 'PRD0002',  N'Tính co giãn 1',  'XL',   N'Đỏ',   N'Loại 1'
EXEC insertCLOTHES 'CLO0037', 'PRD0002',  N'Tính co giãn 1',  'S',   N'Đỏ',   N'Loại 1'
EXEC insertCLOTHES 'CLO0038', 'PRD0002',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0039', 'PRD0002',  N'Tính co giãn 1',  'S',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0040', 'PRD0002',  N'Tính co giãn 1',  'XL',   N'Đỏ',   N'Loại 1'
EXEC insertCLOTHES 'CLO0041', 'PRD0002',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0042', 'PRD0002',  N'Tính co giãn 1',  'S',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0043', 'PRD0002',  N'Tính co giãn 1',  'XL',   N'Đỏ',   N'Loại 1'
EXEC insertCLOTHES 'CLO0044', 'PRD0002',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0045', 'PRD0002',  N'Tính co giãn 1',  'S',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0046', 'PRD0002',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0047', 'PRD0002',  N'Tính co giãn 1',  'M',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0048', 'PRD0002',  N'Tính co giãn 1',  'M',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0049', 'PRD0002',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0050', 'PRD0002',  N'Tính co giãn 1',  'M',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0051', 'PRD0002',  N'Tính co giãn 1',  'M',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0052', 'PRD0002',  N'Tính co giãn 1',  'M',   N'Vàng',   N'Loại 1'
EXEC insertCLOTHES 'CLO0053', 'PRD0002',  N'Tính co giãn 1',  'M',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0054', 'PRD0002',  N'Tính co giãn 1',  'M',   N'Vàng',   N'Loại 1'
EXEC insertCLOTHES 'CLO0055', 'PRD0002',  N'Tính co giãn 1',  'M',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0056', 'PRD0002',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0057', 'PRD0002',  N'Tính co giãn 1',  'XL',   N'Vàng',   N'Loại 1'
EXEC insertCLOTHES 'CLO0058', 'PRD0002',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0059', 'PRD0002',  N'Tính co giãn 1',  'XXL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0060', 'PRD0002',  N'Tính co giãn 1',  'XXL',   N'Vàng',   N'Loại 1'
EXEC insertCLOTHES 'CLO0061', 'PRD0002',  N'Tính co giãn 1',  'XXL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0062', 'PRD0002',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0063', 'PRD0002',  N'Tính co giãn 1',  'XXL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0064', 'PRD0002',  N'Tính co giãn 1',  'XL',   N'Vàng',   N'Loại 1'
EXEC insertCLOTHES 'CLO0065', 'PRD0003',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0066', 'PRD0003',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0067', 'PRD0003',  N'Tính co giãn 1',  'S',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0068', 'PRD0003',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0069', 'PRD0003',  N'Tính co giãn 1',  'XL',   N'Đỏ',   N'Loại 1'
EXEC insertCLOTHES 'CLO0070', 'PRD0003',  N'Tính co giãn 1',  'S',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0071', 'PRD0003',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0072', 'PRD0003',  N'Tính co giãn 1',  'S',   N'Đỏ',   N'Loại 1'
EXEC insertCLOTHES 'CLO0073', 'PRD0003',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0074', 'PRD0003',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0075', 'PRD0003',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0076', 'PRD0003',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0077', 'PRD0003',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0078', 'PRD0003',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0079', 'PRD0003',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0080', 'PRD0003',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0081', 'PRD0003',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0082', 'PRD0003',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0083', 'PRD0003',  N'Tính co giãn 1',  'XXL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0084', 'PRD0003',  N'Tính co giãn 1',  'XXL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0085', 'PRD0003',  N'Tính co giãn 1',  'XXL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0086', 'PRD0003',  N'Tính co giãn 1',  'XXL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0087', 'PRD0003',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0088', 'PRD0003',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0089', 'PRD0003',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0090', 'PRD0003',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0091', 'PRD0003',  N'Tính co giãn 1',  'S',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0092', 'PRD0003',  N'Tính co giãn 1',  'S',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0093', 'PRD0003',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0094', 'PRD0003',  N'Tính co giãn 1',  'XL',   N'Đỏ',   N'Loại 1'
EXEC insertCLOTHES 'CLO0095', 'PRD0003',  N'Tính co giãn 1',  'S',   N'Đỏ',   N'Loại 1'
EXEC insertCLOTHES 'CLO0096', 'PRD0003',  N'Tính co giãn 1',  'XL',   N'Đỏ',   N'Loại 1'
EXEC insertCLOTHES 'CLO0097', 'PRD0003',  N'Tính co giãn 1',  'S',   N'Đỏ',   N'Loại 1'
EXEC insertCLOTHES 'CLO0098', 'PRD0003',  N'Tính co giãn 1',  'XL',   N'Đỏ',   N'Loại 1'
EXEC insertCLOTHES 'CLO0099', 'PRD0003',  N'Tính co giãn 1',  'XL',   N'Đỏ',   N'Loại 1'
EXEC insertCLOTHES 'CLO0100', 'PRD0003',  N'Tính co giãn 1',  'M',   N'Đỏ',   N'Loại 1'
EXEC insertCLOTHES 'CLO0101', 'PRD0003',  N'Tính co giãn 1',  'XL',   N'Vàng',   N'Loại 1'
EXEC insertCLOTHES 'CLO0102', 'PRD0004',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0103', 'PRD0004',  N'Tính co giãn 1',  'XL',   N'Vàng',   N'Loại 1'
EXEC insertCLOTHES 'CLO0104', 'PRD0004',  N'Tính co giãn 1',  'M',   N'Vàng',   N'Loại 1'
EXEC insertCLOTHES 'CLO0105', 'PRD0004',  N'Tính co giãn 1',  'XL',   N'Vàng',   N'Loại 1'
EXEC insertCLOTHES 'CLO0106', 'PRD0004',  N'Tính co giãn 1',  'M',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0107', 'PRD0004',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0108', 'PRD0004',  N'Tính co giãn 1',  'M',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0109', 'PRD0004',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0110', 'PRD0004',  N'Tính co giãn 1',  'M',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0111', 'PRD0004',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0112', 'PRD0004',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0113', 'PRD0004',  N'Tính co giãn 1',  'XL',   N'Đỏ',   N'Loại 1'
EXEC insertCLOTHES 'CLO0114', 'PRD0004',  N'Tính co giãn 1',  'XL',   N'Đỏ',   N'Loại 1'
EXEC insertCLOTHES 'CLO0115', 'PRD0004',  N'Tính co giãn 1',  'XL',   N'Đỏ',   N'Loại 1'
EXEC insertCLOTHES 'CLO0116', 'PRD0004',  N'Tính co giãn 1',  'S',   N'Đỏ',   N'Loại 1'
EXEC insertCLOTHES 'CLO0117', 'PRD0004',  N'Tính co giãn 1',  'XL',   N'Đỏ',   N'Loại 1'
EXEC insertCLOTHES 'CLO0118', 'PRD0004',  N'Tính co giãn 1',  'S',   N'Đỏ',   N'Loại 1'
EXEC insertCLOTHES 'CLO0119', 'PRD0004',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0120', 'PRD0004',  N'Tính co giãn 1',  'S',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0121', 'PRD0004',  N'Tính co giãn 1',  'XL',   N'Vàng',   N'Loại 1'
EXEC insertCLOTHES 'CLO0122', 'PRD0005',  N'Tính co giãn 1',  'XL',   N'Vàng',   N'Loại 1'
EXEC insertCLOTHES 'CLO0123', 'PRD0005',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0124', 'PRD0005',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0125', 'PRD0005',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0126', 'PRD0005',  N'Tính co giãn 1',  'S',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0127', 'PRD0005',  N'Tính co giãn 1',  'S',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0128', 'PRD0005',  N'Tính co giãn 1',  'S',   N'Đỏ',   N'Loại 1'
EXEC insertCLOTHES 'CLO0129', 'PRD0005',  N'Tính co giãn 1',  'S',   N'Đỏ',   N'Loại 1'
EXEC insertCLOTHES 'CLO0130', 'PRD0005',  N'Tính co giãn 1',  'XL',   N'Đỏ',   N'Loại 1'
EXEC insertCLOTHES 'CLO0131', 'PRD0005',  N'Tính co giãn 1',  'S',   N'Đỏ',   N'Loại 1'
EXEC insertCLOTHES 'CLO0132', 'PRD0005',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0133', 'PRD0005',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0134', 'PRD0005',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0135', 'PRD0005',  N'Tính co giãn 1',  'M',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0136', 'PRD0005',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0137', 'PRD0005',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0138', 'PRD0005',  N'Tính co giãn 1',  'M',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0139', 'PRD0005',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0140', 'PRD0005',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0141', 'PRD0005',  N'Tính co giãn 1',  'M',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0142', 'PRD0005',  N'Tính co giãn 1',  'M',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0143', 'PRD0005',  N'Tính co giãn 1',  'M',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0144', 'PRD0006',  N'Tính co giãn 1',  'M',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0145', 'PRD0006',  N'Tính co giãn 1',  'XL',   N'Vàng',   N'Loại 1'
EXEC insertCLOTHES 'CLO0146', 'PRD0006',  N'Tính co giãn 1',  'XL',   N'Vàng',   N'Loại 1'
EXEC insertCLOTHES 'CLO0147', 'PRD0006',  N'Tính co giãn 1',  'XL',   N'Vàng',   N'Loại 1'
EXEC insertCLOTHES 'CLO0148', 'PRD0006',  N'Tính co giãn 1',  'XL',   N'Vàng',   N'Loại 1'
EXEC insertCLOTHES 'CLO0149', 'PRD0006',  N'Tính co giãn 1',  'S',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0150', 'PRD0006',  N'Tính co giãn 1',  'S',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0151', 'PRD0006',  N'Tính co giãn 1',  'XL',   N'Đỏ',   N'Loại 1'
EXEC insertCLOTHES 'CLO0152', 'PRD0006',  N'Tính co giãn 1',  'S',   N'Đỏ',   N'Loại 1'
EXEC insertCLOTHES 'CLO0153', 'PRD0006',  N'Tính co giãn 1',  'S',   N'Đỏ',   N'Loại 1'
EXEC insertCLOTHES 'CLO0154', 'PRD0006',  N'Tính co giãn 1',  'XL',   N'Đỏ',   N'Loại 1'
EXEC insertCLOTHES 'CLO0155', 'PRD0006',  N'Tính co giãn 1',  'XL',   N'Đỏ',   N'Loại 1'
EXEC insertCLOTHES 'CLO0156', 'PRD0006',  N'Tính co giãn 1',  'M',   N'Đỏ',   N'Loại 1'
EXEC insertCLOTHES 'CLO0157', 'PRD0006',  N'Tính co giãn 1',  'M',   N'Đỏ',   N'Loại 1'
EXEC insertCLOTHES 'CLO0158', 'PRD0006',  N'Tính co giãn 1',  'XL',   N'Đỏ',   N'Loại 1'
EXEC insertCLOTHES 'CLO0159', 'PRD0006',  N'Tính co giãn 1',  'M',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0160', 'PRD0006',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0161', 'PRD0006',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0162', 'PRD0006',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0163', 'PRD0006',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0164', 'PRD0006',  N'Tính co giãn 1',  'XL',   N'Vàng',   N'Loại 1'
EXEC insertCLOTHES 'CLO0165', 'PRD0007',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0166', 'PRD0007',  N'Tính co giãn 1',  'XL',   N'Vàng',   N'Loại 1'
EXEC insertCLOTHES 'CLO0167', 'PRD0007',  N'Tính co giãn 1',  'XL',   N'Vàng',   N'Loại 1'
EXEC insertCLOTHES 'CLO0168', 'PRD0007',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0169', 'PRD0007',  N'Tính co giãn 1',  'XL',   N'Vàng',   N'Loại 1'
EXEC insertCLOTHES 'CLO0170', 'PRD0007',  N'Tính co giãn 1',  'XL',   N'Vàng',   N'Loại 1'
EXEC insertCLOTHES 'CLO0171', 'PRD0007',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0172', 'PRD0007',  N'Tính co giãn 1',  'S',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0173', 'PRD0007',  N'Tính co giãn 1',  'S',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0174', 'PRD0007',  N'Tính co giãn 1',  'S',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0175', 'PRD0008',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0176', 'PRD0008',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0177', 'PRD0008',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0178', 'PRD0008',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0179', 'PRD0008',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0180', 'PRD0008',  N'Tính co giãn 1',  'M',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0181', 'PRD0008',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0182', 'PRD0009',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0183', 'PRD0009',  N'Tính co giãn 1',  'M',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0184', 'PRD0009',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0185', 'PRD0009',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0186', 'PRD0009',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0187', 'PRD0009',  N'Tính co giãn 1',  'M',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0188', 'PRD0009',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0189', 'PRD0009',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0190', 'PRD0009',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0191', 'PRD0010',  N'Tính co giãn 1',  'M',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0192', 'PRD0010',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0193', 'PRD0010',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0194', 'PRD0010',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0195', 'PRD0010',  N'Tính co giãn 1',  'XL',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0196', 'PRD0010',  N'Tính co giãn 1',  'S',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0197', 'PRD0010',  N'Tính co giãn 1',  'S',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0198', 'PRD0010',  N'Tính co giãn 1',  'S',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0199', 'PRD0010',  N'Tính co giãn 1',  'S',   N'Xanh',   N'Loại 1'
EXEC insertCLOTHES 'CLO0200', 'PRD0010',  N'Tính co giãn 1',  'M',   N'Xanh',   N'Loại 1'

GO

--commnet PRODUCT_id 120->

EXEC insertSHOE 'SHO0001', 'PRD0120',  N'Tính co giãn 1',  N'Xanh',   38,   N'Loại 1'
EXEC insertSHOE 'SHO0002', 'PRD0120',  N'Tính co giãn 1',  N'Xanh',   40,   N'Loại 1'
EXEC insertSHOE 'SHO0003', 'PRD0120',  N'Tính co giãn 1',  N'Xanh',   40,   N'Loại 1'
EXEC insertSHOE 'SHO0004', 'PRD0120',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0005', 'PRD0120',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0006', 'PRD0120',  N'Tính co giãn 1',  N'Xanh',   37,   N'Loại 1'
EXEC insertSHOE 'SHO0007', 'PRD0120',  N'Tính co giãn 1',  N'Xanh',   37,   N'Loại 1'
EXEC insertSHOE 'SHO0008', 'PRD0120',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0009', 'PRD0120',  N'Tính co giãn 1',  N'Xanh',   38,   N'Loại 1'
EXEC insertSHOE 'SHO0010', 'PRD0120',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0011', 'PRD0120',  N'Tính co giãn 1',  N'Xanh',   40,   N'Loại 1'
EXEC insertSHOE 'SHO0012', 'PRD0120',  N'Tính co giãn 1',  N'Xanh',   37,   N'Loại 1'
EXEC insertSHOE 'SHO0013', 'PRD0120',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0014', 'PRD0120',  N'Tính co giãn 1',  N'Xanh',   38,   N'Loại 1'
EXEC insertSHOE 'SHO0015', 'PRD0120',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0016', 'PRD0120',  N'Tính co giãn 1',  N'Xanh',   37,   N'Loại 1'
EXEC insertSHOE 'SHO0017', 'PRD0120',  N'Tính co giãn 1',  N'Xanh',   38,   N'Loại 1'
EXEC insertSHOE 'SHO0018', 'PRD0120',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0019', 'PRD0120',  N'Tính co giãn 1',  N'Xanh',   40,   N'Loại 1'
EXEC insertSHOE 'SHO0020', 'PRD0121',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0021', 'PRD0121',  N'Tính co giãn 1',  N'Xanh',   38,   N'Loại 1'
EXEC insertSHOE 'SHO0022', 'PRD0121',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0023', 'PRD0121',  N'Tính co giãn 1',  N'Xanh',   37,   N'Loại 1'
EXEC insertSHOE 'SHO0024', 'PRD0121',  N'Tính co giãn 1',  N'Xanh',   38,   N'Loại 1'
EXEC insertSHOE 'SHO0025', 'PRD0121',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0026', 'PRD0121',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0027', 'PRD0121',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0028', 'PRD0121',  N'Tính co giãn 1',  N'Xanh',   37,   N'Loại 1'
EXEC insertSHOE 'SHO0029', 'PRD0121',  N'Tính co giãn 1',  N'Xanh',   37,   N'Loại 1'
EXEC insertSHOE 'SHO0030', 'PRD0121',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0031', 'PRD0121',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0032', 'PRD0121',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0033', 'PRD0121',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0034', 'PRD0121',  N'Tính co giãn 1',  N'Xanh',   37,   N'Loại 1'
EXEC insertSHOE 'SHO0035', 'PRD0121',  N'Tính co giãn 1',  N'Xanh',   37,   N'Loại 1'
EXEC insertSHOE 'SHO0036', 'PRD0121',  N'Tính co giãn 1',  N'Xanh',   37,   N'Loại 1'
EXEC insertSHOE 'SHO0037', 'PRD0121',  N'Tính co giãn 1',  N'Xanh',   37,   N'Loại 1'
EXEC insertSHOE 'SHO0038', 'PRD0121',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0039', 'PRD0121',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0040', 'PRD0121',  N'Tính co giãn 1',  N'Xanh',   38,   N'Loại 1'
EXEC insertSHOE 'SHO0041', 'PRD0121',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0042', 'PRD0121',  N'Tính co giãn 1',  N'Xanh',   38,   N'Loại 1'
EXEC insertSHOE 'SHO0043', 'PRD0121',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0044', 'PRD0121',  N'Tính co giãn 1',  N'Xanh',   38,   N'Loại 1'
EXEC insertSHOE 'SHO0045', 'PRD0121',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0046', 'PRD0121',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0047', 'PRD0121',  N'Tính co giãn 1',  N'Xanh',   37,   N'Loại 1'
EXEC insertSHOE 'SHO0048', 'PRD0121',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0049', 'PRD0121',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0050', 'PRD0121',  N'Tính co giãn 1',  N'Xanh',   37,   N'Loại 1'
EXEC insertSHOE 'SHO0051', 'PRD0121',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0052', 'PRD0121',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0053', 'PRD0121',  N'Tính co giãn 1',  N'Xanh',   37,   N'Loại 1'
EXEC insertSHOE 'SHO0054', 'PRD0121',  N'Tính co giãn 1',  N'Xanh',   37,   N'Loại 1'
EXEC insertSHOE 'SHO0055', 'PRD0121',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0056', 'PRD0121',  N'Tính co giãn 1',  N'Xanh',   37,   N'Loại 1'
EXEC insertSHOE 'SHO0057', 'PRD0121',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0058', 'PRD0121',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0059', 'PRD0121',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0060', 'PRD0121',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0061', 'PRD0121',  N'Tính co giãn 1',  N'Xanh',   36,   N'Loại 1'
EXEC insertSHOE 'SHO0062', 'PRD0121',  N'Tính co giãn 1',  N'Xanh',   36,   N'Loại 1'
EXEC insertSHOE 'SHO0063', 'PRD0121',  N'Tính co giãn 1',  N'Xanh',   36,   N'Loại 1'
EXEC insertSHOE 'SHO0064', 'PRD0121',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0065', 'PRD0122',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0066', 'PRD0122',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0067', 'PRD0122',  N'Tính co giãn 1',  N'Xanh',   38,   N'Loại 1'
EXEC insertSHOE 'SHO0068', 'PRD0122',  N'Tính co giãn 1',  N'Xanh',   38,   N'Loại 1'
EXEC insertSHOE 'SHO0069', 'PRD0122',  N'Tính co giãn 1',  N'Xanh',   38,   N'Loại 1'
EXEC insertSHOE 'SHO0070', 'PRD0122',  N'Tính co giãn 1',  N'Xanh',   38,   N'Loại 1'
EXEC insertSHOE 'SHO0071', 'PRD0122',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0072', 'PRD0122',  N'Tính co giãn 1',  N'Xanh',   40,   N'Loại 1'
EXEC insertSHOE 'SHO0073', 'PRD0122',  N'Tính co giãn 1',  N'Xanh',   36,   N'Loại 1'
EXEC insertSHOE 'SHO0074', 'PRD0122',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0075', 'PRD0122',  N'Tính co giãn 1',  N'Xanh',   40,   N'Loại 1'
EXEC insertSHOE 'SHO0076', 'PRD0122',  N'Tính co giãn 1',  N'Xanh',   40,   N'Loại 1'
EXEC insertSHOE 'SHO0077', 'PRD0122',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0078', 'PRD0122',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0079', 'PRD0122',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0080', 'PRD0122',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0081', 'PRD0122',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0082', 'PRD0122',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0083', 'PRD0122',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0084', 'PRD0122',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0085', 'PRD0122',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0086', 'PRD0122',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0087', 'PRD0122',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0088', 'PRD0122',  N'Tính co giãn 1',  N'Xanh',   36,   N'Loại 1'
EXEC insertSHOE 'SHO0089', 'PRD0122',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0090', 'PRD0122',  N'Tính co giãn 1',  N'Xanh',   36,   N'Loại 1'
EXEC insertSHOE 'SHO0091', 'PRD0122',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0092', 'PRD0122',  N'Tính co giãn 1',  N'Xanh',   40,   N'Loại 1'
EXEC insertSHOE 'SHO0093', 'PRD0122',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0094', 'PRD0122',  N'Tính co giãn 1',  N'Xanh',   38,   N'Loại 1'
EXEC insertSHOE 'SHO0095', 'PRD0122',  N'Tính co giãn 1',  N'Xanh',   38,   N'Loại 1'
EXEC insertSHOE 'SHO0096', 'PRD0122',  N'Tính co giãn 1',  N'Xanh',   38,   N'Loại 1'
EXEC insertSHOE 'SHO0097', 'PRD0122',  N'Tính co giãn 1',  N'Xanh',   38,   N'Loại 1'
EXEC insertSHOE 'SHO0098', 'PRD0122',  N'Tính co giãn 1',  N'Xanh',   38,   N'Loại 1'
EXEC insertSHOE 'SHO0099', 'PRD0122',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0100', 'PRD0122',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0101', 'PRD0122',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0102', 'PRD0123',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0103', 'PRD0123',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0104', 'PRD0123',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0105', 'PRD0123',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0106', 'PRD0123',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0107', 'PRD0123',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0108', 'PRD0123',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0109', 'PRD0123',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0110', 'PRD0123',  N'Tính co giãn 1',  N'Xanh',   40,   N'Loại 1'
EXEC insertSHOE 'SHO0111', 'PRD0123',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0112', 'PRD0123',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0113', 'PRD0123',  N'Tính co giãn 1',  N'Xanh',   40,   N'Loại 1'
EXEC insertSHOE 'SHO0114', 'PRD0123',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0115', 'PRD0123',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0116', 'PRD0123',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0117', 'PRD0123',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0118', 'PRD0123',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0119', 'PRD0123',  N'Tính co giãn 1',  N'Xanh',   38,   N'Loại 1'
EXEC insertSHOE 'SHO0120', 'PRD0123',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0121', 'PRD0123',  N'Tính co giãn 1',  N'Xanh',   40,   N'Loại 1'
EXEC insertSHOE 'SHO0122', 'PRD0124',  N'Tính co giãn 1',  N'Xanh',   40,   N'Loại 1'
EXEC insertSHOE 'SHO0123', 'PRD0124',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0124', 'PRD0124',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0125', 'PRD0124',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0126', 'PRD0124',  N'Tính co giãn 1',  N'Xanh',   40,   N'Loại 1'
EXEC insertSHOE 'SHO0127', 'PRD0124',  N'Tính co giãn 1',  N'Xanh',   40,   N'Loại 1'
EXEC insertSHOE 'SHO0128', 'PRD0124',  N'Tính co giãn 1',  N'Xanh',   40,   N'Loại 1'
EXEC insertSHOE 'SHO0129', 'PRD0124',  N'Tính co giãn 1',  N'Xanh',   40,   N'Loại 1'
EXEC insertSHOE 'SHO0130', 'PRD0124',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0131', 'PRD0124',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0132', 'PRD0124',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0133', 'PRD0124',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0134', 'PRD0124',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0135', 'PRD0124',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0136', 'PRD0124',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0137', 'PRD0124',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0138', 'PRD0124',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0139', 'PRD0124',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0140', 'PRD0124',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0141', 'PRD0124',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0142', 'PRD0124',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0143', 'PRD0124',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0144', 'PRD0125',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0145', 'PRD0125',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0146', 'PRD0125',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0147', 'PRD0125',  N'Tính co giãn 1',  N'Xanh',   40,   N'Loại 1'
EXEC insertSHOE 'SHO0148', 'PRD0125',  N'Tính co giãn 1',  N'Xanh',   40,   N'Loại 1'
EXEC insertSHOE 'SHO0149', 'PRD0125',  N'Tính co giãn 1',  N'Xanh',   40,   N'Loại 1'
EXEC insertSHOE 'SHO0150', 'PRD0125',  N'Tính co giãn 1',  N'Xanh',   40,   N'Loại 1'
EXEC insertSHOE 'SHO0151', 'PRD0125',  N'Tính co giãn 1',  N'Xanh',   40,   N'Loại 1'
EXEC insertSHOE 'SHO0152', 'PRD0125',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0153', 'PRD0125',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0154', 'PRD0125',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0155', 'PRD0125',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0156', 'PRD0125',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0157', 'PRD0125',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0158', 'PRD0125',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0159', 'PRD0125',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0160', 'PRD0125',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0161', 'PRD0125',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0162', 'PRD0125',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0163', 'PRD0125',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0164', 'PRD0125',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0165', 'PRD0126',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0166', 'PRD0126',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0167', 'PRD0126',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0168', 'PRD0126',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0169', 'PRD0126',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0170', 'PRD0126',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0171', 'PRD0126',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0172', 'PRD0126',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0173', 'PRD0126',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0174', 'PRD0126',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0175', 'PRD0127',  N'Tính co giãn 1',  N'Xanh',   40,   N'Loại 1'
EXEC insertSHOE 'SHO0176', 'PRD0127',  N'Tính co giãn 1',  N'Xanh',   40,   N'Loại 1'
EXEC insertSHOE 'SHO0177', 'PRD0127',  N'Tính co giãn 1',  N'Xanh',   40,   N'Loại 1'
EXEC insertSHOE 'SHO0178', 'PRD0127',  N'Tính co giãn 1',  N'Xanh',   40,   N'Loại 1'
EXEC insertSHOE 'SHO0179', 'PRD0127',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0180', 'PRD0127',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0181', 'PRD0127',  N'Tính co giãn 1',  N'Xanh',   40,   N'Loại 1'
EXEC insertSHOE 'SHO0182', 'PRD0128',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0183', 'PRD0128',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0184', 'PRD0128',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0185', 'PRD0128',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0186', 'PRD0128',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0187', 'PRD0128',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0188', 'PRD0128',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0189', 'PRD0128',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0190', 'PRD0128',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0191', 'PRD0129',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0192', 'PRD0129',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0193', 'PRD0129',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0194', 'PRD0129',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0195', 'PRD0129',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0196', 'PRD0129',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0197', 'PRD0129',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0198', 'PRD0129',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0199', 'PRD0129',  N'Tính co giãn 1',  N'Xanh',   39,   N'Loại 1'
EXEC insertSHOE 'SHO0200', 'PRD0129',  N'Tính co giãn 1',  N'Xanh',   40,   N'Loại 1'
GO

EXEC insertPRODUCT_USE_MATERIAL 'MAT0001', 'PRD0001'
EXEC insertPRODUCT_USE_MATERIAL 'MAT0002', 'PRD0001'
EXEC insertPRODUCT_USE_MATERIAL 'MAT0003', 'PRD0001'
EXEC insertPRODUCT_USE_MATERIAL 'MAT0001', 'PRD0002'
EXEC insertPRODUCT_USE_MATERIAL 'MAT0002', 'PRD0002'
EXEC insertPRODUCT_USE_MATERIAL 'MAT0001', 'PRD0003'
EXEC insertPRODUCT_USE_MATERIAL 'MAT0001', 'PRD0004'
EXEC insertPRODUCT_USE_MATERIAL 'MAT0002', 'PRD0004'
EXEC insertPRODUCT_USE_MATERIAL 'MAT0003', 'PRD0004'
EXEC insertPRODUCT_USE_MATERIAL 'MAT0001', 'PRD0005'
EXEC insertPRODUCT_USE_MATERIAL 'MAT0004', 'PRD0005'
EXEC insertPRODUCT_USE_MATERIAL 'MAT0001', 'PRD0006'
EXEC insertPRODUCT_USE_MATERIAL 'MAT0003', 'PRD0006'
EXEC insertPRODUCT_USE_MATERIAL 'MAT0004', 'PRD0007'
EXEC insertPRODUCT_USE_MATERIAL 'MAT0001', 'PRD0008'
EXEC insertPRODUCT_USE_MATERIAL 'MAT0003', 'PRD0008'
EXEC insertPRODUCT_USE_MATERIAL 'MAT0004', 'PRD0008'
EXEC insertPRODUCT_USE_MATERIAL 'MAT0001', 'PRD0009'
EXEC insertPRODUCT_USE_MATERIAL 'MAT0002', 'PRD0009'
EXEC insertPRODUCT_USE_MATERIAL 'MAT0003', 'PRD0010'
EXEC insertPRODUCT_USE_MATERIAL 'MAT0003', 'PRD0011'
EXEC insertPRODUCT_USE_MATERIAL 'MAT0002', 'PRD0012'
EXEC insertPRODUCT_USE_MATERIAL 'MAT0001', 'PRD0013'
EXEC insertPRODUCT_USE_MATERIAL 'MAT0002', 'PRD0013'
EXEC insertPRODUCT_USE_MATERIAL 'MAT0003', 'PRD0013'
EXEC insertPRODUCT_USE_MATERIAL 'MAT0004', 'PRD0013'
EXEC insertPRODUCT_USE_MATERIAL 'MAT0001', 'PRD0020'
EXEC insertPRODUCT_USE_MATERIAL 'MAT0002', 'PRD0020'
EXEC insertPRODUCT_USE_MATERIAL 'MAT0003', 'PRD0020'
EXEC insertPRODUCT_USE_MATERIAL 'MAT0004', 'PRD0020'
GO

EXEC insertPRODUCT_OF_ORDER 'ORD0001', 'PRD0001',  1
GO
EXEC insertPRODUCT_OF_ORDER 'ORD0001', 'PRD0002',  1
GO
EXEC insertPRODUCT_OF_ORDER 'ORD0001', 'PRD0003',  2
--EXEC insertPRODUCT_OF_ORDER 'ORD0001', 'PRD0008',  2 
GO
EXEC insertPRODUCT_OF_ORDER 'ORD0001', 'PRD0005',  3
GO
EXEC insertPRODUCT_OF_ORDER 'ORD0001', 'PRD0006',  2
GO
EXEC insertPRODUCT_OF_ORDER 'ORD0001', 'PRD0008',  1
GO
EXEC insertPRODUCT_OF_ORDER 'ORD0001', 'PRD0010',  4
GO
EXEC insertPRODUCT_OF_ORDER 'ORD0002', 'PRD0002',  2
GO
EXEC insertPRODUCT_OF_ORDER 'ORD0003', 'PRD0003',  3
GO
EXEC insertPRODUCT_OF_ORDER 'ORD0003', 'PRD0004',  1
--EXEC insertPRODUCT_OF_ORDER 'ORD0003', 'PRD0005',  1 --
GO
EXEC insertPRODUCT_OF_ORDER 'ORD0004', 'PRD0006',  1
GO
EXEC insertPRODUCT_OF_ORDER 'ORD0004', 'PRD0007',  3
--EXEC insertPRODUCT_OF_ORDER 'ORD0004', 'PRD0008',  2 --
GO
EXEC insertPRODUCT_OF_ORDER 'ORD0005', 'PRD0001',  2
--EXEC insertPRODUCT_OF_ORDER 'ORD0005', 'PRD0002',  4 --
GO
EXEC insertPRODUCT_OF_ORDER 'ORD0005', 'PRD0003',  2
--EXEC insertPRODUCT_OF_ORDER 'ORD0005', 'PRD0005',  2 --
--EXEC insertPRODUCT_OF_ORDER 'ORD0005', 'PRD0009',  1 --
GO
EXEC insertPRODUCT_OF_ORDER 'ORD0006', 'PRD0009',  1
GO
EXEC insertPRODUCT_OF_ORDER 'ORD0006', 'PRD0010',  1
GO
EXEC insertPRODUCT_OF_ORDER 'ORD0006', 'PRD0001',  2
--EXEC insertPRODUCT_OF_ORDER 'ORD0006', 'PRD0120',  2 --
GO
EXEC insertPRODUCT_OF_ORDER 'ORD0007', 'PRD0007',  1
--EXEC insertPRODUCT_OF_ORDER 'ORD0007', 'PRD0020',  5 --
GO
EXEC insertPRODUCT_OF_ORDER 'ORD0007', 'PRD0008',  2
GO
EXEC insertPRODUCT_OF_ORDER 'ORD0007', 'PRD0009',  6
GO
EXEC insertPRODUCT_OF_ORDER 'ORD0008', 'PRD0001',  2
GO
EXEC insertPRODUCT_OF_ORDER 'ORD0008', 'PRD0120',  2
--EXEC insertPRODUCT_OF_ORDER 'ORD0008', 'PRD0111',  2 --
--EXEC insertPRODUCT_OF_ORDER 'ORD0008', 'PRD0120',  2 --
GO
EXEC insertPRODUCT_OF_ORDER 'ORD0008', 'PRD0121',  3
GO
EXEC insertPRODUCT_OF_ORDER 'ORD0008', 'PRD0122',  1
GO
EXEC insertPRODUCT_OF_ORDER 'ORD0008', 'PRD0123',  1
GO
EXEC insertPRODUCT_OF_ORDER 'ORD0008', 'PRD0124',  1
GO
EXEC insertPRODUCT_OF_ORDER 'ORD0008', 'PRD0125',  2
GO
EXEC insertPRODUCT_OF_ORDER 'ORD0009', 'PRD0120',  3
GO
EXEC insertPRODUCT_OF_ORDER 'ORD0009', 'PRD0122',  3
GO
EXEC insertPRODUCT_OF_ORDER 'ORD0009', 'PRD0124',  3
GO
EXEC insertPRODUCT_OF_ORDER 'ORD0010', 'PRD0001',  3
--EXEC insertPRODUCT_OF_ORDER 'ORD0010', 'PRD0005',  4 --
GO
EXEC insertPRODUCT_OF_ORDER 'ORD0010', 'PRD0120',  3
GO
EXEC insertPRODUCT_OF_ORDER 'ORD0010', 'PRD0130',  2
GO
EXEC insertPRODUCT_OF_ORDER 'ORD0011', 'PRD0001',  1
GO
EXEC insertPRODUCT_OF_ORDER 'ORD0011', 'PRD0002',  1
GO
EXEC insertPRODUCT_OF_ORDER 'ORD0011', 'PRD0005',  2
GO
EXEC insertPRODUCT_OF_ORDER 'ORD0012', 'PRD0009',  2
GO
EXEC insertPRODUCT_OF_ORDER 'ORD0012', 'PRD0010',  2
--EXEC insertPRODUCT_OF_ORDER 'ORD0012', 'PRD0120',  1 --
GO
EXEC insertPRODUCT_OF_ORDER 'ORD0013', 'PRD0003',  2
GO
EXEC insertPRODUCT_OF_ORDER 'ORD0014', 'PRD0123',  3
GO
EXEC insertPRODUCT_OF_ORDER 'ORD0015', 'PRD0001',  4
GO

--comment
EXEC insertPAYMENT 'PAY0001',  N'Ghi chú 1',   N'Trạng thái 1',  N'Phương thức 1',  '20221010',  '12:12', 'ORD0001', 'CUS0001', 'PRO0001'
GO
EXEC insertPAYMENT 'PAY0002',  N'Ghi chú 2',   N'Trạng thái 2',  N'Phương thức 2',  '20221010',  '12:12', 'ORD0002', 'CUS0002', 'PRO0002'
GO
EXEC insertPAYMENT 'PAY0003',  N'Ghi chú 3',   N'Trạng thái 3',  N'Phương thức 3',  '20221010',  '12:12', 'ORD0003', 'CUS0003', 'PRO0003'
GO
EXEC insertPAYMENT 'PAY0004',  N'Ghi chú 4',   N'Trạng thái 4',  N'Phương thức 4',  '20221010',  '12:12', 'ORD0004', 'CUS0004', 'PRO0001'
GO
EXEC insertPAYMENT 'PAY0005',  N'Ghi chú 5',   N'Trạng thái 5',  N'Phương thức 5',  '20221010',  '12:12', 'ORD0005', 'CUS0005', 'PRO0001'
GO
EXEC insertPAYMENT 'PAY0006',  N'Ghi chú 6',   N'Trạng thái 6',  N'Phương thức 6',  '20221010',  '12:12', 'ORD0006', 'CUS0006', 'PRO0002'
GO
EXEC insertPAYMENT 'PAY0007',  N'Ghi chú 7',   N'Trạng thái 7',  N'Phương thức 7',  '20221010',  '12:12', 'ORD0007', 'CUS0007', 'PRO0002'
GO
EXEC insertPAYMENT 'PAY0008',  N'Ghi chú 8',   N'Trạng thái 8',  N'Phương thức 8',  '20221010',  '12:12', 'ORD0001', 'CUS0008', 'PRO0001'
GO
EXEC insertPAYMENT 'PAY0009',  N'Ghi chú 9',   N'Trạng thái 9',  N'Phương thức 9',  '20221010',  '12:12', 'ORD0009', 'CUS0009', 'PRO0003'
GO
EXEC insertPAYMENT 'PAY0010',  N'Ghi chú 10',  N'Trạng thái 10', N'Phương thức 10', '20221010',  '12:12', 'ORD0010', 'CUS0010', 'PRO0001'
GO
EXEC insertPAYMENT 'PAY0011',  N'Ghi chú 11',  N'Trạng thái 11', N'Phương thức 11', '20221010',  '12:12', 'ORD0011', 'CUS0011', 'PRO0004'
GO
EXEC insertPAYMENT 'PAY0012',  N'Ghi chú 12',  N'Trạng thái 12', N'Phương thức 12', '20221010',  '12:12', 'ORD0012', 'CUS0012', 'PRO0004'
GO
EXEC insertPAYMENT 'PAY0013',  N'Ghi chú 13',  N'Trạng thái 13', N'Phương thức 13', '20221010',  '12:12', 'ORD0013', 'CUS0013', 'PRO0004'
GO
EXEC insertPAYMENT 'PAY0014',  N'Ghi chú 14',  N'Trạng thái 14', N'Phương thức 14', '20221010',  '12:12', 'ORD0014', 'CUS0014', 'PRO0005'
GO
EXEC insertPAYMENT 'PAY0015',  N'Ghi chú 15',  N'Trạng thái 15', N'Phương thức 15', '20221010',  '12:12', 'ORD0015', 'CUS0015', 'PRO0006'
GO

UPDATE CUSTOMER
	SET CUSTOMER.accumulate_point = dbo.getPoint(temp3.Totall) FROM temp3 WHERE CUSTOMER.customer_id = temp3.customer_id

UPDATE CUSTOMER
	SET CUSTOMER._level = dbo.getLevel(CUSTOMER.accumulate_point)