#!/bin/bash

echo 'Making the PDF...'

# You can change the name of the output here. Please use the 'surname firstname student ID module code' format.
_file="Potter_Harry_123456_M123456"

# Dissertations and other long documents should replace the 'article' option with 'report'.
pandoc \
--filter pandoc-crossref \
--citeproc \
--pdf-engine=xelatex \
--standalone \
-N \
-V toc:true \
-V tocdepth:2 \
-V colorlinks:true \
-V papersize:A4 \
-V classoption:onecolumn \
-V documentclass:report \
-V mainfont:'Times New Roman' \
-V fontsize:11pt \
-o $_file.pdf sourcefile.md

# To use when space is at a premium
# -V classoption:twocolumn \
# -V geometry:margin=15mm \
# -V geometry:margin=2cm \
# -V geometry:noheadfoot \


echo 'Making the epub...'
pandoc --citeproc --webtex -N -o $_file.epub sourcefile.md

echo 'Making the HTML...'
pandoc --citeproc --standalone --webtex -N -o $_file.html sourcefile.md

echo 'All finished'