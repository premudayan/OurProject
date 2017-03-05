CREATE TABLE [dbo].[LookupValueDetail]
(
    [ID]               INT              IDENTITY (1, 1) NOT NULL,
    [LookupValueID]    INT              NOT NULL,
    [ValueCode]        VARCHAR (20)    NOT NULL,
    [ValueDescription] VARCHAR (100)   NOT NULL,
    [Status]           VARCHAR (20)    NOT NULL,
    [Option1]          VARCHAR (20)    NULL,
    [Option2]          VARCHAR (20)    NULL,
    [Option3]          VARCHAR (20)    NULL,
    [Option4]          VARCHAR (20)    NULL,
    [Option5]          VARCHAR (20)    NULL,
    [CreatedBy]        VARCHAR (50)    DEFAULT (user_name()) NOT NULL,
    [CreatedDate]      DATETIME         DEFAULT (getdate()) NOT NULL,
    [UpdatedBy]        VARCHAR (50)    NULL,
    [UpdatedDate]      DATETIME         NULL,
    [RowVersionNumber] UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    CONSTRAINT [PK_LookupValueDetail_ID] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_LookupValueDetail_LookupValue_ID] FOREIGN KEY ([LookupValueID]) REFERENCES [dbo].[LookupValue] ([ID])
);
