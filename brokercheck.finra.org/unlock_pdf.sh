#!/bin/bash

for file in `find /mnt/c/content/brokercheck.finra.org/files -type f -name "*.pdf"`
do
   qpdf --decrypt --replace-input $file
   echo $file
done
