CREATE TABLE [dbo].[ngo] (
    [Id]  INT   NOT NULL,
    [Name] NVARCHAR(50) NOT NULL,
    [Email] NVARCHAR(50) NOT NULL,
    [Phone_No] INT NOT NULL,
    [Password] NVARCHAR(50) NOT NULL,
    [Address] NVARCHAR(100) NOT NULL,
    [City] NVARCHAR(50) NOT NULL,
    [Description] NVARCHAR(150) NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC)
);


UpdateCommand="UPDATE [ngo] SET [Name]=@Name,[Email]=@Email,[Phone_No]=@Phone_No,[Address]=@Address,[City]=@City,[Description]=@Description WHERE [Id]=@Id" DeleteCommand="DELETE FROM [ngo] WHERE [Id]=@Id