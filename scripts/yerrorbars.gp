
set title 'YErrorBars'
set xlabel 'x'
set ylabel 'y'

unset grid
set key below center horizontal noreverse enhanced autotitle box dashtype solid
set tics out nomirror
set border 3 front linetype black linewidth 1.0 dashtype solid

set xrange [0:5]
set xtics 1
set mxtics 1

set yrange [0:35]

set style line 1 linecolor rgb '#0060ad' linetype 1 linewidth 2

set terminal png enhanced
set output 'img/yerrorbars.png'
plot 'data/yerrorbars.dat' with yerrorbars linestyle 1 title 'data'

# set terminal xterm
# replot
