SELECT art.artista_nome AS 'artista', alb.album_nome AS 'album', COUNT(seg.artista_id) AS 'seguidores'
FROM SpotifyClone.artistas AS art 
INNER JOIN SpotifyClone.albuns AS alb ON art.artista_id = alb.artista_id
INNER JOIN SpotifyClone.seguindo AS seg ON art.artista_id = seg.artista_id
GROUP BY art.artista_nome, alb.album_nome
ORDER BY seguidores DESC, artista, album;