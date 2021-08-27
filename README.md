J'ai modifié à peu près tout le code au niveau de la structure, voici les règles :

    I. STRUCTURE DE FICHIERS
    
Il y a 4 dossiers : models/, pages/, states/ et widgets/
Le but étant de répartir les fichiers .dart efficacement pour pouvoir se repérer rapidement.

models/ : chaque fichier .dart dedans ne sert qu'à la déclaration de class
          donc comme indiqué par le nom, ça sert à donner les modèles, pour l'instant il n'y a que le modèle pour les icons
          
pages/ : on va répertorier chaque page de l'appli ici, à terme ce sera sûrement : home.dart, ticket_office.dart, contact.dart
         tu remarqueras qu'il y a encore un fichier à l'intérieur appelé home/
         en gros, à chaque fois qu'on déclare une nouvelle page, on y associe un fichier pour pouvoir séparer les widgets
         spécifiques à la page (question de lisibilité encore une fois)
         
states/ : pour l'instant vide, ce sera pour la billeterie, je complèterai plus tard

widgets/ : permet de répertorier les widgets qui peuvent être utilisé à priori partout dans l'application (donc indépendamment
           de la page, sinon ce serait dans le fichier associé à la page dans pages/)

Il y a en plus un fichier constants.dart, à la racine de lib/, ce fichier déclare toutes les variables et classes qui pourront
être utilisé n'importe où dans l'application, pour l'instant il n'y a que la classe du ArrivalTheme (je te laisse deviner ce que c'est)
mais à terme il y aura aussi pas mal d'autres trucs comme des urls préremplis pour éviter de se casser le cul à tout réécrire par exemple.

    II. NOM DE FICHIER ET DE WIDGETS

Pour tout ce qui est des noms, je suis les règles "lint", c'est une série de règles appliqués par Google en interne pour bien
différencier chaque type d'objet. Tu peux regarder les règles en détail sur internet mais je vais te donner les grandes lignes :

Nom de fichier : tout en minuscule, espaces remplacés par des underscores
  Exemple : nouveau_fichier.dart
 
Nom de class : première lettre en majuscule, pas d'espaces
  Exemple : MonNouveauWidget()

Nom de variables et fonction (peu importe ce qu'elle renvoie) : tout en minuscule, puis début de mots en majuscules, pas d'espaces, si la fonction est privé, on rajoute un underscore au début
  Exemple : (public) : maNouvelleFonction(); (privé) : _maNouvelleFonction()

    III. CHANGEMENT VIS-A-VIS DE TON CODE ET AUTRES

Comme j'ai modifié la structure de ton code, j'ai dû inévitablement revoir à peu près tout
Je te laisse prendre ce que tu veux garder et jeter ce que tu veux jeter
J'ai essayé de te mettre le plus de variété de structures et de nouveaux widgets pour que tu puisses
voir un peu de nouvelles choses et étendre ta palette de connaissances.
Je n'ai pas vérifié si le soucis de vidéo a été réglé sur iOS, tu me diras si c'est le cas.
Le seul problème pour l'instant que j'ai détecté sur le site c'est un soucis de Clipping avec le scroll,
on peut voir une ligne d'un pixel à travers le background quand on scroll, entre les différents élements du home.