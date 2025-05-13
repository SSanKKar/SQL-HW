-- Добавление жанров.
INSERT INTO Genres(name) VALUES ('POP');
INSERT INTO Genres(name) VALUES ('RAP');
INSERT INTO Genres(name) VALUES ('RockNRoll');

-- Добавление артистов.
INSERT INTO Artists(name) VALUES ('Lady Gaga');
INSERT INTO Artists(name) VALUES ('Michael Jackson');
INSERT INTO Artists(name) VALUES ('Kendrick Lamar') ;
INSERT INTO Artists(name) VALUES ('AC/DC');

-- Добавление альбомов.
INSERT INTO Albums(title, release_year) VALUES ('Mayhem', 2025);
INSERT INTO Albums(title, release_year) VALUES ('Thriller', 1982);
INSERT INTO Albums(title, release_year) VALUES ('DAMN.', 2017);
INSERT INTO Albums(title, release_year) VALUES ('Iron Man 2', 2010);
INSERT INTO Albums(title, release_year) VALUES ('Ben', 1927);
INSERT INTO Albums(title, release_year) VALUES ('Chromatica', 2020);

-- Добавление треков.
INSERT INTO Tracks(title, duration, album_id) VALUES ('Abracadabra', '00:03:43', 1);
INSERT INTO Tracks(title, duration, album_id) VALUES ('Disease', '00:03:50', 1);
INSERT INTO Tracks(title, duration, album_id) VALUES ('Garden Of Eden', '00:03:59', 1);
INSERT INTO Tracks(title, duration, album_id) VALUES ('Billie Jean', '00:04:54', 2);
INSERT INTO Tracks(title, duration, album_id) VALUES ('Thriller', '00:05:58', 2);
INSERT INTO Tracks(title, duration, album_id) VALUES ('HUMBLE.', '00:02:57', 3);
INSERT INTO Tracks(title, duration, album_id) VALUES ('DNA.', '00:03:06', 3);
INSERT INTO Tracks(title, duration, album_id) VALUES ('Back in Black', '00:04:16', 4);
INSERT INTO Tracks(title, duration, album_id) VALUES ('Thunderstruck', '00:04:53', 4);
INSERT INTO Tracks(title, duration, album_id) VALUES ('My Girl', '00:03:05', 5);
INSERT INTO Tracks(title, duration, album_id) VALUES ('Stupid Love', '00:03:14', 6);

-- Связь артистов и жанров.
INSERT INTO Artists_Genres(artist_id, genre_id) VALUES (1, 1);
INSERT INTO Artists_Genres(artist_id, genre_id) VALUES (1, 3);
INSERT INTO Artists_Genres(artist_id, genre_id) VALUES (2, 1);
INSERT INTO Artists_Genres(artist_id, genre_id) VALUES (3, 2);
INSERT INTO Artists_Genres(artist_id, genre_id) VALUES (4, 3);

-- Связь артистов и альбомов.
INSERT INTO Artists_Albums(artist_id, album_id) VALUES (1, 1);
INSERT INTO Artists_Albums(artist_id, album_id) VALUES (2, 2);
INSERT INTO Artists_Albums(artist_id, album_id) VALUES (3, 3);
INSERT INTO Artists_Albums(artist_id, album_id) VALUES (4, 4);
INSERT INTO Artists_Albums(artist_id, album_id) VALUES (1, 6);

-- Добавление сборников.
INSERT INTO Compilations(title, release_year) VALUES ('The Collection', 2009);
INSERT INTO Compilations(title, release_year) VALUES ('Greatest Hits', 2018);
INSERT INTO Compilations(title, release_year) VALUES ('Backtracks', 2009);
INSERT INTO Compilations(title, release_year) VALUES ('Who Made Who', 1986);

-- Связь сборников и треков.
INSERT INTO Compilation_Tracks(compilation_id, track_id) VALUES (1, 5);
INSERT INTO Compilation_Tracks(compilation_id, track_id) VALUES (1, 6);
INSERT INTO Compilation_Tracks(compilation_id, track_id) VALUES (2, 9);
INSERT INTO Compilation_Tracks(compilation_id, track_id) VALUES (2, 10);
INSERT INTO Compilation_Tracks(compilation_id, track_id) VALUES (3, 11);
INSERT INTO Compilation_Tracks(compilation_id, track_id) VALUES (4, 11);