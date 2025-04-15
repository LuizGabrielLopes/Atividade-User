CREATE DATABASE cadastro;

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE posts (
    id SERIAL PRIMARY KEY,
    title VARCHAR(100) NOT NULL,
    description TEXT,
    image VARCHAR(255)
);

INSERT INTO users (name, email) VALUES 
    ('Thiago Ferreira', 'thiago@email.com'),
    ('Marcelo Carboni', 'marcelo@email.com'),
    ('Eduardo Correia', 'eduardo@email.com'),
    ('Felipe Santos', 'felipe@email.com');

INSERT INTO posts (title, description, image) VALUES 
    ('Paisagem', 'Uma bela paisagem no fim de tarde', 'https://cursinhoparamedicina.com.br/wp-content/uploads/2022/10/Paisagem-1.jpg'),
    ('Foto', 'Um grande dia de pesca', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRY8jOK3zoEGMzdZUgUaiYlPuDbfMuZNHStZg&s'),
    ('Post 3', 'Descrição do post 3', 'https://example.com/image3.jpg'),
    ('Post 4', 'Descrição do post 4', 'https://example.com/image4.jpg');