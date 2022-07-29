CREATE TABLE IF NOT EXISTS performer
(
	performer_id INT PRIMARY KEY,
	performer_name VARCHAR(128) NOT NULL,
	UNIQUE (performer_name)
)

CREATE TABLE IF NOT EXISTS genre
(
	genre_id INT PRIMARY KEY,
	genre_name VARCHAR(128) NOT NULL,
	UNIQUE (genre_name)
)

CREATE TABLE IF NOT EXISTS performers_genres
(
	performer_id INT REFERENCES performer(performer_id),
	genre_id INT REFERENCES genre(genre_id),
	CONSTRAINT pk PRIMARY KEY (performer_id, genre_id)
)

CREATE TABLE IF NOT EXISTS album
(
	album_id INT PRIMARY KEY,
	album_name VARCHAR(128) NOT NULL,
	album_year INT NOT NULL CHECK 
    	(album_year BETWEEN 1900 AND EXTRACT(YEAR FROM CURRENT_DATE))
)

CREATE TABLE IF NOT EXISTS performers_albums
(
	performer_id INT REFERENCES performer(performer_id),
	album_id INT REFERENCES album(album_id),
	CONSTRAINT pk2 PRIMARY KEY (performer_id, album_id)
)

CREATE TABLE IF NOT EXISTS track
(
	track_id INT PRIMARY KEY,
	track_name VARCHAR(128) NOT NULL,
	track_seconds INT NOT NULL,
	track_album INT NOT NULL REFERENCES album(album_id)
)

CREATE TABLE IF NOT EXISTS collection2
(
	collection_id INT PRIMARY KEY,
	collection_name VARCHAR(128) NOT NULL,
	collection_year INT NOT NULL CHECK 
    	(collection_year BETWEEN 1900 AND EXTRACT(YEAR FROM CURRENT_DATE))
)

CREATE TABLE IF NOT EXISTS collections_tracks
(
	track_id INT REFERENCES track(track_id),
	collection_id INT REFERENCES collection(collection_id),
	CONSTRAINT pk3 PRIMARY KEY (track_id, collection_id)
)