-- (25 pts) What is the total length of each playlist in hours? List the playlist id and name of only those playlists that are longer than 2 hours, along with the length in hours rounded to two decimals.


SELECT playlists.PlaylistId, playlists.Name , ROUND(SUM(tracks.Milliseconds) / 3600000,  2) AS TotalHours FROM playlists
JOIN playlist_track ON playlists.PlaylistId = playlist_track.PlaylistId
JOIN tracks ON playlist_track.TrackId = tracks.TrackId
GROUP BY playlists.Name, playlists.PlaylistId
HAVING TotalHours > 2;

