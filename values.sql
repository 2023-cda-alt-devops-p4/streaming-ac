-- Exemple de données fictives pour la table realisateurs
INSERT INTO realisateurs (nom_realisateur, prenom_realisateur, date_ajout, date_modif) VALUES
('Scorsese', 'Martin', NOW(), NOW()),
('Tarantino', 'Quentin', NOW(), NOW()),
('Spielberg', 'Steven', NOW(), NOW());

-- Exemple de données fictives pour la table acteurs
INSERT INTO acteurs (nom_acteur, prenom_acteur, naissance_acteur, date_ajout, date_modif) VALUES
('De Niro', 'Robert', '1943-08-17', NOW(), NOW()),
('DiCaprio', 'Leonardo', '1974-11-11', NOW(), NOW()),
('Streep', 'Meryl', '1949-06-22', NOW(), NOW());

-- Exemple de données fictives pour la table films
INSERT INTO films (titre_film, duree_film, annee_film, date_ajout, date_modif) VALUES
('Les Affranchis', 146, '1990-09-19', NOW(), NOW()),
('Pulp Fiction', 154, '1994-10-14', NOW(), NOW()),
('E.T. l''extra-terrestre', 115, '1982-06-11', NOW(), NOW());

-- Exemple de données fictives pour la table utilisateurs
INSERT INTO utilisateurs (nom_utilisateur, prenom_utilisateur, email_utilisateur, date_ajout, date_modif) VALUES
('Dupont', 'Jean', 'jean.dupont@email.com', NOW(), NOW()),
('Martin', 'Sophie', 'sophie.martin@email.com', NOW(), NOW()),
('Leblanc', 'Pierre', 'pierre.leblanc@email.com', NOW(), NOW());

-- Exemple de données fictives pour la table habilitations
INSERT INTO habilitations (id_utilisateur, habilitation_utilisateur, date_ajout, date_modif) VALUES
(1, 'Admin', NOW(), NOW()),
(2, 'Utilisateur', NOW(), NOW()),
(3, 'Modérateur', NOW(), NOW());

-- Exemple de données fictives pour la table roles
INSERT INTO roles (id_acteur, id_film, nom_role, role_principal, date_ajout, date_modif) VALUES
(1, 1, 'Henry Hill', TRUE, NOW(), NOW()),
(2, 2, 'Vincent Vega', TRUE, NOW(), NOW()),
(3, 3, 'Elliott', TRUE, NOW(), NOW());

-- Exemple de données fictives pour la table archives
INSERT INTO archives (ancienne_valeur, nouvelle_valeur, date_ajout, date_modif) VALUES
('Valeur ancienne 1', 'Valeur nouvelle 1', NOW(), NOW()),
('Valeur ancienne 2', 'Valeur nouvelle 2', NOW(), NOW()),
('Valeur ancienne 3', 'Valeur nouvelle 3', NOW(), NOW());

-- Exemple de données fictives pour la table logs_modifications
INSERT INTO logs_modifications (id_utilisateur, id_archive) VALUES
(1, 1),
(2, 2),
(3, 3);

-- Exemple de données fictives pour la table film_realisateur
INSERT INTO film_realisateur (id_film, id_realisateur) VALUES
(1, 1),
(2, 2),
(3, 3);

-- Exemple de données fictives pour la table favoris
INSERT INTO favoris (id_film, id_utilisateur) VALUES
(1, 1),
(2, 2),
(3, 3);
