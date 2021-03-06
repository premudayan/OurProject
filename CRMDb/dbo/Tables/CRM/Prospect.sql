﻿CREATE TABLE [dbo].[Prospect] (
    [ID]               INT              NOT NULL,
    [ProspectType]     VARCHAR (20)    NOT NULL,
    [FirstName]        VARCHAR (50)    NULL,
    [LastName]         VARCHAR (50)    NULL,
    [MiddleName]       VARCHAR (50)    NULL,
    [PrefixName]       VARCHAR (20)    NULL,
    [SuffixName]       VARCHAR (50)    NULL,
    [FullName]         VARCHAR (100)   NULL,
    [HomePhoneNumber]  VARCHAR (20)    NULL,
    [WorkPhoneNumber]  VARCHAR (20)    NULL,
    [OtherPhoneNumber] VARCHAR (20)    NULL,
    [HomeEmailAddress] VARCHAR (100)   NULL,
    [WorkEmailAddress] VARCHAR (100)   NULL,
    [OtherEmailAddress] VARCHAR (100)   NULL,
    [HomeStreet]        VARCHAR (100)   NULL,
    [HomeApartment]     VARCHAR (100)   NULL,
    [HomeCity]          VARCHAR (100)   NULL,
    [HomeStateCode]     VARCHAR (10)    NULL,
    [HomeZip]           VARCHAR (20)    NULL,
    [HomeCountryCode]   VARCHAR (10)    NULL,
    [WorkStreet]        VARCHAR (100)   NULL,
    [WorkApartment]     VARCHAR (100)   NULL,
    [WorkCity]          VARCHAR (100)   NULL,
    [WorkStateCode]     VARCHAR (10)    NULL,
    [WorkZip]           VARCHAR (20)    NULL,
    [WorkCountryCode]   VARCHAR (10)    NULL,
    [OtherStreet]       VARCHAR (100)   NULL,
    [OtherApartment]    VARCHAR (100)   NULL,
    [OtherCity]         VARCHAR (100)   NULL,
    [OtherStateCode]    VARCHAR (10)    NULL,
    [OtherZip]          VARCHAR (20)    NULL,
    [OtherCountryCode]  VARCHAR (10)    NULL,
    [Status]            VARCHAR (20)    NOT NULL,
    [Converted]         VARCHAR (1)     NOT NULL,
    [CreatedBy]         VARCHAR (50)    NOT NULL,
    [CreatedDate]       DATETIME         NOT NULL,
    [UpdatedBy]         VARCHAR (50)    NULL,
    [UpdatedDate]       DATETIME         NULL,
    [RowVersionNumber] INT NOT NULL DEFAULT 0,
    CONSTRAINT [PK_Prospect_ID] PRIMARY KEY CLUSTERED ([ID] ASC)
);

