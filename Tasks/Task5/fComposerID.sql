CREATE FUNCTION dbo.fComposerID
(
	@ComposerFirstName NVARCHAR(50),
	@ComposerPatronicName NVARCHAR(50),
	@ComposerLastName NVARCHAR(50)
)
RETURNS UNIQUEIDENTIFIER
AS
BEGIN
	DECLARE @ID_Composer UNIQUEIDENTIFIER = 
			(SELECT TOP 1 ID
			FROM Composer 
			WHERE FirstName = @ComposerFirstName AND PatronicName = @ComposerPatronicName AND LastName = @ComposerLastName);
	RETURN @ID_Composer;
END;