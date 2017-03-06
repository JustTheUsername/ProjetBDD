CREATE DATABASE projetBDD;

CREATE USER 'ProjetBDD'@'localhost' IDENTIFIED BY 'ProjetBDD';

GRANT ALL PRIVILEGES ON projetBDD.* TO 'ProjetBDD'@'localhost';

mysql -h localhost -u ProjetBDD -p;

USE projetBDD;

CREATE TABLE clients (  id INT PRIMARY KEY NOT NULL,
                        lastname VARCHAR(32),
                        firstname VARCHAR(32),
                        adress VARCHAR(128),
                        code_postal INT(5),
                        ville VARCHAR(64),
                        date_naissance DATE );


CREATE TABLE articles ( code_article VARCHAR (10) PRIMARY KEY NOT NULL,
                        marque VARCHAR(16),
                        type VARCHAR(16),
                        stock SMALLINT,
                        prix_unitaire NUMERIC(6,2) );



CREATE TABLE type_livraisons (  id VARCHAR (3) PRIMARY KEY NOT NULL,
                                type VARCHAR(16),
                                prix NUMERIC (5.2) 

                                );



CREATE TABLE commandes ( numero_commande INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
                         id_client INT NOT NULL,
                         date_commande DATE NOT NULL,
                         type_livraison VARCHAR (3) NOT NULL,


                         CONSTRAINT fk_id_client 
                         FOREIGN KEY (id_client) 
                         REFERENCES clients(id),


                         CONSTRAINT fk_type_livraison 
                         FOREIGN KEY (type_livraison) 
                         REFERENCES type_livraisons(id)

                         );


CREATE TABLE details_commande ( numero_commande INT,
                                code_article VARCHAR(10),


                                CONSTRAINT fk_numero_commande 
                                FOREIGN KEY (numero_commande) 
                                REFERENCES commandes(numero_commande),


                                CONSTRAINT fk_code_article 
                                FOREIGN KEY (code_article)
                                REFERENCES articles(code_article)

                                );
