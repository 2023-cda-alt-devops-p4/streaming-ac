
-- les titres et dates de sortie des films du plus récent au plus ancien
SELECT titre_film, DATE_FORMAT(annee_film, "%d/%m/%Y")
FROM films
ORDER BY annee_film DESC ;


-- les noms, prénoms et âges des acteurs/actrices de plus de 30 ans dans l'ordre alphabétique
SELECT nom_acteur, prenom_acteur, YEAR(CURRENT_DATE) - YEAR(naissance_acteur) - (DATE_FORMAT(CURRENT_DATE, '%m%d') < DATE_FORMAT(naissance_acteur, '%m%d')) AS age
FROM acteurs
WHERE naissance_acteur <= DATE_SUB(CURRENT_DATE, INTERVAL 30 YEAR)
ORDER BY nom_acteur, prenom_acteur ;


-- Liste des acteurs principaux pour un film donné (par exemple, film avec ID 4 = "The Dark Knight, le Chevalier Noir")
SELECT f.titre_film, r.nom_role, a.prenom_acteur, a.nom_acteur, r.role_principal, r.id_role, r.id_acteur, r.id_film 
FROM roles r
INNER JOIN acteurs a ON r.id_acteur = a.id_acteur
INNER JOIN films f ON r.id_film = f.id_film
WHERE r.id_film = 4 AND r.role_principal = TRUE;


-- la liste des films pour un acteur/actrice donné (ID 3 = Kurt Russel)
SELECT *
FROM films f
JOIN roles r ON f.id_film = r.id_film
JOIN acteurs a ON a.id_acteur = r.id_acteur
WHERE a.id_acteur = 3 ;


-- ajouter un film
INSERT INTO films (titre_film, duree_film, annee_film) 
VALUES ('Los Angeles 2013', 101, '1996-11-13');


-- ajouter un acteur/actrice
INSERT INTO acteurs (nom_acteur, prenom_acteur, naissance_acteur) 
VALUES ('Roth', 'Tim', '1961-05-14');


-- modifier un film
UPDATE streaming_database.films
SET titre_film = 'Les Aventures de Jack Burton dans les griffes du mandarin', 
duree_film = 100,
annee_film = '1986-09-03',
date_modif = NOW()
WHERE id_film = 11; -- Remplacera l'id 11 "New York 1997"


-- supprimer un acteur/actrice (supprimera aussi ses rôles) (ID 3 = Kurt Russel)
DELETE FROM acteurs WHERE id_acteur = 3; 


-- afficher les 3 derniers acteurs/actrices ajouté(e)s
SELECT *
FROM acteurs
ORDER BY date_ajout DESC
LIMIT 3;


-- procédure stockée : films d'un réalisateur donné en paramètre
DELIMITER //
CREATE PROCEDURE film_by_realisateur (IN params INT)
BEGIN
	SELECT *
	FROM films f
	INNER JOIN film_realisateur fr ON fr.id_film = f.id_film
	INNER JOIN realisateurs r ON r.id_realisateur = fr.id_realisateur
	WHERE r.id_realisateur = params;
END // 
DELIMITER ;

-- Pour appeler la procédure, il est possible d’exécuter la requête SQL suivante:
CALL film_by_realisateur(4); 
 