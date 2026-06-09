/*
Name: Pedzisai Walter Machisvo
Initials: PWM
Class: IT143
Assignment: 5.2 My Communities Analysis – Create Answers
Data Set: MyFC (Extended Analysis)
*/

USE MyFC;
GO

------------------------------------------------------------
-- QUESTION 1 (Author: Me)
-- What is the total number of player records?
------------------------------------------------------------

SELECT COUNT(*) AS TotalPlayers
FROM dbo.tblPlayerDim;

/*
Answer:
This gives the total number of players.
*/


------------------------------------------------------------
-- QUESTION 2 (Author: Me)
-- How many entries exist in the player fact table?
------------------------------------------------------------

SELECT COUNT(*) AS TotalFactRecords
FROM dbo.tblPlayerFact;

/*
Answer:
This shows the number of records in the fact table.
*/


------------------------------------------------------------
-- QUESTION 3 (Author: Me)
-- How many teams exist?
------------------------------------------------------------

SELECT COUNT(*) AS TotalTeams
FROM dbo.tblTeamDim;

/*
Answer:
This counts the number of teams.
*/


------------------------------------------------------------
-- QUESTION 4 (Author: Another Student)
-- How many positions exist?
------------------------------------------------------------

SELECT COUNT(*) AS TotalPositions
FROM dbo.tblPositionDim;

/*
Answer:
This shows total positions available.
*/
