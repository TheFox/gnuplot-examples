
# http://gnuplot.sourceforge.net/demo_5.0/gantt.html

set title 'Gantt'
set xlabel 'x'
set ylabel 'y'

unset grid
set key below center horizontal noreverse enhanced autotitle box dashtype solid
set tics out nomirror
set border 3 front linetype black linewidth 1.0 dashtype solid

set xdata time
set format x "%b\n'%y" timedate

set xtics border in scale 2, 0.5 nomirror norotate autojustify
set mxtics 1

set yrange [-1.0:*] noreverse nowriteback
set ytics border in scale 1, 0.5 nomirror norotate autojustify norangelimit
set mytics 1

set style arrow 1 head back filled linecolor rgb '#56b4e9' linewidth 1.5 dashtype solid size screen 0.02, 15.0, 90.0 fixed
set style data lines

t(n) = timecolumn(n, '%Y-%m-%d')

set terminal png nocrop enhanced
set output 'img/gantt.png'
plot 'data/gantt.dat' using (t(2)):($0):(t(3) - t(2)):(0.0):yticlabel(1) with vector as 1 title 'vec', \
	'' using (t(2)):($0):1 with labels right offset -2 notitle
