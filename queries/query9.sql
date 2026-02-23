--(25 pts) Creative addition: Define a new meaningful query using at least three tables, and some window function. Explain clearly what your query achieves, and what the results mean
--This query displays the five longest tracks in each music genre.

SELECT 
    Genre,
    TrackName,
    ROUND(Milliseconds / 60000, 2) AS Minutes,
    LengthRank
FROM (
		SELECT 
        genres.Name AS Genre,
        tracks.Name AS TrackName,
        tracks.Milliseconds,
        RANK() OVER (PARTITION BY genres.GenreId ORDER BY tracks.Milliseconds DESC) AS LengthRank
		FROM tracks
		JOIN genres ON tracks.GenreId = genres.GenreId
) 
WHERE LengthRank <= 5
ORDER BY Genre, LengthRank;