USE FashionStoreManager
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

EXEC Potential_Customers 1000000
EXEC Bestseller 5






