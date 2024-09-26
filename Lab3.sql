CREATE TABLE movies (
    movie_id INTEGER PRIMARY KEY ,
    title TEXT NOT NULL,
    genre TEXT,
    release_year INTEGER,
    director TEXT,
    rating REAL
);
INSERT INTO movies (movie_id,title, genre, release_year, director, rating)
VALUES 
(001,'Inception', 'Sci-Fi', 2010, 'Christopher Nolan', 8.8);
INSERT INTO movies VALUES (002,'The Dark Knight', 'Action', 2008, 'Christopher Nolan', 9.0);
INSERT INTO movies VALUES (003,'Interstellar', 'Sci-Fi', 2014, 'Christopher Nolan', 8.6);
INSERT INTO movies VALUES(004,'The Matrix', 'Sci-Fi', 1999, 'The Wachowskis', 8.7);
INSERT INTO movies VALUES(005,'Parasite', 'Thriller', 2019, 'Bong Joon-ho', 8.6);
INSERT INTO movies VALUES(006,'Joker', 'Drama', 2019, 'Todd Phillips', 8.4);
INSERT INTO movies VALUES(007,'The Godfather', 'Crime', 1972, 'Francis Ford Coppola', 9.2);
INSERT INTO movies VALUES(008,'Forrest Gump', 'Drama', 1994, 'Robert Zemeckis', 8.8);
INSERT INTO movies VALUES(009,'Gladiator', 'Action', 2000, 'Ridley Scott', 8.5);
INSERT INTO movies VALUES(010,'Shawshank Redemption', 'Drama', 1994, 'Frank Darabont', 9.3);

select * from movies;