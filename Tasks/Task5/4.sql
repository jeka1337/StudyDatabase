--4.	Показать список произведений по жанру исполнения;
SELECT DISTINCT Composition.[Name] FROM Composition, Genre
WHERE Genre.[Name] = 'Rap' AND Genre.GenreID = Composition.GenreID