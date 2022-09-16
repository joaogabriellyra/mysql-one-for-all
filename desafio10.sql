SELECT mus.musica_nome AS 'nome', COUNT(rep.musica_id) AS 'reproducoes'
FROM SpotifyClone.musicas AS mus
INNER JOIN SpotifyClone.reproducao AS rep ON mus.musica_id = rep.musica_id
INNER JOIN SpotifyClone.usuarios AS usu ON rep.usuario_id = usu.usuario_id
INNER JOIN SpotifyClone.planos AS pla ON usu.plano_id = pla.plano_id
WHERE pla.plano_nome IN('gratuito', 'pessoal')
GROUP BY nome
ORDER BY nome;