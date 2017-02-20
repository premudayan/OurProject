CREATE TABLE [dbo].[LookupValue] (
    [ID]               INT              NOT NULL,
    [LookupTypeID]     INT              NULL,
    [ValueCode]        NVARCHAR (20)    NOT NULL,
    [ValueDescription] NVARCHAR (100)   NOT NULL,
    [Status]           NVARCHAR (20)    NOT NULL,
    [CreatedBy]        NVARCHAR (50)    NOT NULL,
    [CreatedDate]      DATETIME         NOT NULL,
    [UpdatedBy]        NVARCHAR (50)    NULL,
    [UpdatedDate]      DATETIME         NULL,
    [RowVersionNumber] UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [PK_LookupValue_ID] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_LookupValue_LookupType_ID] FOREIGN KEY ([LookupTypeID]) REFERENCES [dbo].[LookupType] ([ID])
);

