SELECT
	art.nome_do_artista AS artista,
  alb.nome_do_album AS album
FROM SpotifyClone.artista as art
INNER JOIN SpotifyClone.album AS alb ON alb.artista_id = art.artista_id 
WHERE art.nome_do_artista = 'Elis Regina'
ORDER BY album;