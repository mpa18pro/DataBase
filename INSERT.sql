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


INSERT INTO AlbumDigest(album_id, digest_id) 
VALUES
(1, 2),
(2, 4),
(3, 3),
(4, 4);
--


INSERT INTO Track(id, title, duration, album_id) 
VALUES
('Brothers in Arms', 420, 1),
('So Far Away', 312, 1),
('First We Take Manhattan', 224, 2),
('My Father_s Son', 269, 2),
('River of Tears', 442, 3),
('Happy New Year', 263, 4);
--


INSERT INTO TrackDigest(track_id, digest_id) 
VALUES
(1, 2),
(2, 3),
(3, 4),
(4, 4);