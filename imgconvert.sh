#!/bin/bash
for each_file in $(find /home/sunrl/文档/ -name "*.bmp");
do
if [ -e $each_file ];then
	convert $each_file ${each_file}.png
	convert -resize 48x48 ${each_file}.png ${each_file}_resize
	rename 's/bmp_resize/png/;' ${each_file}_resize 
	rm $each_file
	rm ${each_file}.png 
fi
done
