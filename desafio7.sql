SELECT SpotifyClone.artista.nome AS artista,
SpotifyClone.album.nome_album AS album,
COUNT(SpotifyClone.seguindo.artistas_seguidos) AS seguidores
FROM SpotifyClone.artista
INNER JOIN SpotifyClone.album
ON SpotifyClone.album.artista =  SpotifyClone.artista.artista_id
INNER JOIN SpotifyClone.seguindo
ON SpotifyClone.seguindo.artistas_seguidos = SpotifyClone.artista.artista_id
GROUP BY artista, album
ORDER BY seguidores DESC, artista, album;