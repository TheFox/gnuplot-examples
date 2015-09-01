
# http://gnuplot.sourceforge.net/demo_5.0/histograms.html

set title 'Histogram Clustered'
set xlabel 'x'
set ylabel 'y'

set grid
set key below center horizontal noreverse enhanced autotitle box dashtype solid
set tics out nomirror
set border 3 front linetype black linewidth 1.0 dashtype solid

set xrange [-1:3]
set xtics 1
#set mxtics 1

set yrange [0:80]
# set ytics 5

set style line 1 linecolor rgb '#0060ad' linetype 1 linewidth 2

set style histogram clustered gap 1 title offset character 0, 0, 0
set style data histograms

set boxwidth 1.0 absolute
set style fill solid 5.0 border -1

set terminal png enhanced
set output 'img/histogram-clustered.png'

plot 'data/histogram-clustered.dat' using 2:xtic(1) title 'col2', \
	'' using 3 title 'col3', \
	'' using 4 title 'col4', \
	'' using 5 title 'col5'
