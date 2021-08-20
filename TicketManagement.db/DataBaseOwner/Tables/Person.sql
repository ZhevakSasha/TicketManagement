CREATE TABLE [dbo].[Person]
(
	[PasportId] INT NOT NULL PRIMARY KEY IDENTITY, 
    [Name] NVARCHAR(50) NULL, 
    [Country] NVARCHAR(50) NULL, 
    [TicketsCount] NVARCHAR(50) NULL, 
    [Phone] NVARCHAR(50) NULL
)
