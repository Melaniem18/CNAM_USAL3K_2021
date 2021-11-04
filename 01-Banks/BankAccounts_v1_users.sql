/*
--- créer l'utilisateur 'melanie' 
--- et lui attribue tous les priviligès sur toutes les bases de données
DROP USER IF EXISTS 'melanie'@'localhost';
CREATE USER 'melanie'@'localhost' IDENTIFIED BY 'azer';
REVOKE ALL PRIVILEGES ON *.* FROM 'melanie'@'localhost';
GRANT ALL PRIVILEGES ON *.* TO 'melanie'@'localhost';
*/
/*
--- créer l'utilisateur 'toto'
--- et lui attribue tous les priviligès sur la base de données usal3K_2021_banks
--- cet utilisateur n'aura pas accès aux autres bases de données
DROP USER IF EXISTS 'toto'@'localhost';
CREATE USER 'toto'@'localhost' IDENTIFIED BY 'azer';
REVOKE ALL PRIVILEGES ON *.* FROM 'toto'@'localhost';
GRANT ALL PRIVILEGES ON usal3K_2021_banks.* TO 'toto'@'localhost';
*/

/*
--- créer l'utilisateur 'toto'
--- et lui attribue tous les priviligès uniquement sur la table banks de la base de données usal3K_2021_banks
--- cet utilisateur aura accès que à cette table
DROP USER IF EXISTS 'toto'@'localhost';
CREATE USER 'toto'@'localhost' IDENTIFIED BY 'azer';
REVOKE ALL PRIVILEGES ON *.* FROM 'toto'@'localhost';
GRANT ALL PRIVILEGES ON usal3K_2021_banks.banks TO 'toto'@'localhost';
*/

/*
--- créer l'utilisateur 'toto'
--- et lui attribue les droits d'effectuer les opérations SELECT, UPDATE, INSERT, DELETE
--- sur toutes les tables sur la base de données usal3K_2021_banks
--- toutes autres opérations sera interdite
DROP USER IF EXISTS 'toto'@'localhost';
CREATE USER 'toto'@'localhost' IDENTIFIED BY 'azer';
REVOKE ALL PRIVILEGES ON *.* FROM 'toto'@'localhost';
GRANT SELECT, UPDATE, INSERT, DELETE ON usal3K_2021_banks.* TO 'toto'@'localhost';
*/

/*
DROP USER IF EXISTS 'toti'@'localhost';
CREATE USER 'toti'@'localhost' IDENTIFIED BY 'azer';
REVOKE ALL PRIVILEGES ON *.* FROM 'toti'@'localhost';
GRANT SELECT, UPDATE, INSERT, DELETE, DROP, CREATE ON usal3K_2021_banks.* TO 'toti'@'localhost';
*/

/*
--- créer l'utilisateur 'melSynfony'
--- on lui donne tous les privilèges sur la base de données usal3K_2021_banks
DROP USER IF EXISTS 'melSymfony'@'localhost';
CREATE USER 'melSymfony'@'localhost' IDENTIFIED BY 'azer';
REVOKE ALL PRIVILEGES ON *.* FROM 'melSymfony'@'localhost';
GRANT ALL PRIVILEGES ON usal3K_2021_banks.* TO 'melSymfony'@'localhost';

--- Afficher les droits d'un utilisateur
SHOW GRANTS FOR 'melSymfony'@'localhost';
*/

/* CREATION D'UN ADMINISTRATEUR */
DROP USER IF EXISTS 'admin'@'localhost';
CREATE USER 'admin'@'localhost' IDENTIFIED BY 'azer';

/* OCTROI DES DROITS DE L'ADMINISTRATEUR*/
REVOKE ALL PRIVILEGES ON *.* FROM 'admin'@'localhost';
GRANT ALL PRIVILEGES ON *.* TO 'admin'@'localhost';

/* DONNE LA POSSIBILITE DE MODIFIER LES DROITS DES AUTRES UTILSATEURS*/
REVOKE GRANT OPTION ON *.* FROM 'admin'@'localhost';
GRANT GRANT OPTION ON *.* TO 'admin'@'localhost';

SHOW GRANTS FOR 'admin'@'localhost';

/* ---RECHARGE LES DROITS DES UTILISATEURS
--- (à exécuter après avoir crée ou modifié un utilisateur*/
FLUSH PRIVILEGES;

-- base donné système de MYSQL
USE mysql;
-- table où sont stockés les utilisateurs crées (avec leur privilèges globaux)
SELECT * FROM user;