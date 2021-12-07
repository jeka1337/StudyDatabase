--3.	Показать список резюме (Resume), в котором указано, имеет ли резюме ID работника или нет, из таблиц
--из таблиц HumanResources.Employee, HumanResources.JobCandidate, используя RIGHT OUTER JOIN.
SELECT b.[Resume], a.BusinessEntityID
FROM HumanResources.JobCandidate as a
RIGHT OUTER JOIN HumanResources.JobCandidate as b ON a.BusinessEntityID = b.BusinessEntityID

