SELECT
	art.nome_do_artista AS artista,
    alb.nome_do_album AS album,
    COUNT(seg.pessoa_usuaria_id) AS pessoas_seguidoras
FROM SpotifyClone.artista AS art
INNER JOIN SpotifyClone.album AS alb ON alb.artista_id = art.artista_id
INNER JOIN SpotifyClone.seguidores AS seg
WHERE art.artista_id = seg.artista_id
GROUP BY artista, album
ORDER BY pessoas_seguidoras DESC, artista ASC, album ASC;