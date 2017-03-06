CREATE TABLE [dbo].[Email] (
    [ID]               INT              NOT NULL,
    [CustomerID]       INT              NULL,
    [EmailType]        VARCHAR (20)    NOT NULL,
    [EmailAddress]     VARCHAR (100)   NOT NULL,
    [Primary]          VARCHAR(1)      NOT NULL,
    [StartDate]        DATE             NOT NULL,
    [EndDate]          DATE             NULL,
    [Status]           VARCHAR (20)    NOT NULL,
    [CreatedBy]        VARCHAR (50)    NOT NULL,
    [CreatedDate]      DATETIME         NOT NULL,
    [UpdatedBy]        VARCHAR (50)    NULL,
    [UpdatedDate]      DATETIME         NULL,
    [RowVersionNumber] INT NOT NULL DEFAULT 0,
    CONSTRAINT [PK_Email_ID] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_Email_Customer_ID] FOREIGN KEY ([CustomerID]) REFERENCES [dbo].[Customer] ([ID])
);

