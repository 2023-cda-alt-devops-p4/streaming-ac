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
+ Ouvrir son client SQL afin d'établir une connexion, pour cela **renseigner le port 6033**
et le **root password indiqué** dans le fichier .yml


## Générer le contenu de la base de données : 
+ exécuter les requêtes du fichier "Create_tables.sql"
+ exécuter les requêtes du fichier "values.sql"
+ exécuter les requêtes du fichier "Requetes.sql"


