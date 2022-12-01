SELECT 
    COUNT(user_id) AS quantidade_musicas_no_historico
FROM
    historic
WHERE
    user_id LIKE 1;