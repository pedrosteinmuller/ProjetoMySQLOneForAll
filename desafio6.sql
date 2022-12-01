SELECT 
    ROUND(MIN(p.plan_price), 2) AS faturamento_minimo,
    MAX(p.plan_price) AS faturamento_maximo,
    ROUND(AVG(p.plan_price), 2) AS faturamento_medio,
    ROUND(SUM(p.plan_price), 2) AS faturamento_total
FROM
    plans AS p
        INNER JOIN
    users AS u ON u.plan_id = p.plan_id