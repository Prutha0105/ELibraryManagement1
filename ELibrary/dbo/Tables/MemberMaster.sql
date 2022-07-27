CREATE TABLE [dbo].[MemberMaster] (
    [MemberId]      INT           IDENTITY (1, 1) NOT NULL,
    [FullName]      VARCHAR (200) NOT NULL,
    [DOB]           DATE          NULL,
    [ContactNumber] NVARCHAR (50) NULL,
    [Email]         NVARCHAR (50) NULL,
    [State]         VARCHAR (50)  NULL,
    [City]          VARCHAR (50)  NULL,
    [Pincode]       INT           NULL,
    [Address]       VARCHAR (500) NULL,
    [Password]      NVARCHAR (50) NOT NULL,
    [AccountStatus] VARCHAR (50)  NULL,
    [UserId]        NVARCHAR (50) NOT NULL,
    CONSTRAINT [PK_MemberMaster] PRIMARY KEY CLUSTERED ([MemberId] ASC, [UserId] ASC)
);



