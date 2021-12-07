--2.	Показать список стран (поле Name), в котором указано, есть ли у страны название региона или нет,
--из таблиц Person.CountryRegion, Person.StateProvince, используя LEFT OUTER JOIN.
SELECT a.[Name], b.[Name]
FROM Person.CountryRegion as a
LEFT OUTER JOIN Person.StateProvince as b ON a.CountryRegionCode = b.CountryRegionCode
