USE MusicShop;

CREATE TABLE Genre (
    ID UNIQUEIDENTIFIER DEFAULT NEWID()
	CONSTRAINT PK_Genre PRIMARY KEY,
    [Name] VARCHAR(50) NOT NULL,
);

ALTER TABLE Genre
ADD CONSTRAINT u_GenreName UNIQUE([Name]);

ALTER TABLE Genre
ADD CONSTRAINT ch_EmptyGenreName
CHECK (LEN(Name) > 1);