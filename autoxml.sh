#!/bin/bash
# Script to convert all .xml NMAP output files on current directory to .html
# Rodrigo S. Hendges - 11/12/2021
#
echo "Generating .html files..."
# List all .xml files and put variable.
TMPLST=$(ls -all | grep xml | awk {'print$9'})
#
# Get file names and run xsltproc
for item in $TMPLST; do
xsltproc $item > $item.html; done
#
echo "Done!"
