/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/

if ('$(DeployTestData)' = 'true')
BEGIN

DELETE FROM notherTab;
DELETE FROM myTable;

INSERT INTO myTable (id, Yeet, age) values 
(1, 'bob', 19),
(2, 'jake', 20),
(3, 'ned', 18),
(4, 'jeff', 27);

INSERT INTO notherTab (AnotherId, Yeet) VALUES
(101, 1),
(506, 2);

END
