CREATE TABLE [dbo].[LookupType] (
    [ID]               INT              NOT NULL,
    [TypeCode]         NVARCHAR (20)    NOT NULL,
    [TypeDescription]  NVARCHAR (100)   NOT NULL,
    [Status]           NVARCHAR (20)    NOT NULL,
    [CreatedBy]        NVARCHAR (50)    NOT NULL,
    [CreatedDate]      DATETIME         NOT NULL,
    [UpdatedBy]        NVARCHAR (50)    NULL,
    [UpdatedDate]      DATETIME         NULL,
    [RowVersionNumber] UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [PK_LookupType_ID] PRIMARY KEY CLUSTERED ([ID] ASC)
);

