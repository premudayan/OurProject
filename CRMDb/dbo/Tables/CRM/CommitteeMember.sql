CREATE TABLE [dbo].[CommitteeMember] (
    [ID]               INT              NOT NULL,
    [CommitteeID]      INT              NOT NULL,
    [CustomerID]       INT              NOT NULL,
    [CommitteeRoleID]  INT              NOT NULL,
    [StartDate]        DATE             NOT NULL,
    [EndDate]          DATE             NULL,
    [Status]           VARCHAR (20)    NOT NULL,
    [CreatedBy]        VARCHAR (50)    NOT NULL,
    [CreatedDate]      DATETIME         NOT NULL,
    [UpdatedBy]        VARCHAR (50)    NULL,
    [UpdatedDate]      DATETIME         NULL,
    [RowVersionNumber] INT NOT NULL,
    CONSTRAINT [PK_CommitteeMember_ID] PRIMARY KEY CLUSTERED ([ID] ASC),
    CONSTRAINT [FK_CommitteeMember_Committee_ID] FOREIGN KEY ([CommitteeID]) REFERENCES [dbo].[Committee] ([ID]),
    CONSTRAINT [FK_CommitteeMember_Customer_ID] FOREIGN KEY ([CustomerID]) REFERENCES [dbo].[Customer] ([ID])
);



