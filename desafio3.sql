SELECT 
    u.user_name AS usuario,
    COUNT(h.user_id) AS qt_de_musicas_ouvidas,
    SUM(ROUND(s.song_duration/60, 2)) as total_minutos
FROM
    users as u
INNER JOIN historic as h ON u.user_id = h.user_id
INNER JOIN songs as s ON s.song_id = h.song_id
GROUP BY u.user_name ORDER BY u.user_name ASC;