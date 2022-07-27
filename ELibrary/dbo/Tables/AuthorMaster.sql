CREATE TABLE [dbo].[AuthorMaster] (
    [AuthorId]   INT           IDENTITY (1, 1) NOT NULL,
    [AuthorName] VARCHAR (100) NOT NULL,
    CONSTRAINT [PK_AuthorMaster] PRIMARY KEY CLUSTERED ([AuthorId] ASC)
);

