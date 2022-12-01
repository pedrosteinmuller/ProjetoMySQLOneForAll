SELECT 
    s.song_name AS nome, COUNT(h.song_id) AS reproducoes
FROM
    songs AS s
        INNER JOIN
    historic AS h ON h.song_id = s.song_id
    INNER JOIN users AS u ON u.user_id = h.user_id
    INNER JOIN plans AS p ON p.plan_id = u.plan_id
    WHERE p.plan_name = 'gratuito' OR p.plan_name = 'pessoal'
	GROUP BY s.song_name
    ORDER BY s.song_name ASC;