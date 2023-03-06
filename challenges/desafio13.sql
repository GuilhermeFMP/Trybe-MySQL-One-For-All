SELECT
	CASE
		WHEN pes.idade_pessoa_usuaria >= 60 THEN 'Maior de 60 anos'
		WHEN pes.idade_pessoa_usuaria >= 31 THEN 'Entre 31 e 60 anos'
    WHEN pes.idade_pessoa_usuaria >= 5 THEN 'Até 30 anos'
	END AS faixa_etaria,
    COUNT(distinct pes.pessoa_usuaria_id) AS total_pessoas_usuarias,
    COUNT(fav.cancao_id) AS total_favoritadas
FROM SpotifyClone.pessoa_usuaria AS pes
LEFT JOIN SpotifyClone.cancoes_favoritas AS fav ON fav.pessoa_usuaria_id = pes.pessoa_usuaria_id
GROUP BY faixa_etaria;