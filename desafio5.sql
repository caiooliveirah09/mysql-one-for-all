SELECT SpotifyClone.musicas.nome_musica as cancao,
COUNT(SpotifyClone.historico.musicas) as reproducoes
FROM SpotifyClone.musicas
INNER JOIN SpotifyClone.historico
ON SpotifyClone.historico.musicas = SpotifyClone.musicas.musicas_id
GROUP BY SpotifyClone.musicas.nome_musica
ORDER BY reproducoes DESC, SpotifyClone.musicas.nome_musica
LIMIT 2;