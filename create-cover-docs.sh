#!/bin/bash

INFILE="data-sci-lib-cover.md"
OUTPDF="Oliver-et-al-Cover.pdf"
OUTDOCX="Oliver-et-al-Cover.docx"

pandoc $INFILE -f markdown -o $OUTDOCX --latex-engine=xelatex --reference-docx ~/Documents/Templates/pandoc-ref.docx
pandoc $INFILE -f markdown -o $OUTPDF --latex-engine=xelatex -V geometry:margin=0.75in -V urlcolor=blue
