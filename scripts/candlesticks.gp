
# http://gnuplot.sourceforge.net/demo/candlesticks.html

set title 'Candlesticks'
set xlabel 'x'
set ylabel 'y'

set grid
set key below center horizontal noreverse enhanced autotitle box dashtype solid
set tics out nomirror
set border 3 front linetype black linewidth 1.0 dashtype solid

set xrange [0.5:5.5]
set xtics 1
set mxtics 1

set yrange [0:55]

set style line 1 linecolor rgb '#0060ad' linetype 1 linewidth 2
set boxwidth 0.1 absolute
# set style fill solid

set terminal png enhanced
set output 'img/candlesticks.png'
plot 'data/candlesticks.dat' using 1:3:2:5:4 with candlesticks linestyle 1 title 'data' whiskerbars

# set terminal xterm
# replot
