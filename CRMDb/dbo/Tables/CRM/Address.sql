CREATE TABLE [dbo].[Address] (
    [ID]               INT              NOT NULL,
    [CustomerID]       INT              NULL,
	[AddressType]      NVARCHAR (20)    NOT NULL,
    [Street]           NVARCHAR (100)   NOT NULL,
    [Apartment]        NVARCHAR (100)   NULL,
    [City]             NVARCHAR (100)   NULL,
    [StateCode]        NVARCHAR (10)    NULL,
    [Zip]              NVARCHAR (20)    NULL,
    [CountryCode]      NVARCHAR (10)    NULL,
	[Primary]          NVARCHAR(1)      NOT NULL,
    [StartDate]        DATE             NOT NULL,
    [EndDate]          DATE             NULL,
    [Status]           NVARCHAR (20)    NOT NULL,
    [CreatedBy]        NVARCHAR (50)    NOT NULL,
    [CreatedDate]      DATETIME         NOT NULL,
    [UpdatedBy]        NVARCHAR (50)    NULL,
    [UpdatedDate]      DATETIME         NULL,
    [RowVersionNumber] UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [PK_Address_ID] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_Address_Customer_ID] FOREIGN KEY ([CustomerID]) REFERENCES [dbo].[Customer] ([ID])
);

