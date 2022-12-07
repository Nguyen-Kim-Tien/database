/*
A. Dữ liệu mẫu:
* Product: (Mã số-Giá bán-Số lượng)
PRD1	-	70000	-	4
PRD2	-	65000	-	41
PRD3	-	75000	-	28
PRD4	-	50000	-	19
PRD5	-	80000	-	17
PRD6	-	90000	-	18
PRD7	-	60000	-	6
PRD8	-	75000	-	4
PRD9	-	90000	-	2
PRD10	-	80000	-	5
PRD120	-	150000	-	11
PRD121	-	360000	-	42
PRD122	-	300000	-	33
PRD123	-	230000	-	16
PRD124	-	250000	-	18
PRD125	-	300000	-	19
PRD126	-	260000	-	10
PRD127	-	195000	-	7
PRD128	-	400000	-	9
PRD129	-	250000	-	10

* Product of Order: (Mã số Order : <số lượng><Mã product>) => (tổng tiền Order) vs (số lượng order)
ORD1: PRD1 + PRD2 + 2PRD3 + 3PRD5 + 2PRD6 + PRD8 + 4PRD10 => 1100k vs 14
ORD2: 2PRD2 => 130k vs 2
ORD3: 3PRD3 + PRD4 => 275k vs 4
ORD4: PRD6 + 3PRD7 => 270k vs 4
ORD5: 2PRD1 + 2PRD3 => 290 vs 4
ORD6: 2PRD1 + PRD9 + PRD10 => 310k vs 4
ORD7: PRD7 + 2PRD8 + 6PRD9 => 750k vs 9
ORD8: 2PRD1 + 2PRD120 + 3PRD121 + PRD122 + PRD123 + PRD124 + 2PRD125 => 2900k vs 12
ORD9: 3PRD120 + 3PRD122 + 3PRD124 => 2100k vs 9
ORD10: 3PRD1 + 3PRD120 => 660k vs 6
ORD11: PRD1 + PRD2 + 2PRD5 => 295k vs 4
ORD12: Không chứa product nào => null vs 0
ORD13: 2PRD3 => 150k vs 2
ORD14: 3PRD123 => 690k vs 3
ORD15: 4PRD1 => 280k vs 4
*/
-- Kiểm tra dữ liệu lên quan đến bảng ORDER-PROMOTION-PAYMENT 
SELECT o.order_id, o.total_money, o.amount,p.promotion_id, pr.min_money as Min_promotion, pr.max_money as Max_promotion, pr.promotion_percent as PhanTram,dbo.TinhKM(p.order_id,p.promotion_id) as KM_money ,p.total_money FROM _ORDER o, PAYMENT p, PROMOTION pr WHERE o.order_id = p.order_id and pr.promotion_id = p.promotion_id
GO

/* B. Kiểm tra tính toán:
1. Cập nhật giá bán 
Cập nhật giá bán cho PRD4: 50k -> 100k  */
EXEC updatePRODUCT 
	'PRD0004',
    N'Áo Polo nam Pique Cotton USA thấm hút tối đa (kẻ sọc) - Đen sọc xanh          ',
    N'Hãng sản xuất 1',
    N'https://media.coolmate.me/cdn-cgi/image/width=672,height=990,quality=85,format=auto/uploads/August2022/USA_den_soc_xanh_bien_2.jpg',
    40000.000,
  	100000.000,
    'CAT0004','SUP0001'
GO 
-- Kiểm tra update
SELECT * FROM PRODUCT WHERE product_id = 'PRD0004'
--> Kiểm tra cập nhật lại giá bán cho PRD4 trong bảng PRODUCT_OF_ORDER là 100k
SELECT * FROM PRODUCT_OF_ORDER WHERE product_id = 'PRD0004'
--> Kiểm tra các order chứa các PRD4 sẽ thay đổi tổng tiền:  (ORD0003 = 275k + 50k = 325k)
--> Hóa đơn tương đương với ORDER vừa cập nhật cũng sẽ cập nhật lại 
SELECT o.order_id, o.total_money,p.promotion_id, pr.min_money as Min_promotion, pr.max_money as Max_promotion, pr.promotion_percent as PhanTram,dbo.TinhKM(p.order_id,p.promotion_id) as KM_money ,p.total_money FROM _ORDER o, PAYMENT p, PROMOTION pr WHERE o.order_id = p.order_id and pr.promotion_id = p.promotion_id
GO
--> Các giỏ hàng chứa các PRD4 cũng sẽ thay đổi tổng tiền:
SELECT * FROM CART 

