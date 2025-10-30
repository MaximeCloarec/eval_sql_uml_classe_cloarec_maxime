-- Creation des 5 categories
INSERT INTO category (`name`) VALUES ("Roman"), ("SF"), ("fantastique"), ("biopic"), ("thriller");

-- Creation de 15 (magnifiques) livres
INSERT INTO book (title, `description`,publication_date,author,id_category) VALUES 
("Tibo et les lapins","Une aventure magique","2023-10-05","Obit",2),
("Tibo et les poissons","Une grande brasse","2023-10-06","Rico",3),
("Tibo et les licornes","Une plus grande aventure","2023-11-07","Eciro",5),
("Tibo et les oiseaux","Un vol magnifique","2023-11-08","Malo",4),
("Tibo et les papillons","Une courte aventure","2023-12-15","Olam",1),
("Tibo et les tortues","Une lente aventure","2024-01-27","Filo",1),
("Tibo et les dinosaures","Une vieille aventure","2024-02-25","Pito",3),
("Tibo et les taupes","Une profonde aventure","2024-03-13","Opti",4),
("Tibo et les dauphins","Une rapide grande aventure","2024-04-06","Limo",5),
("Tibo et les lamas","Une crachante aventure","2024-05-13","Lama",2),
("Tibo et les souris","Une petite aventure","2023-06-22","Polo",3),
("Tibo et les bousiers","Une odorante aventure","2024-07-05","Ropo",3),
("Tibo et les fourmis","Une fourmillante aventure","2024-08-30","Enro",4),
("Tibo et les moustiques","Une sanglantes aventure","2024-09-10","Nano",2),
("Tibo et les chats","Une ronronnante aventure","2024-10-23","Vito",1)
;

-- Creation de 3 utilisateur
INSERT INTO users (firstname,lastname,email,`password`) VALUES
("Maxime","Cloarec","maxime@yahoo.fr","123456789"),
("Emixam","Ceraolc","emixma@oohay.rf","987654321"),
("Meamix","Celaroc","Meamix@yoaoh.fr","192837465");

-- Association des utilisateurs a 5 livre chacun
UPDATE book SET id_users = 1 WHERE book.id_book = 1;
UPDATE book SET id_users = 1 WHERE book.id_book = 2;
UPDATE book SET id_users = 1 WHERE book.id_book = 3;
UPDATE book SET id_users = 1 WHERE book.id_book = 4;
UPDATE book SET id_users = 1 WHERE book.id_book = 5;

UPDATE book SET id_users = 2 WHERE book.id_book = 6;
UPDATE book SET id_users = 2 WHERE book.id_book = 7;
UPDATE book SET id_users = 2 WHERE book.id_book = 8;
UPDATE book SET id_users = 2 WHERE book.id_book = 9;
UPDATE book SET id_users = 2 WHERE book.id_book = 10;

UPDATE book SET id_users = 3 WHERE book.id_book = 11;
UPDATE book SET id_users = 3 WHERE book.id_book = 12;
UPDATE book SET id_users = 3 WHERE book.id_book = 13;
UPDATE book SET id_users = 3 WHERE book.id_book = 14;
UPDATE book SET id_users = 3 WHERE book.id_book = 15;

