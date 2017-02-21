CREATE TABLE [dbo].[Phone] (
    [ID]               INT              NOT NULL,
    [CustomerID]       INT              NULL,
    [PhoneType]        NVARCHAR (20)    NOT NULL,
    [PhoneNumber]      NVARCHAR (20)    NOT NULL,
    [PhoneExtension]   NVARCHAR (10)    NULL,
	[Primary]          NVARCHAR(1)      NOT NULL,
    [StartDate]        DATE             NOT NULL,
    [EndDate]          DATE             NULL,
    [Status]           NVARCHAR (20)    NOT NULL,
    [CreatedBy]        NVARCHAR (50)    NOT NULL,
    [CreatedDate]      DATETIME         NOT NULL,
    [UpdatedBy]        NVARCHAR (50)    NULL,
    [UpdatedDate]      DATETIME         NULL,
    [RowVersionNumber] UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [PK_Phone_ID] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_Phone_Customer_ID] FOREIGN KEY ([CustomerID]) REFERENCES [dbo].[Customer] ([ID])
);

