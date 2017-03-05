CREATE TABLE [dbo].[Phone] (
    [ID]               INT              NOT NULL,
    [CustomerID]       INT              NULL,
    [PhoneType]        VARCHAR (20)    NOT NULL,
    [PhoneNumber]      VARCHAR (20)    NOT NULL,
    [PhoneExtension]   VARCHAR (10)    NULL,
	[Primary]          VARCHAR(1)      NOT NULL,
    [StartDate]        DATE             NOT NULL,
    [EndDate]          DATE             NULL,
    [Status]           VARCHAR (20)    NOT NULL,
    [CreatedBy]        VARCHAR (50)    NOT NULL,
    [CreatedDate]      DATETIME         NOT NULL,
    [UpdatedBy]        VARCHAR (50)    NULL,
    [UpdatedDate]      DATETIME         NULL,
    [RowVersionNumber] UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [PK_Phone_ID] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_Phone_Customer_ID] FOREIGN KEY ([CustomerID]) REFERENCES [dbo].[Customer] ([ID])
);

