CREATE TABLE [dbo].[CustomerPortal] (
    [ID]               INT              NOT NULL,
    [CustomerID]       INT              NOT NULL,
    [UserName]         NVARCHAR (100)   NULL,
    [Email]            NVARCHAR (100)   NOT NULL,
    [HashedPassword]   NVARCHAR (200)   NOT NULL,
    [Salt]             NVARCHAR (200)   NOT NULL,
    [NumberOfTries]    INT              DEFAULT ((0)) NOT NULL,
    [IsLocked]         NVARCHAR (1)     DEFAULT ('N') NOT NULL,
    [LastLoginIn]      DATETIME         NULL,
    [Status]           NVARCHAR (20)    NOT NULL,
    [CreatedBy]        NVARCHAR (50)    NOT NULL,
    [CreatedDate]      DATETIME         NOT NULL,
    [UpdatedBy]        NVARCHAR (50)    NULL,
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

