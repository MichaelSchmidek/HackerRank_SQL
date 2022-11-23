/*
A median is defined as a number separating the higher half of a data set from the lower half.
Query the median of the Northern Latitudes (LAT_N) from STATION and round your answer to  decimal places.


Link to original problem:
https://www.hackerrank.com/challenges/weather-observation-station-20/problem?isFullScreen=true
*/

SELECT ROUND(S.LAT_N,4)
FROM STATION AS S
WHERE
(SELECT COUNT(LAT_N) FROM STATION WHERE LAT_N < S.LAT_N)
=
(SELECT COUNT(LAT_N) FROM STATION WHERE LAT_N > S.LAT_N);
