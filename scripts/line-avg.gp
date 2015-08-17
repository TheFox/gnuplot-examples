
# http://gnuplot.sourceforge.net/demo_4.6/running_avg.html

set title 'Lines Avg'
set xlabel 'x'
set ylabel 'y'

set grid
set key below center horizontal noreverse enhanced autotitle box dashtype solid
set tics out nomirror
set border 3 front linetype black linewidth 1.0 dashtype solid

set xrange [1:13]
set xtics 1, 1, 13
set mxtics 1

set yrange [0:1100]

set style line 1 linecolor rgb '#00ff00' linewidth 2 linetype 3 pointtype 2
set style line 2 linecolor rgb '#0000ff' linewidth 1 linetype 3 pointtype 8 ps 1.0
set style line 3 linecolor rgb '#ff0000' linewidth 1 linetype 3 pointtype 1
set style data linespoints

samples(x) = $0 > 4 ? 5 : ($0+1)
avg5(x) = (shift5(x), (back1 + back2 + back3 + back4 + back5) / samples($0))
shift5(x) = (back5 = back4, back4 = back3, back3 = back2, back2 = back1, back1 = x)

init(x) = (back1 = back2 = back3 = back4 = back5 = sum = 0)

set terminal png enhanced
set output 'img/line-avg.png'

plot sum = init(0), \
	'data/line-avg.dat' using 1:2 linestyle 1 title 'data', \
	'' using 1:(sum = sum + $2, sum/($0+1)) linestyle 3 title 'total avg', \
	'' using 1:(avg5($2)) linestyle 2 title '5 points avg'

# set terminal xterm
# replot
