--6.	Показать поля ProductSubcategoryID и Name из таблицы Production.ProductSubcategory.
--Показать только названия товаров (Name) из списка ("Тормоза", "Кепки", "Гарнитуры", "Седла")
--('Brakes', 'Caps', 'Headsets', 'Saddles'). Использовать оператор IN.
SELECT ProductSubcategoryID, Name
FROM Production.ProductSubcategory
WHERE Name IN ('Brakes', 'Caps', 'Headsets', 'Saddles')