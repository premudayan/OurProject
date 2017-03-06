CREATE TABLE [dbo].[CustomerDocumentLink]
(
    [ID]               INT              NOT NULL,
    [CustomerID]       INT              NOT NULL,
    [DocumentType]     VARCHAR (20)    NOT NULL,
    [DocumentID]       UNIQUEIDENTIFIER NOT NULL,
    [CreatedBy]        VARCHAR (50)    NOT NULL,
    [CreatedDate]      DATETIME         NOT NULL,
    [UpdatedBy]        VARCHAR (50)    NULL,
    [UpdatedDate]      DATETIME         NULL,
    [RowVersionNumber] INT NOT NULL DEFAULT 0,
    CONSTRAINT [PK_CustomerDocumentLink_ID] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_CustomerDocumentLink_Customer_ID] FOREIGN KEY ([CustomerID]) REFERENCES [dbo].[Customer] ([ID])
);