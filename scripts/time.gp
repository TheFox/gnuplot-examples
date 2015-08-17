
set title 'Time'
set xlabel 'x'
set ylabel 'y'

set grid
set key below center horizontal noreverse enhanced autotitle box dashtype solid
set tics out nomirror
set border 3 front linetype black linewidth 1.0 dashtype solid

set timefmt '%H'
set xdata time
set format x '%k'

set xrange ['00:00:00':'23:59:59']
set xtics '00:00:00', 10800, '23:59:59'
set mxtics 1

set style line 1 linecolor rgb '#0060ad' linetype 1 linewidth 1

set terminal png enhanced
set output 'img/time.png'
plot 'data/time.dat' using 1:2 with lines linestyle 1 title 'data'

# set terminal xterm
# replot
