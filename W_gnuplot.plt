#!/usr/local/bin/gnuplot -persist
# set terminal pngcairo  transparent enhanced font "arial,10" fontscale 1.0 size 600, 400 
# set output 'vector.3.png'
set key bmargin center horizontal Left reverse enhanced autotitle nobox
set isosamples 31, 31
set trange [ -5.00000 : 5.00000 ] noreverse nowriteback
set urange [ -5.00000 : 5.00000 ] noreverse nowriteback
set vrange [ -5.00000 : 5.00000 ] noreverse nowriteback
set xrange [ -10.0000 : 10.0000 ] noreverse writeback
set x2range [ -10.0000 : 10.0000 ] noreverse writeback
set yrange [ -10.0000 : 10.0000 ] noreverse writeback
set y2range [ -10.0000 : 10.0000 ] noreverse writeback
set zrange [ -10.0000 : 10.0000 ] noreverse writeback
set cbrange [ -10.0000 : 10.0000 ] noreverse writeback
set rrange [ 0.00000 : 10.0000 ] noreverse writeback
set colorbox vertical origin screen 0.9, 0.2 size screen 0.05, 0.6 front  noinvert bdefault
r(x,y)=sqrt(x*x+y*y)
v1(x,y)=  q1/(r((x-x0),y))
v2(x,y)=  q2/(r((x+x0),y))
vtot(x,y)=v1(x,y)+v2(x,y)
e1x(x,y)= q1*(x-x0)/r(x-x0,y)**3
e1y(x,y)= q1*(y)/r(x-x0,y)**3
e2x(x,y)= q2*(x+x0)/r(x+x0,y)**3
e2y(x,y)= q2*(y)/r(x+x0,y)**3
etotx(x,y)=e1x(x,y)+e2x(x,y)
etoty(x,y)=e1y(x,y)+e2y(x,y)
enorm(x,y)=sqrt(etotx(x,y)*etotx(x,y)+etoty(x,y)*etoty(x,y))
dx1(x,y)=coef*etotx(x,y)/enorm(x,y)
dy1(x,y)=coef*etoty(x,y)/enorm(x,y)
dx2(x,y)=coef*etotx(x,y)
dy2(x,y)=coef*etoty(x,y)
NO_ANIMATION = 1
q1 = 1
x0 = 1.0
q2 = -1
coef = 0.7
xmin = -10.0
xmax = 10.0
ymin = -10.0
ymax = 10.0
## Last datafile plotted: "$equipo2"
plot 'Wind.csv' u 1:2:(coef*dx1($1,$2)):(coef*dy1($1,$2)) w vec,     *



Tri_abr(){
echo "t"
#./fichier.c -f Tab.csv --abr
}
Tri_avl(){
}
Tri_tab(){

}

