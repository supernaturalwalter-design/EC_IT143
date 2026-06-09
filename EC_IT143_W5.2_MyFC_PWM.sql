/*
Name: Pedzisai Walter Machisvo
Initials: PWM
Class: IT143
Assignment: 5.2 My Communities Analysis – Create Answers
Data Set: MyFC
*/

USE MyFC;
GO

------------------------------------------------------------
-- QUESTION 1 (Author: Me)
-- How many players are in the dataset?
------------------------------------------------------------

SELECT COUNT(*) AS TotalPlayers
FROM dbo.tblPlayerDim;

/*
Answer:
This returns the total number of players in the dataset.
*/


------------------------------------------------------------
-- QUESTION 2 (Author: Me)
-- How many teams exist in the dataset?
------------------------------------------------------------

SELECT COUNT(*) AS TotalTeams
FROM dbo.tblTeamDim;

/*
Answer:
This shows the total number of teams.
*/


------------------------------------------------------------
-- QUESTION 3 (Author: Me)
-- How many positions exist?
------------------------------------------------------------

SELECT COUNT(*) AS TotalPositions
FROM dbo.tblPositionDim;

/*
Answer:
This shows how many player positions are available.
*/


------------------------------------------------------------
-- QUESTION 4 (Author: Another Student)
-- How many records are in the player fact table?
------------------------------------------------------------

SELECT COUNT(*) AS TotalRecords
FROM dbo.tblPlayerFact;

/*
Answer:
This gives the total number of records in the fact table.
*/
