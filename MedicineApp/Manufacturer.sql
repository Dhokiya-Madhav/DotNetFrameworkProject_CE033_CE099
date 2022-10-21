CREATE TABLE [dbo].[manufacturer] (
    [Id]  INT   NOT NULL,
    [Company_Name] NVARCHAR(50) NOT NULL,
    [Email] NVARCHAR(50) NOT NULL,
    [Password] NVARCHAR(50) NOT NULL,
    [City] NVARCHAR(50) NOT NULL,
    [Medicine_Name] NVARCHAR(150) NOT NULL,
    [Medicine_Count] INT NOT NULL,
    [Donated_To] NVARCHAR(150) NOT NULL,
    [Date] DATE NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);