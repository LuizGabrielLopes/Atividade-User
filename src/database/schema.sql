CREATE DATABASE cadastro;

CREATE TABLE users (
    id SERIAL PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL
);

CREATE TABLE post (
    id SERIAL PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    content TEXT NOT NULL,
    photo VARCHAR(500), 
    user_id INT NOT NULL REFERENCES users(id) ON DELETE CASCADE
);

INSERT INTO users (name, email) VALUES 
    ('Thiago Ferreira', 'thiagoferreira@gmail.com'),
    ('Marcelo Carboni', 'marcelocarboni@gmail.com'),
    ('Eduardo Correia', 'eduardocorreia@gmail.com'),
    ('Jonas Almeida', 'jonas.almeida@gmail.com'),
    ('Leonardo Silva', 'leonardo.silva@gmail.com'),
    ('Pedro Henrique', 'pedro.henrique@gmail.com'),
    ('Andre Luiz', 'andre.luiz@gmail.com'),
    ('Enzo Gabriel', 'enzo.gabriel@gmail.com'),
    ('Henrique Santos', 'henrique.santos@gmail.com'),
    ('Miguel Oliveira', 'miguel.oliveira@gmail.com'),
    ('Davi Costa', 'davi.costa@gmail.com'),
    ('Gustavo Lima', 'gustavo.lima@gmail.com'),
    ('Arthur Monteiro', 'arthur.monteiro@gmail.com'),
    ('Luiz Fernando', 'luiz.fernando@gmail.com'),
    ('Lucas Martins', 'lucas.martins@gmail.com'),
    ('Ravi Nascimento', 'ravi.nascimento@gmail.com'),
    ('José Carlos', 'jose.carlos@gmail.com'),
    ('Ana Clara', 'ana.clara@gmail.com'),
    ('Beatriz Silva', 'beatriz.silva@gmail.com'),
    ('Camila Oliveira', 'camila.oliveira@gmail.com'),
    ('Daniel Souza', 'daniel.souza@gmail.com'),
    ('Eduarda Lima', 'eduarda.lima@gmail.com'),
    ('Fernanda Costa', 'fernanda.costa@gmail.com'),
    ('Gabriel Almeida', 'gabriel.almeida@gmail.com'),
    ('Helena Martins', 'helena.martins@gmail.com'),
    ('Isabela Rocha', 'isabela.rocha@gmail.com'),
    ('João Pedro', 'joao.pedro@gmail.com'),
    ('Kauã Mendes', 'kaua.mendes@gmail.com'),
    ('Larissa Duarte', 'larissa.duarte@gmail.com'),
    ('Matheus Ribeiro', 'matheus.ribeiro@gmail.com'),
    ('Nathalia Farias', 'nathalia.farias@gmail.com'),
    ('Otávio Nunes', 'otavio.nunes@gmail.com'),
    ('Patrícia Cardoso', 'patricia.cardoso@gmail.com'),
    ('Rafael Teixeira', 'rafael.teixeira@gmail.com'),
    ('Sofia Monteiro', 'sofia.monteiro@gmail.com'),
    ('Thiago Azevedo', 'thiago.azevedo@gmail.com'),
    ('Vinícius Barros', 'vinicius.barros@gmail.com'),
    ('Yasmin Freitas', 'yasmin.freitas@gmail.com'),
    ('Zoe Santana', 'zoe.santana@gmail.com'),
    ('Arthur Campos', 'arthur.campos@gmail.com'),
    ('Bruna Ferreira', 'bruna.ferreira@gmail.com'),
    ('Carlos Eduardo', 'carlos.eduardo@gmail.com'),
    ('Débora Moraes', 'debora.moraes@gmail.com'),
    ('Elisa Vieira', 'elisa.vieira@gmail.com'),
    ('Fábio Cunha', 'fabio.cunha@gmail.com'),
    ('Giovanna Lopes', 'giovanna.lopes@gmail.com'),
    ('Hugo Batista', 'hugo.batista@gmail.com'),
    ('Bernardo Almeida', 'bernardo.almeida@gmail.com'),
    ('Vitor Mendes', 'vitor.mendes@gmail.com'),
    ('Carlos Augusto', 'carlos.augusto@gmail.com'),
    ('Felipe Santos', 'felipe.santos@gmail.com');

INSERT INTO post (title, content, photo, user_id) VALUES
    ('Paisagem', 'Uma bela paisagem no fim de tarde', 'https://cursinhoparamedicina.com.br/wp-content/uploads/2022/10/Paisagem-1.jpg', 1),
    ('Foto', 'Um grande dia de pesca', 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRY8jOK3zoEGMzdZUgUaiYlPuDbfMuZNHStZg&s', 2),
    ('Post 3', 'Descrição do post 3', 'https://example.com/image3.jpg', 3),
    ('Post 4', 'Descrição do post 4', 'https://example.com/image4.jpg', 4);