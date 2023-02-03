set terminal png
set output 'temp.png'

set datafile separator ","
set title "Diagramme de carte interpolée et colorée"
set ylabel "Longitude (Ouest-Est)"
set xlabel "Latitude (Sud-Nord)"
set xrange [*:*]
set yrange [*:*]
set pm3d map 
set palette defined (0 "blue", 1 "green", 2 "red")
set dgrid3d 20,20
set autoscale fix

splot "Height.csv" using 2:3:4 with pm3d title "Carte interpolée et colorée"
