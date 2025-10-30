DELIMITER $$
CREATE PROCEDURE add_user(
IN new_firstname VARCHAR(50),
IN new_lastname VARCHAR(50),
IN new_email VARCHAR(50),
IN new_password VARCHAR(100))
BEGIN
    IF (SELECT users.id_users FROM users WHERE users.email = new_email) > 0  THEN
        ROLLBACK;
        SIGNAL SQLSTATE '10000' SET MESSAGE_TEXT = 'Attention l\'utilisateur existe déja';
    END IF;
    -- Ajout en BDD
    INSERT INTO users(firstname, lastname, email,`password`) VALUES (new_firstname,new_lastname,new_email,new_password);
    COMMIT;
END
$$