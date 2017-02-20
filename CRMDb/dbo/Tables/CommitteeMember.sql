CREATE TABLE [dbo].[CommitteeMember] (
    [ID]               INT              NOT NULL,
    [CommitteeID]      INT              NOT NULL,
    [CustomerID]       INT              NOT NULL,
    [CommitteeRoleID]  INT              NOT NULL,
    [StartDate]        DATE             NOT NULL,
    [EndDate]          DATE             NULL,
    [Status]           NVARCHAR (20)    NOT NULL,
    [CreatedBy]        NVARCHAR (50)    NOT NULL,
    [CreatedDate]      DATETIME         NOT NULL,
    [UpdatedBy]        NVARCHAR (50)    NULL,
    [UpdatedDate]      DATETIME         NULL,
    [RowVersionNumber] UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [PK_CommitteeMember_ID] PRIMARY KEY CLUSTERED ([ID] ASC)
);

