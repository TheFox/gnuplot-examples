
set title 'Date Time'
set xlabel 'Days'
set ylabel 'Persons'

set grid
set tics out

set timefmt '%Y-%m-%d %H:%M'
set xdata time
set format x '%m-%d'

set xrange ['1987-02-21 00:00:00':'1987-02-25 23:59:59']
set xtics '1987-02-21 00:00:00', 86400, '1987-02-25 23:59:59'

set style line 1 linecolor rgb '#0060ad' linetype 1 linewidth 1

set terminal png enhanced
set output 'img/datetime.png'
plot 'data/datetime.dat' using 1:3 with lines linestyle 1 notitle

# set terminal xterm
# replot
