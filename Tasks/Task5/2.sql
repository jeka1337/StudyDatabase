--2.	Показать местоположение выбранного произведения;
SELECT [Address] FROM Warehouse as a
JOIN Stock as b ON a.WarehouseID = b.WarehouseID
WHERE b.CompositionID = (SELECT CompositionID FROM Composition WHERE [Name] = 'Yesterday')