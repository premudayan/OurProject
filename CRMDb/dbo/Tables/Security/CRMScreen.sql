CREATE TABLE [dbo].[CRMScreen] (
    [ID]               INT              NOT NULL,
    [ScreenCode]       NVARCHAR (20)    NOT NULL,
    [ScreenName]       NVARCHAR (100)   NOT NULL,
    [Status]           NVARCHAR (20)    NOT NULL,
    [CreatedBy]        NVARCHAR (50)    NOT NULL,
    [CreatedDate]      DATETIME         NOT NULL,
    [UpdatedBy]        NVARCHAR (50)    NULL,
    [UpdatedDate]      DATETIME         NULL,
    [RowVersionNumber] UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [PK_CRMScreen_ID] PRIMARY KEY CLUSTERED ([ID] ASC)
);



GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_CRMScreen_ScreenCode]
    ON [dbo].[CRMScreen]([ScreenCode] ASC);

