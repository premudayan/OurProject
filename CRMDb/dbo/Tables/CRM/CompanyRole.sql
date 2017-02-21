CREATE TABLE [dbo].[CompanyRole] (
    [ID]               INT              NOT NULL,
    [CompanyID]        INT              NOT NULL,
    [CustomerID]       INT              NOT NULL,
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
    PRIMARY KEY CLUSTERED ([ID] ASC)
);

