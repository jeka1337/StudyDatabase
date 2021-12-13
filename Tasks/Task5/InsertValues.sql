-- Insert Composers
INSERT INTO Composer VALUES ('Kanye West', '1977-07-08');
INSERT INTO Composer VALUES ('Frank Sinatra', '1915-12-12');
INSERT INTO Composer VALUES ('Jimi Hendrix', '1942-11-27');

-- Insert Albums
INSERT INTO Album VALUES ('Graduation','Cool', '2007-09-11');
INSERT INTO Album VALUES ('My Beautiful Dark Twisted Fantasy','Good', '2013-06-03');
INSERT INTO Album VALUES ('My Way','Rare', '1969-12-23');
INSERT INTO Album VALUES ('Are You Experienced', 'Usual', '1967-12-05');

-- Insert Storage Medium
INSERT INTO StorageMedium VALUES ('CD');
INSERT INTO StorageMedium VALUES ('Tape');
INSERT INTO StorageMedium VALUES ('Online');

-- Insert Countries
INSERT INTO Country VALUES ('United States');
INSERT INTO Country VALUES ('Spain');

-- Insert Genres
INSERT INTO Genre VALUES ('Pop');
INSERT INTO Genre VALUES ('Hard rock');
INSERT INTO Genre VALUES ('Rap');

-- Insert Compositions
INSERT INTO Composition VALUES ('4CE0460D0G',
1, --ComposerID
'Flashing Lights', --Name
241, --Duration
1, --AlbumID
1, --StorageMediumID
1, --CountryID
3, --GenreID
5 --Price
);
INSERT INTO Composition VALUES ('4CE0460D0G',
1, --ComposerID
'Flashing Lights', --Name
241, --Duration
1, --AlbumID
3, --StorageMediumID
1, --CountryID
3, --GenreID
5 --Price
);
INSERT INTO Composition VALUES ('4CE0460D0G',
1, --ComposerID
'Flashing Lights', --Name
241, --Duration
1, --AlbumID
2, --StorageMediumID
1, --CountryID
3, --GenreID
4 --Price
);
INSERT INTO Composition VALUES ('4CE0460D0G',
1, --ComposerID
'Power', --Name
201, --Duration
2, --AlbumID
1, --StorageMediumID
1, --CountryID
3, --GenreID
7 --Price
);
INSERT INTO Composition VALUES ('4CE0460DSG',
2, --ComposerID
'Yesterday', --Name
223, --Duration
3, --AlbumID
2, --StorageMediumID
1, --CountryID
1, --GenreID
10 --Price
);
INSERT INTO Composition VALUES ('4CE0443454',
3, --ComposerID
'Can You See Me', --Name
181, --Duration
4, --AlbumID
2, --StorageMediumID
1, --CountryID
2, --GenreID
12 --Price
);

--INSERT INTO Composition (SerialNumber ,ComposerID , [Name], Duration, StorageMediumID, CountryID, GenreID, Price)
--VALUES (1, 1, 'name', 12,1,1,1,13);

INSERT INTO Warehouse VALUES ('ul. Kosmonavtov 35-11,Vyborg,Leningradskaya oblast','89100900602');
INSERT INTO Warehouse VALUES ('Sheldon Cooper & Leonard Hofstadter,Apt 4B 2311 North Los Robles Avenue,Pasadena'
,'89100900703');


INSERT INTO Stock VALUES (1,1);
INSERT INTO Stock VALUES (1,1);
INSERT INTO Stock VALUES (1,1);
INSERT INTO Stock VALUES (2,2);
INSERT INTO Stock VALUES (3,1);
INSERT INTO Stock VALUES (4,1);
INSERT INTO Stock VALUES (1,2);
INSERT INTO Stock VALUES (5,1);
INSERT INTO Stock VALUES (2,1);
INSERT INTO Stock VALUES (2,1);
INSERT INTO Stock VALUES (3,2);
INSERT INTO Stock VALUES (2,2);
INSERT INTO Stock VALUES (2,1);