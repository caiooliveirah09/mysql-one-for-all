SELECT SpotifyClone.musicas.nome_musica AS nome,
COUNT(SpotifyClone.historico.musicas) AS reproducoes
FROM SpotifyClone.musicas
INNER JOIN SpotifyClone.historico ON SpotifyClone.historico.musicas = SpotifyClone.musicas.musicas_id
INNER JOIN SpotifyClone.usuario ON SpotifyClone.usuario.usuario_id = SpotifyClone.historico.usuario
WHERE SpotifyClone.usuario.plano = 1
OR SpotifyClone.usuario.plano = 4
GROUP BY SpotifyClone.musicas.nome_musica
ORDER BY SpotifyClone.musicas.nome_musica;