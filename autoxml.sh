#!/bin/bash
# Script to convert all .xml NMAP output files on current directory to .html
# Rodrigo S. Hendges - 11/12/2021
#
echo "Generating .html files..."
# List all .xml files and put on temporary file.
ls -all | grep xml | awk {'print$9'} > tmplst.txt
#
# Get file names and run xsltproc
for item in $(cat tmplst.txt); do
xsltproc $item > $item.html; done
#
# Remove temporary file.
rm tmplst.txt
echo "Done!"
