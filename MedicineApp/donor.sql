CREATE TABLE [dbo].[donor] (
    [Id]  INT   NOT NULL,
    [Name] NVARCHAR(50) NOT NULL,
    [Email] NVARCHAR(50) NOT NULL,
    [Phone_No] INT NOT NULL,
    [Password] NVARCHAR(50) NOT NULL,
    [City] NVARCHAR(50) NOT NULL,
    [Donated_To] NVARCHAR(50) NOT NULL,
    [Medicine_Name] NVARCHAR(150) NOT NULL,
    [Date] DATE NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);
