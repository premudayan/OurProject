﻿CREATE TABLE [dbo].[LookupValue] (
    [ID]               INT              IDENTITY (1, 1) NOT NULL,
    [LookupTypeID]     INT              NOT NULL,
    [ValueCode]        VARCHAR (20)    NOT NULL,
    [ValueDescription] VARCHAR (100)   NOT NULL,
    [Status]           VARCHAR (20)    NOT NULL,
    [Option1]          VARCHAR (20)    NULL,
    [Option2]          VARCHAR (20)    NULL,
    [Option3]          VARCHAR (20)    NULL,
    [Option4]          VARCHAR (20)    NULL,
    [Option5]          VARCHAR (20)    NULL,
    [CreatedBy]        VARCHAR (50)    DEFAULT (user_name()) NOT NULL,
    [CreatedDate]      DATETIME         DEFAULT (getdate()) NOT NULL,
    [UpdatedBy]        VARCHAR (50)    NULL,
    [UpdatedDate]      DATETIME         NULL,
    [RowVersionNumber] INT DEFAULT 0 NOT NULL,
    CONSTRAINT [PK_LookupValue_ID] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_LookupValue_LookupType_ID] FOREIGN KEY ([LookupTypeID]) REFERENCES [dbo].[LookupType] ([ID])
);








GO


