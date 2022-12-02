DROP DATABASE IF EXISTS FashionStoreManager;
CREATE DATABASE FashionStoreManager;	-- Tạo database quản lý chuỗi cửa hàng chi nhánh
GO

USE FashionStoreManager
GO
--***************   TẠO BẢNG   *****************************

-- Tạo bảng khách hàng (Customer)
DROP TABLE IF EXISTS CUSTOMER;	
CREATE TABLE CUSTOMER(
	customer_id char(10) PRIMARY KEY, 
	register_date DATE,					 
	f_name nvarchar(10),
	l_name nvarchar(20),
	accumulate_point int,
	sex nvarchar(10),
	bdate DATE,
	_address nvarchar(100),
	_level int,
) 
GO

-- Tạo bảng giỏ hàng (Cart)
DROP TABLE IF EXISTS CART;	
CREATE TABLE CART(				
	cart_id char(10) PRIMARY KEY,
	total_money money,
	customer_id char(10),	 	
)
GO


-- Tạo bảng nhân viên (Employee)
DROP TABLE IF EXISTS EMPLOYEE;	
CREATE TABLE EMPLOYEE(
	employee_id char(10) PRIMARY KEY,
	f_name nvarchar(10),
	l_name nvarchar(20),
	bdate DATE,
	sex nvarchar(10),
	_address nvarchar(100),
	salary money,
	degree nvarchar(20),
	_start_date DATE,
	employee_type nvarchar(30),
	branch_id char(10),
	employee_manage_id char(10),	
)
GO

-- Tạo bảng chi nhánh (Branch)
DROP TABLE IF EXISTS BRANCH;	
CREATE TABLE BRANCH(
	branch_id char(10) PRIMARY KEY,
	branch_name nvarchar(30),
	_address nvarchar(1000),
	employee_id char(10),	
)
GO


-- Tạo bảng tài khoản (Account)
DROP TABLE IF EXISTS ACCOUNT;	
CREATE TABLE ACCOUNT(
	account_id char(10) PRIMARY KEY,
	username nvarchar(20) UNIQUE NOT NULL,
	_password char(20) NOT NULL,
	type_account nvarchar(20),
	employee_id char(10),	
	customer_id char(10),	 
) 
GO


-- Tạo bảng các SDT của khách hàng
DROP TABLE IF EXISTS CUSTOMER_PHONE;		
CREATE TABLE CUSTOMER_PHONE(
	customer_id char(10),
	phone_number nvarchar(20),
	PRIMARY KEY(customer_id, phone_number),
)
GO
	

-- Tạo bảng các email của khách hàng 
DROP TABLE IF EXISTS CUSTOMER_EMAIL;	
CREATE TABLE CUSTOMER_EMAIL(
	customer_id char(10),
	email nvarchar(20),
	PRIMARY KEY(customer_id, email),
)
GO
	

--Tạo bảng chất liệu (Material)
DROP TABLE IF EXISTS MATERIAL;	
CREATE TABLE MATERIAL(
	material_id char(10) PRIMARY KEY,
	material_name nvarchar(30),
)
GO

-- Tạo bảng các đặc tính của chất liệu
DROP TABLE IF EXISTS MATERIAL_CHARACTERISTIC;	
CREATE TABLE MATERIAL_CHARACTERISTIC(
	material_id char(10),
	characteristic nvarchar(30),
	PRIMARY KEY(material_id, characteristic),
)
GO

-- Tạo bảng danh mục (Category)
DROP TABLE IF EXISTS CATEGORY;	
CREATE TABLE CATEGORY(
	category_id char(10) PRIMARY KEY,
	category_name nvarchar(30),
)
GO

-- Tạo bảng các SDT nhân viên
DROP TABLE IF EXISTS EMPLOYEE_PHONE;	
CREATE TABLE EMPLOYEE_PHONE(
	employee_id char(10),
	phone_number nvarchar(20),
	PRIMARY KEY(employee_id, phone_number),
)
GO


-- Tạo bảng các email nhân viên
DROP TABLE IF EXISTS EMPLOYEE_EMAIL;	
CREATE TABLE EMPLOYEE_EMAIL(
	employee_id char(10),
	email nvarchar(20),
	PRIMARY KEY(employee_id, email),	
)
GO

-- Tạo bảng Showroom
DROP TABLE IF EXISTS SHOWROOM_BRANCH;
CREATE TABLE SHOWROOM_BRANCH(
	branch_id char(10) PRIMARY KEY,
)
GO


-- Tạo bảng chi nhánh online 
DROP TABLE IF EXISTS ONLINE_BRANCH;
CREATE TABLE ONLINE_BRANCH(
	branch_id char(10) PRIMARY KEY,
)
GO

-- Tạo bảng cơ sở vật chất (Furniture)
DROP TABLE IF EXISTS FURNITURE;	
CREATE TABLE FURNITURE(
	furniture_id char(10),
	branch_id char(10),
	PRIMARY KEY (furniture_id, branch_id),
	amount int,
	furniture_name nvarchar(30),
)
GO

-- Tạo bảng đơn hàng
DROP TABLE IF EXISTS _ORDER;	
CREATE TABLE _ORDER(
	order_id char(10) PRIMARY KEY,
	order_name nvarchar(30),
	order_date DATE,
	order_hour TIME,
	total_money money,
	amount int,
	customer_id char(10),
	employee_id char(10),
)
GO


-- Tạo bảng đơn hàng tại chi nhánh
DROP TABLE IF EXISTS ORDER_BRANCH;  
CREATE TABLE ORDER_BRANCH(
	order_id char(10) PRIMARY KEY,
	branch_id char(10), -- Mã cửa hàng showroom
)
GO


-- Tạo bảng khuyến mãi 
DROP TABLE IF EXISTS PROMOTION;	
CREATE TABLE PROMOTION(
	promotion_id char(10) PRIMARY KEY,
	promotion_name nvarchar(30),
	promotion_type nvarchar(30),
	_start_date DATE,
	end_date DATE,
	min_money money,
	max_money money,
	promotion_percent int,
	amount int,
	condition nvarchar(30),
	gift_product nvarchar(30),
	branch_id char(10),
)
GO


-- Tạo bảng hóa đơn 
DROP TABLE IF EXISTS PAYMENT; 
CREATE TABLE PAYMENT(
	payment_id char(10) PRIMARY KEY,
	payment_note nvarchar(100),
	total_money money,
	payment_status nvarchar(30),
	payment_method nvarchar(30),
	payment_date DATE,
	payment_hour TIME,
	accumulate_point int,
	order_id char(10) NOT NULL,
	customer_id char(10),
	promotion_id char(10),
)
GO

-- Tạo bảng đơn vị vận chuyển 
DROP TABLE IF EXISTS SHIPPING;	
CREATE TABLE SHIPPING(
	shipping_id char(10) PRIMARY KEY,
	shipping_name nvarchar(30),
)
GO

-- Tạo bảng đơn hàng online
DROP TABLE IF EXISTS ORDER_ONLINE;	
CREATE TABLE ORDER_ONLINE(
	order_id char(10) PRIMARY KEY,
	branch_id char(10),	-- mã cửa hàng online 
	delivery_address nvarchar(100),
	cost money,
	delivery_date DATE,
	delivery_hour TIME,
	vehicle nvarchar(30),
	driver nvarchar(30),
	receiver nvarchar(30),
	receiver_phone nvarchar(20),
	shipping_id char(10),
)
GO


-- Tạo bảng nhà cung cấp 
DROP TABLE IF EXISTS SUPPLIER;	
CREATE TABLE SUPPLIER(
	supplier_id char(10) PRIMARY KEY,
	supplier_name nvarchar(30),
	_address nvarchar(100),
)
GO

-- Tạo bảng SDT nhà cung cấp 
DROP TABLE IF EXISTS SUPPLIER_PHONE;	
CREATE TABLE SUPPLIER_Phone(
	supplier_id char(10),
	phone_num nvarchar(20),
	PRIMARY KEY(supplier_id, phone_num),
)
GO

-- Tạo bảng sản phẩm (Product)
DROP TABLE IF EXISTS PRODUCT;	
CREATE TABLE PRODUCT(
	product_id char(10) PRIMARY KEY,
	product_name nvarchar(100),
	manufacturer nvarchar(100),
	illustration nvarchar(500),
	entry_price money,
	sell_price money,
	amount int DEFAULT 0,
	category_id char(10),
	supplier_id char(10),	
)
GO

-- Tạo bảng Giỏ hàng gồm sản phẩm
DROP TABLE IF EXISTS CART_PRODUCT
CREATE TABLE CART_PRODUCT(
	product_id char(10),
	cart_id char(10),
	PRIMARY KEY (product_id, cart_id),
	sell_price money,
	amount int
)
GO

-- Tạo bảng quần áo (Clothes)
DROP TABLE IF EXISTS CLOTHES;	
CREATE TABLE CLOTHES( 
	clothes_id char(10) PRIMARY KEY,
	product_id char(10),
	clothes_elastic nvarchar(30),
	size varchar(5),
	color nvarchar(20),
	style nvarchar(30),
)
GO