--2. Thêm sản phẩm vào đơn hàng (kèm theo số lượng)
-- Thêm 4 sản phẩm PRD1 và 6 sản phẩm PRD3 vào đơn hàng ORD2
EXEC insertPRODUCT_OF_ORDER 'ORD0002', 'PRD0001', 4
GO 
EXEC insertPRODUCT_OF_ORDER 'ORD0002', 'PRD0003', 6
GO 
--> Số lượng còn lại của sản phẩm PRD1: 0
   --Số lượng còn lại của sản phẩm PRD3: 22
SELECT * FROM PRODUCT;
--> ORD2 sẽ được cập nhật lại tổng tiền:
--> Hóa đơn tương ứng với ORD2 cũng sẽ được cập nhật lại tổng tiền : (130k + 4*70k + 6*75k = 860k) và số lượng (2+4+6 = 12)
SELECT o.order_id, o.total_money, o.amount ,p.promotion_id, pr.min_money as Min_promotion, pr.max_money as Max_promotion, pr.promotion_percent as PhanTram,dbo.TinhKM(p.order_id,p.promotion_id) as KM_money ,p.total_money FROM _ORDER o, PAYMENT p, PROMOTION pr WHERE o.order_id = p.order_id and pr.promotion_id = p.promotion_id
GO
-- Hiện tại thì số lượng sản phẩm PRD1 đã hết (số lượng:0) , nếu tiếp thêm sản phẩm PRD1 vào 1 đơn hàng bất kì sẽ báo lỗi
EXEC insertPRODUCT_OF_ORDER 'ORD0003', 'PRD0001', 1
GO 
--3. Cập nhật số lượng sản phẩm trong 1 đơn hàng 
--Trh1: Nếu update 1 sản phẩm ko tồn tại (báo lỗi)
EXEC updatePRODUCT_OF_ORDER 'ORD0015', 'PRD0002', 1
GO 
--Trh2: Update 1 sản phẩm tồn tại 
EXEC updatePRODUCT_OF_ORDER 'ORD0015', 'PRD0001', 3
GO
-- Kiểm tra lại đơn hàng ORD0015, ban đầu 4PRD1 nên tổng tiền là 280k, cập nhật 3PRD1 nên tổng tiền 210k, và số lượng từ 4 còn lại 3 
SELECT o.order_id, o.total_money, o.amount, p.promotion_id, pr.min_money as Min_promotion, pr.max_money as Max_promotion, pr.promotion_percent as PhanTram,dbo.TinhKM(p.order_id,p.promotion_id) as KM_money ,p.total_money FROM _ORDER o, PAYMENT p, PROMOTION pr WHERE o.order_id = p.order_id and pr.promotion_id = p.promotion_id
GO

--4. Xóa Product
-- Xóa PRD4
EXEC deleteProduct 'PRD0004'
GO
--> Đơn hàng ORD3: 3PRD3 + PRD4, còn 3PRD3 = 325k - 100k = 225k
SELECT o.order_id, o.total_money,o.amount,p.promotion_id, pr.min_money as Min_promotion, pr.max_money as Max_promotion, pr.promotion_percent as PhanTram,dbo.TinhKM(p.order_id,p.promotion_id) as KM_money ,p.total_money FROM _ORDER o, PAYMENT p, PROMOTION pr WHERE o.order_id = p.order_id and pr.promotion_id = p.promotion_id
GO

--5. Xóa Product of order
EXEC deleteProduct_Of_Order 'ORD0008', 'PRD0001'
GO
-- Đơn hàng ORD8 tổng tiền còn lại : 2900k - 2*70k = 2760k và số lượng 12-2=10
SELECT o.order_id, o.total_money,o.amount,p.promotion_id, pr.min_money as Min_promotion, pr.max_money as Max_promotion, pr.promotion_percent as PhanTram,dbo.TinhKM(p.order_id,p.promotion_id) as KM_money ,p.total_money FROM _ORDER o, PAYMENT p, PROMOTION pr WHERE o.order_id = p.order_id and pr.promotion_id = p.promotion_id
GO


