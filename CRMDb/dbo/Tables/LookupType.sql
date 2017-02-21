CREATE TABLE [dbo].[LookupType] (
    [ID]               INT              IDENTITY (1, 1) NOT NULL,
    [TypeCode]         NVARCHAR (20)    NOT NULL,
    [TypeDescription]  NVARCHAR (100)   NOT NULL,
    [Status]           NVARCHAR (20)    NOT NULL,
    [CreatedBy]        NVARCHAR (50)    DEFAULT (user_name()) NOT NULL,
    [CreatedDate]      DATETIME         DEFAULT (getdate()) NOT NULL,
    [UpdatedBy]        NVARCHAR (50)    NULL,
    [UpdatedDate]      DATETIME         NULL,
    [RowVersionNumber] UNIQUEIDENTIFIER DEFAULT (newid()) NOT NULL,
    CONSTRAINT [PK_LookupType_ID] PRIMARY KEY CLUSTERED ([ID] ASC)
);






GO


