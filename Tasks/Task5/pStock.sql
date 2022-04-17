CREATE PROC dbo.pStockInsert
(
	@SerialNumber VARCHAR(255),
	@Address VARCHAR(255)
)
AS
BEGIN
	BEGIN TRY
		BEGIN TRAN Insertion

			--2. Найти ID Composition
			DECLARE @ID_Composition UNIQUEIDENTIFIER = dbo.fCompositionID(@SerialNumber);
			
			--2. Найти ID Warehouse
			DECLARE @ID_Warehouse UNIQUEIDENTIFIER = dbo.fWarehouseID(@Address);
			
			INSERT INTO Stock
			VALUES(NEWID(), @ID_Composition, @ID_Warehouse);
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