USE MusicShop;

--Insert Composers
EXEC dbo.pComposerInsert @FirstName = N'Kanye' , @PatronicName = NULL, @LastName = 'West', @Birthday = '1977-07-08'
EXEC dbo.pComposerInsert @FirstName = N'Frank' , @PatronicName = NULL, @LastName = 'Sinatra', @Birthday = '1915-12-12'
EXEC dbo.pComposerInsert @FirstName = N'Jimi' , @PatronicName = NULL, @LastName = 'Hendrix', @Birthday = '1942-11-27'


-- Insert Albums
EXEC dbo.pAlbumInsert @Name = 'Graduation' , @Description = 'Cool', @DateOfProduction = '2007-09-11'
EXEC dbo.pAlbumInsert @Name = 'My Beautiful Dark Twisted Fantasy' , @Description = 'Good', @DateOfProduction = '2013-06-03'
EXEC dbo.pAlbumInsert @Name = 'My Way' , @Description = 'Rare', @DateOfProduction = '1969-12-23'
EXEC dbo.pAlbumInsert @Name = 'Are You Experienced' , @Description = 'Usual', @DateOfProduction = '1967-12-05'


-- Insert Storage Medium
EXEC dbo.pStorageMediumInsert @StorageMediumType = 'CD'
EXEC dbo.pStorageMediumInsert @StorageMediumType = 'Tape'
EXEC dbo.pStorageMediumInsert @StorageMediumType = 'Online'


-- Insert Countries
EXEC dbo.pCountryInsert @Name = 'United States'
EXEC dbo.pCountryInsert @Name = 'Spain'


-- Insert Genres
EXEC dbo.pGenreInsert @Name = 'Pop'
EXEC dbo.pGenreInsert @Name = 'Hard rock'
EXEC dbo.pGenreInsert @Name = 'Rap'


-- Insert Compositions
EXEC dbo.pCompositionInsert @SerialNumber='4CE0460D0G',
@ComposerFirstName = 'Kanye',
@ComposerPatronicName = NULL, 
@ComposerLastName = 'West',
@Name = 'Flashing Lights', 
@Duration = 241, 
@AlbumName = 'Graduation', 
@StorageMediumType = 'CD', 
@CountryName = 'United States', 
@GenreName = 'RAP', 
@Price = 5

EXEC dbo.pCompositionInsert @SerialNumber='4CE0460545',
@ComposerFirstName = 'Kanye',
@ComposerPatronicName = NULL, 
@ComposerLastName = 'West',
@Name = 'Power', 
@Duration = 241, 
@AlbumName = 'My Beautiful Dark Twisted Fantasy', 
@StorageMediumType = 'Online', 
@CountryName = 'United States', 
@GenreName = 'RAP', 
@Price = 5

EXEC dbo.pCompositionInsert @SerialNumber='234FDSEDSF',
@ComposerFirstName = 'Frank',
@ComposerPatronicName = NULL, 
@ComposerLastName = 'Sinatra',
@Name = 'Yesterday', 
@Duration = 241, 
@AlbumName = 'My Way', 
@StorageMediumType = 'CD', 
@CountryName = 'United States', 
@GenreName = 'Pop', 
@Price = 5

EXEC dbo.pCompositionInsert @SerialNumber='34SDCEEDSF',
@ComposerFirstName = 'Jimi',
@ComposerPatronicName = NULL, 
@ComposerLastName = 'Hendrix',
@Name = 'Can You See Me', 
@Duration = 181, 
@AlbumName = 'Are You Experienced', 
@StorageMediumType = 'Tape', 
@CountryName = 'United States', 
@GenreName = 'Hard rock', 
@Price = 10


-- Insert Warehouse
EXEC dbo.pWarehouseInsert @Address='ul. Kosmonavtov 35-11,Vyborg,Leningradskaya oblast', @TelephoneNumber='89100900602'
EXEC dbo.pWarehouseInsert @Address='Sheldon Cooper & Leonard Hofstadter,Apt 4B 2311 North Los Robles Avenue,Pasadena', @TelephoneNumber='89100900703'


-- Insert Stock
EXEC dbo.pStockInsert @SerialNumber='4CE0460D0G', @Address='ul. Kosmonavtov 35-11,Vyborg,Leningradskaya oblast'
EXEC dbo.pStockInsert @SerialNumber='4CE0460545', @Address='ul. Kosmonavtov 35-11,Vyborg,Leningradskaya oblast'
EXEC dbo.pStockInsert @SerialNumber='234FDSEDSF', @Address='ul. Kosmonavtov 35-11,Vyborg,Leningradskaya oblast'
EXEC dbo.pStockInsert @SerialNumber='34SDCEEDSF', @Address='Sheldon Cooper & Leonard Hofstadter,Apt 4B 2311 North Los Robles Avenue,Pasadena'