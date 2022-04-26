--Процедура вставки данных в таблицу Album
--CREATE 
CREATE PROC pAlbumInsert
(
	 @Name VARCHAR(255),
	 @Description VARCHAR(255),
	 @DateOfProduction date
)
AS
BEGIN	
	BEGIN TRY
		BEGIN TRAN Insertion
			INSERT INTO Album
			VALUES(NEWID(), @Name, @Description, @DateOfProduction)
		COMMIT TRAN
	END TRY
	BEGIN CATCH
	    ROLLBACK
		RAISERROR ('Unknown Error',16,1)
	END CATCH;
END;