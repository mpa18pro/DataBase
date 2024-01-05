-- CONNECTION: name=music 2
INSERT INTO Genre(title) 
VALUES
('Rock'),
('Blues-rock'),
('Blues'),
('Pop');
--

INSERT INTO Singer(name_) 
VALUES
('Dire straits'),
('Joe Cocker'),
('Eric Clapton'),
('ABBA');
--

INSERT INTO GenreSinger(genre_id, singer_id) 
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4);
--


INSERT INTO Album(title, release_year) 
VALUES
('Brothers in Arms', 1985),
('No Ordinary World', 2019),
('Pilgrim', 1998),
('Super Trouper', 1980);
--


INSERT INTO AlbumSinger(album_id, singer_id) 
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4);
--


INSERT INTO Digest(title, release_year) 
VALUES
('Digest_1', 1980),
('Digest_2', 1985),
('Digest_3', 1990),
('Digest_4', 2020);
--



INSERT INTO Track(title, duration, album_id) 
VALUES
('I did it myself', 420, 1),
('Не мой день', 312, 1),
('Песня-помойка', 224, 2),
('My Father_s Son', 269, 2),
('Не мой', 442, 3),
('My', 263, 4),
('Amy', 263, 4),
('Happy New Year', 263, 4);
--


INSERT INTO TrackDigest(track_id, digest_id) 
VALUES
(1, 2),
(2, 3),
(3, 4),
(4, 1),
(5, 4),
(6, 4),
(7, 4);
--