SELECT 
   DISTINCT u.user_name AS usuario,
    IF(YEAR(MAX(h.reproduction_date)) >= 2021,
        'Usuário ativo',
        'Usuário inativo') AS status_usuario
FROM
    historic as h
INNER JOIN users as u ON u.user_id = h.user_id
GROUP BY user_name
ORDER BY user_name;