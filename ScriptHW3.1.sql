INSERT INTO performer (performer_id, performer_name)
VALUES
	(1, 'Scorpions'),
	(2, 'Blink-182'),
	(3, 'Hamatom'),
	(4, 'Airbourne'),
	(5, 'Eagles'),
	(6, 'The Offspring'),
	(7, 'AC/DC'),
	(8, 'Metallica')

INSERT INTO genre (genre_id, genre_name)
VALUES
	(1, 'Hard-rock'),
	(2, 'Punk-rock'),
	(3, 'Industrial'),
	(4, 'Folk-rock'),
	(5, 'Trash-metal')

INSERT INTO performers_genres (performer_id, genre_id)
VALUES
	(1, 1),
	(2, 2),
	(3, 3),
	(4, 1),
	(5, 4),
	(6, 2),
	(7, 1),
	(8, 5),
	(1, 4)

INSERT INTO album (album_id, album_name, album_year)
VALUES
	(1, 'Blackout', 1982),
	(2, 'California', 2018),
	(3, 'Keinzeitmensch', 2019),
	(4, 'Breakin Outta Hell', 2016),
	(5, 'Desperado', 2013),
	(6, 'Conspiracy Of One', 2000),
	(7, 'Bonfire', 1997),
	(8, 'Garage Inc.', 1998),
	(9, 'St. Anger', 2020)

INSERT INTO performers_albums (performer_id, album_id)
VALUES
	(1, 1),
	(2, 2),
	(3, 3),
	(4, 4),
	(5, 5),
	(6, 6),
	(7, 7),
	(8, 8),
	(8, 9)

INSERT INTO track (track_id, track_name, track_seconds, track_album)
VALUES
	(1, 'No One Like You', 237, 1),
	(2, 'China White', 418, 1),
	(3, 'Bored To Death', 235, 2),
	(4, 'No Future', 225, 2),
	(5, 'Ahoi', 228, 3),
	(6, 'Panik', 224, 3),
	(7, 'Get Back Up', 217, 4),
	(8, 'Down On You', 258, 4),
	(9, 'Out of Control', 184, 5),
	(10, 'Outlaw Man', 213, 5),
	(11, 'Come Out Swinging', 167, 6),
	(12, 'All Along', 98, 6),
	(13, 'Hells Bells', 312, 7),
	(14, 'High Voltage', 356, 7),
	(15, 'Die, Die My Darling', 146, 8),
	(16, 'Turn the Page', 366, 8),
	(17, 'Dirty Window', 325, 9)

INSERT INTO collection (collection_id, collection_name, collection_year)
VALUES
	(1, 'Collection Vol.1', 2001),
	(2, 'Collection Vol.2', 2006),
	(3, 'Collection Vol.3', 2008),
	(4, 'Collection Vol.4', 2010),
	(5, 'Collection Vol.5', 2016),
	(6, 'Collection Vol.6', 2018),
	(7, 'Collection Vol.7', 2020),
	(8, 'Collection Vol.8', 2022)

INSERT INTO collections_tracks (track_id, collection_id)
VALUES
	(1, 1),
	(2, 1),
	(1, 6),
	(11, 1),
	(16, 1),
	(1, 2),
	(10, 1),
	(10, 2),
	(4, 2),
	(7, 2),
	(9, 2),
	(10, 3),
	(11, 3),
	(12, 3),
	(16, 3),
	(2, 3),
	(10, 4),
	(1, 4),
	(2, 4),
	(3, 4),
	(6, 4),
	(5, 5),
	(15, 5),
	(13, 5),
	(3, 5),
	(9, 5),
	(16, 6),
	(15, 6),
	(14, 6),
	(13, 6),
	(12, 6),
	(16, 7),
	(10, 7),
	(9, 7),
	(8, 7),
	(7, 7),
	(9, 8),
	(7, 8),
	(5, 8),
	(3, 8),
	(1, 8)