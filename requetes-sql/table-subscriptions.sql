CREATE TABLE `eventech_db`.`subscriptions` (
id_subscription INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
id_user INT,
id_event INT,
FOREIGN KEY (id_user) REFERENCES `eventech_db`.`users` (id_user),
FOREIGN KEY (id_event) REFERENCES `eventech_db`.`events` (id_event)
);