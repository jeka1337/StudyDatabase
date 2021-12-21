--3.	Показать товары, для которых существует менее 3 цветов, в одном размере (размер определен)
--(Таблица Production.Product). Показать поля [Name], Color и Size.
SELECT p1.[Name], p1.Color, p1.Size
FROM Production.Product as p1
WHERE p1.Color IS NOT NULL
AND p1.Size IS NOT NULL
AND (
	SELECT COUNT(DISTINCT p2.Color) as ColorCount
	FROM Production.Product as p2
	WHERE p2.Color IS NOT NULL
	AND p1.Size = p2.Size) < 3
ORDER BY p1.Name, p1.Size