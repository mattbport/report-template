#!/bin/bash

echo 'Making the PDF...'

# You can change the name of the output here. Please use the 'surname firstname student ID module code' format.
_file="Potter_Harry_123456_5MU019"

# Dissertations and other long documents should replace the 'article' option with 'report' in the 'sourcefile.md' file.
pandoc --citeproc --pdf-engine=xelatex --standalone -N -o $_file.pdf sourcefile.md

echo 'All finished'