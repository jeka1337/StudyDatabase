--1.	Показать действительную цену (ActualCost) и поля Name, ProductNumber из таблиц Production.Product,
--Production.WorkOrderRouting.
SELECT b.ActualCost, a.[Name], a.ProductNumber
FROM Production.Product as a
JOIN Production.WorkOrderRouting as b ON a.ProductID = b.ProductID


