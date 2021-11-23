--2)	Найти средний вес (Weight) товара красного цвета из таблицы Production.Product, не 
--учитывать пустые значения.
SELECT AVG(Weight) AS AvgRedWeight
FROM Production.Product
WHERE Color='Red'