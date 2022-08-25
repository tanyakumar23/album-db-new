CREATE TABLE TRACKS (
id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL UNIQUE,
album_id  INTEGER,
genre_id INTEGER,
name TEXT, length LEN , rating INTEGER , counts INTEGER);

CREATE TABLE ALBUMS (
id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL UNIQUE,
artist_id INTEGER,
name TEXT
);

CREATE TABLE ARTISTS (
id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL UNIQUE,
name TEXT);

CREATE TABLE GENRES (
id INTEGER PRIMARY KEY AUTOINCREMENT NOT NULL UNIQUE,
name TEXT);
INSERT INTO ARTISTS (name) VALUES ('led zepplin');
INSERT INTO ARTISTS (name) VALUES ('ac/dc');
INSERT INTO GENRES (name) VALUES ('rock');
INSERT INTO GENRES (name) VALUES ('metal');
INSERT INTO ALBUMS (name, artist_id) VALUES ('iv',1);
INSERT INTO ALBUMS (name, artist_id) VALUES ('who made who', 2);
INSERT INTO TRACKS (name, rating, length,counts, album_id, genre_id) VALUES ('black dog',5, 297, 0, 2, 1 );
INSERT INTO TRACKS (name, rating, length,counts, album_id, genre_id) VALUES ('stairway',5, 482, 0, 2, 1 );
INSERT INTO TRACKS (name, rating, length,counts, album_id, genre_id) VALUES ('about to rock',5, 313, 0, 1,2);
INSERT INTO TRACKS (name, rating, length,counts, album_id, genre_id) VALUES ('who made who',5, 207, 0, 1, 2 );

SELECT ALBUMS.name, ALBUMS.artist_id,ARTISTS.id, ARTISTS.name FROM ALBUMS JOIN ARTISTS ON ALBUMS.artist_id = ARTISTS.id;

SELECT  TRACKS.name, GENRES.name  FROM TRACKS JOIN GENRES ON TRACKS.genre_id = GENRES.ID;

SELECT TRACKS.name , ALBUMS.name, ARTISTS.name, GENRES.name FROM TRACKS JOIN GENRES JOIN ALBUMS JOIN ARTISTS ON TRACKS.genre_id = GENRES.id AND TRACKS.album_id = ALBUMS.id AND ALBUMS.artist_id = ARTISTS.id;











