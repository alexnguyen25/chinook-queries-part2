-- (5 pts) What are the names of each album and the artist who created it?

SELECT Title , Name FROM albums
JOIN artists ON albums.ArtistId = artists.ArtistId;