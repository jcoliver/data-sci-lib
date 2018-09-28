#!/bin/bash

INFILE="data-sci-lib-ms.md"
OUTPDF="Oliver-et-al-MS.pdf"
OUTDOCX="Oliver-et-al-MS.docx"

pandoc $INFILE -f markdown -o $OUTDOCX --latex-engine=xelatex --reference-docx ~/Documents/Templates/pandoc-ref.docx
pandoc $INFILE -f markdown -o $OUTPDF --latex-engine=xelatex -V geometry:margin=0.75in -V urlcolor=blue