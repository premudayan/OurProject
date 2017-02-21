CREATE TABLE [dbo].[CRMUserRole] (
    [ID]               INT              NOT NULL,
    [UserID]           INT              NOT NULL,
    [RoleID]           INT              NOT NULL,
    [Status]           NVARCHAR (20)    NOT NULL,
    [CreatedBy]        NVARCHAR (50)    NOT NULL,
    [CreatedDate]      DATETIME         NOT NULL,
    [UpdatedBy]        NVARCHAR (50)    NULL,
    [UpdatedDate]      DATETIME         NULL,
    [RowVersionNumber] UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [PK_CRMUserRole_ID] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_CRMUserRole_CRMRole_ID] FOREIGN KEY ([RoleID]) REFERENCES [dbo].[CRMRole] ([ID]),
    CONSTRAINT [FK_CRMUserRole_CRMUser_ID] FOREIGN KEY ([UserID]) REFERENCES [dbo].[CRMUser] ([ID])
);


