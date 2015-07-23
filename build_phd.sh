#!/usr/bin/env bash

# rm -rf $(biber --cache)
rm *.aux
rm *.bcf
rm *.bbl
rm *.blg
rm *.ist
rm *.alg
rm *.acr
rm *.acn
rm *.glsdefs
rm *.out
rm *.lot
rm *.log
rm *.lof
rm *.toc
rm *.run.xml
rm *.synctex.gz
pdflatex -interaction=nonstopmode -file-line-error-style -synctex=1 phd.tex

bibtex phd
pdflatex -interaction=nonstopmode -file-line-error-style -synctex=1 phd
pdflatex -interaction=nonstopmode -file-line-error-style -synctex=1 phd
# makeindex -s phd.idx -t phd.glsdef -o phd.acr phd.acn
makeglossaries phd
pdflatex -interaction=nonstopmodxe -file-line-error-style -synctex=1 phd
