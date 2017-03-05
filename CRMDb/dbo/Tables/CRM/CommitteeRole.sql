CREATE TABLE [dbo].[CommitteeRole] (
    [ID]               INT              NOT NULL,
    [CommitteeID]      INT              NOT NULL,
    [RoleCode]         VARCHAR (20)    NOT NULL,
    [RoleName]         VARCHAR (100)   NOT NULL,
    [StartDate]        DATE             NOT NULL,
    [EndDate]          DATE             NULL,
    [Status]           VARCHAR (20)    NOT NULL,
    [CreatedBy]        VARCHAR (50)    NOT NULL,
    [CreatedDate]      DATETIME         NOT NULL,
    [UpdatedBy]        VARCHAR (50)    NULL,
    [UpdatedDate]      DATETIME         NULL,
    [RowVersionNumber] INT NOT NULL DEFAULT 0,
    CONSTRAINT [PK_CommitteeRole_ID] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_CommitteeRole_Committee_ID] FOREIGN KEY ([CommitteeID]) REFERENCES [dbo].[Committee] ([ID])
);



