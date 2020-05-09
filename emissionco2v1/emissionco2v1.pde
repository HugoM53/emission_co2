/* Exploitation des données d'émission de CO2 dans le monde 
 Aide :
 ----
   https://processing.org/tutorials/data/
   https://youtu.be/woaR-CJEwqc
   https://processing.org/examples/loadsavetable.html
   https://processing.org/reference/PVector.html
   voir les autres ressources mentionnées sur la page-consigne
 Conseils
 -------
 Utiliser le tableau dynamique fourni par le professeur
 Les libraries graphiques comme grafica et gicentre ne sont pas recommandées
 Dans l'entête de ce fichier, noter (sous forme de commentaire comme ce texte) toutes vos modificationspour suivre l'évolution de votre travail
 Vous êtes amenés à utiliser la classe Tabular de Processing.
 Sauvegardez votre travail régulièrement et créer des versions
 Notions utiles : arraylist, pvector, map, tabular(csv), 
 
 Démarche
 ---------
 - mettre le fichier csv dans le sous-répertoire /data
 - Réflechir à idée votre interface graphique
 - charger le fichier csv
 - ranger le contenu exploitable dans des strucures de données efficaces (ArrayLists, Vecteurs par exemple)
 - vérifier que vous avez accès à tout le contenu, en utilsant la fonction print() de la console
 - travailler dans un premier temps sur l'affichage de la courbe d'un seul pays.
 - Afficher la courbe sans les axes
 - tracer les axes gradués (pour les totaux, utliser l'unité 1e6 (/million)
 - faire de même pour les autres pays (5 en tout)
 - comparer votre résultat avec celui attendu
 */

// A Table object
Table table;

// deux vecteurs contenant chacun le min et le max, des axes XY
PVector h_MinMax= new PVector(); // min and max for corrdX
PVector v_MinMax= new PVector(); // min and max for corrdY

// deux listes pour les coordonnées
ArrayList<String> listX= new ArrayList<String>();  // pour les années;
ArrayList<String> listY= new ArrayList<String>();  // pour les totaux

final int MARGE=50;
final int YVAL=17; // number of values displayed on scale Y
final int SCALEY=1000000;

color countryColors[] = {#ED7F10, #7E3300, #D473D4, #138D75, #660099, #048B9A, #800080};

//____________________________________________________________
void setup() {

  size(640, 360);

  // Load CSV file into a Table object
  // "header" option indicates the file has a header row
  table = loadTable("co2.csv", "header");

  // min/max of x, min/max of y for scales.
  //les valeurs des Y sont diférentes selon le pays. Contrairement aux abscisses (années) qui sont les memes pour tous 
  h_MinMax=findMinMax();   // !!!!!!!!!!!! // preferably, don't use Collections.max(list)) and Collections.min(list)) !!!!!!
  v_MinMax=findMinMax();  

  //affichage des axes maintenant qu'on a les min et les max
  drawAxis();

  // display main title
  textSize(25);
  textAlign(CENTER);
  text("EMISSION CO2 (1e6)", width/3-75, 30);

  // for each country, load and display data
  int countryNumber = table.getRowCount()-1;  // -1 :dans le tableau croisé, il y a une ligne de plus contenant les totaux
  for (int pays=0; pays<countryNumber; pays++) {
    // pour chaque pays, on va extraire les données et les traiter pour affichage
    loadData(pays);  

    color c=countryColors[pays];  //color country-specfic 
    display(c, pays);

    // make sure the lists just used are reset for the next country
    /*
    ______;  
    ______;
    */
  }
}

//____________________________________________________________
void draw() {
  // nothing
}
