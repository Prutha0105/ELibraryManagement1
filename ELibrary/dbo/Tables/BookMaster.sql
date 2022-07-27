CREATE TABLE [dbo].[BookMaster] (
    [BookId]       INT            IDENTITY (1, 1) NOT NULL,
    [BookName]     VARCHAR (500)  NOT NULL,
    [AuthorId]     INT            NOT NULL,
    [PublisherId]  INT            NOT NULL,
    [Genre]        VARCHAR (50)   NULL,
    [PublishDate]  DATE           NULL,
    [Language]     VARCHAR (50)   NULL,
    [Edition]      INT            NULL,
    [BookCost]     INT            NULL,
    [NoofPages]    INT            NULL,
    [Description]  VARCHAR (MAX)  NULL,
    [ActualStock]  INT            NULL,
    [CurrentStock] INT            NULL,
    [BookImgLink]  NVARCHAR (MAX) NULL,
    CONSTRAINT [PK_BookMaster] PRIMARY KEY CLUSTERED ([BookId] ASC),
    CONSTRAINT [FK_BookMaster_AuthorMaster] FOREIGN KEY ([AuthorId]) REFERENCES [dbo].[AuthorMaster] ([AuthorId]),
    CONSTRAINT [FK_BookMaster_PublisherMaster] FOREIGN KEY ([PublisherId]) REFERENCES [dbo].[PublisherMaster] ([PublisherId])
);

