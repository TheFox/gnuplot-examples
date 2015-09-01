
MKDIR = mkdir -p
GNUPLOT = gnuplot
FFMPEG = ffmpeg -y

.PHONY: all install

all: install generate

install: img

generate: img/line.png img/line-width3.png img/line-100.png img/line-avg.png img/line-sum.png img/lines.png img/points.png img/time.png img/date.png img/datetime.png img/headmap.png img/gantt.png img/yerrorbars.png img/candlesticks.png img/timeline_r.png img/impulse.png img/histogram-clustered.png img/histogram-rowstacked.png

img:
	$(MKDIR) $@

img/line-width3.png: scripts/line-width3.gp data/line.dat
	$(GNUPLOT) $<

img/line-100.png: scripts/line-100.gp data/line.dat
	$(GNUPLOT) $<

img/timeline.png: scripts/timeline.gp data/timeline.dat
	$(GNUPLOT) $<

img/timeline_r.png: img/timeline.png
	$(FFMPEG) -i $< -vf 'rotate=90*PI/180:ow=ih:oh=iw:c=none' $@

img/%.png: scripts/%.gp data/%.dat
	$(GNUPLOT) $<
