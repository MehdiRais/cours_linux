> RAÏS ALI Mehdi /
> VO PHUOC Romain 

L'objectif de ce projet était d'utiliser le protocole MQTT (grâce au broker mosquitto) afin d'envoyer et de recevoir des données tirées des capteurs du Sense-Hat.

> Installation des fichiers requis 

Une des nodes de notre projet utilise un script python qu'il est necessaire de télécharger pour faire fonctionner une des fonctionnalités de notre projet.
Pour cela, il suffit d'utiliser le script bash "installation.sh" qui s'occupe de télécharger et de placer à la racine (/~) de l'ordinateur le script image_process.py.
Ensuite, le script installe les librairies utilisées (pillow et requests).
Enfin, il supprime les fichiers intermédiaires.

> Description Sense-Hat et MQTT

Nous souscrivons tous les 2 au broker de la raspberry de Romain. J'envoie (et j'affiche sur mon dashboard) les données liées au mouvement (accélerations et vitesses angulaires) et je recois les données environnementales (température et humidité). Nous procédons de cette manière car notre node "Sense-Hat" ne pouvait pas envoyer les 2 types de données en même temps.

> Description LEDs

A partir du dashboard (voir figure 2), nous pouvons allumer ou éteindre n'importe laquelle des 64 LEDs grâce à des switchs. 
Nous pouvons aussi éteindre toutes les Leds à l'aide du bouton "LED REINITIALISATION"
La fonctionnalité la plus intéressante est l'affichage d'image sur l'ecran LEDs.
Pour cela, il suffit d'entrer l'URL d'une image pour qu'elle s'affiche sur la matrice de LEDs. Le script image_process.py diminue la résolution à 8x8 pixels puis l'affiche. On peut utiliser par exemple les liens suivants : 
- https://miro.medium.com/max/500/1*_GiJ07I23vpVoYEmSj9oOw.png
- https://previews.123rf.com/images/pogorelovaolga/pogorelovaolga1711/pogorelovaolga171100091/90666493-ic%C3%B4ne-de-coeur-de-pixel-dans-le-style-de-jeu-moderne-fond-noir-et-blanc.jpg
- https://art.pixilart.com/e32a65af67f1eb1.png
