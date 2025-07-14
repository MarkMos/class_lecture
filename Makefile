AUX = $(shell find . -name '*.aux*')
DPTH = $(shell find . -name '*.dpth')
LOG = $(shell find . -name '*.log')
XML = $(shell find . -name '*.xml')
NAV = $(shell find . -name '*.nav')
SNM = $(shell find . -name '*.snm')
VRB = $(shell find . -name '*.vrb')

FRONT = ./frontmatter
MAIN = ./mainmatter
APP = ./appendix
FIGS = ./figures
TIKZ = ./tikz2pdf

all: CLASS_lvl1.pdf


CLASS_lvl1.pdf: CLASS_lvl1.tex 
	lualatex $<

clean:
	$(RM) $(AUX) $(DPTH) $(LOG) $(XML) $(NAV) $(SNM) $(VRB) *.bbl *.blg *.bcf *.out *.synctex.gz *.toc *.ilg *.idx *.ind *.lot *.lof CLASS_lvl1.pdf CLASS_lvl2.pdf

remake:
	$(RM) $(TIKZ)/* $(AUX) $(DPTH) $(LOG) $(XML)  $(NAV) $(SNM) $(VRB) *.bbl *.blg *.bcf *.out *.synctex.gz *.toc *.ilg *.idx *.ind *.md5 *.lot *.lof CLASS_lvl1.pdf