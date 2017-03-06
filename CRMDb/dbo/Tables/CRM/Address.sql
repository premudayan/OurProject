CREATE TABLE [dbo].[Address] (
    [ID]               INT              NOT NULL,
    [CustomerID]       INT              NULL,
    [AddressType]      VARCHAR (20)    NOT NULL,
    [Street]           VARCHAR (100)   NOT NULL,
    [Apartment]        VARCHAR (100)   NULL,
    [City]             VARCHAR (100)   NULL,
    [StateCode]        VARCHAR (10)    NULL,
    [Zip]              VARCHAR (20)    NULL,
    [CountryCode]      VARCHAR (10)    NULL,
    [Primary]          VARCHAR(1)      NOT NULL,
    [StartDate]        DATE             NOT NULL,
    [EndDate]          DATE             NULL,
    [Status]           VARCHAR (20)    NOT NULL,
    [CreatedBy]        VARCHAR (50)    NOT NULL,
    [CreatedDate]      DATETIME         NOT NULL,
    [UpdatedBy]        VARCHAR (50)    NULL,
    [UpdatedDate]      DATETIME         NULL,
    [RowVersionNumber] INT NOT NULL DEFAULT 0,
    CONSTRAINT [PK_Address_ID] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_Address_Customer_ID] FOREIGN KEY ([CustomerID]) REFERENCES [dbo].[Customer] ([ID])
);

