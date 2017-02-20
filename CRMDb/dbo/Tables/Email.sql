CREATE TABLE [dbo].[Email] (
    [ID]               INT              NOT NULL,
    [CustomerID]       INT              NULL,
    [EmailType]        NVARCHAR (20)    NOT NULL,
    [EmailAddress]     NVARCHAR (100)   NOT NULL,
    [StartDate]        DATE             NOT NULL,
    [EndDate]          DATE             NULL,
    [Status]           NVARCHAR (20)    NOT NULL,
    [CreatedBy]        NVARCHAR (50)    NOT NULL,
    [CreatedDate]      DATETIME         NOT NULL,
    [UpdatedBy]        NVARCHAR (50)    NULL,
    [UpdatedDate]      DATETIME         NULL,
    [RowVersionNumber] UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [PK_Email_ID] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_Email_Customer_ID] FOREIGN KEY ([CustomerID]) REFERENCES [dbo].[Customer] ([ID])
);

