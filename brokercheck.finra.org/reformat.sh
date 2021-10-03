#!/bin/bash



for file in `find /mnt/c/content/brokercheck.finra.org -type f -name "*.html"`
do
filename=$(basename -- "$file")
extension="${filename##*.}"
filename="${filename%.*}"

	echo "Firm: $filename"

	CONTENT="${filename}_files/content.htm"
	if [ -f "$CONTENT" ]; then
		echo "Exists $CONTENT"
		mv $CONTENT $file
	fi


done


#sed -i 's/width=\"313\" height=\"1\" alt=\"image\" src=\"[^ ]*\"/width=\"313\" height=\"1\" alt=\"image\" src=\"images\/separator_1px.png\"/' firm_9.html
#sed -i 's/width=\"719\" height=\"3\" alt=\"image\" src=\"[^ ]*\"/width=\"719\" height=\"3\" alt=\"image\" src=\"images\/separator_3px.png\"/' firm_9.html