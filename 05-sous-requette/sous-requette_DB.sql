DROP DATABASE IF EXISTS usal3k_sousrequete;

CREATE DATABASE usal3k_sousrequete DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;

USE usal3k_sousrequete;

CREATE TABLE roles
(
role_id INT AUTO_INCREMENT PRIMARY KEY,
role_name VARCHAR(50)
);

CREATE TABLE users 
(
id INT AUTO_INCREMENT PRIMARY KEY,
username VARCHAR(50),
email VARCHAR(255),
role_id INT,
CONSTRAINT fk_userrole FOREIGN KEY (role_id) REFERENCES roles (role_id)
);

CREATE TABLE connected_users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_user INT,
    viewed DATETIME,
    FOREIGN KEY (id_user)
        REFERENCES users (id)
)  ENGINE=MEMORY;

INSERT INTO roles
VALUES
(NULL, 'admin'),
(NULL, 'registered'),
(NULL, 'banned');

INSERT INTO users (username, email, role_id)
VALUES
('Mike', 'm@m.fr', 1),
('Popo', 'p@p.fr', 2),
('René', 'r@r.com', 2),
('Cindy', 'c@c.fr', 2),
('Léo', 'l@l.com', 3);

