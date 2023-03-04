SELECT
	pes.nome_pessoa_usuaria AS pessoa_usuaria,
    COUNT(his.cancao_id) AS musicas_ouvidas,
    ROUND(SUM(can.duracao_segundos) / 60, 2) AS total_minutos
	FROM SpotifyClone.historico AS his
INNER JOIN SpotifyClone.pessoa_usuaria AS pes ON pes.pessoa_usuaria_id = his.pessoa_usuaria_id
INNER JOIN SpotifyClone.cancao AS can ON can.cancao_id = his.cancao_id
GROUP BY pessoa_usuaria
ORDER BY pessoa_usuaria;