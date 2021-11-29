--3)	Для каждой профессии найти суммарное количество человек, которые были приняты позже 2010 года,
--из таблицы HumanResources.Employee, не учитывать пустые значения.
SELECT JobTitle, Count(JobTitle) AS HiredAfter2010
FROM HumanResources.Employee
WHERE Year(HireDate) > 2010
GROUP BY JobTitle
