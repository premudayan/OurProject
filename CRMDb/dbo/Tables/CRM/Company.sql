CREATE TABLE [dbo].[Company] (
    [ID]               INT              NOT NULL,
    [CompanyName]      VARCHAR (100)   NOT NULL,
    [StartDate]        DATE             NOT NULL,
    [EndDate]          DATE             NULL,
    [Status]           VARCHAR (20)    NOT NULL,
    [CreatedBy]        VARCHAR (50)    NOT NULL,
    [CreatedDate]      DATETIME         NOT NULL,
    [UpdatedBy]        VARCHAR (50)    NULL,
    [UpdatedDate]      DATETIME         NULL,
    [RowVersionNumber] INT NOT NULL,
    CONSTRAINT [PK_Company_ID] PRIMARY KEY CLUSTERED ([ID] ASC)
);

