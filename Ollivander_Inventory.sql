/*
Harry Potter and his friends are at Ollivander's with Ron, finally replacing Charlie's old broken wand.
Hermione decides the best way to choose is by determining the minimum number of gold galleons needed to buy each non-evil wand of high power and age.
Write a query to print the id, age, coins_needed, and power of the wands that Ron's interested in, sorted in order of descending power.
If more than one wand has same power, sort the result in order of descending age.

Link to original problem: 
https://www.hackerrank.com/challenges/harry-potter-and-wands/problem?isFullScreen=true
*/

SELECT W.id, P.age, W.coins_needed, W.power
FROM Wands AS W
INNER JOIN Wands_Property AS P ON  W.Code = P.Code
WHERE W.coins_needed = (SELECT MIN(coins_needed)
                        FROM Wands AS W2
                        INNER JOIN Wands_Property AS P1 ON W2.Code = P1.Code
                        WHERE P1.is_evil = 0 AND P.age = P1.age AND W.power = W2.Power)
ORDER BY W.power DESC, P.age DESC;
