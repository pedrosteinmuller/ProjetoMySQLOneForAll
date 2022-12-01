SELECT 
    a.artist_name AS artista, al.album_name AS album
FROM
    artists AS a
        INNER JOIN
    albums AS al ON al.artist_id = a.artist_id
WHERE
    a.artist_name LIKE 'Elis Regina'
ORDER BY album_name ASC;