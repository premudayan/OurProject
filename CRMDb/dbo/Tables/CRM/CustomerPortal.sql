CREATE TABLE [dbo].[CustomerPortal] (
    [ID]               INT              NOT NULL,
    [CustomerID]       INT              NOT NULL,
    [UserName]         VARCHAR (100)   NULL,
    [Email]            VARCHAR (100)   NOT NULL,
    [HashedPassword]   VARCHAR (200)   NOT NULL,
    [Salt]             VARCHAR (200)   NOT NULL,
    [NumberOfTries]    INT              DEFAULT ((0)) NOT NULL,
    [IsLocked]         VARCHAR (1)     DEFAULT ('N') NOT NULL,
    [LastLoginIn]      DATETIME         NULL,
    [Status]           VARCHAR (20)    NOT NULL,
    [CreatedBy]        VARCHAR (50)    NOT NULL,
    [CreatedDate]      DATETIME         NOT NULL,
    [UpdatedBy]        VARCHAR (50)    NULL,
    [UpdatedDate]      DATETIME         NULL,
    [RowVersionNumber] UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [PK_CustomerPortal_ID] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_CustomerPortal_Customer_ID] FOREIGN KEY ([CustomerID]) REFERENCES [dbo].[Customer] ([ID])
);



GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_CustomerPortal_Email]
    ON [dbo].[CustomerPortal]([Email] ASC);


GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_CustomerPortal_CustomerID]
    ON [dbo].[CustomerPortal]([CustomerID] ASC);

