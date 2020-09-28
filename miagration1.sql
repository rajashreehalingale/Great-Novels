create database novel;
create user 'novelAdmin'@'localhost' identified with mysql_native_password by 'novel925';
GRANT ALL on novel.* to 'novelAdmin'@'localhost';

USE novel;
CREATE TABLE genres (
    id INT auto_increment,
    name VARCHAR(255),
    createdAt DATETIME DEFAULT NOW(),
    updatedAt DATETIME DEFAULT NOW() ON UPDATE NOW(),
    deletedAt DATETIME,
    PRIMARY KEY(id)
);
 
CREATE TABLE authors (
    id INT auto_increment,
    nameFirst VARCHAR(255),
    nameLast VARCHAR(255),
    createdAt DATETIME DEFAULT NOW(),
    updatedAt DATETIME DEFAULT NOW() ON UPDATE NOW(),
    deletedAt DATETIME,
    PRIMARY KEY(id)
);

CREATE TABLE novels (
    id INT auto_increment,
    name VARCHAR(255),
    authorId INT,
    createdAt DATETIME DEFAULT NOW(),
    updatedAt DATETIME DEFAULT NOW() ON UPDATE NOW(),
    deletedAt DATETIME,
    PRIMARY KEY(id),
    FOREIGN KEY(authorId) REFERENCES authors(id)
);

CREATE TABLE novelsGenres (
    novelId INT,
    genreId INT,
    createdAt DATETIME DEFAULT NOW(),
    updatedAt DATETIME DEFAULT NOW() ON UPDATE NOW(),
    deletedAt DATETIME,
    PRIMARY KEY(novelId, genreId),
    FOREIGN KEY(novelId) REFERENCES novels(id),
    FOREIGN KEY(genreId) REFERENCES genres(id)
);

INSERT INTO authors (namefirst,nameLast) VALUES ('Bram', 'Stoker');
INSERT INTO authors (namefirst,nameLast) VALUES ('Oscar','Wilde');
INSERT INTO authors (namefirst,nameLast) VALUES ('Alice','Walker');
INSERT INTO authors (namefirst,nameLast) VALUES ('Leo','Tolstoy');
INSERT INTO authors (namefirst,nameLast) VALUES ('Charles','Dickens');
INSERT INTO authors (namefirst,nameLast) VALUES ('Arthur','Miller');
INSERT INTO authors (namefirst,nameLast) VALUES ('Alexandre','Dumas');
INSERT INTO authors (namefirst,nameLast) VALUES ('Arthur Conan','Doyle');
INSERT INTO authors (namefirst,nameLast) VALUES ('Robert Louis','Stevenson');
INSERT INTO authors (namefirst,nameLast) VALUES ('Fyodor','Dostoyevsky');
INSERT INTO authors (namefirst,nameLast) VALUES ('Agatha','Christie');
INSERT INTO authors (namefirst,nameLast) VALUES ('Ray','Bradbury');
INSERT INTO authors (namefirst,nameLast) VALUES ('George','Orwell');
INSERT INTO authors (namefirst,nameLast) VALUES ('H.G.','Wells');
INSERT INTO authors (namefirst,nameLast) VALUES ('Chinua','Achebe');

select * from authors

INSERT INTO novels (title,authorId) VALUES ('Dracula',1);
INSERT INTO novels (title,authorId) VALUES ('The Picture of Dorian Gray',2);
INSERT INTO novels (title,authorId) VALUES ('The Color Purple',3);
INSERT INTO novels (title,authorId) VALUES ('War and Peace',4);
INSERT INTO novels (title,authorId) VALUES ('A Tale of Two Cities',5);
INSERT INTO novels (title,authorId) VALUES ('The Crucible',6);
INSERT INTO novels (title,authorId) VALUES ('The Three Musketeers',7);
INSERT INTO novels (title,authorId) VALUES ('The Hound of the Baskervilles',8);
INSERT INTO novels (title,authorId) VALUES ('The Strange Case of Dr. Jekyll and Mr. Hyde',9);
INSERT INTO novels (title,authorId) VALUES ('Crime and Punishment',10);
INSERT INTO novels (title,authorId) VALUES ('Murder on the Orient Express',11);
INSERT INTO novels (title,authorId) VALUES ('Fahrenheit 451',12);
INSERT INTO novels (title,authorId) VALUES ('Animal Farm',13);
INSERT INTO novels (title,authorId) VALUES ('The Time Machine',14);
INSERT INTO novels (title,authorId) VALUES ('Things Fall Apart',15);

select * from novels

