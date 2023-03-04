SELECT
	MIN(pl.valor_do_plano) AS faturamento_minimo,
  MAX(pl.valor_do_plano) AS faturamento_maximo,
	ROUND(AVG(pl.valor_do_plano), 2) AS faturamento_medio,
  SUM(pl.valor_do_plano) AS faturamento_total
FROM SpotifyClone.plano AS pl
INNER JOIN SpotifyClone.pessoa_usuaria AS pes ON pes.plano_id = pl.plano_id;