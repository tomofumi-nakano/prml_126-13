
PNGS = f1-16.png  f1-17.png  f1-18.png
XBBS = $(PNGS:%.png=%.xbb)

all: paper.pdf

.SUFFIXES: .xbb .png

.png.xbb:
	extractbb $<

paper.dvi: paper.tex $(XBBS)
	eplatex paper.tex

paper.pdf: paper.dvi
	dvipdfmx paper.dvi


