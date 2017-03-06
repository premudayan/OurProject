﻿CREATE TABLE [dbo].[Customer] (
    [ID]               INT             NOT NULL,
    [IDLONG]           UNIQUEIDENTIFIER NOT NULL,
	[MemberID]         VARCHAR (20) NOT NULL,
    [FirstName]        VARCHAR (50)    NOT NULL,
    [LastName]         VARCHAR (50)    NOT NULL,
    [MiddleName]       VARCHAR (50)    NULL,
    [Salutation]       VARCHAR (20)    NULL,
    [SuffixName]       VARCHAR (50)    NULL,
	[Title]            VARCHAR (50)    NULL,
    [FullName]         VARCHAR (100)   NOT NULL,
	[CustomerType]     VARCHAR (20)    NULL,
	[PhotoId]          UNIQUEIDENTIFIER NULL,
    [SSN]              VARCHAR (9)     NULL,
    [SSN4]             VARCHAR (4)     NULL,
	[DoNotCall]        BIT     NOT NULL DEFAULT 0,
	[DoNotEmail]       BIT     NOT NULL DEFAULT 0,
	[DoNotMail]        BIT     NOT NULL DEFAULT 0,
	[BirthDate]        DATETIME         NULL,
    [Status]           VARCHAR (20)    NOT NULL,
    [CreatedBy]        VARCHAR (50)    NOT NULL,
    [CreatedDate]      DATETIME         NOT NULL,
    [UpdatedBy]        VARCHAR (50)    NULL,
    [UpdatedDate]      DATETIME         NULL,
    [RowVersionNumber] INT NOT NULL DEFAULT 0,
    CONSTRAINT [PK_Customer_ID] PRIMARY KEY CLUSTERED ([ID] ASC)
);

