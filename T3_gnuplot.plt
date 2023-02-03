#!/usr/local/bin/gnuplot -persist
set datafile separator ";"
set xlabel 'temp'
set xrange[ -50 : 50 ] noreverse writeback
set ylabel 'Id station' 
set yrange[ 0 : 10000 ] noreverse writeback
set title 'temp K'
set terminal png
set grid;
set autoscale fix;

set output 'temp.png'
plot 'T1.dat' using 1:($2+$3):($2-$3)       with filledcurve fc rgb Shadecolor title "Shaded error region",     '' using 1:2 smooth mcspline lw 2   title "Monotonic spline through data"
