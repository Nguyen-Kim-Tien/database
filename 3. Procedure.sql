USE FashionStoreManager
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