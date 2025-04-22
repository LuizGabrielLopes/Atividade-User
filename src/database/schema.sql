CREATE DATABASE cadastro;

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

INSERT INTO users (name, email) VALUES 
    ('Thiago Ferreira', 'thiago@email.com'),
    ('Marcelo Carboni', 'marcelo@email.com'),
    ('Eduardo Correia', 'eduardo@email.com'),
    ('Felipe Santos', 'felipe@email.com');
    

CREATE TABLE post (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    content TEXT NOT NULL,
    photo VARCHAR(500), 
    user_id INT NOT NULL REFERENCES users(id) ON DELETE CASCADE
);

INSERT INTO post (title, content, photo, user_id) VALUES
    ('Paisagem', 'Uma bela paisagem no fim de tarde', 'https://cursinhoparamedicina.com.br/wp-content/uploads/2022/10/Paisagem-1.jpg', 1),
    ('Foto', 'Um grande dia de pesca', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRY8jOK3zoEGMzdZUgUaiYlPuDbfMuZNHStZg&s', 2),
    ('Post 3', 'Descrição do post 3', 'https://example.com/image3.jpg', 3),
    ('Post 4', 'Descrição do post 4', 'https://example.com/image4.jpg', 4);