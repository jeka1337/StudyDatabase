--6.	Показать список типов спецпредложений (Type), которые имеют несколько значений максимальног
--количества (MaxQty) больше 20, из таблицы Sales.SpecialOffer, используя SELF JOIN
SELECT DISTINCT a.[Type], a.MaxQty FROM Sales.SpecialOffer as a
JOIN Sales.SpecialOffer AS b ON a.[Type] = b.[Type] AND a.MaxQty <> b.MaxQty WHERE a.MaxQty > 20