SELECT 
	COUNT(cancao_id) AS cancoes,
  (SELECT COUNT(artista_id) FROM SpotifyClone.artista) AS artistas,
  COUNT(DISTINCT album_id) AS albuns
FROM SpotifyClone.cancao;