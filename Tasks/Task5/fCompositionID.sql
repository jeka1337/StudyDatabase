CREATE FUNCTION dbo.fCompositionID
(
	@SerialNumber VARCHAR(255)
)
RETURNS UNIQUEIDENTIFIER
AS
BEGIN
	DECLARE @ID_Composition UNIQUEIDENTIFIER = 
			(SELECT TOP 1 ID
			FROM Composition 
			WHERE SerialNumber = @SerialNumber)
	RETURN @ID_Composition;
END;