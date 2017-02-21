CREATE TABLE [dbo].[CRMRolePrivilege] (
    [ID]               INT              NOT NULL,
    [RoleID]           INT              NOT NULL,
    [ScreenID]         INT              NOT NULL,
    [Insert]           NVARCHAR (1)     DEFAULT ('N') NOT NULL,
    [Update]           NVARCHAR (1)     DEFAULT ('N') NOT NULL,
    [Delete]           NVARCHAR (1)     DEFAULT ('N') NOT NULL,
    [Status]           NVARCHAR (20)    NOT NULL,
    [CreatedBy]        NVARCHAR (50)    NOT NULL,
    [CreatedDate]      DATETIME         NOT NULL,
    [UpdatedBy]        NVARCHAR (50)    NULL,
    [UpdatedDate]      DATETIME         NULL,
    [RowVersionNumber] UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [PK_CRMRolePrivilege_ID] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_CRMRolePrivilege_CRMRole_ID] FOREIGN KEY ([RoleID]) REFERENCES [dbo].[CRMRole] ([ID]),
    CONSTRAINT [FK_CRMRolePrivilege_CRMScreen_ID] FOREIGN KEY ([ScreenID]) REFERENCES [dbo].[CRMScreen] ([ID])
);


