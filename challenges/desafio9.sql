SELECT
	COUNT(his.pessoa_usuaria_id) AS musicas_no_historico
FROM SpotifyClone.historico AS his
INNER JOIN SpotifyClone.pessoa_usuaria AS us ON us.pessoa_usuaria_id = his.pessoa_usuaria_id
WHERE us.nome_pessoa_usuaria = 'Barbara Liskov';