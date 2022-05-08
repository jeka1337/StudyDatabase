CREATE FUNCTION dbo.fAlbumID
(
	@AlbumName NVARCHAR(255)
)
RETURNS UNIQUEIDENTIFIER
AS
BEGIN
	DECLARE @ID_Album UNIQUEIDENTIFIER = 
			(SELECT TOP 1 ID
			FROM Album
			WHERE [Name] = @AlbumName);
	RETURN @ID_Album
END;