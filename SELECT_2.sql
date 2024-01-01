-- Количество исполнителей в каждом жанре.
SELECT genre_id, COUNT(singer_id) FROM genresinger 
GROUP BY genre_id
ORDER BY genre_id;
--

-- Количество треков, вошедших в альбомы 2019–2020 годов.
SELECT COUNT(release_year) FROM album a
WHERE release_year BETWEEN 2019 AND 2020;
--

-- Средняя продолжительность треков по каждому альбому.
SELECT album_id, AVG(duration) FROM Track
GROUP BY album_id
ORDER BY album_id;
--

-- Все исполнители, которые не выпустили альбомы в 2020 году.
SELECT DISTINCT s.name_ FROM Singer s
LEFT JOIN AlbumSinger a_s ON s.id = a_s.id
LEFT JOIN Album a ON a_s.id = a.id
WHERE release_year <> 2020;
--

-- Названия сборников, в которых присутствует конкретный исполнитель (выберите его сами).
SELECT DISTINCT d.title FROM Digest d
LEFT JOIN Singer s ON d.id = s.id
WHERE s.id = 4;