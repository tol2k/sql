CREATE TABLE IF NOT EXISTS Genres (
	id SERIAL PRIMARY KEY,
	name_genre VARCHAR(80) NOT NULL
	);
CREATE TABLE IF NOT EXISTS Performers (
	id SERIAL PRIMARY KEY,
	name_performer VARCHAR(80)
	);
CREATE TABLE IF NOT EXISTS Albums (
	id SERIAL PRIMARY KEY,
	name_album VARCHAR(80),
	date_album DATE
	);
CREATE TABLE IF NOT EXISTS Collections (
	id SERIAL PRIMARY KEY,
	name_collection VARCHAR(80),
	date_collection DATE
	);
CREATE TABLE IF NOT EXISTS Tracks (
	id SERIAL PRIMARY KEY,
	album_id INTEGER REFERENCES Albums(id),
	name_track VARCHAR(80),
	duration_track VARCHAR(80)
	);
CREATE TABLE IF NOT EXISTS genre_track (
	id_genre INTEGER REFERENCES Genres(id),
	id_track INTEGER REFERENCES Tracks(id)
	);
CREATE TABLE IF NOT EXISTS album_performer (
	id_album INTEGER REFERENCES Albums(id),
	id_performer INTEGER REFERENCES Performers(id)
	);
CREATE TABLE IF NOT EXISTS collection_track (
	id_collection INTEGER REFERENCES Collections(id),
	id_track INTEGER REFERENCES Tracks(id)
	);
CREATE TABLE IF NOT EXISTS Tracks (
	id SERIAL PRIMARY KEY,
	album_id INTEGER REFERENCES Albums(id),
	name_track VARCHAR(80),
	duration_track VARCHAR(80)
	);
CREATE TABLE IF NOT EXISTS genre_track (
	id_genre INTEGER REFERENCES Genres(id),
	id_track INTEGER REFERENCES Tracks(id)
	);
CREATE TABLE IF NOT EXISTS album_performer (
	id_album INTEGER REFERENCES Albums(id),
	id_performer INTEGER REFERENCES Performers(id)
	);
CREATE TABLE IF NOT EXISTS collection_track (
	id_collection INTEGER REFERENCES Collections(id),
	id_track INTEGER REFERENCES Tracks(id)
	);

	