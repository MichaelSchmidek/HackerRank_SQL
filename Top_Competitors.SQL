/*
Julia just finished conducting a coding contest, and she needs your help assembling the leaderboard!
Write a query to print the respective hacker_id and name of hackers who achieved full scores for more than one challenge.
Order your output in descending order by the total number of challenges in which the hacker earned a full score. 
If more than one hacker received full scores in same number of challenges, then sort them by ascending hacker_id.
*/

SELECT S.hacker_id, H.name
FROM Submissions AS S
JOIN Hackers AS H ON H.hacker_id = S.hacker_id
JOIN Challenges as C ON C.challenge_id = S.Challenge_id
JOIN Difficulty AS D ON D.difficulty_Level = C.difficulty_level
WHERE S.score = D.score
GROUP BY H.hacker_id, H.name
Having COUNT(S.Challenge_id) >1
ORDER BY COUNT(S.Challenge_id) DESC, H.hacker_id ASC
