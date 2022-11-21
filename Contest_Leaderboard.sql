/*
You did such a great job helping Julia with her last coding contest challenge that she wants you to work on this one, too!
The total score of a hacker is the sum of their maximum scores for all of the challenges.
Write a query to print the hacker_id, name, and total score of the hackers ordered by the descending score.
If more than one hacker achieved the same total score, then sort the result by ascending hacker_id.
Exclude all hackers with a total score of 0 from your result.

Link to original problem:
https://www.hackerrank.com/challenges/contest-leaderboard/problem?isFullScreen=true
*/

SELECT S.hacker_id, H.name, SUM(S.max_score) as total_score
FROM (SELECT hacker_id, challenge_id, MAX(score) as max_score
      FROM Submissions
      GROUP BY hacker_id, challenge_id) as S
JOIN Hackers AS H ON H.hacker_id = S.hacker_id
GROUP BY S.hacker_id, H.name
HAVING total_score != 0
ORDER BY total_score desc, S.hacker_id asc
