CREATE TABLE `eventech_db`.`users` (
id_user INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
num_employe INT,
nom VARCHAR(50),
prenom VARCHAR(50),
mail VARCHAR(100),
mot_de_passe VARCHAR(50),
is_admin BOOLEAN,
domaine_activite VARCHAR(50)
);