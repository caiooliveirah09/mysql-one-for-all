SELECT SpotifyClone.artista.nome AS artista,
SpotifyClone.album.nome_album AS album
FROM SpotifyClone.artista
INNER JOIN SpotifyClone.album
ON SpotifyClone.album.artista = SpotifyClone.artista.artista_id
WHERE SpotifyClone.artista.nome = 'Elis Regina'
ORDER BY album;