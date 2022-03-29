

USE usal3K_2021_banks;

/*
Ajouter la gestion des prêts (CF README.md)

Vous devez implémenter votre script dans ce fichier

Travail attendu :
1) Créer la ou les les nouvelles table(s)
2) Insérer une ligne dans la table
3) Créer la procédure "Demander un prêt"
4) Créer la procédure "Accepter ou refuser un prêt"
5) Ajouter le ou les déclencheurs (triggers) si nécessaire

*/

CREATE TABLE loans
(
    `loans_id` INT PRIMARY KEY AUTO_INCREMENT,
    `loans_date` DATETIME NOT NULL,
    `loans_amount` DECIMAL(10,2),
    `loans_duration` INT,
    `loans_state` CHAR(1),
    `id` INT,
    FOREIGN KEY (id) REFERENCES bank_accounts(id)
);

INSERT INTO loans
(`loans_id`, `loans_date`, `loans_amount`, `loans_duration`, `loans_state`, `id`) 
VALUES 
(1, "2021-07-05", 5000, 23, "A", 1);


SELECT * FROM loans;






