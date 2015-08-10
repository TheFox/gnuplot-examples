
MKDIR = mkdir -p

.PHONY: all install

all: install generate

install: img

generate: img/line.png img/line-width3.png img/line-100.png img/line-avg.png img/line-sum.png img/lines.png img/points.png img/time.png img/date.png img/datetime.png

img:
	$(MKDIR) $@

img/line-width3.png: scripts/line-width3.gp data/line.dat
	gnuplot $<

img/line-100.png: scripts/line-100.gp data/line.dat
	gnuplot $<

img/%.png: scripts/%.gp data/%.dat
	gnuplot $<
