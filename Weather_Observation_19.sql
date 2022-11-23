/*
Consider P1(a,c) and P2(b,d) to be two points on a 2D plane where (a,b) are the respective minimum and maximum values of Northern Latitude (LAT_N).
(c,d) are the respective minimum and maximum values of Western Longitude (LONG_W) in STATION.

Query the Euclidean Distance between points  and  and format your answer to display  decimal digits.

Link to original problem:
https://www.hackerrank.com/challenges/weather-observation-station-19/problem?isFullScreen=true
*/

SELECT 
    ROUND(
    POWER(
    (POWER((MAX(lat_n)-MIN(lat_n)),2))+
    (POWER((MAX(long_w)-MIN(long_w)),2))
     ,0.5)
     ,4)
FROM station
