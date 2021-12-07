--6.	Показывать список произведений данного композитора (исполнителя) по выбранным годам творчества.
SELECT DISTINCT Composition.[Name] FROM Composition
JOIN Album ON Album.AlbumID = Composition.AlbumID
JOIN Composer ON Composer.ComposerID = Composition.ComposerID
WHERE YEAR(Album.DateOfProduction) BETWEEN 2000 AND 2015 AND Composer.[Name] = 'Kanye West'
