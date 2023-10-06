-- Exemple d'insertion de deux acteurs fictifs de moins de 30 ans (noms fictifs)
INSERT INTO acteurs (nom_acteur, prenom_acteur, naissance_acteur, date_ajout, date_modif) VALUES
('Bobby Brown ', 'Millie', '2004-02-19', NOW(), NOW()), 
('Watson', 'Emma', '1990-04-15', NOW(), NOW());  

INSERT INTO roles (id_acteur, id_film, nom_role, role_principal, date_ajout, date_modif)
VALUES
(1, 1, 'Jimmy Conway', TRUE, NOW(), NOW());

INSERT INTO realisateurs(prenom_realisateur, nom_realisateur)
VALUES
	('Christopher', 'Nolan'),
	('Quentin', 'Tarantino'),
	('Robert', 'Zemeckis'),
	('Frank', 'Darabont'),
	('David', 'Fincher'),
	('Sofia', 'Coppola'),
	('Roland', 'Emmerich'),
	('John', 'Carpenter');




-- modifier un role
UPDATE roles
SET nom_role = 'Jimmy Conway'
WHERE id_role = 1;


-- changer int contre un TIME pour la durée du film 
-- attention modifier les films actuels
-- ajouter valeur par défaut

-- ON DELETE CASCADE
ALTER TABLE roles
ADD FOREIGN KEY (id_acteur) REFERENCES acteurs(id_acteur) ON DELETE CASCADE;
