-- Creation des mes utilisateur
CREATE USER 'utilisateur'@'%'  IDENTIFIED BY '12346';
CREATE USER 'admin'@'%'  IDENTIFIED BY '12344546';

-- Gestion droits Utilisateur
GRANT SELECT ON books . * TO 'utilisateur'@'%';
GRANT INSERT ON books . book TO 'utilisateur'@'%';
GRANT INSERT ON books . users TO 'tilisateur'@'%';

-- Gestion droits Admin 
GRANT ALL PRIVILEGES ON books . * TO 'Admin'@'%';

FLUSH PRIVILEGES;