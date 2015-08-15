
set title 'Headmap'
set xlabel 'x'
set ylabel 'y'

set key below
set tics out

set view map
set dgrid3d

# set xrange [0.9:5.2]
set xtics 1

# set yrange [1:5]
set ytics 1

# set palette defined (0 0 0 0.5, 1 0 0 1, 2 0 0.5 1, 3 0 1 1, 4 0.5 1 0.5, 5 1 1 0, 6 1 0.5 0, 7 1 0 0, 8 0.5 0 0)
# set palette rgbformula -7, 2, -7

set cbrange [60:65]
set cbtics 1
# set cblabel 'Score'
# unset cbtics

set terminal png nocrop enhanced
set output 'img/headmap.png'
splot 'data/headmap.dat' using 1:2:3 with pm3d notitle
