-- Table realisateurs
CREATE TABLE realisateurs (
    id_realisateur INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
	prenom_realisateur VARCHAR(60),
    nom_realisateur VARCHAR(60) NOT NULL,
    date_ajout DATETIME DEFAULT NOW(),
    date_modif DATETIME
);

-- Table acteurs
CREATE TABLE acteurs (
    id_acteur INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nom_acteur VARCHAR(60) NOT NULL,
    prenom_acteur VARCHAR(60),
    naissance_acteur DATE,
    date_ajout DATETIME DEFAULT NOW(),
    date_modif DATETIME
);

-- Table films
CREATE TABLE films (
    id_film INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    titre_film VARCHAR(255) NOT NULL,
    duree_film INT NOT NULL,
    annee_film DATE NOT NULL,
    date_ajout DATETIME DEFAULT NOW(),
    date_modif DATETIME
);

-- Table utilisateurs
CREATE TABLE utilisateurs (
    id_utilisateur INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    nom_utilisateur VARCHAR(60),
    prenom_utilisateur VARCHAR(60),
    email_utilisateur VARCHAR(60) NOT NULL,
    date_ajout DATETIME DEFAULT NOW(),
    date_modif DATETIME
);

-- Table habilitations
CREATE TABLE habilitations (
    id_habilitation INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    id_utilisateur INT,
    habilitation_utilisateur VARCHAR(16) NOT NULL,
    date_ajout DATETIME DEFAULT NOW(),
    date_modif DATETIME,
    FOREIGN KEY (id_utilisateur) REFERENCES utilisateurs(id_utilisateur) ON DELETE CASCADE
);

-- Table roles
CREATE TABLE roles (
    id_role INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    id_acteur INT,
    id_film INT,
    nom_role VARCHAR(60) NOT NULL,
    role_principal BOOL,
    date_ajout DATETIME DEFAULT NOW(),
    date_modif DATETIME,
    FOREIGN KEY (id_acteur) REFERENCES acteurs(id_acteur) ON DELETE CASCADE,
    FOREIGN KEY (id_film) REFERENCES films(id_film) ON DELETE CASCADE
);

-- Table archives
CREATE TABLE archives (
    id_archive INT PRIMARY KEY NOT NULL AUTO_INCREMENT,
    ancienne_valeur VARCHAR(255) NOT NULL,
    nouvelle_valeur VARCHAR(255) NOT NULL,
    date_ajout DATETIME DEFAULT NOW(),
    date_modif DATETIME
);

-- Table logs_modifications
CREATE TABLE logs_modifications (
    id_utilisateur INT,
    id_archive INT,
    PRIMARY KEY (id_utilisateur, id_archive),
    FOREIGN KEY (id_utilisateur) REFERENCES utilisateurs(id_utilisateur),
    FOREIGN KEY (id_archive) REFERENCES archives(id_archive)
);

-- Table film_realisateur
CREATE TABLE film_realisateur (
	id_realisateur INT,
    id_film INT,
    PRIMARY KEY (id_realisateur, id_film),
    FOREIGN KEY (id_realisateur) REFERENCES realisateurs(id_realisateur) ON DELETE CASCADE,
    FOREIGN KEY (id_film) REFERENCES films(id_film) ON DELETE CASCADE
);

-- Table favoris
CREATE TABLE favoris (
    id_utilisateur INT,
    id_film INT,
    PRIMARY KEY (id_utilisateur, id_film),
    FOREIGN KEY (id_utilisateur) REFERENCES utilisateurs(id_utilisateur) ON DELETE CASCADE,
    FOREIGN KEY (id_film) REFERENCES films(id_film) ON DELETE CASCADE
);
