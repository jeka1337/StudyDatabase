--5.	Показать список размеров (Size), которые имеют несколько моделей продуктов (ProductModelID),
--из таблицы Production.Product, используя SELF JOIN.
SELECT DISTINCT a.Size, a.ProductModelID FROM Production.Product as a
JOIN Production.Product AS b ON a.Size = b.Size AND a.ProductModelID <> b.ProductModelID