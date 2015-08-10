
set title 'Points'
set xlabel 'x Label'
set ylabel 'y Label'

set grid
set tics out

set xrange [0.9:5.2]
set xtics 0, 1, 5

set yrange [0:10000]

set style line 1 linecolor rgb '#0060ad' linewidth 2 pointtype 1 ps 1
set style line 2 linecolor rgb '#ad6000' linewidth 2 pointtype 2 ps 1

set terminal png enhanced
set output 'img/points.png'
plot 'data/points.dat' using 1:2 with points linestyle 1 notitle, \
	'data/points.dat' using 1:3 with points linestyle 2 notitle

# set terminal xterm
# replot
