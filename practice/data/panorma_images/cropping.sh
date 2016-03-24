#!/usr/bin/env bash

identify --version

files=`ls`
mkdir crops

#for img in $files
#do
img="00_0001exx_e29aayy.jpg"
	cp $img subspace.jpg
	mogrify -crop 8192x1050+0+2014 subspace.jpg
	for i_vert in {0..7}
	do
		for i_hor in {0..37}
		do
			filename=crops/$img_section_$i_vert+$i_hor.jpg
			cp subspace.jpg $filename
			mogrify -crop 220x150+220*i_vert)+(150*i_hor) $filename
			#rm $img_section_$i_vert+$i_hor.jpg
		done
	done
#done
