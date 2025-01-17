CREATE VIEW faturamento_atual AS
SELECT 
MIN(p.valor) AS faturamento_minimo,
MAX(p.valor) AS faturamento_maximo,
ROUND(AVG(p.valor),2) AS faturamento_medio,
ROUND(SUM(p.valor),2) AS faturamento_total
FROM SpotifyClone.usuario AS u
JOIN SpotifyClone.plan as p
ON u.plan_id = p.id;
