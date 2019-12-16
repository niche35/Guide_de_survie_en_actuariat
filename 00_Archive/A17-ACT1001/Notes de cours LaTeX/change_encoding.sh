# Chemin d'accès vers le répertoire
# cd BLABLABLA

# Loop pour avoir l'info de tous les fichiers .tex
for FICHIER in *.tex
do
  file -I $FICHIER
done

# Loop pour modifier l'encoding des fichiers
for FICHIER in *.tex
do
  iconv -f ISO-8859-1 -t UTF-8//TRANSLIT "$FICHIER" -o "$FICHIER"
  #iconv -f ISO-8859-1 -t UTF-8 $FICHIER  $FICHIER
done


for FICHIER in *.tex
do

  iconv -f ISO-8859-1 -t UTF-8 $FICHIER > $FICHIER
done




## Conversion des différents fichiers .tex (merci à David B.!)
# iconv -f ISO-8859-1 -t UTF-8//TRANSLIT nom_fichier_a_convertir -o name_after_conversion
