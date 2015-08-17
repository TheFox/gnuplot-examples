
set title 'Points'
set xlabel 'x'
set ylabel 'y'

set grid
set key below center horizontal noreverse enhanced autotitle box dashtype solid
set tics out nomirror
set border 3 front linetype black linewidth 1.0 dashtype solid

set xrange [0.9:5.2]
set xtics 0, 1, 5
set mxtics 1

set yrange [0:10000]

set style line 1 linecolor rgb '#0060ad' linewidth 2 pointtype 1 ps 1
set style line 2 linecolor rgb '#ff0000' linewidth 2 pointtype 2 ps 1

set terminal png enhanced
set output 'img/points.png'
plot 'data/points.dat' using 1:2 with points linestyle 1 title 'points A', \
	'' using 1:3 with points linestyle 2 title 'points B'

# set terminal xterm
# replot
