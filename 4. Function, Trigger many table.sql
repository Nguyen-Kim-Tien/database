USE FashionStoreManager
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