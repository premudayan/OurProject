CREATE TABLE [dbo].[CRMConfiguration] (
    [ID]               INT              NOT NULL,
    [Code]             VARCHAR (50)    NOT NULL,
    [Value]            VARCHAR (200)   NOT NULL,
    [Status]           VARCHAR (20)    NOT NULL,
    [CreatedBy]        VARCHAR (50)    NOT NULL,
    [CreatedDate]      DATETIME         NOT NULL,
    [UpdatedBy]        VARCHAR (50)    NULL,
    [UpdatedDate]      DATETIME         NULL,
    [RowVersionNumber] UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [PK_CRMConfiguration] PRIMARY KEY CLUSTERED ([ID] ASC)
);

