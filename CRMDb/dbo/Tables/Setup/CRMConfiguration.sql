CREATE TABLE [dbo].[CRMConfiguration] (
    [ID]               INT              NOT NULL,
    [Code]             NVARCHAR (50)    NOT NULL,
    [Value]            NVARCHAR (200)   NOT NULL,
    [Status]           NVARCHAR (20)    NOT NULL,
    [CreatedBy]        NVARCHAR (50)    NOT NULL,
    [CreatedDate]      DATETIME         NOT NULL,
    [UpdatedBy]        NVARCHAR (50)    NULL,
    [UpdatedDate]      DATETIME         NULL,
    [RowVersionNumber] UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [PK_CRMConfiguration] PRIMARY KEY CLUSTERED ([ID] ASC)
);

