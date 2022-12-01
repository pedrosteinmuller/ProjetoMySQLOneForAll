SELECT 
    art.artist_name AS artista,
    a.album_name AS album,
    COUNT(f.artist_id) AS seguidores
FROM
    albums AS a
        INNER JOIN
    artists AS art ON art.artist_id = a.artist_id
        INNER JOIN
    following AS f ON f.artist_id = art.artist_id
GROUP BY artist_name, album_name
ORDER BY seguidores DESC, art.artist_name, a.album_name ASC;