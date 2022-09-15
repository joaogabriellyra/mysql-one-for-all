SELECT usu.usuario_nome AS 'usuario', IF(YEAR(MAX(rep.data_de_reproducao)) >= 2021, 'Usuário ativo', 'Usuário inativo') AS 'status_usuario'
FROM SpotifyClone.usuarios AS usu
INNER JOIN SpotifyClone.reproducao AS rep ON usu.usuario_id = rep.usuario_id
GROUP BY usu.usuario_nome
ORDER BY usu.usuario_nome;