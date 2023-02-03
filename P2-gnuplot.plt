#!/usr/local/bin/gnuplot -persist
# set terminal pngcairo  transparent enhanced font "arial,10" fontscale 1.0 size 600, 400 
# set output 'simple.1.png'

 
 
 set title "Diagramme des températures en mode 2"
set xlabel "Date et Heure"
set ylabel "Moyenne des Mesures"
set key outside

plot 'P2.csv' using 1:2 with errorbars title "Minimum et maximum", #à terminer
