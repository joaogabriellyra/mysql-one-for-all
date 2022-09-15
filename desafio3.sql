SELECT usu.usuario_nome AS 'usuario', COUNT(rep.musica_id) AS 'qt_de_musicas_ouvidas', ROUND(SUM(mus.tamanho_da_musica)/60, 2) AS 'total_minutos'
FROM SpotifyClone.usuarios AS usu
INNER JOIN SpotifyClone.reproducao AS rep ON usu.usuario_id = rep.usuario_id
INNER JOIN SpotifyClone.musicas AS mus ON rep.musica_id = mus.musica_id
GROUP BY usu.usuario_nome
ORDER BY usu.usuario_nome;