CREATE TABLE [dbo].[Committee] (
    [ID]               INT              NOT NULL,
    [CommitteeName]    NVARCHAR (100)   NOT NULL,
    [CommitteeType]    NVARCHAR (50)    NOT NULL,
    [StartDate]        DATE             NOT NULL,
    [EndDate]          DATE             NULL,
    [Status]           NVARCHAR (20)    NOT NULL,
    [CreatedBy]        NVARCHAR (50)    NOT NULL,
    [CreatedDate]      DATETIME         NOT NULL,
    [UpdatedBy]        NVARCHAR (50)    NULL,
    [UpdatedDate]      DATETIME         NULL,
    [RowVersionNumber] UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [PK_Committee_ID] PRIMARY KEY CLUSTERED ([ID] ASC)
);

