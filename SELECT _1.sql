-- Название и продолжительность самого длительного трека.
SELECT title, duration FROM Track
WHERE duration = (SELECT MAX(duration) FROM Track);
--

-- Название треков, продолжительность которых не менее 3,5 минут.
SELECT title, duration FROM Track
WHERE duration >= 210
ORDER BY duration;
--

-- Названия сборников, вышедших в период с 2018 по 2020 год включительно.
SELECT title FROM Digest
WHERE release_year BETWEEN 2018 AND 2020;
--

-- Исполнители, чьё имя состоит из одного слова.
SELECT name_ FROM Singer
WHERE name_ NOT LIKE '% %';
--


-- Название треков, которые содержат слово «мой» или «my».
SELECT title FROM Track
WHERE LOWER (title) LIKE '%my%' OR LOWER (title) LIKE '%мой%';
--