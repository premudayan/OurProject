CREATE TABLE [dbo].[CRMUser]
(
	[ID]               INT NOT NULL , 
    [UserName]        VARCHAR(100) NOT NULL, 
    [Email]            VARCHAR(100) NOT NULL,
	[HashedPassword]   VARCHAR(200) NOT NULL, 
	[Salt]             VARCHAR(200) NOT NULL, 
    [FirstName]        VARCHAR(50) NULL, 
    [LastName]         VARCHAR(50) NULL, 
    [CellPhone]        VARCHAR(20) NULL,
	[NumberOfTries]    INT              NOT NULL DEFAULT 0,
	[IsLocked]         VARCHAR (1)     NOT NULL DEFAULT 'N',
	[LastLoginIn]      DATETIME         NULL,
    [Status]           VARCHAR (20)    NOT NULL,
    [CreatedBy]        VARCHAR (50)    NOT NULL,
    [CreatedDate]      DATETIME         NOT NULL,
    [UpdatedBy]        VARCHAR (50)    NULL,
    [UpdatedDate]      DATETIME         NULL,
    [RowVersionNumber] INT NOT NULL DEFAULT 0,	
	CONSTRAINT [PK_CRMUser_ID] PRIMARY KEY CLUSTERED ([ID] ASC)
)
