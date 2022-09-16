SELECT COUNT(rep.usuario_id) AS 'quantidade_musicas_no_historico'
FROM SpotifyClone.reproducao AS rep 
INNER JOIN SpotifyClone.usuarios AS usu ON rep.usuario_id = usu.usuario_id
WHERE usu.usuario_nome = "Barbara Liskov"
ORDER BY quantidade_musicas_no_historico;