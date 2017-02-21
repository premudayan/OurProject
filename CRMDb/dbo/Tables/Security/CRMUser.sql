CREATE TABLE [dbo].[CRMUser]
(
	[ID]               INT NOT NULL , 
    [UserName]        NVARCHAR(100) NOT NULL, 
    [Email]            NVARCHAR(100) NOT NULL,
	[HashedPassword]   NVARCHAR(200) NOT NULL, 
	[Salt]             NVARCHAR(200) NOT NULL, 
    [FirstName]        NVARCHAR(50) NULL, 
    [LastName]         NVARCHAR(50) NULL, 
    [CellPhone]        NVARCHAR(20) NULL,
	[NumberOfTries]    INT              NOT NULL DEFAULT 0,
	[IsLocked]         NVARCHAR (1)     NOT NULL DEFAULT 'N',
	[LastLoginIn]      DATETIME         NULL,
    [Status]           NVARCHAR (20)    NOT NULL,
    [CreatedBy]        NVARCHAR (50)    NOT NULL,
    [CreatedDate]      DATETIME         NOT NULL,
    [UpdatedBy]        NVARCHAR (50)    NULL,
    [UpdatedDate]      DATETIME         NULL,
    [RowVersionNumber] UNIQUEIDENTIFIER NOT NULL,	
	CONSTRAINT [PK_CRMUser_ID] PRIMARY KEY CLUSTERED ([ID] ASC)
)
