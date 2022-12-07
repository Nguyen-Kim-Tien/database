USE FashionStoreManager
GO

-- Thủ tục: Hiển thị những khách hàng tiềm năng (tham số đầu vào: tổng tiền tối thiểu đã mua tại cửa hàng)
-- In ra tổng số tiền đã mua tại cửa hàng và tổng tiền lớn nhất 1 hóa đơn mà người đó mua 
CREATE PROCEDURE Potential_Customers
		@money money
AS
BEGIN 
	SELECT c.customer_id, c.f_name, c.l_name, SUM(o.total_money) as Total_Money, max (p.total_money) as Max_Payment
	FROM (CUSTOMER c JOIN _ORDER o
	ON c.customer_id = o.customer_id), PAYMENT p
	WHERE c.customer_id = p.customer_id
	GROUP BY c.customer_id, c.f_name, c.l_name
	HAVING SUM(o.total_money) >= @money
	ORDER BY SUM(o.total_money) DESC
END
GO

-- Thủ tục: Hiện thị những sản phẩm bán chạy, và danh mục tương ứng của sản phẩm đó (tham số đầu vào: số lượng tối thiểu đã bán) 
CREATE PROCEDURE Bestseller
		@amount int
AS
BEGIN
	SELECT p.product_id, p.product_name, SUM(po.amount) as Total_amount, c.category_name FROM (PRODUCT p JOIN PRODUCT_OF_ORDER po
	ON p.product_id = po.product_id), CATEGORY c
	WHERE p.category_id = c.category_id
	GROUP BY p.product_id, p.product_name ,c.category_name
	HAVING SUM(po.amount) >= @amount
	ORDER BY SUM(po.amount) DESC
END
GO


EXEC Potential_Customers 0
EXEC Bestseller 5






