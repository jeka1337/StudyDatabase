--4.	Показать список моделей продуктов (ProductModelID), которые имеют несколько размеров (Size),
--из таблицы Production.Product, используя SELF JOIN.
SELECT DISTINCT a.ProductModelID, a.Size FROM Production.Product as a
JOIN Production.Product AS b ON a.ProductModelID = b.ProductModelID AND a.Size <> b.Size