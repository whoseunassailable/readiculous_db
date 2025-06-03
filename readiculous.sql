create database readiculous;
-- drop database readiculous;
use readiculous;

CREATE TABLE users (
    user_id varchar(255) PRIMARY KEY,
    first_name VARCHAR(100) NOT NULL,
    last_name VARCHAR(100) NOT NULL,
    date_of_birth DATE,
	location VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE NOT NULL,
    phone VARCHAR(20),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    password varchar(255)
);


CREATE TABLE genres (
    genre_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) UNIQUE NOT NULL
);


INSERT INTO genres (name) VALUES
('Action'),
('Adventure'),
('Animation'),
('Anthology'),
('Autobiography'),
('Biography'),
('Children'),
('Chick Lit'),
('Classic'),
('Comedy'),
('Comic Book'),
('Coming-of-Age'),
('Crime'),
('Cyberpunk'),
('Dark Fantasy'),
('Detective'),
('Drama'),
('Dystopian'),
('Educational'),
('Epic'),
('Erotica'),
('Espionage'),
('Fantasy'),
('Fiction'),
('Film-Noir'),
('Gothic');



CREATE TABLE user_genres (
    user_id varchar(255),
    genre_id INT UNSIGNED NOT NULL,
    PRIMARY KEY (user_id, genre_id),
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE,
    FOREIGN KEY (genre_id) REFERENCES genres(genre_id) ON DELETE CASCADE
);


CREATE TABLE books (
    book_id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    title TEXT NOT NULL,
    author TEXT,
    description TEXT
);

CREATE TABLE book_genres (
    book_id INT UNSIGNED NOT NULL,
    genre_id INT UNSIGNED NOT NULL,
    PRIMARY KEY (book_id, genre_id),
    FOREIGN KEY (book_id) REFERENCES books(book_id) ON DELETE CASCADE,
    FOREIGN KEY (genre_id) REFERENCES genres(genre_id) ON DELETE CASCADE
);

select * from users;
select * from user_genres;
-- delete from users where user_id = '3015bf8d-c792-4701-bea6-c6ff399a39af';

