del *.aux
del *.toc
del *.blg
del *.dvi
del *.pdf
del *.bbl
del *.loa
del *.out
del glowny.pdf
latex --src-specials glowny
bibtex glowny
latex --src-specials glowny
latex --src-specials glowny
makeindex glowny.glo -s glowny.ist -o glowny.gls
makeindex glowny
pdflatex --src-specials glowny
del glowny.dvi
del glowny.ps
del *.toc
del *.out
del *.lol
del *.lot
del *.log
del *.loa
del *.lof
del *.aux
del *.bbl
del *.blg