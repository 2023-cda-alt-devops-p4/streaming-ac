DELIMITER //
CREATE TRIGGER new_logs_update_users
BEFORE UPDATE ON utilisateurs
FOR EACH ROW
BEGIN
    DECLARE old_nom_utilisateur VARCHAR(60);
    DECLARE old_prenom_utilisateur VARCHAR(60);
    DECLARE old_email_utilisateur VARCHAR(60);
    
    SET old_nom_utilisateur = OLD.nom_utilisateur;
    SET old_prenom_utilisateur = OLD.prenom_utilisateur;
    SET old_email_utilisateur = OLD.email_utilisateur;
    
    IF NEW.nom_utilisateur != old_nom_utilisateur THEN
        INSERT INTO archives (ancienne_valeur, nouvelle_valeur)
        VALUES (old_nom_utilisateur, NEW.nom_utilisateur);
    END IF;
    
    IF NEW.prenom_utilisateur != old_prenom_utilisateur THEN
        INSERT INTO archives (ancienne_valeur, nouvelle_valeur)
        VALUES (old_prenom_utilisateur, NEW.prenom_utilisateur);
    END IF;
    
    IF NEW.email_utilisateur != old_email_utilisateur THEN
        INSERT INTO archives (ancienne_valeur, nouvelle_valeur)
        VALUES (old_email_utilisateur, NEW.email_utilisateur);
    END IF;
    
    INSERT INTO logs_modifications (id_utilisateur, id_archive)
    VALUES (NEW.id_utilisateur, LAST_INSERT_ID());
    
    SET NEW.date_modif = NOW();
END;
//
DELIMITER ;
