CREATE TABLE `eventech_db`.`events` (
id_event  INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
id_creator INT,
nom_event VARCHAR(100),
lieu VARCHAR(50),
date_event DATE,
heure_event TIME,
type_event VARCHAR(100),
description_event TEXT, 
nb_personnes INT,
moyenne_notes DOUBLE,
prix DOUBLE,
domaine VARCHAR(50),
FOREIGN KEY (id_creator) REFERENCES `eventech_db`.`users`(id_user)
);