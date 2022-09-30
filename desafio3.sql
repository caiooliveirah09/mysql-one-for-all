SELECT SpotifyClone.usuario.nome AS usuario,
COUNT(SpotifyClone.historico.musicas) AS qt_de_musicas_ouvidas,
ROUND(SUM(SpotifyClone.musicas.duracao)/60, 2) AS total_minutos
FROM SpotifyClone.usuario
INNER JOIN SpotifyClone.historico
ON SpotifyClone.historico.usuario = SpotifyClone.usuario.usuario_id
INNER JOIN SpotifyClone.musicas
ON SpotifyClone.historico.musicas = SpotifyClone.musicas.musicas_id
GROUP BY SpotifyClone.usuario.nome
ORDER BY SpotifyClone.usuario.nome;
