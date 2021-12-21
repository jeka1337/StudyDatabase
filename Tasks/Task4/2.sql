--2.	Определить количество продавцов и территорию, которую обслуживает минимальное количество
--продавцов (Представление Sales.vSalesPerson).
SELECT a.TerritoryName, Count(*) as SellersCount FROM Sales.vSalesPerson as a
WHERE a.TerritoryName IS NOT NULL
GROUP BY a.TerritoryName
HAVING COUNT(*) = (SELECT MIN(b.SellersCount) 
FROM(
SELECT COUNT(*) as SellersCount FROM Sales.vSalesPerson as b
GROUP BY TerritoryName) as b)
