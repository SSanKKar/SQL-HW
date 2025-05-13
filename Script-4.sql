-- Название и продолжительность самого длительного трека.
SELECT title, duration  FROM tracks 
WHERE duration = (SELECT MAX(duration) FROM tracks);

-- Название треков, продолжительность которых не менее 3,5 минут.
SELECT title FROM tracks
WHERE duration >= '00:03:30';

-- Названия сборников, вышедших в период с 2018 по 2020 год включительно.
SELECT title FROM compilations
WHERE release_year BETWEEN 2018 and 2020; 

-- Исполнители, чьё имя состоит из одного слова.
SELECT name FROM artists
WHERE name NOT LIKE '% %';

-- Название треков, которые содержат слово «мой» или «my».
SELECT title  FROM tracks
WHERE title ~* '\yмой\y' OR title ~* '\ymy\y';

-- Количество исполнителей в каждом жанре.
SELECT g.name as genre_name, COUNT(ag.artist_id) FROM genres g 
LEFT JOIN artists_genres ag ON g.id = ag.genre_id
GROUP BY g.name;

-- Количество треков, вошедших в альбомы 2019–2020 годов.
SELECT COUNT(t.id) AS track_count FROM Tracks t
JOIN Albums a ON t.album_id = a.id
WHERE a.release_year BETWEEN 2019 AND 2020;

-- Средняя продолжительность треков по каждому альбому.
SELECT a.title AS album_title, DATE_TRUNC('second', AVG(t.duration)) AS avg_track_duration FROM Albums a
JOIN Tracks t ON a.id = t.album_id
GROUP BY a.id, a.title
ORDER BY avg_track_duration DESC;

--Все исполнители, которые не выпустили альбомы в 2020 году.
SELECT DISTINCT a.name AS artist_name FROM Artists a
WHERE a.id NOT IN (
    SELECT DISTINCT aa.artist_id
    FROM Artists_Albums aa
    JOIN Albums al ON aa.album_id = al.id
    WHERE al.release_year = 2020
)
ORDER BY artist_name;

--Названия сборников, в которых присутствует конкретный исполнитель
SELECT DISTINCT c.title AS compilation_title FROM Compilations c
JOIN Compilation_Tracks ct ON c.id = ct.compilation_id
JOIN Tracks t ON ct.track_id = t.id
JOIN Albums a ON t.album_id = a.id
JOIN Artists_Albums aa ON a.id = aa.album_id
JOIN Artists ar ON aa.artist_id = ar.id
WHERE ar.name = 'AC/DC'
ORDER BY compilation_title;







 