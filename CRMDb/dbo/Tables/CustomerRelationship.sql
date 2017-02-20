CREATE TABLE [dbo].[CustomerRelationship] (
    [ID]                      INT              NOT NULL,
    [CustomerID1]             INT              NOT NULL,
    [CustomerID2]             INT              NOT NULL,
    [RelationshipCode]        NVARCHAR (20)    NOT NULL,
    [RelationshipDescription] NVARCHAR (100)   NOT NULL,
    [StartDate]               DATE             NOT NULL,
    [EndDate]                 DATE             NULL,
    [Status]                  NVARCHAR (20)    NOT NULL,
    [CreatedBy]               NVARCHAR (50)    NOT NULL,
    [CreatedDate]             DATETIME         NOT NULL,
    [UpdatedBy]               NVARCHAR (50)    NULL,
    [UpdatedDate]             DATETIME         NULL,
    [RowVersionNumber]        UNIQUEIDENTIFIER NOT NULL,
    CONSTRAINT [PK_CustomerRelationship_ID] PRIMARY KEY CLUSTERED ([ID] ASC)
);

