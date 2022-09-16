SELECT art.artista_nome AS 'artista', alb.album_nome AS 'album'
FROM SpotifyClone.artistas AS art
INNER JOIN SpotifyClone.albuns AS alb ON art.artista_id = alb.artista_id
WHERE art.artista_nome = 'Elis Regina'
ORDER BY album;