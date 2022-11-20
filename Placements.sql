/*

You are given three tables: Students, Friends and Packages.
Students contains two columns: ID and Name.
Friends contains two columns: ID and Friend_ID (ID of the ONLY best friend).
Packages contains two columns: ID and Salary (offered salary in $ thousands per month).

Write a query to output the names of those students whose best friends got offered a higher salary than them.
Names must be ordered by the salary amount offered to the best friends.
It is guaranteed that no two students got same salary offer.

Link to Problem: 
https://www.hackerrank.com/challenges/placements/problem?isFullScreen=true
*/

SELECT S.Name
FROM STUDENTS AS S
INNER JOIN PACKAGES AS P ON S.ID = P.ID
INNER JOIN FRIENDS AS F ON S.ID = F.ID
INNER JOIN PACKAGES AS P1 ON F.FRIEND_ID = P1.ID
WHERE P1.SALARY > P.SALARY
ORDER BY P1.SALARY
