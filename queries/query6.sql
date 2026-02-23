--(15 pts) What are the names of all artists who performed MPEG (video or audio) tracks in either the "Brazilian Music" or the "Grunge" playlists?

SELECT DISTINCT artists.Name FROM artists
JOIN albums ON artists.ArtistId = albums.ArtistId
JOIN tracks ON albums.AlbumId = tracks.AlbumId
JOIN media_types ON tracks.MediaTypeId = media_types.MediaTypeId
JOIN playlist_track ON tracks.TrackId = playlist_track.TrackId
JOIN playlists ON playlist_track.PlaylistId = playlists.PlaylistId
WHERE media_types.Name LIKE '%MPEG%'
  AND playlists.Name IN ('Brazilian Music', 'Grunge');