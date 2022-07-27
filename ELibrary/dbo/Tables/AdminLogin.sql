CREATE TABLE [dbo].[AdminLogin] (
    [AdminId]   INT           IDENTITY (1, 1) NOT NULL,
    [AdminName] VARCHAR (100) NOT NULL,
    [UserName]  VARCHAR (100) NOT NULL,
    [Password]  NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_AdminLogin] PRIMARY KEY CLUSTERED ([AdminId] ASC)
);

