SELECT 
	pes.nome_pessoa_usuaria AS pessoa_usuaria,
    IF(MAX(YEAR(hist.data_reproducao)) >= 2021, 'Ativa', 'Inativa' ) AS status_pessoa_usuaria
FROM SpotifyClone.historico AS hist
INNER JOIN SpotifyClone.pessoa_usuaria AS pes ON pes.pessoa_usuaria_id = hist.pessoa_usuaria_id
GROUP BY pessoa_usuaria;