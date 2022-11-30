SELECT 
    COUNT(s.song_id) AS cancoes,
    COUNT(DISTINCT art.artist_id) AS artistas,
    COUNT(DISTINCT a.album_id) AS albuns
FROM
    songs AS s
        INNER JOIN
    albums AS a ON s.album_id = a.album_id
        INNER JOIN
    artists AS art ON a.artist_id = art.artist_id;