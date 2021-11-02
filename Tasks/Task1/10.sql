--10.	Из таблицы Production.Product показать поля [Name] и Color. Показать только те товары,
--которые имеют цвет. Заменить на NULL значение в поле цвет (Color), если цвет товара красный 
--(red). Названия полей оставить без изменений.
SELECT [Name], NULLIF(Color, 'Red')
FROM Production.Product WHERE Color IS NOT NULL

