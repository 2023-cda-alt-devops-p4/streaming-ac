
-- les titres et dates de sortie des films du plus récent au plus ancien
SELECT titre_film, annee_film
FROM films
ORDER BY annee_film DESC ;

-- les noms, prénoms et âges des acteurs/actrices de plus de 30 ans dans l'ordre alphabétique
SELECT nom_acteur, prenom_acteur, naissance_acteur
FROM acteurs
WHERE (YEAR(naissance_acteur) <=1993)
ORDER BY nom_acteur, prenom_acteur;

SELECT nom_acteur, prenom_acteur, YEAR(CURRENT_DATE) - YEAR(naissance_acteur) - (DATE_FORMAT(CURRENT_DATE, '%m%d') < DATE_FORMAT(naissance_acteur, '%m%d')) AS age
FROM acteurs
WHERE naissance_acteur <= DATE_SUB(CURRENT_DATE, INTERVAL 30 YEAR)
ORDER BY nom_acteur, prenom_acteur ;

-- Recherche des ID des acteurs principaux pour un film donné (par exemple, film avec ID 1)
SELECT *
FROM roles
WHERE id_film = 1 AND role_principal = TRUE;

-- la liste des films pour un acteur/actrice donné
SELECT *
FROM films f
JOIN roles r ON f.id_film = r.id_film
JOIN acteurs a ON a.id_acteur = r.id_acteur
WHERE a.id_acteur = 1 ;

-- ajouter un film
INSERT INTO films (titre_film, duree_film, annee_film, date_ajout, date_modif) 
VALUES ('The Thing', '108', '1982-11-03', NOW(), NOW());

-- ajouter un acteur/actrice
INSERT INTO acteurs (nom_acteur, prenom_acteur, naissance_acteur, date_ajout, date_modif) 
VALUES ('Russel', 'Kurt', '1951-03-17', NOW(), NOW());

-- modifier un film
UPDATE streaming_database.films
SET titre_film = 'New York 1997', 
duree_film = 99,
annee_film = '1981-06-24',
date_modif = NOW()
WHERE id_film = 3; -- Remplacez l'ID du film que vous souhaitez modifier

-- supprimer un acteur/actrice
DELETE FROM roles WHERE id_acteur = 3;
DELETE FROM acteurs WHERE id_acteur = 3; 


-- afficher les 3 derniers acteurs/actrices ajouté(e)s
SELECT *
FROM acteurs
ORDER BY date_ajout DESC
LIMIT 3;

-- films d'un réalisateur donné en paramètre

SELECT *
FROM films f

JOIN film_realisateur fr ON fr.id_film = f.id_film
JOIN realisateurs r ON r.id_realisateur = fr.id_realisateur
WHERE r.id_realisateur = 1 ;






-- dans un procédure stockée















