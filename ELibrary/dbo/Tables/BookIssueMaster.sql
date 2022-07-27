CREATE TABLE [dbo].[BookIssueMaster] (
    [BookIssueId] INT          IDENTITY (1, 1) NOT NULL,
    [MemberId]    INT          NOT NULL,
    [BookId]      INT          NOT NULL,
    [BookName]    VARCHAR (50) NULL,
    [MemberName]  VARCHAR (50) NULL,
    [IssueDate]   DATE         NULL,
    [DueDate]     DATE         NULL,
    CONSTRAINT [PK_BookIssueMaster] PRIMARY KEY CLUSTERED ([BookIssueId] ASC),
    CONSTRAINT [FK_BookIssueMaster_BookMaster] FOREIGN KEY ([BookId]) REFERENCES [dbo].[BookMaster] ([BookId])
);



