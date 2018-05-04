#!/bin/bash

INFILE="data-sci-lib-ms.md"
OUTPDF="DataSciLib.pdf"
OUTDOCX="DataSciLib.docx"

pandoc $INFILE -f markdown -o $OUTDOCX --latex-engine=xelatex --reference-docx ~/Documents/Templates/pandoc-ref.docx
pandoc $INFILE -f markdown -o $OUTPDF --latex-engine=xelatex -V geometry:margin=0.75in -V urlcolor=blue