﻿CREATE TABLE [dbo].[CustomerPhoto] AS FILETABLE FILESTREAM_ON [iCRMDBFS]
WITH (FILETABLE_COLLATE_FILENAME = SQL_Latin1_General_CP1_CI_AS, FILETABLE_DIRECTORY = N'Photos');

