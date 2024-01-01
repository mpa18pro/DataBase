-- request Genre-Singer
CREATE TABLE IF NOT EXISTS Genre (
	id SERIAL PRIMARY KEY,
	title VARCHAR(40) NOT NULL
);

-- h/w 3
INSERT INTO Genre(title) 
VALUES
('Rock'),
('Blues-rock'),
('Blues'),
('Pop');
--

CREATE TABLE IF NOT EXISTS Singer (
	id SERIAL PRIMARY KEY,
	name_ VARCHAR(40) NOT NULL
);

-- h/w 3
INSERT INTO Singer(name_) 
VALUES
('Dire straits'),
('Joe Cocker'),
('Eric Clapton'),
('ABBA');
--

CREATE TABLE IF NOT EXISTS GenreSinger (
	id SERIAL PRIMARY KEY,
	genre_id INTEGER NOT NULL REFERENCES Genre(id),
	singer_id INTEGER NOT NULL REFERENCES Singer(id)
);

-- h/w 3
INSERT INTO GenreSinger(genre_id, singer_id) 
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4);
--

-- request Album-Singer
CREATE TABLE IF NOT EXISTS Album (
	id SERIAL PRIMARY KEY,
	title VARCHAR(40) NOT NULL,
    release_year SMALLINT
);

-- h/w 3
INSERT INTO Album(title, release_year) 
VALUES
('Brothers in Arms', 1985),
('No Ordinary World', 2019),
('Pilgrim', 1998),
('Super Trouper', 1980);
--


CREATE TABLE IF NOT EXISTS AlbumSinger (
	id SERIAL PRIMARY KEY,
	album_id INTEGER NOT NULL REFERENCES Album(id),
	singer_id INTEGER NOT NULL REFERENCES Singer(id)
);

-- h/w 3
INSERT INTO AlbumSinger(album_id, singer_id) 
VALUES
(1, 1),
(2, 2),
(3, 3),
(4, 4);
--


-- request Album-Digest
CREATE TABLE IF NOT EXISTS Digest (
	id SERIAL PRIMARY KEY,
	title VARCHAR(40) NOT NULL,
    release_year SMALLINT
);

-- h/w 3
INSERT INTO Digest(title, release_year) 
VALUES
('Digest_1', 1980),
('Digest_2', 1985),
('Digest_3', 1990),
('Digest_4', 2020);
--


CREATE TABLE IF NOT EXISTS AlbumDigest (
	id SERIAL PRIMARY KEY,
	album_id INTEGER NOT NULL REFERENCES Album(id),
	digest_id INTEGER NOT NULL REFERENCES Digest(id)
);

-- h/w 3
INSERT INTO AlbumDigest(album_id, digest_id) 
VALUES
(1, 2),
(2, 4),
(3, 3),
(4, 4);
--


-- request Album-Track
CREATE TABLE IF NOT EXISTS Track (
	id SERIAL PRIMARY KEY,
	title VARCHAR(40) NOT NULL,
    duration INTEGER,
    album_id INTEGER NOT NULL REFERENCES Album(id)
);

-- h/w 3
INSERT INTO Track(id, title, duration, album_id) 
VALUES
('Brothers in Arms', 420, 1),
('So Far Away', 312, 1),
('First We Take Manhattan', 224, 2),
('My Father_s Son', 269, 2),
('River of Tears', 442, 3),
('Happy New Year', 263, 4);
--


-- request Track-Digest
CREATE TABLE IF NOT EXISTS TrackDigest (
	id SERIAL PRIMARY KEY,
	track_id INTEGER NOT NULL REFERENCES Album(id),
	digest_id INTEGER NOT NULL REFERENCES Digest(id)
);

-- h/w 3
INSERT INTO TrackDigest(track_id, digest_id) 
VALUES
(1, 2),
(2, 3),
(3, 4),
(4, 4);
--(5, 4),
--(6, 1);
--