SELECT
	art.nome_do_artista AS artista,
    CASE
		  WHEN COUNT(fav.cancao_id) >= 5 THEN 'A'
      WHEN COUNT(fav.cancao_id) >= 3 THEN 'B'
      WHEN COUNT(fav.cancao_id) >= 1 THEN 'C'
      ELSE '-'
	END AS 'ranking'
FROM SpotifyClone.artista AS art
INNER JOIN SpotifyClone.album AS alb ON alb.artista_id = art.artista_id
INNER JOIN SpotifyClone.cancao AS can ON can.album_id = alb.album_id
LEFT JOIN SpotifyClone.cancoes_favoritas AS fav ON fav.cancao_id = can.cancao_id
GROUP BY artista
ORDER BY COUNT(fav.cancao_id) DESC, artista;