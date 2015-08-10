
set title 'Line'
set xlabel 'x Label'
set ylabel 'y Label (1/100)'

set grid
set tics out

set xrange [1:5]
set xtics 1, .5, 5

set style line 1 linecolor rgb '#0060ad' linetype 1 linewidth 1

set terminal png enhanced
set output 'img/line-100.png'
plot 'data/line.dat' using 1:($2/100) with lines linestyle 1 notitle

# set terminal xterm
# replot
