CREATE PROC dbo.pCompositionInsert
(
	  @SerialNumber VARCHAR(255),
	  @ComposerFirstName NVARCHAR(50),
	  @ComposerPatronicName NVARCHAR(50),
	  @ComposerLastName NVARCHAR(50),
	  @Name VARCHAR(50),
	  @Duration INT,
	  @AlbumName VARCHAR(255),
	  @StorageMediumType VARCHAR(50),
	  @CountryName VARCHAR(50),
	  @GenreName VARCHAR(50),
	  @Price FLOAT
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRAN Insertion

			--1. Найти ID Composer
			DECLARE @ID_Composer UNIQUEIDENTIFIER = dbo.fComposerID(@ComposerFirstName, @ComposerPatronicName, @ComposerLastName);


			--2. Найти ID Album
			DECLARE @ID_Album UNIQUEIDENTIFIER = dbo.fAlbumID(@AlbumName);

			--3. Найти ID StorageMediumType
			DECLARE @ID_StorageMedium UNIQUEIDENTIFIER = dbo.fStorageMediumID(@StorageMediumType);

			--4. Найти ID Country
			DECLARE @ID_Country UNIQUEIDENTIFIER = dbo.fCountryID(@CountryName);

			--5. Найти ID Genre
			DECLARE @ID_Genre UNIQUEIDENTIFIER = dbo.fGenreID(@GenreName);

			--6. Вставляем новую запись в таблицу Composition
			INSERT INTO Composition
			VALUES(NEWID(), @SerialNumber, @ID_Composer, @Name, @Duration, @ID_Album, @ID_StorageMedium, @ID_Country, @ID_Genre, @Price);

		COMMIT
	END TRY
	BEGIN CATCH
	    ROLLBACK;
		DECLARE @ErrorMessage NVARCHAR(4000);
		DECLARE @ErrorSeverity INT;
		DECLARE @ErrorState INT;

		SELECT 
			@ErrorMessage = ERROR_MESSAGE(),
			@ErrorSeverity = ERROR_SEVERITY(),
			@ErrorState = ERROR_STATE();

		RAISERROR	(@ErrorMessage, -- Message text.
					@ErrorSeverity, -- Severity.
					@ErrorState -- State.
					);
	END CATCH;
END;