-- Tạo bảng giày (Shoe)
DROP TABLE IF EXISTS SHOE;	
CREATE TABLE SHOE (
	shoe_id char(10) PRIMARY KEY,
	product_id char(10),
	shoe_elastic nvarchar(30),
	color nvarchar(20),
	size int,
	shoe_type nvarchar(20),
)
GO

-- Tạo bảng sản phẩm sử dụng chất liệu  
DROP TABLE IF EXISTS PRODUCT_USE_MATERIAL;	
CREATE TABLE PRODUCT_USE_MATERIAL(
	material_id char(10),
	product_id char(10),
	PRIMARY KEY(material_id, product_id),
)
GO

-- Tạo sản phẩm thuộc đơn hàng  
DROP TABLE IF EXISTS PRODUCT_OF_ORDER;	
CREATE TABLE PRODUCT_OF_ORDER(
	order_id char(10),
	product_id char(10),
	sell_price money,
	amount int,
	PRIMARY KEY(order_id, product_id),
)
GO

--***************************  THÊM CONSTRAINT CHO MỖI BẢNG  ***********************
-- Tạo các khóa ngoại 
ALTER TABLE CART ADD CONSTRAINT fk_customer_cart 
									FOREIGN KEY(customer_id) REFERENCES CUSTOMER(customer_id) ON DELETE CASCADE ON UPDATE CASCADE
ALTER TABLE EMPLOYEE ADD CONSTRAINT fk_employee_manage_id 
									FOREIGN KEY(employee_manage_id) REFERENCES EMPLOYEE(employee_id)
ALTER TABLE EMPLOYEE ADD CONSTRAINT fk_branch_employee 
									FOREIGN KEY (branch_id) REFERENCES BRANCH(branch_id) ON DELETE CASCADE ON UPDATE CASCADE
ALTER TABLE BRANCH ADD CONSTRAINT fk_employee_branch 
									FOREIGN KEY(employee_id) REFERENCES EMPLOYEE(employee_id)
ALTER TABLE ACCOUNT ADD CONSTRAINT fk_employee_account 
									FOREIGN KEY(employee_id) REFERENCES EMPLOYEE(employee_id) ON DELETE CASCADE ON UPDATE CASCADE
ALTER TABLE ACCOUNT ADD CONSTRAINT fk_customer_account 
									FOREIGN KEY(customer_id) REFERENCES CUSTOMER(customer_id) ON DELETE CASCADE ON UPDATE CASCADE
ALTER TABLE CUSTOMER_PHONE ADD CONSTRAINT fk_customer_phone 
									FOREIGN KEY(customer_id) REFERENCES CUSTOMER(customer_id) ON DELETE CASCADE ON UPDATE CASCADE
ALTER TABLE CUSTOMER_EMAIL ADD CONSTRAINT fk_customer_email 
									FOREIGN KEY(customer_id) REFERENCES CUSTOMER(customer_id) ON DELETE CASCADE ON UPDATE CASCADE				
ALTER TABLE MATERIAL_CHARACTERISTIC ADD CONSTRAINT fk_material_characteristic 
									FOREIGN KEY(material_id) REFERENCES MATERIAL(material_id) ON DELETE CASCADE ON UPDATE CASCADE
ALTER TABLE EMPLOYEE_EMAIL ADD CONSTRAINT fk_employee_email 
									FOREIGN KEY(employee_id) REFERENCES EMPLOYEE(employee_id) ON DELETE CASCADE ON UPDATE CASCADE
ALTER TABLE EMPLOYEE_PHONE ADD CONSTRAINT fk_employee_phone 
									FOREIGN KEY(employee_id) REFERENCES EMPLOYEE(employee_id) ON DELETE CASCADE ON UPDATE CASCADE
ALTER TABLE ONLINE_BRANCH ADD CONSTRAINT fk_branch_onlinebranch 
									FOREIGN KEY(branch_id) REFERENCES BRANCH(branch_id) ON DELETE CASCADE ON UPDATE CASCADE
ALTER TABLE SHOWROOM_BRANCH ADD CONSTRAINT fk_branch_showroom 
									FOREIGN KEY(branch_id) REFERENCES BRANCH(branch_id) ON DELETE CASCADE ON UPDATE CASCADE
ALTER TABLE FURNITURE ADD CONSTRAINT fk_branch_furniture 
									FOREIGN KEY(branch_id) REFERENCES BRANCH(branch_id) ON DELETE CASCADE ON UPDATE CASCADE
ALTER TABLE _ORDER ADD CONSTRAINT fk_customer_order 
									FOREIGN KEY(customer_id) REFERENCES CUSTOMER(customer_id)
ALTER TABLE _ORDER ADD CONSTRAINT fk_employee_order 
									FOREIGN KEY(employee_id) REFERENCES EMPLOYEE(employee_id)
ALTER TABLE ORDER_BRANCH ADD CONSTRAINT fk_order_orderbranch 
									FOREIGN KEY(order_id) REFERENCES _ORDER(order_id) ON DELETE CASCADE ON UPDATE CASCADE
ALTER TABLE ORDER_BRANCH ADD CONSTRAINT fk_branch_orderbranch 
									FOREIGN KEY(branch_id) REFERENCES SHOWROOM_BRANCH(branch_id) ON DELETE CASCADE ON UPDATE CASCADE
ALTER TABLE PROMOTION ADD CONSTRAINT fk_branch_promotion 
									FOREIGN KEY(branch_id) REFERENCES BRANCH(branch_id) ON DELETE CASCADE ON UPDATE CASCADE
ALTER TABLE PAYMENT ADD	CONSTRAINT fk_order_payment 
									FOREIGN KEY(order_id) REFERENCES _ORDER(order_id) ON DELETE CASCADE ON UPDATE CASCADE
ALTER TABLE PAYMENT ADD	CONSTRAINT fk_customer_payment 
									FOREIGN KEY(customer_id) REFERENCES CUSTOMER(customer_id) ON DELETE CASCADE ON UPDATE CASCADE
ALTER TABLE PAYMENT ADD	CONSTRAINT fk_promotion_payment 
									FOREIGN KEY(promotion_id) REFERENCES PROMOTION(promotion_id) ON DELETE CASCADE ON UPDATE CASCADE
ALTER TABLE ORDER_ONLINE ADD CONSTRAINT fk_order_orderonline 
									FOREIGN KEY(order_id) REFERENCES _ORDER(order_id) ON DELETE CASCADE ON UPDATE CASCADE
ALTER TABLE ORDER_ONLINE ADD CONSTRAINT fk_shipping_orderonline 
									FOREIGN KEY(shipping_id) REFERENCES SHIPPING(shipping_id) ON DELETE CASCADE ON UPDATE CASCADE
ALTER TABLE ORDER_ONLINE ADD CONSTRAINT fk_branch_orderonline 
									FOREIGN KEY(branch_id) REFERENCES ONLINE_BRANCH(branch_id) ON DELETE CASCADE ON UPDATE CASCADE
ALTER TABLE SUPPLIER_PHONE ADD CONSTRAINT fk_supplier_phone 
									FOREIGN KEY(supplier_id) REFERENCES SUPPLIER(supplier_id) ON DELETE CASCADE ON UPDATE CASCADE
ALTER TABLE PRODUCT ADD	CONSTRAINT fk_category_product 
									FOREIGN KEY(category_id) REFERENCES CATEGORY(category_id) ON DELETE CASCADE ON UPDATE CASCADE
ALTER TABLE PRODUCT ADD	CONSTRAINT fk_supplier_product 
									FOREIGN KEY(supplier_id) REFERENCES SUPPLIER(supplier_id) ON DELETE CASCADE ON UPDATE CASCADE
ALTER TABLE CART_PRODUCT ADD CONSTRAINT fk_cart_product1
									FOREIGN KEY(cart_id) REFERENCES CART(cart_id) ON DELETE CASCADE ON UPDATE CASCADE
ALTER TABLE CART_PRODUCT ADD CONSTRAINT fk_cart_product2
									FOREIGN KEY(product_id) REFERENCES PRODUCT(product_id) ON DELETE CASCADE ON UPDATE CASCADE
ALTER TABLE CLOTHES ADD CONSTRAINT fk_product_clothes 
									FOREIGN KEY(product_id) REFERENCES PRODUCT(product_id) ON DELETE CASCADE ON UPDATE CASCADE
ALTER TABLE SHOE ADD CONSTRAINT fk_product_shoes 
									FOREIGN KEY(product_id) REFERENCES PRODUCT(product_id) ON DELETE CASCADE ON UPDATE CASCADE	
ALTER TABLE PRODUCT_USE_MATERIAL ADD CONSTRAINT fk_material_id 
									FOREIGN KEY(material_id) REFERENCES MATERIAL(material_id) ON DELETE CASCADE ON UPDATE CASCADE
ALTER TABLE PRODUCT_USE_MATERIAL ADD CONSTRAINT fk_product_id1 
									FOREIGN KEY(product_id) REFERENCES PRODUCT(product_id) ON DELETE CASCADE ON UPDATE CASCADE
