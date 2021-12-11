--1.	Показать все произведения данного композитора (исполнителя), имеющиеся в магазине;
SELECT DISTINCT b.[Name] FROM Stock as a
JOIN Composition as b ON a.CompositionID = b.CompositionID 
WHERE ComposerID = (SELECT ComposerID FROM Composer WHERE [Name] = 'Kanye West')