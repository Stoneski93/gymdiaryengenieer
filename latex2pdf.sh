#!/bin/sh
rm *.aux
rm *.toc
rm *.blg
rm *.dvi
rm *.pdf
rm *.bbl
rm *.loa
rm *.out
rm glowny.pdf
latex --src-specials glowny
bibtex glowny
latex --src-specials glowny
latex --src-specials glowny
makeindex glowny.glo -s glowny.ist -o glowny.gls
makeindex glowny
pdflatex --src-specials glowny
#dvips glowny.dvi
#ps2pdf glowny.ps
rm glowny.dvi
rm glowny.ps
rm *.toc
rm *.out
rm *.lol
rm *.lot
rm *.log
rm *.loa
rm *.lof
rm *.aux
rm *.bbl
rm *.blg