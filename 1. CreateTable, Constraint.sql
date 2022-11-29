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