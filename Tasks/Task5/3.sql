--3.	Показать список носителей для выбранного произведения
SELECT DISTINCT StorageMedium.StorageMediumType FROM Composition, StorageMedium
WHERE Composition.[Name] = 'Flashing Lights' AND Composition.StorageMediumID = StorageMedium.StorageMediumID