INSERT INTO genres (name) values ('Fiction');
INSERT INTO genres (name) values ('Horror');
INSERT INTO genres (name) values ('Fantasy');
INSERT INTO genres (name) values ('Gothic');
INSERT INTO genres (name) values ('Historical Fiction');
INSERT INTO genres (name) values ('War');
INSERT INTO genres (name) values ('Russian Literature');
INSERT INTO genres (name) values ('Drama');
INSERT INTO genres (name) values ('Plays');
INSERT INTO genres (name) values ('Adventure');
INSERT INTO genres (name) values ('French Literature');
INSERT INTO genres (name) values ('Mystery');
INSERT INTO genres (name) values ('Crime');
INSERT INTO genres (name) values ('Thriller');
INSERT INTO genres (name) values ('Science Fiction');
INSERT INTO genres (name) values ('Dystopia');
INSERT INTO genres (name) values ('Time Travel');
INSERT INTO genres (name) values ('African Literature');

select * from genres

INSERT INTO novelsGenres (novelId,genreId) values (1,1);
INSERT INTO novelsGenres (novelId,genreId)  values (1,2 );
INSERT INTO novelsGenres (novelId,genreId)  values (1,3 );
INSERT INTO novelsGenres (novelId,genreId)  values (2,1 );
INSERT INTO novelsGenres (novelId,genreId)  values (2,2 );
INSERT INTO novelsGenres (novelId,genreId)  values (2,4 );
INSERT INTO novelsGenres (novelId,genreId)  values (2,3 );
INSERT INTO novelsGenres(novelId,genreId)  values (3,1 );
INSERT INTO novelsGenres (novelId,genreId)  values (3,5 );
INSERT INTO novelsGenres (novelId,genreId)  values (4,1 );
INSERT INTO novelsGenres (novelId,genreId)  values (4,5 );
INSERT INTO novelsGenres (novelId,genreId)  values (4,6 );
INSERT INTO novelsGenres (novelId,genreId)  values (4,7 );
INSERT INTO novelsGenres (novelId,genreId)  values (5,1 );
INSERT INTO novelsGenres (novelId,genreId)  values (5,5 );
INSERT INTO novelsGenres (novelId,genreId)  values (6,1 );
INSERT INTO novelsGenres (novelId,genreId)  values (6,5 );
INSERT INTO novelsGenres (novelId,genreId)  values (6,9 );
INSERT INTO novelsGenres (novelId,genreId)  values (6,10 );
INSERT INTO novelsGenres (novelId,genreId)  values (7,1 );
INSERT INTO novelsGenres (novelId,genreId)  values (7,5 );
INSERT INTO novelsGenres (novelId,genreId)  values (7,11 );
INSERT INTO novelsGenres (novelId,genreId)  values (7,12 );
INSERT INTO novelsGenres (novelId,genreId)  values (8,1 );
INSERT INTO novelsGenres (novelId,genreId)  values (8,13 );
INSERT INTO novelsGenres (novelId,genreId)  values (8,14 );
INSERT INTO novelsGenres (novelId,genreId)  values (8,15 );
INSERT INTO novelsGenres (novelId,genreId)  values (9,1 );
INSERT INTO novelsGenres (novelId,genreId)  values (9,13 );
INSERT INTO novelsGenres (novelId,genreId)  values (9,16 );
INSERT INTO novelsGenres (novelId,genreId)  values (9,2 );
INSERT INTO novelsGenres (novelId,genreId)  values (10,1 );
INSERT INTO novelsGenres (novelId,genreId)  values (10,7 );
INSERT INTO novelsGenres (novelId,genreId)  values (10,13 );
INSERT INTO novelsGenres(novelId,genreId)  values (11,1 );
INSERT INTO novelsGenres (novelId,genreId)  values (11,13 );
INSERT INTO novelsGenres (novelId,genreId)  values (12,1 );
INSERT INTO novelsGenres (novelId,genreId)  values (12,13 );
INSERT INTO novelsGenres (novelId,genreId)  values (12,17 );
INSERT INTO novelsGenres (novelId,genreId)  values (13,1 );
INSERT INTO novelsGenres (novelId,genreId)  values (13,13 );
INSERT INTO novelsGenres (novelId,genreId)  values (13,17 );
INSERT INTO novelsGenres (novelId,genreId)  values (14,1 );
INSERT INTO novelsGenres (novelId,genreId)  values (14,16 );
INSERT INTO novelsGenres (novelId,genreId)  values (14,18 );
INSERT INTO novelsGenres (novelId,genreId)  values (15,1 );
INSERT INTO novelsGenres (novelId,genreId)  values (15,5 );
INSERT INTO novelsGenres (novelId,genreId)  values (15,19 );

select * from novelsGenres