ALTER TABLE PRODUCT_OF_ORDER ADD CONSTRAINT fk_order_id 
									FOREIGN KEY(order_id) REFERENCES _ORDER(order_id) ON DELETE CASCADE ON UPDATE CASCADE
ALTER TABLE PRODUCT_OF_ORDER ADD CONSTRAINT fk_product_id2 
									FOREIGN KEY(product_id) REFERENCES PRODUCT(product_id) ON DELETE CASCADE ON UPDATE CASCADE
GO

/*********************** TẠO TRIGGER *****************/
-- 1. Bảng khách hàng
--Điểm tích lũy tối thiểu là 0 điểm
--Giới tính chỉ có thể là: M/F/Male/Female/Nam/Nữ 
--Tuổi của khách hàng phải trên 10 (do trên 10 thì mới phù hợp với các chức năng giao dịch khi mua hàng)
--Cấp độ của khách hàng tối thiểu là 0
CREATE TRIGGER tri_customer
ON CUSTOMER
FOR INSERT, UPDATE
AS
BEGIN
	IF EXISTS(SELECT * FROM INSERTED WHERE accumulate_point < 0)
	BEGIN
		raiserror (N'Lỗi: Điểm tích lũy tối thiểu là 0 điểm', 16,1)
		rollback
	END
	IF EXISTS(SELECT * FROM INSERTED WHERE SEX <> N'F' and SEX <> N'M' and SEX <> N'Male' and SEX <> N'Female' and SEX <> N'Nam' and SEX <> N'Nữ')
	BEGIN
		raiserror (N'Lỗi: Giới tính chỉ có thể là M/Male/F/Female/Nam/Nữ', 16,1)
		rollback
	END
	IF EXISTS(SELECT * FROM INSERTED WHERE YEAR(GETDATE()) - YEAR(bdate) <= 10) 
	BEGIN
		raiserror (N'Lỗi: Tuổi của khách hàng phải trên 10', 16,1)
		rollback
	END
	IF EXISTS(SELECT * FROM INSERTED WHERE _level < 0) 
	BEGIN
		raiserror (N'Lỗi: Cấp độ của khách hàng tối thiểu là 0', 16,1)
		rollback
	END
END
GO


-- 2. Bảng giỏ hàng
--Số lượng sản phẩm tối đa là 50
/*CREATE TRIGGER tri_cart
ON CART
FOR INSERT, UPDATE
AS
BEGIN
	IF EXISTS(SELECT * FROM INSERTED WHERE cart_amount > 50)
	BEGIN
		raiserror (N'Lỗi: Số lượng sản phẩm tối đa là 50', 16,1)
		rollback
	END
END
GO*/

