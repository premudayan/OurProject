CREATE TABLE [dbo].[CompanyRole] (
    [ID]               INT              NOT NULL,
    [CompanyID]        INT              NOT NULL,
    [CustomerID]       INT              NOT NULL,
    [RoleCode]         VARCHAR (20)    NOT NULL,
    [RoleName]         VARCHAR (100)   NOT NULL,
    [StartDate]        DATE             NOT NULL,
    [EndDate]          DATE             NULL,
    [Status]           VARCHAR (20)    NOT NULL,
    [CreatedBy]        VARCHAR (50)    NOT NULL,
    [CreatedDate]      DATETIME         NOT NULL,
    [UpdatedBy]        VARCHAR (50)    NULL,
    [UpdatedDate]      DATETIME         NULL,
    [RowVersionNumber] INT NOT NULL,
    PRIMARY KEY CLUSTERED ([ID] ASC)
);

