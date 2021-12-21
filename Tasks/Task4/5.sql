--5.	Показать товары, цена которых больше средней цены в любой подкатегории (Таблица
--Production.Product). Показать поля [Name], ListPrice и ProductSubcategoryID.
SELECT [Name], ListPrice, ProductSubcategoryID FROM Production.Product
WHERE ListPrice > ANY(SELECT AVG(ListPrice) as AvgListPrice FROM Production.Product
WHERE ProductSubcategoryID IS NOT NULL
GROUP BY ProductSubcategoryID)