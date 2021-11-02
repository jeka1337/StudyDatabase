--8.	Показать поля ProductID, Name из таблицы Production.Product с применением функции COALESCE().??????? 
--Показать поле Meauserement, так, чтобы, если значение в поле Class известно, то показать его,
--а иначе, показать значение в поле Size. Если и в поле Size значение неизвестно,
--то вывести значение 'UNKNOWN'.
SELECT ProductID, Name, COALESCE(Class, Size, 'UNKNOWN') as Meauserement
FROM Production.Product