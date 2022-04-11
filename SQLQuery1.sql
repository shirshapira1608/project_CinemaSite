CREATE TABLE [dbo].[Registeration] (
    [Id]       INT   IDENTITY (1,1)    NOT NULL,
    [Username] CHAR (20) NOT NULL,
    [Password] CHAR (20) NOT NULL,
    [Name]     CHAR (20) NOT NULL,
    [Surname]  CHAR (20) NOT NULL,
    [Gender] BIT NOT NULL, 
)
INSERT INTO Registeration VALUES(
	'shirShapira2004','314159','shir','shapira', 1
)

