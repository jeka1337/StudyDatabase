USE MusicShop;

CREATE TABLE Warehouse (
    ID UNIQUEIDENTIFIER DEFAULT NEWID()
	CONSTRAINT PK_Warehouse PRIMARY KEY,
    [Address] VARCHAR(255) NOT NULL,
	TelephoneNumber VARCHAR(255) NOT NULL
);

ALTER TABLE Warehouse
ADD CONSTRAINT u_WarehouseAddress UNIQUE([Address]);

ALTER TABLE Warehouse
ADD CONSTRAINT u_WarehouseTelephoneNumber UNIQUE(TelephoneNumber);

ALTER TABLE Warehouse
ADD CONSTRAINT ch_EmptyWarehouseAddress
CHECK (LEN([Address]) > 1);

ALTER TABLE Warehouse
ADD CONSTRAINT ch_EmptyWarehouseTelephoneNumber
CHECK (LEN(TelephoneNumber) > 1);