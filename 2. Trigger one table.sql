USE FashionStoreManager
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