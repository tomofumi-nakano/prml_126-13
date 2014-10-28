
all: paper.pdf

.SUFFIXES: .xbb .png
.png.xbb:
	extractbb $<

paper.dvi: paper.tex
	eplatex paper.tex

paper.pdf: paper.dvi
	dvipdfmx paper.dvi


