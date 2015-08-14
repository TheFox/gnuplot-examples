# GNUPlot Examples

Collection of [GNUPlot](http://www.gnuplot.info/) examples.

## Default Line

- GNUPlot script: [`scripts/line.gp`](scripts/line.gp)
- Data file: [`data/line.dat`](data/line.dat)

Using column 1 and 2 from `data/line.dat`.

	plot 'data/line.dat' using 1:2

![](img/line.png)

## Line Width 3

- GNUPlot script: [`scripts/line-width3.gp`](scripts/line-width3.gp)
- Data file: [`data/line-width3.dat`](data/line.dat)

![](img/line-width3.png)

## Line (1/100)

- GNUPlot script: [`scripts/line-100.gp`](scripts/line-100.gp)
- Data file: [`data/line-100.dat`](data/line.dat)

Using the same as *Default Line* but scaling y with 1/100 of the original value.

	plot 'data/line.dat' using 1:($2/100)

![](img/line-100.png)

## Line Average

- GNUPlot script: [`scripts/line-avg.gp`](scripts/line-avg.gp)
- Data file: [`data/line-avg.dat`](data/line-avg.dat)

![](img/line-avg.png)

## Line Sum

- GNUPlot script: [`scripts/line-sum.gp`](scripts/line-sum.gp)
- Data file: [`data/line-sum.dat`](data/line-sum.dat)

![](img/line-sum.png)

## Lines

- GNUPlot script: [`scripts/lines.gp`](scripts/lines.gp)
- Data file: [`data/lines.dat`](data/lines.dat)

![](img/lines.png)

## Points

- GNUPlot script: [`scripts/points.gp`](scripts/points.gp)
- Data file: [`data/points.dat`](data/points.dat)

![](img/points.png)

## Date

- GNUPlot script: [`scripts/date.gp`](scripts/date.gp)
- Data file: [`data/date.dat`](data/date.dat)

![](img/date.png)

## Time

- GNUPlot script: [`scripts/time.gp`](scripts/time.gp)
- Data file: [`data/time.dat`](data/time.dat)

![](img/time.png)

## DateTime

- GNUPlot script: [`scripts/datetime.gp`](scripts/datetime.gp)
- Data file: [`data/datetime.dat`](data/datetime.dat)

![](img/datetime.png)

## Headmap

- GNUPlot script: [`scripts/headmap.gp`](scripts/headmap.gp)
- Data file: [`data/headmap.dat`](data/headmap.dat)

![](img/headmap.png)
