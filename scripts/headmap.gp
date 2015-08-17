
set title 'Headmap'
set xlabel 'x'
set ylabel 'y'

unset key
set tics out nomirror

set dgrid3d 30, 30
set pm3d map

set xrange [10:14]
set xtics 1
set mxtics 1

set yrange [20:24]
set ytics 1
set mytics 1

# set palette defined (0 0 0 0.5, 1 0 0 1, 2 0 0.5 1, 3 0 1 1, 4 0.5 1 0.5, 5 1 1 0, 6 1 0.5 0, 7 1 0 0, 8 0.5 0 0)
# set palette rgbformula -7, 2, -7

set cbrange [60:65]
set cbtics 1
# set cblabel 'cblabel'
# unset cbtics
# unset colorbox

set terminal png nocrop enhanced
set output 'img/headmap.png'
splot 'data/headmap.dat' using 1:2:3 notitle
