-- CONNECTION: name=music 2
-- request Genre-Singer
CREATE TABLE IF NOT EXISTS Genre (
	id SERIAL PRIMARY KEY,
	title VARCHAR(40) NOT NULL
);


CREATE TABLE IF NOT EXISTS Singer (
	id SERIAL PRIMARY KEY,
	name_ VARCHAR(40) NOT NULL
);


CREATE TABLE IF NOT EXISTS GenreSinger (
	id SERIAL PRIMARY KEY,
	genre_id INTEGER NOT NULL REFERENCES Genre(id),
	singer_id INTEGER NOT NULL REFERENCES Singer(id)
);


-- request Album-Singer
CREATE TABLE IF NOT EXISTS Album (
	id SERIAL PRIMARY KEY,
	title VARCHAR(40) NOT NULL,
    release_year SMALLINT
);


CREATE TABLE IF NOT EXISTS AlbumSinger (
	id SERIAL PRIMARY KEY,
	album_id INTEGER NOT NULL REFERENCES Album(id),
	singer_id INTEGER NOT NULL REFERENCES Singer(id)
);


-- request Album
CREATE TABLE IF NOT EXISTS Digest (
	id SERIAL PRIMARY KEY,
	title VARCHAR(40) NOT NULL,
    release_year SMALLINT
);


-- request Track
CREATE TABLE IF NOT EXISTS Track (
	id SERIAL PRIMARY KEY,
	title VARCHAR(40) NOT NULL,
    duration INTEGER,
    album_id INTEGER NOT NULL REFERENCES Album(id)
);


-- request Track-Digest
CREATE TABLE IF NOT EXISTS TrackDigest (
	id SERIAL PRIMARY KEY,
	track_id INTEGER NOT NULL REFERENCES Track (id),
	digest_id INTEGER NOT NULL REFERENCES Digest(id)
);
