SELECT SpotifyClone.usuario.nome AS usuario,
IF (MAX(YEAR(SpotifyClone.historico.data_reproducao)) >= 2021, 'Usuário ativo', 'Usuário inativo') AS status_usuario
FROM SpotifyClone.usuario
INNER JOIN SpotifyClone.historico
ON SpotifyClone.historico.usuario = SpotifyClone.usuario.usuario_id
GROUP BY SpotifyClone.usuario.nome
ORDER BY SpotifyClone.usuario.nome;