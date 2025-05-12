-- Создание таблицы жанров
CREATE TABLE Genres (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- Создание таблицы исполнителей
CREATE TABLE Artists (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL
);

-- Связь "многие ко многим" между исполнителями и жанрами
CREATE TABLE Artists_Genres (
    artist_id INT REFERENCES Artists(id) ON DELETE CASCADE,
    genre_id INT REFERENCES Genres(id) ON DELETE CASCADE,
    PRIMARY KEY (artist_id, genre_id)
);

-- Создание таблицы альбомов
CREATE TABLE Albums (
    id SERIAL PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    release_year INT CHECK (release_year > 1900)
);

-- Связь "многие ко многим" между альбомами и исполнителями
CREATE TABLE Artists_Albums (
    artist_id INT REFERENCES Artists(id) ON DELETE CASCADE,
    album_id INT REFERENCES Albums(id) ON DELETE CASCADE,
    PRIMARY KEY (artist_id, album_id)
);

-- Создание таблицы треков
CREATE TABLE Tracks (
    id SERIAL PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    duration TIME NOT NULL,
    album_id INT REFERENCES Albums(id) ON DELETE CASCADE
);

-- Создание таблицы сборников
CREATE TABLE Compilations (
    id SERIAL PRIMARY KEY,
    title VARCHAR(200) NOT NULL,
    release_year INT CHECK (release_year > 1900)
);

-- Связь "многие ко многим" между сборниками и треками
CREATE TABLE Compilation_Tracks (
    compilation_id INT REFERENCES Compilations(id) ON DELETE CASCADE,
    track_id INT REFERENCES Tracks(id) ON DELETE CASCADE,
    PRIMARY KEY (compilation_id, track_id)
);
