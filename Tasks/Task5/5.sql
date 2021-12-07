--5.	Находить произведение по названию, году выпуска, альбому и т.д.
SELECT Composition.[Name], Composition.[Name], Album.[Name] FROM Composition, Album
WHERE Composition.[Name] = 'Power' AND Composition.AlbumID = Album.AlbumID
AND Album.[Name] = 'My Beautiful Dark Twisted Fantasy' AND YEAR(Album.DateOfProduction) = 2013