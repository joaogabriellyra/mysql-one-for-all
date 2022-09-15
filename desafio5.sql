SELECT mus.musica_nome AS 'cancao', COUNT(rep.musica_id) AS 'reproducoes'
FROM SpotifyClone.musicas AS mus
INNER JOIN SpotifyClone.reproducao AS rep ON mus.musica_id = rep.musica_id
GROUP BY mus.musica_nome
ORDER BY reproducoes DESC, cancao ASC
LIMIT 2;