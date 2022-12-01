SELECT s.song_name as cancao, COUNT(h.song_id) AS reproducoes FROM songs as s
INNER JOIN historic as h ON s.song_id = h.song_id
GROUP BY song_name
ORDER BY reproducoes DESC, song_name ASC
LIMIT 2;