SELECT
	can.nome_da_cancao AS cancao,
    COUNT(hist.cancao_id) AS reproducoes
FROM SpotifyClone.cancao AS can
INNER JOIN SpotifyClone.historico AS hist ON hist.cancao_id = can.cancao_id
GROUP BY cancao
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;