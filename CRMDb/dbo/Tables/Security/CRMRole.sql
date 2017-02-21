CREATE TABLE [dbo].[CRMRole] (
    [ID]               INT              NOT NULL,
    [RoleCode]         NVARCHAR (20)    NOT NULL,
    [RoleName]         NVARCHAR (100)   NOT NULL,
    [Status]           NVARCHAR (20)    NOT NULL,
    [CreatedBy]        NVARCHAR (50)    NOT NULL,
    [CreatedDate]      DATETIME         NOT NULL,
    [UpdatedBy]        NVARCHAR (50)    NULL,
    [UpdatedDate]      DATETIME         NULL,
    [RowVersionNumber] UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [PK_CRMRole_ID] PRIMARY KEY CLUSTERED ([ID] ASC)
);



GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_CRMRole_RoleCode]
    ON [dbo].[CRMRole]([RoleCode] ASC);

