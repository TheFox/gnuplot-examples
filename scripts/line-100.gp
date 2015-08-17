
set title 'Line'
set xlabel 'x'
set ylabel 'y (1/100)'

set grid
set key below center horizontal noreverse enhanced autotitle box dashtype solid
set tics out nomirror
set border 3 front linetype black linewidth 1.0 dashtype solid

set xrange [1:5]
set xtics 1, .5, 5
set mxtics 1

set style line 1 linecolor rgb '#0060ad' linetype 1 linewidth 1

set terminal png enhanced
set output 'img/line-100.png'
plot 'data/line.dat' using 1:($2/100) with lines linestyle 1 title 'data'

# set terminal xterm
# replot
