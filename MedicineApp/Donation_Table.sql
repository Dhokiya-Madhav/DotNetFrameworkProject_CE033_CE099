CREATE TABLE [dbo].[Donation] (
    [Id]      INT           IDENTITY (1, 1) NOT NULL,
    [userName]     NVARCHAR (50) NOT NULL,
    [userEmail]     NVARCHAR (50) NOT NULL,
    [ngoName]     NVARCHAR (50) NOT NULL,
    [ngoEmail]     NVARCHAR (50) NOT NULL,
    [ngoPno]     NVARCHAR (50) NOT NULL,
    [medicineName]     NVARCHAR (50) NOT NULL,
    [medicineCount]     NVARCHAR (50) NOT NULL,
    [expireDate]     DATE  NOT NULL,

    PRIMARY KEY CLUSTERED ([Id] ASC),
    
);