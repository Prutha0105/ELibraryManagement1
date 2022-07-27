CREATE TABLE [dbo].[PublisherMaster] (
    [PublisherId]   INT           IDENTITY (1, 1) NOT NULL,
    [PublisherName] VARCHAR (100) NOT NULL,
    CONSTRAINT [PK_PublisherMaster] PRIMARY KEY CLUSTERED ([PublisherId] ASC)
);

