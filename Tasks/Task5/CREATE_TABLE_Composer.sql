USE MusicShop;

CREATE TABLE Composer (
    ID UNIQUEIDENTIFIER DEFAULT NEWID()
	CONSTRAINT PK_Composer PRIMARY KEY,
    FirstName NVARCHAR(50) NOT NULL,
	PatronicName NVARCHAR(50),
	LastName NVARCHAR(50) NOT NULL,
    Birthday date,
);

ALTER TABLE Composer
ADD CONSTRAINT ch_EmptyComposerFirstName
CHECK (LEN(FirstName) > 1);

ALTER TABLE Composer
ADD CONSTRAINT ch_EmptyComposerLastName
CHECK (LEN(LastName) > 1);