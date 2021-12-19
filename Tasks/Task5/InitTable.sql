USE MusicShop;


CREATE TABLE Composer (
    ComposerID INT PRIMARY KEY IDENTITY(1,1),
    [Name] VARCHAR(255) NOT NULL,
    Birthday date,
);

CREATE TABLE Album (
    AlbumID INT PRIMARY KEY IDENTITY(1,1),
    [Name] VARCHAR(255) NOT NULL,
	[Description] VARCHAR(255),
	DateOfProduction date,
);

CREATE TABLE StorageMedium (
    StorageMediumID INT PRIMARY KEY IDENTITY(1,1),
    StorageMediumType VARCHAR(255) NOT NULL,
);

CREATE TABLE Country (
    CountryID INT PRIMARY KEY IDENTITY(1,1),
    [Name] VARCHAR(255) NOT NULL,
);

CREATE TABLE Genre (
    GenreID INT PRIMARY KEY IDENTITY(1,1),
    [Name] VARCHAR(255) NOT NULL,
);

CREATE TABLE Composition (
    CompositionID INT PRIMARY KEY IDENTITY(1,1),
    SerialNumber VARCHAR(255) NOT NULL,
	ComposerID INT NOT NULL,
	FOREIGN KEY (ComposerID) REFERENCES Composer (ComposerID),
	[Name] VARCHAR(255) NOT NULL,
	Duration INT NOT NULL,
	AlbumID INT,
	FOREIGN KEY (AlbumID) REFERENCES Album (AlbumID),
	StorageMediumID INT NOT NULL,
	FOREIGN KEY (StorageMediumID) REFERENCES StorageMedium (StorageMediumID),
	CountryID INT NOT NULL,
	FOREIGN KEY (CountryID) REFERENCES Country (CountryID),
	GenreID INT NOT NULL,
	FOREIGN KEY (GenreID) REFERENCES Genre (GenreID),
	Price FLOAT NOT NULL,
);

CREATE TABLE Warehouse (
	WarehouseID INT PRIMARY KEY IDENTITY(1,1),
	[Address] VARCHAR(255) NOT NULL,
	TelephoneNumber VARCHAR(255) NOT NULL,
);

CREATE TABLE Stock (
	StockID INT PRIMARY KEY IDENTITY(1,1),
	CompositionID INT NOT NULL,
	FOREIGN KEY (CompositionID) REFERENCES Composition (CompositionID),
	WarehouseID INT NOT NULL,
	FOREIGN KEY (WarehouseID) REFERENCES Warehouse (WarehouseID),
);