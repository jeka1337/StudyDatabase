--8.	Показать список ProductID, которые содержатся и в таблице Production.Product, и в таблице
--Production.WorkOrder.
SELECT ProductID
FROM Production.Product
INTERSECT
SELECT ProductID
FROM Production.WorkOrder