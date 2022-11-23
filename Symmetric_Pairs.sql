/*
You are given a table, Functions, containing two columns: X and Y.

Two pairs (X1, Y1) and (X2, Y2) are said to be symmetric pairs if X1 = Y2 and X2 = Y1.

Write a query to output all such symmetric pairs in ascending order by the value of X. List the rows such that X1 ≤ Y1.

Link to original problem:
https://www.hackerrank.com/challenges/symmetric-pairs/problem
*/

SELECT F.X, F.Y
FROM Functions as F, Functions as F2
WHERE F.X = F2.Y AND F.Y = F2.X
GROUP BY F.X, F.Y
HAVING COUNT(F.X)=4 OR F.X < F.Y
ORDER BY F.X;
