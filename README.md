# Emission CO2: Traitement des données

Actuellement on constate une diminution des émissions de gaz à effet de serre due au ralentissement
de l'activité éconmoique mondiale. Des organismes suivent ces évolutions à des fins d'analyse.
Datahub est une organisation qui offre des collections de données dans bon nombre de domaines.
Ici, nous nous intéressons à l'évolution des émissions de CO2.

<p>Accès aux données brutes sur leur espace github : 
https://github.com/datasets/co2-fossil-by-nation/blob/master/data/fossil-fuel-co2-emissions-by-nation.csv
  </p>

> pour information, le site https://www.data.gouv.fr/fr/datasets/?format=csv offre une multitude de dataset csv

Bien entendu, le fichier est trop volumineux. On vous propose une version plus légère couvrant les deux dernières décennies et se limitant à certains pays. fichiers excel ci-dessous.

## Objectif

L'objectif est développer une application Java (utiliser IDE Processing) pour :

* récupérer les données brutes de l'émission Co2 liée aux énergies fossiles **csv**,
* les croiser pour une exploitation plus aisée
* les filtrer par pays,
* Tracer un graphique de l'évolution des émissions annuelles.

![résultat attendu](courbe_cumul.jpg)

## Ressources
1. [CSV Common Seperated Values](https://fr.wikipedia.org/wiki/Comma-separated_values#Basic_rules)
2. [Données et processing (TP)](https://pixees.fr/informatiquelycee/procAnDo_a1.html)
2. [Référence Processing](https://processing.org/reference/);
2. [Vidéo sur la classe Tabular de Processing](https://youtu.be/woaR-CJEwqc)
3. [Vidéo sur la classe Pvector de Processing](https://youtu.be/7nTLzLf7jUg)
4. [Page PVector](https://processing.org/reference/PVector.html)
5. [Vidéo - Installer une librairie Processing](https://youtu.be/MMbubxV6SzE)
8. Je ne vous recommande pas d'utiliser de librairies graphiques, cependant je vous indique quelques unes si vous décidez le contraire : [grafica](https://jagracar.com/sketches/defaultPlot.php), [gicentre](https://www.gicentre.net/utils/chart) ...

## Etape 1: création d'un tableau croisé au format csv

Vous avez besoin de créer un tableau croisé permettant d'avoir une ligne par pays.

Il faut pour cela utiliser la fonction "tableau dynamique" de Excel ou Calc (aidez-vous des ressources internet)

#### fichier de départ
<img src="donnees1.jpg" alt="drawing" width="600"/>

#### résultat à obtenir
<img src="donnees_croisess.jpg" alt="drawing" width="700"/>

## Etape 2 : Courbe de votre tableur 
Avant de commencer votre programmation, générer le graphique avec votre tableur préféré 

En principe vous devriez obtenir un graphique comme celui-ci :
<img src="courbe_tableur.jpg" alt="drawing" width="600"/>

##  Etape 3 :Lecture du fichier csv
Référez-vous au programme suivant et complétez-le 
* `emissionco2v1.pde`

##  Etape 4 :Filtrage des données pour un pays
Référez-vous au programme suivant et complétez-le 
* `emissionco2v2.pde`

##  Etape 5 :Production des courbes d'évolution CO2
**_<p>L'utilisation d'une librairie est peu recommandé</P>_**
On tracera les courbes de l'évolution de la consommation pour les US, la Chine et la France

Référez-vous au programme suivant et complétez-le 
* `emissionco2v3.pde`



