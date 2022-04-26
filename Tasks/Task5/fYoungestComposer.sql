CREATE FUNCTION dbo.fYoungestComposerName()
    RETURNS NVARCHAR(50)
	AS
    BEGIN
        DECLARE @ComposerName NVARCHAR(50) = (SELECT FirstName as YongestComposerName FROM Composer WHERE Birthday = (SELECT MAX(Birthday) FROM Composer))
        RETURN @ComposerName
    END;