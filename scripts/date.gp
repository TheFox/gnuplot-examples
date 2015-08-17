
set title 'Date'
set xlabel 'x'
set ylabel 'y'

set grid
set key below center horizontal noreverse enhanced autotitle box dashtype solid
set tics out nomirror
set border 3 front linetype black linewidth 1.0 dashtype solid

set timefmt '%Y-%m-%d'
set xdata time
set format x "%b %d\n'%y"

set xrange ['1987-02-21':'1987-02-25']
set xtics '1987-02-21', 86400, '1987-02-25'
set mxtics 1

set style line 1 linecolor rgb '#0060ad' linetype 1 linewidth 1

set terminal png enhanced
set output 'img/date.png'
plot 'data/date.dat' using 1:2 with lines linestyle 1 title 'data'

# set terminal xterm
# replot
