USE MusicShop;

CREATE TABLE Album (
    ID UNIQUEIDENTIFIER DEFAULT NEWID()
	CONSTRAINT PK_Album PRIMARY KEY,
    [Name] VARCHAR(255) NOT NULL,
	[Description] VARCHAR(255),
	DateOfProduction date,
);


ALTER TABLE Album
ADD CONSTRAINT ch_EmptyAlbumName
CHECK (LEN([Name]) > 1);