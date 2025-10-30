-- Affichage des users avec (id, firstname, lastname, email)
SELECT users.id_users,users.firstname,users.lastname,users.email FROM users;

-- Affichage des books avec (id, title, description, publication_date) trié title croissant et publication_date croissante
SELECT book.id_book,book.title,book.`description`,book.publication_date FROM book ORDER BY book.title ASC,book.publication_date ASC;

-- Affichage des books avec (id, title, description, date_publication, author, name category)
SELECT book.id_book,book.`description`,book.publication_date,book.author,category.`name` FROM book
	INNER JOIN category ON book.id_category = category.id_category;
    
-- Affichage des books c (id, title, description, publication_date, name category,firstname, lastname) d'un utilisateur par son firstname et lastname
SELECT book.id_book,book.`description`,book.publication_date,book.author,category.`name`,users.firstname,users.lastname FROM users
	INNER JOIN book ON users.id_users = book.id_users
    INNER JOIN category ON book.id_category = category.id_category
    WHERE users.firstname = "Maxime" AND users.lastname = "Cloarec";