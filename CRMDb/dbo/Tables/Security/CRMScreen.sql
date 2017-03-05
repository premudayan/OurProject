CREATE TABLE [dbo].[CRMScreen] (
    [ID]               INT              NOT NULL,
    [ScreenCode]       VARCHAR (20)    NOT NULL,
    [ScreenName]       VARCHAR (100)   NOT NULL,
    [Status]           VARCHAR (20)    NOT NULL,
    [CreatedBy]        VARCHAR (50)    NOT NULL,
    [CreatedDate]      DATETIME         NOT NULL,
    [UpdatedBy]        VARCHAR (50)    NULL,
    [UpdatedDate]      DATETIME         NULL,
    [RowVersionNumber] UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [PK_CRMScreen_ID] PRIMARY KEY CLUSTERED ([ID] ASC)
);



GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_CRMScreen_ScreenCode]
    ON [dbo].[CRMScreen]([ScreenCode] ASC);

