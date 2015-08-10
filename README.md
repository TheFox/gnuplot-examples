# GNUPlot Examples

Collection of [GNUPlot](http://www.gnuplot.info/) examples.

## Default Line

See [`scripts/line.gp`](scripts/line.gp).

Using column 1 and 2 from `data/line.dat`.

	plot 'data/line.dat' using 1:2

![](img/line.png)

## Line Width 3

See [`scripts/line-width3.gp`](scripts/line-width3.gp).

![](img/line-width3.png)

## Line (1/100)

See [`scripts/line-100.gp`](scripts/line-100.gp).

Using the same as *Default Line* but scaling y with 1/100 of the original value.

	plot 'data/line.dat' using 1:($2/100)

![](img/line-100.png)

## Line Average

![](img/line-avg.png)

## Lines

See [`scripts/lines.gp`](scripts/lines.gp).

![](img/lines.png)

## Points

See [`scripts/points.gp`](scripts/points.gp).

![](img/points.png)

## Date

See [`scripts/date.gp`](scripts/date.gp).

![](img/date.png)

## Time

See [`scripts/time.gp`](scripts/time.gp).

![](img/time.png)

## DateTime

See [`scripts/datetime.gp`](scripts/datetime.gp).

![](img/datetime.png)
