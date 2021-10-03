#!/bin/bash

for file in `find /mnt/c/1A/unlock_pdf -type f -name "*.pdf"`
do
   qpdf --decrypt --replace-input $file
   echo $file
done
