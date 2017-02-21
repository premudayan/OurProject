CREATE TABLE [dbo].[CommitteeRole] (
    [ID]               INT              NOT NULL,
    [CommitteeID]      INT              NOT NULL,
    [RoleCode]         NVARCHAR (20)    NOT NULL,
    [RoleName]         NVARCHAR (100)   NOT NULL,
    [StartDate]        DATE             NOT NULL,
    [EndDate]          DATE             NULL,
    [Status]           NVARCHAR (20)    NOT NULL,
    [CreatedBy]        NVARCHAR (50)    NOT NULL,
    [CreatedDate]      DATETIME         NOT NULL,
    [UpdatedBy]        NVARCHAR (50)    NULL,
    [UpdatedDate]      DATETIME         NULL,
    [RowVersionNumber] UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [PK_CommitteeRole_ID] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_CommitteeRole_Committee_ID] FOREIGN KEY ([CommitteeID]) REFERENCES [dbo].[Committee] ([ID])
);



