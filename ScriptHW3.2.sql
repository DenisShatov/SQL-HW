--название и год выхода альбомов, вышедших в 2018 году
SELECT album_name, album_year FROM album
WHERE album_year = 2018

--название и продолжительность самого длительного трека
SELECT track_name, track_seconds FROM track
WHERE track_seconds = (SELECT MAX(track_seconds) FROM track)

--название треков, продолжительность которых не менее 3,5 минуты
SELECT track_name FROM track
WHERE (CAST (track_seconds AS FLOAT) / 60) >= 3.5

--названия сборников, вышедших в период с 2018 по 2020 год включительно
SELECT collection_name FROM collection
WHERE collection_year BETWEEN 2018 AND 2020

--исполнители, чье имя состоит из 1 слова
SELECT performer_name FROM performer
WHERE performer_name NOT LIKE '% %'

--название треков, которые содержат слово "my"
SELECT track_name FROM track
WHERE LOWER(track_name) ILIKE '%my%'