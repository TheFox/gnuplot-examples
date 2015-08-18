
set ylabel 'Timeline'

set grid
unset key
set tics out nomirror
set border 0 front linetype black linewidth 1.0 dashtype solid
set lmargin 5
set rmargin 5
set bmargin 4

begin_range='2001-01-01'
end_range='2001-05-05'

set timefmt '%Y-%m-%d'

set xrange [0:7]
set xtics rotate by 90 offset 0, -2 out nomirror

set ydata time
set yrange [begin_range:end_range]
unset ytics

set y2data time
set format y2 "%b"
set y2range [begin_range:end_range]
set y2tics begin_range, 2592000, end_range rotate by 90 offset 0.5, -0.6 nomirror
set my2tics 1

set style line 1 linecolor rgb '#0060ad' linetype 1 linewidth 1
set boxwidth 0.1 absolute
set style fill solid

set terminal png enhanced size 500, 800
set output 'img/timeline.png'
plot 'data/timeline.dat' using 1:3:3:4:4:xticlabels(2) with candlesticks linestyle 1 title 'data'

# set terminal xterm
# replot
