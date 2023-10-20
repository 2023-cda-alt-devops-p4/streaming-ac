# Plateforme de streaming / Streaming-ac
Bienvenue sur le repo d'**[Audrey Carpentier](https://github.com/AudreyAAOO)**
##### Objectifs du brief : Concevoir une BDD. Stocker des données, les manipuler. Déployer des images Docker.
## Initialiser le projet :</h3>

+ Installer **Docker** 
+ Installer un **client SQL** (DBeaver, mySQL Workbench etc.)
+ Cloner le projet avec la commande 

```
git clone https://github.com/2023-cda-alt-devops-p4/streaming-ac.git
```
## Déployer le container : 

+ **Se placer dans le dossier Docker** et taper la commande suivante dans le terminal :

```
docker-compose up
```

## Se connecter à la base de données :
+ Ouvrir son client SQL afin d'établir une connexion, pour cela **renseigner le port 6033** ainsi que le **nom de la database à utiliser par défaut : streaming_database**, l'utilisateur **root** et le **root password indiqué** dans le fichier .yml

## Générer le contenu de la base de données : 
+ exécuter les requêtes du fichier "create_tables.sql". Pour mieux visualiser la BDD, vous pouvez observer les modèles de conception sur les PDF, ainsi que le dictionnaire des données.
+ exécuter les requêtes du fichier "values.sql"
+ exécuter les requêtes du fichier "requetes.sql" comprenant une procédure stockée
+ créer le trigger dans le fichier  "trigger.sql"

### TRIGGER

Afin de tester le trigger, vous pouvez modifier l'utilisateur n°1 comme ceci : 
```
UPDATE streaming_database.utilisateurs
SET 
	email_utilisateur = 'yves.avite2@gmail.com',
	date_modif = NOW()
WHERE id_utilisateur = 1;
```


### PROCEDURE STOCKEE

Afin de lancer la procédure stockée, vous pouvez lancer la requête en spécifiant un id realisateur comme ceci :

```
CALL film_by_realisateur(4); 
```