--3. Bảng nhân viên
--Nhân viên phải trên 16 tuổi
--Giới tính chỉ có thể là: M/F/Male/Female/Nam/Nữ (cái này tui chỉnh kiểu dữ liệu lại từ char(1) -> nvarchar(10)
--Lương của nhân viên phải trên 5000000
--Lương của nhân viên phải nhỏ hơn lương của người quản lý nhân viên đó
CREATE TRIGGER tri_employee
ON EMPLOYEE
FOR INSERT, UPDATE
AS
BEGIN
	IF EXISTS(SELECT * FROM INSERTED WHERE YEAR(GETDATE()) - YEAR(bdate) <= 16)
	BEGIN
		raiserror (N'Lỗi: Nhân viên phải trên 16 tuổi', 16,1)
		rollback
	END
	IF EXISTS(SELECT * FROM INSERTED WHERE SEX <> N'F' and SEX <> N'M' and SEX <> N'Male' and SEX <> N'Female' and SEX <> N'Nam' and SEX <> N'Nữ')
	BEGIN
		raiserror (N'Lỗi: Giới tính chỉ có thể là M/Male/F/Female/Nam/Nữ', 16,1)
		rollback
	END
	IF EXISTS(SELECT * FROM INSERTED WHERE salary <= 5000000) 
	BEGIN
		raiserror (N'Lỗi: Lương của nhân viên phải trên 5000000', 16,1)
		rollback
	END
	IF EXISTS(SELECT * FROM INSERTED i, EMPLOYEE e WHERE i.employee_manage_id = e.employee_id and e.salary < i.salary) 
	BEGIN
		raiserror (N'Lỗi: Lương của nhân viên phải nhỏ hơn lương của người quản lý nhân viên đó', 16,1)
		rollback
	END
END
GO


-- 5. Bảng tài khoản
--Mật khẩu phải chứa ít nhất 8 kí tự
--Mật khẩu chứa ít nhất 1 chữ số và 1 chữ cái, 1 kí tự đặc biệt
CREATE TRIGGER tri_account
ON ACCOUNT
FOR INSERT, UPDATE
AS
BEGIN
	IF EXISTS(SELECT * FROM INSERTED WHERE LEN(_password) < 8)
	BEGIN
		raiserror (N'Lỗi: Mật khẩu phải chứa ít nhất 8 kí tự', 16,1)
		rollback
	END
	IF EXISTS(SELECT * FROM INSERTED WHERE  _password NOT LIKE '%0%' 
										and _password NOT LIKE '%1%'
										and _password NOT LIKE '%2%'
										and _password NOT LIKE '%3%'
										and _password NOT LIKE '%4%'
										and _password NOT LIKE '%5%'
										and _password NOT LIKE '%6%'
										and _password NOT LIKE '%7%'
										and _password NOT LIKE '%8%'
										and _password NOT LIKE '%9%')
	BEGIN
		raiserror (N'Lỗi: Mật khẩu chứa ít nhất 1 chữ số', 16,1)
		rollback
	END
	IF EXISTS(SELECT * FROM INSERTED WHERE  _password NOT LIKE '%a%' 
										and _password NOT LIKE '%b%'
										and _password NOT LIKE '%c%'
										and _password NOT LIKE '%d%'
										and _password NOT LIKE '%e%'
										and _password NOT LIKE '%f%'
										and _password NOT LIKE '%g%'
										and _password NOT LIKE '%h%'
										and _password NOT LIKE '%i%'
										and _password NOT LIKE '%j%'
										and _password NOT LIKE '%k%'
										and _password NOT LIKE '%l%'
										and _password NOT LIKE '%m%'
										and _password NOT LIKE '%n%'
										and _password NOT LIKE '%o%'
										and _password NOT LIKE '%p%'
										and _password NOT LIKE '%q%'
										and _password NOT LIKE '%r%'
										and _password NOT LIKE '%s%'
										and _password NOT LIKE '%t%'
										and _password NOT LIKE '%u%'
										and _password NOT LIKE '%v%'
										and _password NOT LIKE '%w%'
										and _password NOT LIKE '%x%'
										and _password NOT LIKE '%y%'
										and _password NOT LIKE '%z%')

	BEGIN
		raiserror (N'Lỗi: Mật khẩu chứa ít nhất 1 chữ cái', 16,1)
		rollback
	END
	IF EXISTS(SELECT * FROM INSERTED WHERE  _password NOT LIKE '%@%' 
										and _password NOT LIKE '%$%' 
										and _password NOT LIKE '%&%')
	BEGIN
		raiserror (N'Lỗi: Mật khẩu chứa ít nhất 1 kí tự đặc biệt: @/$/&', 16,1)
		rollback
	END
END
GO

-- 6. Bảng SDT khách hàng
--Format SDT phải hợp lệ

-- 7. Bảng Email khách hàng
--Format email phải chứa đuôi @gmail.com
CREATE TRIGGER tri_customeremail
ON CUSTOMER_EMAIL
FOR INSERT, UPDATE
AS
BEGIN
	IF EXISTS(SELECT * FROM INSERTED WHERE email NOT LIKE '%@gmail.com')
	BEGIN
		raiserror (N'Lỗi: Format email phải chứa đuôi @gmail.com', 16,1)
		rollback
	END
END
GO

-- 11. Bảng SDT nhân viên
--Format SDT phải hợp lệ

-- 12. Email nhân viên
--Format email phải chứa đuôi @gmail.com 
CREATE TRIGGER tri_employeeemail
ON EMPLOYEE_EMAIL
FOR INSERT, UPDATE
AS
BEGIN
	IF EXISTS(SELECT * FROM INSERTED WHERE email NOT LIKE '%@gmail.com')
	BEGIN
		raiserror (N'Lỗi: Format email phải chứa đuôi @gmail.com', 16,1)
		rollback
	END
END
GO

-- 18. Bảng khuyến mãi
--Ngày kết thúc khuyến mãi phải sau ngày bắt đầu KM
--Số lượng mỗi mã KM tối đa là 30
--Phần trăm Khuyến mãi: 0% < phần trăm <= 80%
CREATE TRIGGER tri_promotion
ON PROMOTION
FOR INSERT, UPDATE
AS
BEGIN
	IF EXISTS(SELECT * FROM INSERTED WHERE DATEDIFF(DD,_start_date,end_date) <= 0)
	BEGIN
		raiserror (N'Lỗi: Ngày kết thúc khuyến mãi phải sau ngày bắt đầu KM', 16,1)
		rollback
	END
	IF EXISTS(SELECT * FROM INSERTED WHERE amount > 30)
	BEGIN
		raiserror (N'Lỗi: Số lượng mỗi mã Khuyến mãi tối đa là 30', 16,1)
		rollback
	END
	IF EXISTS(SELECT * FROM INSERTED WHERE promotion_percent <= 0 or promotion_percent > 80) 
	BEGIN
		raiserror (N'Lỗi: Phần trăm Khuyến mãi: 0% < phần trăm <= 80%', 16,1)
		rollback
	END
END
GO

-- 21. Bảng đơn hàng online
--Chi phí vận chuyển phải nhỏ hơn tổng tiền đơn hàng
--Thời gian giao hàng tối đa là 12 ngày 
CREATE TRIGGER tri_orderonline
ON ORDER_ONLINE
FOR INSERT, UPDATE
AS
BEGIN
	IF EXISTS(SELECT * FROM INSERTED i, _ORDER o WHERE i.order_id = o.order_id and i.cost > o.total_money)
	BEGIN
		raiserror (N'Lỗi: Chi phí vận chuyển phải nhỏ hơn tổng tiền đơn hàng', 16,1)
		rollback
	END
	IF EXISTS(SELECT * FROM INSERTED i, _ORDER o WHERE i.order_id = o.order_id and DATEDIFF(DD,o.order_date,i.delivery_date) > 12)
	BEGIN
		raiserror (N'Lỗi: Thời gian giao hàng tối đa là 12 ngày', 16,1)
		rollback
	END
END
GO


-- 24. Bảng sản phẩm
--Giá nhập phải nhỏ hơn giá bán
CREATE TRIGGER tri_product
ON PRODUCT
FOR INSERT, UPDATE
AS
BEGIN
	IF EXISTS(SELECT * FROM INSERTED WHERE sell_price < entry_price)
	BEGIN
		raiserror (N'Lỗi: Giá nhập không thể lớn hơn giá bán', 16,1)
		rollback
	END
END
GO


-- 27. Bảng giày 
--Size giày từ 34 đến 43
CREATE TRIGGER tri_shoe
ON SHOE
FOR INSERT, UPDATE
AS
BEGIN
	IF EXISTS(SELECT * FROM INSERTED WHERE size < 34 or size > 43)
	BEGIN
		raiserror (N'Lỗi: Size giày từ 34 đến 43', 16,1)
		rollback
	END
END
GO

--************************** TẠO PROCEDURE **********************************

-- Bảng CUSTOMER (insert, update, delete)
CREATE PROCEDURE insertCUSTOMER 
		@customer_id char(10), 
		@register_date DATE,					 
		@f_name nvarchar(10),
		@l_name nvarchar(20),
		@sex nvarchar(10),
		@bdate DATE,
		@_address nvarchar(100)
AS
BEGIN
	INSERT INTO CUSTOMER (customer_id, register_date, f_name, l_name, sex, bdate, _address)
	VALUES (@customer_id, @register_date, @f_name, @l_name, @sex, @bdate, @_address)
END
GO

CREATE PROCEDURE updateCUSTOMER
		@customer_id char(10), 
		@register_date DATE,					 
		@f_name nvarchar(10),
		@l_name nvarchar(20),
		@sex nvarchar(10),
		@bdate DATE,
		@_address nvarchar(100)
AS
BEGIN
	UPDATE CUSTOMER 
	SET	register_date = @register_date, 
		f_name = @f_name, 
		l_name = @l_name,  
		sex = @sex, 
		bdate = @bdate,
		_address = @_address
	WHERE customer_id = @customer_id
END
GO

CREATE PROCEDURE deleteCUSTOMER
		@customer_id char(10)
AS
BEGIN
	DELETE FROM CUSTOMER 
	WHERE customer_id = @customer_id
END
GO

-- Bảng CART (Insert, Update, Delete)
CREATE PROCEDURE insertCART	
		@cart_id char(10),
		@customer_id char(10)
AS
BEGIN
	INSERT INTO CART (cart_id, customer_id)
	VALUES (@cart_id, @customer_id)
END
GO

CREATE PROCEDURE updateCART	
		@cart_id char(10),
		@customer_id char(10)
AS
BEGIN
	UPDATE CART 
	SET customer_id = @customer_id
	WHERE cart_id = @cart_id
END
GO

CREATE PROCEDURE deleteCART	
		@cart_id char(10)
AS
BEGIN
	DELETE FROM CART 
	WHERE cart_id = @cart_id
END
GO

-- Bảng EMPLOYEE (Insert, Update, Delete)
CREATE PROCEDURE insertEMPLOYEE	
		@employee_id char(10),
		@f_name nvarchar(10),
		@l_name nvarchar(20),
		@bdate DATE,
		@sex nvarchar(10),
		@_address nvarchar(100),
		@salary money,
		@degree nvarchar(20),
		@_start_date DATE,
		@employee_type nvarchar(30),
		@branch_id char(10),
		@employee_manage_id char(10)
AS
BEGIN
	INSERT INTO EMPLOYEE
	VALUES (@employee_id, @f_name, @l_name, @bdate, @sex, @_address, @salary, @degree, @_start_date, @employee_type, @branch_id, @employee_manage_id)
END
GO

CREATE PROCEDURE insertEMPLOYEE_Temp	
		@employee_id char(10),
		@f_name nvarchar(10),
		@l_name nvarchar(20),
		@bdate DATE,
		@sex nvarchar(10),
		@_address nvarchar(100),
		@salary money,
		@degree nvarchar(20),
		@_start_date DATE,
		@employee_type nvarchar(30)
AS
BEGIN
	INSERT INTO EMPLOYEE (employee_id, f_name, l_name, bdate, sex, _address, salary, degree, _start_date, employee_type)
	VALUES (@employee_id, @f_name, @l_name, @bdate, @sex, @_address, @salary, @degree, @_start_date, @employee_type)
END
GO

CREATE PROCEDURE updateEMPLOYEE_Temp
		@employee_id char(10), 
		@employee_manage_id char(10),
		@branch_id char(10)
AS
BEGIN
	UPDATE EMPLOYEE
	SET branch_id = @branch_id,
		employee_manage_id = @employee_manage_id
	WHERE employee_id = @employee_id
END
GO

CREATE PROCEDURE updateEMPLOYEE	
		@employee_id char(10),
		@f_name nvarchar(10),
		@l_name nvarchar(20),
		@bdate DATE,
		@sex nvarchar(10),
		@_address nvarchar(100),
		@salary money,
		@degree nvarchar(20),
		@_start_date DATE,
		@employee_type nvarchar(30),
		@branch_id char(10),
		@employee_manage_id char(10)
AS
BEGIN
	UPDATE EMPLOYEE 
	SET f_name = @f_name, 
		l_name = @l_name, 
		bdate = @bdate, 
		sex = @sex, 
		_address = @_address, 
		salary = @salary, 
		degree = @degree, 
		_start_date = @_start_date, 
		employee_type = @employee_type, 
		branch_id = @branch_id, 
		employee_manage_id = @employee_manage_id
	WHERE employee_id = @employee_id
END
GO

CREATE PROCEDURE deleteEMPLOYEE	
		@employee_id char(10)
AS
BEGIN
	DELETE FROM EMPLOYEE WHERE @employee_id = employee_id
END
GO

-- Bảng BRANCH (Insert, Update, Delete)
CREATE PROCEDURE insertBRANCH	
			@branch_id char(10),
			@branch_name nvarchar(30),
			@_address nvarchar(1000),
			@employee_id char(10)
AS
BEGIN
	INSERT INTO BRANCH 
	VALUES (@branch_id, @branch_name, @_address, @employee_id)
END
GO

CREATE PROCEDURE updateBRANCH	
			@branch_id char(10),
			@branch_name nvarchar(30),
			@_address nvarchar(1000),
			@employee_id char(10)
AS
BEGIN
	UPDATE BRANCH
	SET	branch_name = @branch_name,
		_address = @_address,
		employee_id = @employee_id
	WHERE branch_id = @branch_id
END
GO

CREATE PROCEDURE deleteBRANCH	
		@branch_id char(10)
AS
BEGIN
	DELETE FROM BRANCH WHERE branch_id = @branch_id
END
GO

-- Bảng ACCOUNT (Insert, Update, Delete)
CREATE PROCEDURE insertACCOUNT_CUS
		@account_id char(10),
		@username nvarchar(20),
		@_password char(20),
		@type_account nvarchar(20),	
		@customer_id char(10)
AS
BEGIN
	INSERT INTO ACCOUNT(account_id, username, _password, type_account, customer_id)
	VALUES (@account_id, @username, @_password, @type_account, @customer_id)
END
GO

CREATE PROCEDURE insertACCOUNT_EMP
		@account_id char(10),
		@username nvarchar(20),
		@_password char(20),
		@type_account nvarchar(20),	
		@employee_id char(10)
AS
BEGIN
	INSERT INTO ACCOUNT (account_id, username, _password, type_account, employee_id)
	VALUES (@account_id, @username, @_password, @type_account, @employee_id)
END
GO

CREATE PROCEDURE updateACCOUNT_CUS
		@account_id char(10),
		@username nvarchar(20),
		@_password char(20),
		@type_account nvarchar(20),	
		@customer_id char(10)
AS
BEGIN
	UPDATE ACCOUNT
	SET username = @username,
		_password = @_password,
		type_account = @type_account,	
		customer_id = @customer_id
	WHERE account_id = @account_id
END
GO

CREATE PROCEDURE updateACCOUNT_EMP	
		@account_id char(10),
		@username nvarchar(20),
		@_password char(20),
		@type_account nvarchar(20),	
		@employee_id char(10)
AS
BEGIN
	UPDATE ACCOUNT
	SET username = @username,
		_password = @_password,
		type_account = @type_account,	
		employee_id = @employee_id
	WHERE account_id = @account_id
END
GO

CREATE PROCEDURE deleteACCOUNT	
		@account_id char(10)
AS
BEGIN
	DELETE FROM ACCOUNT 
	WHERE account_id = @account_id
END
GO

-- Bảng CUSTOMER_PHONE (Insert, Delete)
CREATE PROCEDURE insertCUSTOMER_PHONE		
		@customer_id char(10),
		@phone_number nvarchar(20)
AS
BEGIN
	INSERT INTO CUSTOMER_PHONE 
	VALUES (@customer_id, @phone_number)
END
GO

CREATE PROCEDURE deleteCUSTOMER_PHONE	
		@customer_id char(10),
		@phone_number nvarchar(20)	
AS
BEGIN
	 DELETE FROM CUSTOMER_PHONE 
	 WHERE customer_id = @customer_id and phone_number = @phone_number
END
GO

-- Bảng CUSTOMER_EMAIL (Insert, Delete)
CREATE PROCEDURE insertCUSTOMER_EMAIL	
		@customer_id char(10),
		@email nvarchar(20)
AS
BEGIN
	INSERT INTO CUSTOMER_EMAIL 
	VALUES (@customer_id, @email)
END
GO

CREATE PROCEDURE deleteCUSTOMER_EMAIL
		@customer_id char(10),
		@email nvarchar(20)
AS
BEGIN
	DELETE FROM CUSTOMER_EMAIL 
	WHERE customer_id = @customer_id and email = @email
END
GO


-- Bảng MATERIAL (Insert, Update, Delete)
CREATE PROCEDURE insertMATERIAL
		@material_id char(10),
		@material_name nvarchar(30)
AS
BEGIN
	INSERT INTO MATERIAL 
	VALUES (@material_id, @material_name)
END
GO

CREATE PROCEDURE updateMATERIAL
		@material_id char(10),
		@material_name nvarchar(30)
AS
BEGIN
	UPDATE MATERIAL 
	SET material_name = @material_name
	WHERE material_id = @material_id
END
GO

CREATE PROCEDURE deleteMATERIAL
		@material_id char(10)
AS
BEGIN
	DELETE FROM MATERIAL WHERE material_id = @material_id
END
GO

-- Bảng MATERIAL_CHARACTERISTIC (Insert, Delete)
CREATE PROCEDURE insertMATERIAL_CHARACTERISTIC
		@material_id char(10),
		@characteristic nvarchar(30)
AS
BEGIN
	INSERT INTO MATERIAL_CHARACTERISTIC 
	VALUES (@material_id, @characteristic)
END
GO

CREATE PROCEDURE deleteMATERIAL_CHARACTERISTIC
		@material_id char(10),
		@characteristic nvarchar(30)	
AS
BEGIN
		DELETE FROM MATERIAL_CHARACTERISTIC
		WHERE material_id = @material_id  and characteristic = @characteristic
END
GO

-- Bảng CATEGORY (Insert, Update, Delete)
CREATE PROCEDURE insertCATEGORY
		@category_id char(10),
		@category_name nvarchar(30)
AS
BEGIN
	INSERT INTO CATEGORY 
	VALUES (@category_id, @category_name)
END
GO

CREATE PROCEDURE updateCATEGORY
		@category_id char(10),
		@category_name nvarchar(30)
AS
BEGIN
	UPDATE CATEGORY 
	SET category_name = @category_name
	WHERE category_id = @category_id
END
GO

CREATE PROCEDURE deleteCATEGORY
		@category_id char(10)
AS
BEGIN
	DELETE FROM CATEGORY WHERE category_id = @category_id
END
GO

-- Bảng EMPLOYEE_PHONE (Insert, Delete)
CREATE PROCEDURE insertEMPLOYEE_PHONE	
		@employee_id char(10),
		@phone_number nvarchar(20)
AS
BEGIN
		INSERT INTO EMPLOYEE_PHONE 
		VALUES (@employee_id, @phone_number)
END
GO

CREATE PROCEDURE deleteEMPLOYEE_PHONE
		@employee_id char(10),
		@phone_number nvarchar(20)	
AS
BEGIN
	DELETE FROM EMPLOYEE_PHONE 
	WHERE employee_id = @employee_id and phone_number = @phone_number
END
GO

-- Bảng EMPLOYEE_EMAIL (Insert, Delete)
CREATE PROCEDURE insertEMPLOYEE_EMAIL
		@employee_id char(10),
		@email nvarchar(20)
AS
BEGIN
	INSERT INTO EMPLOYEE_EMAIL 
	VALUES (@employee_id, @email)
END
GO

CREATE PROCEDURE deleteEMPLOYEE_EMAIL	
		@employee_id char(10),
		@email nvarchar(20)
AS
BEGIN
	DELETE FROM EMPLOYEE_EMAIL 
	WHERE employee_id = @employee_id and email = @email
END
GO

-- Bảng SHOWROOM_BRANCH (Insert, Delete)
CREATE PROCEDURE insertSHOWROOM_BRANCH
		@branch_id char(10)
AS
BEGIN
	INSERT INTO SHOWROOM_BRANCH
	VALUES (@branch_id)
END
GO

CREATE PROCEDURE deleteSHOWROOM_BRANCH
		@branch_id char(10)
AS
BEGIN
	DELETE FROM SHOWROOM_BRANCH 
	WHERE branch_id = @branch_id
END
GO

-- Bảng ONLINE_BRANCH (Insert, Delete)
CREATE PROCEDURE insertONLINE_BRANCH
		@branch_id char(10)
AS
BEGIN
	INSERT INTO ONLINE_BRANCH 
	VALUES (@branch_id)
END
GO

CREATE PROCEDURE deleteONLINE_BRANCH
		@branch_id char(10)
AS
BEGIN
	DELETE FROM ONLINE_BRANCH 
	WHERE branch_id = @branch_id
END
GO

-- Bảng FURNITURE (Insert, Update, Delete)
CREATE PROCEDURE insertFURNITURE
		@furniture_id char(10),
		@branch_id char(10),
		@amount int,
		@furniture_name nvarchar(30)
AS
BEGIN
	INSERT INTO FURNITURE 
	VALUES (@furniture_id, @branch_id, @amount, @furniture_name)
END
GO

CREATE PROCEDURE updateFURNITURE
		@furniture_id char(10),
		@branch_id char(10),
		@amount int,
		@furniture_name nvarchar(30)
AS
BEGIN
	UPDATE FURNITURE
	SET amount = @amount,
		furniture_name = @furniture_name
	WHERE furniture_id = @furniture_id and branch_id = @branch_id
END
GO

CREATE PROCEDURE deleteFURNITURE
		@furniture_id char(10),
		@branch_id char(10)
AS
BEGIN
		DELETE FROM FURNITURE
		WHERE furniture_id = @furniture_id and branch_id = @branch_id
END
GO

-- Bảng _ORDER (Insert, Update, Delete)
CREATE PROCEDURE insert_ORDER	
		@order_id char(10),
		@order_name nvarchar(30),
		@order_date DATE,
		@order_hour TIME,
		@customer_id char(10),
		@employee_id char(10)
AS
BEGIN
	INSERT INTO _ORDER (order_id, order_name, order_date, order_hour, customer_id, employee_id)
	VALUES (@order_id, @order_name, @order_date, @order_hour, @customer_id, @employee_id)
END
GO

CREATE PROCEDURE update_ORDER
		@order_id char(10),
		@order_name nvarchar(30),
		@order_date DATE,
		@order_hour TIME,
		@customer_id char(10),
		@employee_id char(10)	
AS
BEGIN
	UPDATE _ORDER
	SET order_name = @order_name,
		order_date = @order_date,
		order_hour = @order_hour,
		customer_id = @customer_id,
		employee_id = @employee_id
	WHERE order_id = @order_id
END
GO

CREATE PROCEDURE delete_ORDER	
		@order_id char(10)
AS
BEGIN
	DELETE FROM _ORDER
	WHERE order_id = @order_id
END
GO

-- Bảng ORDER_BRANCH (Insert, Update, Delete)
CREATE PROCEDURE insertORDER_BRANCH 
		@order_id char(10),
		@branch_id char(10)
AS
BEGIN
	INSERT INTO ORDER_BRANCH 
	VALUES (@order_id, @branch_id)
END
GO

CREATE PROCEDURE updateORDER_BRANCH 
		@order_id char(10),
		@branch_id char(10)
AS
BEGIN
	UPDATE ORDER_BRANCH
	SET branch_id = @branch_id
	WHERE order_id = @order_id
END
GO

CREATE PROCEDURE deleteORDER_BRANCH 
		@order_id char(10)
AS
BEGIN
	DELETE FROM ORDER_BRANCH
	WHERE order_id = @order_id
END
GO

-- Bảng PROMOTION (Insert, Update, Delete)
CREATE PROCEDURE insertPROMOTION
		@promotion_id char(10),
		@promotion_name nvarchar(30),
		@promotion_type nvarchar(30),
		@_start_date DATE,
		@end_date DATE,
		@min_money money,
		@max_money money,
		@promotion_percent int,
		@amount int,
		@condition nvarchar(30),
		@gift_product nvarchar(30),
		@branch_id char(10)
AS
BEGIN
	INSERT INTO PROMOTION 
	VALUES (@promotion_id, @promotion_name, @promotion_type, @_start_date, @end_date, @min_money, @max_money, @promotion_percent, @amount, @condition, @gift_product, @branch_id)
END
GO

CREATE PROCEDURE updatePROMOTION
		@promotion_id char(10),
		@promotion_name nvarchar(30),
		@promotion_type nvarchar(30),
		@_start_date DATE,
		@end_date DATE,
		@min_money money,
		@max_money money,
		@promotion_percent int,
		@amount int,
		@condition nvarchar(30),
		@gift_product nvarchar(30),
		@branch_id char(10)
AS
BEGIN
	UPDATE PROMOTION
	SET promotion_name = @promotion_name, 
		promotion_type = @promotion_type, 
		_start_date = @_start_date, 
		end_date = @end_date, 
		min_money = @min_money, 
		max_money = @max_money, 
		promotion_percent = @promotion_percent, 
		amount = @amount, 
		condition = @condition, 
		gift_product = @gift_product, 
		branch_id = @branch_id
	WHERE promotion_id = @promotion_id
END
GO

CREATE PROCEDURE deletePROMOTION
	@promotion_id char(10)
AS
BEGIN
	DELETE FROM PROMOTION 
	WHERE promotion_id = @promotion_id
END
GO

-- Bảng PAYMENT (insert, Update, Delete)
CREATE PROCEDURE insertPAYMENT
		@payment_id char(10),
		@payment_note nvarchar(100),
		@payment_status nvarchar(30),
		@payment_method nvarchar(30),
		@payment_date DATE,
		@payment_hour TIME,
		@order_id char(10),
		@customer_id char(10),
		@promotion_id char(10)
AS
BEGIN
	INSERT INTO PAYMENT (payment_id, payment_note, payment_status, payment_method, payment_date, payment_hour, order_id, customer_id, promotion_id)
	VALUES (@payment_id, @payment_note, @payment_status, @payment_method, @payment_date, @payment_hour, @order_id, @customer_id, @promotion_id)
END
GO

CREATE PROCEDURE updatePAYMENT
		@payment_id char(10),
		@payment_note nvarchar(100),
		@payment_status nvarchar(30),
		@payment_method nvarchar(30),
		@payment_date DATE,
		@payment_hour TIME,
		@order_id char(10),
		@customer_id char(10),
		@promotion_id char(10)
AS
BEGIN
	UPDATE PAYMENT
	SET payment_note = @payment_note, 
		payment_status = @payment_status, 
		payment_method = @payment_method, 
		payment_date = @payment_date, 
		payment_hour = @payment_hour,  
		order_id = @order_id, 
		customer_id = customer_id,
		promotion_id = @promotion_id
	WHERE payment_id = @payment_id
END
GO

CREATE PROCEDURE deletePAYMENT
		@payment_id char(10)
AS
BEGIN
	DELETE FROM PAYMENT 
	WHERE payment_id = @payment_id
END
GO

-- Bảng SHIPPING (Insert, Update, Delete)
CREATE PROCEDURE insertSHIPPING	
		@shipping_id char(10),
		@shipping_name nvarchar(30)
AS
BEGIN
		INSERT INTO SHIPPING 
		VALUES (@shipping_id, @shipping_name)
END
GO

CREATE PROCEDURE updateSHIPPING	
		@shipping_id char(10),
		@shipping_name nvarchar(30)
AS
BEGIN
	UPDATE SHIPPING
	SET shipping_name = @shipping_name
	WHERE shipping_id = @shipping_id
END
GO

CREATE PROCEDURE deleteSHIPPING	
		@shipping_id char(10)
AS
BEGIN
	DELETE FROM SHIPPING 
	WHERE shipping_id = @shipping_id
END
GO

-- Bảng ORDER_ONLINE (Insert, Update, Delete)
CREATE PROCEDURE insertORDER_ONLINE
		@order_id char(10),
		@branch_id char(10),
		@delivery_address nvarchar(100),
		@cost money,
		@delivery_date DATE,
		@delivery_hour TIME,
		@vehicle nvarchar(30),
		@driver nvarchar(30),
		@receiver nvarchar(30),
		@receiver_phone nvarchar(20),
		@shipping_id char(10)
AS
BEGIN
	INSERT INTO ORDER_ONLINE
	VALUES(@order_id, @branch_id, @delivery_address, @cost, @delivery_date, @delivery_hour, @vehicle, @driver, @receiver, @receiver_phone, @shipping_id)
END
GO

CREATE PROCEDURE updateORDER_ONLINE
		@order_id char(10),
		@branch_id char(10),
		@delivery_address nvarchar(100),
		@cost money,
		@delivery_date DATE,
		@delivery_hour TIME,
		@vehicle nvarchar(30),
		@driver nvarchar(30),
		@receiver nvarchar(30),
		@receiver_phone nvarchar(20),
		@shipping_id char(10)
AS
BEGIN
	UPDATE ORDER_ONLINE
	SET	branch_id = @branch_id, 
		delivery_address = @delivery_address, 
		cost = @cost, 
		delivery_date = @delivery_date, 
		delivery_hour = @delivery_hour, 
		vehicle = @vehicle, 
		driver = @driver, 
		receiver = @receiver, 
		receiver_phone = @receiver_phone, 
		shipping_id = @shipping_id
	WHERE order_id = @order_id
END
GO

CREATE PROCEDURE deleteORDER_ONLINE
		@order_id char(10)
AS
BEGIN
	DELETE FROM ORDER_ONLINE
	WHERE order_id = @order_id
END
GO

-- Bảng SUPPLIER (Insert, Update, Delete)
CREATE PROCEDURE insertSUPPLIER	
		@supplier_id char(10),
		@supplier_name nvarchar(30),
		@_address nvarchar(100)
AS
BEGIN
	INSERT INTO SUPPLIER 
	VALUES(@supplier_id, @supplier_name, @_address)
END
GO

CREATE PROCEDURE updateSUPPLIER	
		@supplier_id char(10),
		@supplier_name nvarchar(30),
		@_address nvarchar(100)
AS
BEGIN
	UPDATE SUPPLIER
	SET supplier_name = @supplier_name, 
		_address = @_address
	WHERE supplier_id = @supplier_id
END
GO

CREATE PROCEDURE deleteSUPPLIER	
		@supplier_id char(10)
AS
BEGIN
	DELETE FROM SUPPLIER 
	WHERE supplier_id = @supplier_id
END
GO

-- Bảng SUPPLIER_PHONE (Insert, Delete)
CREATE PROCEDURE insertSUPPLIER_PHONE	
		@supplier_id char(10),
		@phone_num nvarchar(20)
AS
BEGIN
	INSERT INTO SUPPLIER_PHONE
	VALUES (@supplier_id, @phone_num)
END
GO

CREATE PROCEDURE deleteSUPPLIER_PHONE	
		@supplier_id char(10),
		@phone_num nvarchar(20)
AS
BEGIN
	DELETE FROM SUPPLIER_PHONE 
	WHERE supplier_id = @supplier_id and phone_num = @phone_num 
END
GO

-- Bảng PRODUCT (Insert, Update, Delete)
CREATE PROCEDURE insertPRODUCT	
		@product_id char(10),
		@product_name nvarchar(100),
		@manufacturer nvarchar(100),
		@illustration nvarchar(500),
		@entry_price money,
		@sell_price money,
		@category_id char(10),
		@supplier_id char(10)
AS
BEGIN
	INSERT INTO PRODUCT (product_id, product_name, manufacturer, illustration, entry_price, sell_price, category_id, supplier_id)
	VALUES (@product_id, @product_name, @manufacturer, @illustration, @entry_price, @sell_price, @category_id, @supplier_id)
END
GO

CREATE PROCEDURE updatePRODUCT	
		@product_id char(10),
		@product_name nvarchar(100),
		@manufacturer nvarchar(100),
		@illustration nvarchar(500),
		@entry_price money,
		@sell_price money,
		@category_id char(10),
		@supplier_id char(10)
AS
BEGIN
	UPDATE PRODUCT
	SET product_name = @product_name,
		manufacturer = @manufacturer, 
		illustration = @illustration, 
		entry_price = @entry_price, 
		sell_price = @sell_price, 
		category_id = @category_id, 
		supplier_id = @supplier_id
	WHERE product_id = @product_id
END
GO

CREATE PROCEDURE deletePRODUCT
		@product_id char(10)	
AS
BEGIN
	DELETE FROM PRODUCT
	WHERE product_id = @product_id
END
GO

-- Bảng CART_PRODUCT (Insert, Update, Delete)
CREATE PROCEDURE insertCART_PRODUCT
		@product_id char(10),
		@cart_id char(10),
		@amount int
AS
BEGIN
	INSERT INTO CART_PRODUCT (product_id, cart_id, amount)
	VALUES (@product_id, @cart_id, @amount)
END
GO

CREATE PROCEDURE updateCART_PRODUCT
		@product_id char(10),
		@cart_id char(10),
		@amount int
AS
BEGIN
	UPDATE CART_PRODUCT
	SET cart_id = @cart_id,
		amount = @amount
	WHERE product_id = @product_id
END
GO

CREATE PROCEDURE deleteCART_PRODUCT
		@product_id char(10),
		@cart_id char(10)
AS
BEGIN
	DELETE FROM CART_PRODUCT
	WHERE product_id = @product_id and cart_id = @cart_id
END
GO

-- Bảng CLOTHES (Insert, Delete)
CREATE PROCEDURE insertCLOTHES	
		@clothes_id char(10),
		@product_id char(10),
		@clothes_elastic nvarchar(30),
		@size varchar(5),
		@color nvarchar(20),
		@style nvarchar(30)
AS
BEGIN
	INSERT INTO CLOTHES 
	VALUES (@clothes_id, @product_id, @clothes_elastic, @size, @color, @style)
END
GO

CREATE PROCEDURE deleteCLOTHES	
		@clothes_id char(10)
AS
BEGIN
	DELETE FROM CLOTHES 
	WHERE clothes_id = @clothes_id
END
GO

-- Bảng SHOE (Insert, Delete)
CREATE PROCEDURE insertSHOE
		@shoe_id char(10),
		@product_id char(10),
		@shoe_elastic nvarchar(30),
		@color nvarchar(20),
		@size int,
		@shoe_type nvarchar(20)
AS
BEGIN
	INSERT INTO SHOE
	VALUES (@shoe_id, @product_id, @shoe_elastic, @color, @size, @shoe_type)
END
GO

CREATE PROCEDURE deleteSHOE
		@shoe_id char(10)
AS
BEGIN
	DELETE FROM SHOE 
	WHERE shoe_id = @shoe_id
END
GO

-- Bảng PRODUCT_USE_MATERIAL (Insert, Delete)
CREATE PROCEDURE insertPRODUCT_USE_MATERIAL	
		@material_id char(10),
		@product_id char(10)
AS
BEGIN
	INSERT INTO PRODUCT_USE_MATERIAL
	VALUES (@material_id, @product_id)
END
GO

CREATE PROCEDURE deletePRODUCT_USE_MATERIAL	
		@material_id char(10),
		@product_id char(10)
AS
BEGIN
	DELETE FROM PRODUCT_USE_MATERIAL
	WHERE material_id = @material_id and product_id = @product_id
END
GO

-- Bảng PRODUCT_OF_ORDER (Insert, Update, Delete)
CREATE PROCEDURE insertPRODUCT_OF_ORDER	
		@order_id char(10),
		@product_id char(10),
		@amount int
AS
BEGIN
	INSERT INTO PRODUCT_OF_ORDER (order_id, product_id, amount)
	VALUES (@order_id, @product_id, @amount)
END
GO

CREATE PROCEDURE updatePRODUCT_OF_ORDER
		@order_id char(10),
		@product_id char(10),
		@amount int	
AS
BEGIN
	UPDATE PRODUCT_OF_ORDER
	SET amount = @amount
	WHERE order_id = @order_id and product_id = @product_id
END
GO

CREATE PROCEDURE deletePRODUCT_OF_ORDER
		@order_id char(10),
		@product_id char(10)
AS
BEGIN
	DELETE FROM PRODUCT_OF_ORDER
	WHERE order_id = @order_id and product_id = @product_id
END
GO

--*************************TRIGGER TRÊN NHIỀU BẢNG ***********************

-- Bảng CART_PRODUCT (liên quan đến PRODUCT)
/*CREATE TRIGGER tri_cartproduct
ON CART_PRODUCT
FOR INSERT, UPDATE
AS
BEGIN
	IF EXISTS(SELECT * FROM INSERTED, PRODUCT, CART_PRODUCT WHERE CART_PRODUCT.amount > PRODUCT.amount and INSERTED.product_id = PRODUCT.product_id)
	BEGIN
		raiserror (N'Lỗi:Số lượng sản phẩm của mã SP này ko còn đủ số lượng', 16,1)
		rollback
	END
END
GO*/

-- Bảng PRODUCT_OF_ORDER (liên quan đến PRODUCT)
CREATE TRIGGER tri_productoforder
ON PRODUCT_OF_ORDER
FOR INSERT, UPDATE
AS
BEGIN
	IF EXISTS(SELECT * FROM INSERTED, PRODUCT, PRODUCT_OF_ORDER WHERE PRODUCT_OF_ORDER.amount > PRODUCT.amount and INSERTED.product_id = PRODUCT.product_id)
	BEGIN
		raiserror (N'Lỗi:Số lượng sản phẩm của mã SP này ko còn đủ số lượng', 16,1)
		rollback
	END
END
GO

/*
CREATE FUNCTION GetPromotionId(@money money)
RETURNS char(10)
AS
BEGIN
	DECLARE @money1 money;
	SET @money1 = (SELECT min(@money - min_money) FROM PROMOTION WHERE @money >= min_money)
	DECLARE @id char(10)
	SET @id = (SELECT promotion_id FROM PROMOTION WHERE @money - min_money = @money1)
	IF EXISTS(SELECT promotion_id FROM PROMOTION WHERE promotion_id = @id)
		RETURN @id
	RETURN NULL
END
GO*/

/*
CREATE FUNCTION TinhKM(@money money)
RETURNS money
AS
BEGIN
	DECLARE @money1 money;
	SET @money1 = (SELECT min(@money - min_money) FROM PROMOTION WHERE @money >= min_money)
	DECLARE @id char(10)
	SET @id = (SELECT promotion_id FROM PROMOTION WHERE @money - min_money = @money1)
	IF EXISTS(SELECT promotion_id FROM PROMOTION WHERE promotion_id = @id)
	BEGIN
		DECLARE @money_KM money;
		SET @money_KM = @money * (SELECT promotion_percent FROM PROMOTION WHERE promotion_id = @id) /100
		IF(@money_KM > (SELECT max_money FROM PROMOTION WHERE promotion_id = @id))
			SET @money_KM = (SELECT max_money FROM PROMOTION WHERE promotion_id = @id)
		RETURN @money_KM	
	END 
	RETURN 0
END
GO*/
CREATE VIEW temp3 AS SELECT _ORDER.customer_id, SUM(_ORDER.total_money) AS Totall FROM _ORDER GROUP BY customer_id
GO

CREATE FUNCTION getPoint(@money money)
RETURNS int
AS
BEGIN
	IF(@money>0)
		RETURN @money/1000
	RETURN 0
END
GO

CREATE FUNCTION getLevel (@point int)
RETURNs int
AS
BEGIN
	IF (@point>=500 and @point<1500)
		RETURN 2
	ELSE IF (@point>=1500 and @point<3000)
		RETURN 3
	ELSE IF (@point>=3000 and @point<5000)
		RETURN 4
	ELSE IF (@point>=5000 and @point<7500)
		RETURN 5
	ELSE IF (@point>=7500)
		RETURN 6
	RETURN 1
END
GO

CREATE FUNCTION TinhKM (@order_id char(10), @promotion_id char(10))
RETURNS money
AS
BEGIN
	IF ((SELECT total_money FROM _ORDER WHERE order_id = @order_id) < (SELECT min_money FROM PROMOTION WHERE promotion_id = @promotion_id))
	BEGIN
		--raiserror(N'Chưa đủ số tiền tối thiểu để áp dụng khuyến mãi này', 16,1)
		RETURN 0
	END
	ELSE IF (DATEDIFF(DD,(SELECT _start_date FROM PROMOTION WHERE promotion_id = @promotion_id),(SELECT order_date FROM _ORDER WHERE order_id = @order_id)) < 0)
	BEGIN
		--raiserror(N'Khuyễn mãi chưa đến thời gian áp dụng',16 , 1)
		RETURN 0
	END
	ELSE IF (DATEDIFF(DD,(SELECT end_date FROM PROMOTION WHERE promotion_id = @promotion_id),(SELECT order_date FROM _ORDER WHERE order_id = @order_id)) > 0)
	BEGIN
		--raiserror(N'Khuyễn mãi đã quá hạn thời gian áp dụng', 16, 1)
		RETURN 0
	END
	ELSE 
	BEGIN
		DECLARE @money_KM money;
		SET @money_KM = (SELECT total_money FROM _ORDER WHERE order_id = @order_id) * (SELECT promotion_percent FROM PROMOTION WHERE promotion_id = @promotion_id) / 100
		IF(@money_KM > (SELECT max_money FROM PROMOTION WHERE promotion_id = @promotion_id))
			SET @money_KM = (SELECT max_money FROM PROMOTION WHERE promotion_id = @promotion_id)
		RETURN @money_KM
	END
	RETURN 0
END
GO

CREATE VIEW temp AS SELECT PRODUCT_OF_ORDER.order_id, SUM(PRODUCT_OF_ORDER.sell_price * PRODUCT_OF_ORDER.amount) AS Totall FROM PRODUCT_OF_ORDER GROUP BY order_id
GO

CREATE VIEW temp2 AS SELECT CART_PRODUCT.cart_id, SUM(CART_PRODUCT.sell_price * CART_PRODUCT.amount) AS Totall FROM CART_PRODUCT GROUP BY cart_id
GO

CREATE TRIGGER updatePrice ON PRODUCT FOR UPDATE
AS
BEGIN
	UPDATE CART_PRODUCT
	SET CART_PRODUCT.sell_price = inserted.sell_price FROM inserted WHERE CART_PRODUCT.product_id = inserted.product_id

	UPDATE PRODUCT_OF_ORDER
	SET PRODUCT_OF_ORDER.sell_price = inserted.sell_price FROM inserted WHERE PRODUCT_OF_ORDER.product_id = inserted.product_id

	UPDATE CART 
	SET CART.total_money = temp2.Totall FROM temp2 WHERE CART.cart_id = temp2.cart_id

	UPDATE _ORDER
	SET _ORDER.total_money = temp.Totall FROM temp WHERE _ORDER.order_id = temp.order_id

	UPDATE _ORDER 
	SET _ORDER.amount = (SELECT SUM(PRODUCT_OF_ORDER.amount) FROM PRODUCT_OF_ORDER WHERE PRODUCT_OF_ORDER.order_id = _ORDER.order_id)

	UPDATE PAYMENT
	SET PAYMENT.total_money = _ORDER.total_money - dbo.TinhKM(PAYMENT.order_id, PROMOTION.promotion_id) FROM _ORDER, PROMOTION WHERE PAYMENT.order_id = _ORDER.order_id and PAYMENT.promotion_id = PROMOTION.promotion_id
END
GO

-- Khi cập nhật CART_PRODUCT thì tự động cập nhật sell_price (thuộc tính dẫn xuất)
CREATE TRIGGER tri_cartProduct2
ON CART_PRODUCT
FOR INSERT, UPDATE
AS
BEGIN
	UPDATE CART_PRODUCT
	SET CART_PRODUCT.sell_price = PRODUCT.sell_price FROM PRODUCT WHERE CART_PRODUCT.product_id = PRODUCT.product_id

	UPDATE CART 
	SET CART.total_money = temp2.Totall FROM temp2 WHERE CART.cart_id = temp2.cart_id
END
GO


CREATE TRIGGER triProductOFOrder
ON PRODUCT_OF_ORDER
FOR INSERT, UPDATE
AS
BEGIN
	UPDATE PRODUCT_OF_ORDER
	SET PRODUCT_OF_ORDER.sell_price = PRODUCT.sell_price FROM PRODUCT WHERE PRODUCT_OF_ORDER.product_id = PRODUCT.product_id
	
	UPDATE _ORDER
	SET _ORDER.total_money = temp.Totall FROM temp WHERE _ORDER.order_id = temp.order_id

	UPDATE _ORDER 
	SET _ORDER.amount = (SELECT SUM(PRODUCT_OF_ORDER.amount) FROM PRODUCT_OF_ORDER WHERE PRODUCT_OF_ORDER.order_id = _ORDER.order_id)

	UPDATE PAYMENT
	SET PAYMENT.total_money = _ORDER.total_money - dbo.TinhKM(PAYMENT.order_id, PROMOTION.promotion_id) FROM _ORDER, PROMOTION WHERE PAYMENT.order_id = _ORDER.order_id and PAYMENT.promotion_id = PROMOTION.promotion_id

	UPDATE PRODUCT 
	SET PRODUCT.amount = PRODUCT.amount - INSERTED.amount FROM INSERTED WHERE INSERTED.product_id = PRODUCT.product_id
	
END
GO

CREATE TRIGGER triInsertShoe
ON SHOE
FOR INSERT
AS
BEGIN
	UPDATE PRODUCT
	SET PRODUCT.amount = PRODUCT.amount + 1 FROM INSERTED WHERE INSERTED.product_id = PRODUCT.product_id
END
GO

/*
Vô hiệu hóa các trình kích hoạt lồng nhau/đệ quy
Tập lệnh sau sẽ ngừng thực thi tất cả các trình kích hoạt lồng nhau.
*/
sp_CONFIGURE 'nested_triggers',0
GO
RECONFIGURE
GO


CREATE TRIGGER triInsertClothes
ON CLOTHES
FOR INSERT
AS
BEGIN
	UPDATE PRODUCT
	SET PRODUCT.amount = PRODUCT.amount + 1 FROM INSERTED WHERE INSERTED.product_id = PRODUCT.product_id
END
GO

CREATE TRIGGER tri_updatePayment 
ON PAYMENT 
FOR INSERT,UPDATE
AS
BEGIN
	UPDATE PAYMENT
	SET PAYMENT.total_money = _ORDER.total_money - dbo.TinhKM(PAYMENT.order_id, PROMOTION.promotion_id) FROM _ORDER, PROMOTION WHERE PAYMENT.order_id = _ORDER.order_id and PAYMENT.promotion_id = PROMOTION.promotion_id

	UPDATE PROMOTION
	SET PROMOTION.amount = PROMOTION.amount - 1 FROM INSERTED WHERE INSERTED.promotion_id = PROMOTION.promotion_id

	UPDATE CUSTOMER
	SET CUSTOMER.accumulate_point = dbo.getPoint(temp3.Totall) FROM temp3 WHERE CUSTOMER.customer_id = temp3.customer_id

	UPDATE CUSTOMER
	SET CUSTOMER._level = dbo.getLevel(CUSTOMER.accumulate_point)
END
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

-- Thủ tục: Hiển thị những khách hàng tiềm năng (tham số đầu vào: tổng tiền tối thiểu đã mua tại cửa hàng)
CREATE PROCEDURE Potential_Customers
		@money money
AS
BEGIN
	SELECT c.customer_id, c.f_name, c.l_name, SUM(o.total_money) FROM CUSTOMER c, _ORDER o
	WHERE c.customer_id = o.customer_id 
	GROUP BY c.customer_id, c.f_name, c.l_name
	HAVING SUM(o.total_money) >= @money
	ORDER BY SUM(o.total_money) DESC
END
GO

-- Thủ tục: Hiện thị những sản phẩm bán chạy (tham số đầu vào: số lượng tối thiểu đã bán) 
CREATE PROCEDURE Bestseller
		@amount int
AS
BEGIN
	SELECT p.product_id, p.product_name, SUM(po.amount) FROM PRODUCT p, PRODUCT_OF_ORDER po
	WHERE p.product_id = po.product_id
	GROUP BY p.product_id, p.product_name
	HAVING SUM(po.amount) >= @amount
	ORDER BY SUM(po.amount) DESC
END
GO

SELECT * FROM CUSTOMER;
SELECT * FROM CART;	
SELECT * FROM EMPLOYEE;	
SELECT * FROM BRANCH;	
SELECT * FROM ACCOUNT;	
SELECT * FROM CUSTOMER_PHONE;		
SELECT * FROM CUSTOMER_EMAIL;	
SELECT * FROM MATERIAL;	
SELECT * FROM MATERIAL_CHARACTERISTIC;	
SELECT * FROM CATEGORY;	
SELECT * FROM EMPLOYEE_PHONE;	
SELECT * FROM EMPLOYEE_EMAIL;	
SELECT * FROM SHOWROOM_BRANCH;
SELECT * FROM ONLINE_BRANCH;
SELECT * FROM FURNITURE;	
SELECT * FROM _ORDER;		
SELECT * FROM ORDER_BRANCH;  
SELECT * FROM PROMOTION;	
SELECT * FROM SHIPPING;	
SELECT * FROM ORDER_ONLINE;	
SELECT * FROM SUPPLIER;	
SELECT * FROM SUPPLIER_PHONE;	
SELECT * FROM PRODUCT;
SELECT * FROM CART_PRODUCT;
SELECT * FROM CLOTHES;	
SELECT * FROM SHOE;	
SELECT * FROM PRODUCT_USE_MATERIAL;	
SELECT * FROM PRODUCT_OF_ORDER;
SELECT * FROM _ORDER;
SELECT * FROM PAYMENT

-- Kiểm tra các kết quả tính toán 
SELECT o.total_money,p.promotion_id,dbo.TinhKM(p.order_id,p.promotion_id) as KM_money ,p.total_money FROM _ORDER o, PAYMENT p WHERE o.order_id = p.order_id