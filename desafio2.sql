SELECT COUNT(mus.musica_id) AS 'cancoes', COUNT(DISTINCT art.artista_id) AS 'artistas', COUNT(DISTINCT alb.album_id) AS 'albuns'
FROM SpotifyClone.musicas mus
INNER JOIN SpotifyClone.albuns AS alb ON alb.album_id = mus.album_id
INNER JOIN SpotifyClone.artistas AS art ON art.artista_id = alb.artista_id;
