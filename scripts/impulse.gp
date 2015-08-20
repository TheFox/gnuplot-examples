
set title 'Impulse'
set xlabel 'x'
set ylabel 'y'

set grid
set key below center horizontal noreverse enhanced autotitle box dashtype solid
set tics out nomirror
set border 3 front linetype black linewidth 1.0 dashtype solid

set xrange [0:6]
set xtics 0, .5, 6
set mxtics 1

set style line 1 linecolor rgb '#0060ad' linetype 1 linewidth 2

set terminal png enhanced
set output 'img/impulse.png'
plot 'data/impulse.dat' using 1:2 with impulses linestyle 1 title 'data'

# set terminal xterm
# replot
