--1.	Показать самый дешевый товар (цена больше нуля) (Таблица Production.Product). Показать поля
--наименование и цена.
SELECT [Name], ListPrice
FROM Production.Product
WHERE ListPrice = (SELECT MIN(ListPrice) FROM Production.Product WHERE ListPrice > 0)