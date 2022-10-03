SELECT COUNT(*) AS quantidade_musicas_no_historico
FROM SpotifyClone.historico
INNER JOIN SpotifyClone.usuario
ON SpotifyClone.usuario.usuario_id = SpotifyClone.historico.usuario
WHERE SpotifyClone.usuario.nome = 'Barbara Liskov';