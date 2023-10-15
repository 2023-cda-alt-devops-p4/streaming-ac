-- trigger 
-- Garder grâce à un trigger une trace de toutes les modifications 
-- apportées à la table des utilisateurs. 
-- Ainsi, une table d'archive conservera la date de la mise à jour, 
-- l'identifiant de l'utilisateur concerné, 
-- l'ancienne valeur ainsi que la nouvelle.


update id_user from user 
-- fr trigger sur table user 
after update on users 
for each row

{BEFORE | AFTER} {INSERT | UPDATE| DELETE }
ON table_name FOR EACH ROW
trigger_body; 