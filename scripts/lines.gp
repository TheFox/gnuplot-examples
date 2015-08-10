
set title 'Lines'
set xlabel 'x Label'
set ylabel 'y Label'

set grid
set key below
set tics out

set xrange [0.9:5.7]
set xtics 1, .5, 6

set style line 1 linecolor rgb '#0060ad' linetype 1 linewidth 2
set style line 2 linecolor rgb '#ff0000' linetype 1 linewidth 2
set style line 3 linecolor rgb '#00ff00' linetype 1 linewidth 2

set terminal png enhanced
set output 'img/lines.png'
plot 'data/lines.dat' using 1:2 with lines linestyle 1 title 'line1', \
	'data/lines.dat' using 1:3 with lines linestyle 2 title 'line2', \
	'data/lines.dat' using 1:($2+$3) with lines linestyle 3 title 'sum'

# set terminal xterm
# replot
