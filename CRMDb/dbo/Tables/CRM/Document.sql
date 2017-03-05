CREATE TABLE [dbo].[Document] (
    [ID]               INT              NOT NULL,
    [CustomerID]       INT              NULL,
    [DocumentName]     VARCHAR (100)   NOT NULL,
    [DocumentPath]     VARCHAR (500)   NOT NULL,
    [Status]           VARCHAR (20)    NOT NULL,
    [CreatedBy]        VARCHAR (50)    NOT NULL,
    [CreatedDate]      DATETIME         NOT NULL,
    [UpdatedBy]        VARCHAR (50)    NULL,
    [UpdatedDate]      DATETIME         NULL,
    [RowVersionNumber] INT NOT NULL DEFAULT 0,
    CONSTRAINT [PK_Document_ID] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_Document_Customer_ID] FOREIGN KEY ([CustomerID]) REFERENCES [dbo].[Customer] ([ID])
);

