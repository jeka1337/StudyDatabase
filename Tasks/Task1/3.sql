--3.	Показать поля PurchaseOrderID, Status, SubTotal из таблицы Purchasing.PurchaseOrderHeader.
--Показать только те записи, для которых итог по заказу на покупку (SubTotal) больше $2000 и меньше $3000.
--Использовать оператор BETWEEN.
SELECT PurchaseOrderId, Status, SubTotal
FROM Purchasing.PurchaseOrderHeader
WHERE SubTotal BETWEEN 2000 and 3000