
set title 'Lines Sum'
set xlabel 'x'
set ylabel 'y'

set grid
set key below center horizontal noreverse enhanced autotitle box dashtype solid
set tics out nomirror
set border 3 front linetype black linewidth 1.0 dashtype solid

set xrange [1:13]
set xtics 1, 1, 13
set mxtics 1

set yrange [-500:1600]

set style line 1 linecolor rgb '#00ff00' linewidth 2 linetype 3 pointtype 2
set style line 2 linecolor rgb '#ff0000' linewidth 1 linetype 3 pointtype 2
set style data linespoints

set terminal png enhanced
set output 'img/line-sum.png'

plot sum = 0, \
	'data/line-sum.dat' using 1:2 linestyle 1 title 'data', \
	'' using 1:(sum = sum + $2) linestyle 2 title 'sum'

# set terminal xterm
# replot
