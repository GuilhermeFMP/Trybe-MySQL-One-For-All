SELECT
	alb.nome_do_album AS album,
  COUNT(fav.cancao_id) AS favoritadas
FROM SpotifyClone.cancoes_favoritas AS fav
INNER JOIN SpotifyClone.cancao AS can ON can.cancao_id = fav.cancao_id
INNER JOIN SpotifyClone.album AS alb ON alb.album_id = can.album_id
GROUP BY album
ORDER BY favoritadas DESC
LIMIT 3;