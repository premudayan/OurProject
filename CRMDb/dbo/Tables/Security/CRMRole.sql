CREATE TABLE [dbo].[CRMRole] (
    [ID]               INT              NOT NULL,
    [RoleCode]         VARCHAR (20)    NOT NULL,
    [RoleName]         VARCHAR (100)   NOT NULL,
    [Status]           VARCHAR (20)    NOT NULL,
    [CreatedBy]        VARCHAR (50)    NOT NULL,
    [CreatedDate]      DATETIME         NOT NULL,
    [UpdatedBy]        VARCHAR (50)    NULL,
    [UpdatedDate]      DATETIME         NULL,
    [RowVersionNumber] UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [PK_CRMRole_ID] PRIMARY KEY CLUSTERED ([ID] ASC)
);



GO
CREATE UNIQUE NONCLUSTERED INDEX [IX_CRMRole_RoleCode]
    ON [dbo].[CRMRole]([RoleCode] ASC);

