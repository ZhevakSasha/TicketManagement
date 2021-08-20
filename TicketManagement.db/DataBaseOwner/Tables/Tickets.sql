CREATE TABLE [dbo].[Tickets]
(
[TicketId] INT NOT NULL PRIMARY KEY  IDENTITY, 
    [Destination] NVARCHAR(50) NULL, 
    [Price] NVARCHAR(50) NULL, 
    [Date] NVARCHAR(50) NULL, 
    [PersonId] INT NOT NULL, 
    CONSTRAINT [FK_Tickets_ToTable] FOREIGN KEY ([PersonId]) REFERENCES [Person]([PasportId])
)
