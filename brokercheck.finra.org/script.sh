#!/bin/bash
FILES=files/*
for file in $FILES
do
  echo "Processing $file file..."
  pdftohtml -s -i -nodrm $file $file.html
  # take action on each file. $f store current file name
  #cat $f
done