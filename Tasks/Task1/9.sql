--9.	Отсортировать значения полей BusinessEntityID, AccountNumber и [Name] из таблицы Purchasing.Vendor 
--в обратном алфавитном порядке относительно поля [Name].
SELECT BusinessEntityID, AccountNumber, [Name]
FROM Purchasing.Vendor
ORDER BY [Name] DESC