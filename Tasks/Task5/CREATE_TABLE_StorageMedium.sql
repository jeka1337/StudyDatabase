USE MusicShop;

CREATE TABLE StorageMedium (
    ID UNIQUEIDENTIFIER DEFAULT NEWID()
	CONSTRAINT PK_StorageMedium PRIMARY KEY,
    StorageMediumType VARCHAR(50) NOT NULL,
);

ALTER TABLE StorageMedium
ADD CONSTRAINT u_StorageMediumType UNIQUE(StorageMediumType);