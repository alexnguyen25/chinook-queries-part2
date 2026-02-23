--(10 pts) What are the names of the artists who made an album containing the substring "symphony" in the album title?


SELECT DISTINCT Name FROM artists
JOIN albums ON artists.ArtistId = albums.ArtistId
WHERE albums.Title LIKE '%symphony%';
