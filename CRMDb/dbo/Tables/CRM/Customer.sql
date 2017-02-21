CREATE TABLE [dbo].[Customer] (
    [ID]               INT              NOT NULL,
    [FirstName]        NVARCHAR (50)    NOT NULL,
    [LastName]         NVARCHAR (50)    NOT NULL,
    [MiddleName]       NVARCHAR (50)    NULL,
    [Salutation]       NVARCHAR (20)    NULL,
    [SuffixName]       NVARCHAR (50)    NULL,
	[Title]            NVARCHAR (50)    NULL,
    [FullName]         NVARCHAR (100)   NOT NULL,
	[Photo]            IMAGE   NULL,
	[DoNotCall]        NVARCHAR (1)     NOT NULL DEFAULT 'N',
	[DoNotEmail]       NVARCHAR (1)     NOT NULL DEFAULT 'N',
	[DoNotMail]        NVARCHAR (1)     NOT NULL DEFAULT 'N',
	[BirthDate]        DATETIME         NULL,
    [Status]           NVARCHAR (20)    NOT NULL,
    [CreatedBy]        NVARCHAR (50)    NOT NULL,
    [CreatedDate]      DATETIME         NOT NULL,
    [UpdatedBy]        NVARCHAR (50)    NULL,
    [UpdatedDate]      DATETIME         NULL,
    [RowVersionNumber] UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [PK_Customer_ID] PRIMARY KEY CLUSTERED ([ID] ASC)
);

