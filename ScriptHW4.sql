--количество исполнителей в каждом жанре
SELECT genre_name, COUNT(performer_id) performer_q FROM genre g 
JOIN performers_genres pg ON g.genre_id = pg.genre_id
GROUP BY g.genre_name
ORDER BY performer_q DESC;

--количество треков, вошедших в альбомы 2019-2020 годов
SELECT album_name, album_year, COUNT(t.track_id) FROM album a
JOIN track t ON t.track_album = a.album_id
WHERE a.album_year >= 2019 AND a.album_year <= 2020
GROUP BY a.album_name, a.album_year
 
--средняя продолжительность треков по каждому альбому
SELECT album_name, ROUND(AVG(t.track_seconds), 2) / 60 FROM album a
JOIN track t ON a.album_id = t.track_album
GROUP BY a.album_name

--все исполнители, которые не выпустили альбомы в 2020 году
SELECT DISTINCT performer_name FROM performer p
WHERE p.performer_name NOT IN (
SELECT DISTINCT performer_name FROM performer p
LEFT JOIN performers_albums pa ON pa.performer_id = p.performer_id
LEFT JOIN album a ON a.album_id = pa.album_id
WHERE a.album_year = 2020
)
ORDER BY p.performer_name


--названия сборников, в которых присутствует конкретный исполнитель
SELECT DISTINCT collection_name FROM collection c
JOIN collections_tracks ct ON ct.collection_id = c.collection_id
JOIN track t ON t.track_id = ct.track_id
JOIN album a ON a.album_id = t.track_album
JOIN performers_albums pa ON pa.album_id = a.album_id
JOIN performer p ON p.performer_id = pa.performer_id
WHERE p.performer_name ILIKE 'The Offspring'

--название альбомов, в которых присутствуют исполнители более 1 жанра
SELECT album_name FROM album a
JOIN performers_albums pa ON pa.album_id = a.album_id
JOIN performer p ON p.performer_id = pa.performer_id
JOIN performers_genres pg ON pg.performer_id = p.performer_id
JOIN genre g ON g.genre_id = pg.genre_id
GROUP BY p.performer_name, a.album_name
HAVING COUNT(pg.genre_id) > 1

--наименование треков, которые не входят в сборники
SELECT track_name FROM track t
LEFT JOIN collections_tracks ct ON ct.track_id = t.track_id
WHERE ct.track_id IS NULL

--исполнителя(-ей), написавшего самый короткий по продолжительности трек (теоретически таких треков может быть несколько)
SELECT performer_name, t.track_seconds FROM performer p
JOIN performers_albums pa ON pa.performer_id = p.performer_id
JOIN album a ON a.album_id = pa.album_id
JOIN track t ON t.track_album = a.album_id
WHERE t.track_seconds IN (SELECT MIN(track_seconds) FROM track)

--название альбомов, содержащих наименьшее количество треков
SELECT album_name, COUNT(t.track_id) FROM album a
JOIN track t ON t.track_album = a.album_id
GROUP BY a.album_name
HAVING COUNT(t.track_id) in (SELECT COUNT(t.track_id) FROM album a
					  		 JOIN track t ON t.track_album = a.album_id
					 		 GROUP BY a.album_name
					         ORDER BY COUNT(t.track_id) LIMIT 1)