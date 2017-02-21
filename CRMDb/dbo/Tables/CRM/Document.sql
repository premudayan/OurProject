CREATE TABLE [dbo].[Document] (
    [ID]               INT              NOT NULL,
    [CustomerID]       INT              NULL,
    [DocumentName]     NVARCHAR (100)   NOT NULL,
    [DocumentPath]     NVARCHAR (500)   NOT NULL,
    [Status]           NVARCHAR (20)    NOT NULL,
    [CreatedBy]        NVARCHAR (50)    NOT NULL,
    [CreatedDate]      DATETIME         NOT NULL,
    [UpdatedBy]        NVARCHAR (50)    NULL,
    [UpdatedDate]      DATETIME         NULL,
    [RowVersionNumber] UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [PK_Document_ID] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_Document_Customer_ID] FOREIGN KEY ([CustomerID]) REFERENCES [dbo].[Customer] ([ID])
);

