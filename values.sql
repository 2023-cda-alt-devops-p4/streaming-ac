-- Exemple de données pour la table realisateurs
INSERT INTO realisateurs (prenom_realisateur, nom_realisateur) VALUES
('Martin', 'Scorsese'), 
('Quentin', 'Tarantino'), 
('Steven', 'Spielberg'), 
('Christopher', 'Nolan'), 
('Alfonso', 'Cuarón'), 
('Steven', 'Spielberg'), 
('David', 'Fincher'), 
('Matt', 'Duffer'), 
('Roland', 'Emmerich'), 
('John', 'Carpenter');
    

-- Exemple de données pour la table acteurs
INSERT INTO acteurs (nom_acteur, prenom_acteur, naissance_acteur) VALUES
('De Niro', 'Robert', '1943-08-17'),
('DiCaprio', 'Leonardo', '1974-11-11'),
('Russel', 'Kurt', '1951-03-17'),
('Bobby Brown', 'Millie', '2004-02-19'), 
('Watson', 'Emma', '1990-04-15'),
('Bale', 'Christian', '1974-01-30'),
('Ledger', 'Heath', '1979-04-04'),
('Oldman', 'Gary', '1958-03-21'),
('Murphy', 'Cillian', '1976-05-25'),
('Travolta', 'John', '1954-02-18'),
('Moretz', 'Chloë', '1997-02-10');


-- Exemple de données pour la table films
INSERT INTO films (titre_film, duree_film, annee_film) VALUES
('Les Affranchis', 146, '1990-09-19'),
('Pulp Fiction', 154, '1994-10-14'),
('E.T. l\'extra-terrestre', 115, '1982-06-11'),
('The Dark Knight, le Chevalier Noir', 152, '2008-08-13'),
('Inception', 148, '2010-07-21'),
('Harry Potter et le Prisonnier d\'Azkaban', 141, '2004-06-02'),
('Stranger Things', 55, '2016-07-15'),
('Boulevard de la mort', 110, '2007-06-06'), 
('Destination : Graceland', 125, '2001-08-01'),
('The Thing', 108, '1982-11-03'),
('New York 1997', 99, '1981-06-24'),
('Stargate, la Porte des Etoiles', 119, '1995-02-01');


-- Exemple de données fictives pour la table utilisateurs
INSERT INTO utilisateurs (nom_utilisateur, prenom_utilisateur, email_utilisateur) VALUES
('Avite', 'Yves', 'yves.avite@email.com'),
('Vapas', 'Sam', 'sam.vapas@email.com'),
('Célert', 'Jacques', 'jacques.celert@email.com');


-- Données pour la table habilitations
INSERT INTO habilitations (id_utilisateur, habilitation_utilisateur) VALUES
(1, 'Admin'),
(2, 'Utilisateur'), 
(3, 'Modérateur');


-- Données pour la table roles
INSERT INTO roles (id_acteur, id_film, nom_role, role_principal) VALUES
(1, 1, 'Jimmy Conway', TRUE),
(2, 5, 'Dom Cobb', TRUE), 
(3, 8, 'Stuntman Mike', TRUE), 
(3, 9, 'Michael Zane', TRUE), 
(3, 10, 'R.J. MacReady', TRUE), 
(3, 11, 'Colonel Jonathan O\'Neil', TRUE), 
(4, 7, 'Elfe/Onze', TRUE), 
(5, 6, 'Hermione Granger', TRUE), 
(6, 4, 'Batman/Bruce Wayne', TRUE),
(7, 4, 'Le Joker', TRUE),
(8, 4, 'Lt. James Gordon', FALSE),
(8, 6, 'Sirius Black', FALSE),
(9, 5, 'Robert Fischer', FALSE),
(9, 4, 'Dr. Jonathan Crane/L\'épouvantail', FALSE),
(10, 2,'Vincent Vega', TRUE);


-- Exemple de données fictives pour la table archives
INSERT INTO archives (ancienne_valeur, nouvelle_valeur) VALUES
('Valeur ancienne 1', 'Valeur nouvelle 1'), 
('Valeur ancienne 2', 'Valeur nouvelle 2'), 
('Valeur ancienne 3', 'Valeur nouvelle 3');


-- Exemple de données fictives pour la table logs_modifications
INSERT INTO logs_modifications (id_utilisateur, id_archive) VALUES
(1, 1),
(2, 2),
(3, 3);


-- Relation entre les données pour la table film_realisateur
INSERT INTO film_realisateur (id_realisateur, id_film) VALUES
(1, 1),
(2, 2),
(2, 8),
(3, 3),
(4, 4),
(4, 5),
(5, 6),
(6, 3),
(8, 7),
(9, 12),
(10, 10),
(10, 11);


-- Exemple de données fictives pour la table favoris
INSERT INTO favoris (id_utilisateur, id_film) VALUES
(1, 1),
(1, 4),
(2, 2),
(2, 12),
(3, 3),
(3, 10);