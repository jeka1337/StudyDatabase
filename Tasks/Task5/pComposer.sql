--Процедура вставки данных в таблицу Composer
--CREATE 
CREATE PROC pComposerInsert
(
	 @FirstName NVARCHAR(50),
	 @PatronicName NVARCHAR(50),
	 @LastName NVARCHAR(50),
	 @Birthday date
)
AS
BEGIN	
	BEGIN TRY
		BEGIN TRAN Insertion
			INSERT INTO Composer
			VALUES(NEWID(), @FirstName, @PatronicName, @LastName, @Birthday)
		COMMIT TRAN
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