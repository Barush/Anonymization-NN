#!/usr/bin/env bash

identify --version

files=`ls`
mkdir crops

for img in $files
do
	img_cut=`echo ${img%.*}`
	cp $img subspace.jpg
	mogrify -crop 8192x1050+0+2014 subspace.jpg
	for i_vert in {0..36}
	do
		for i_hor in {0..6}
		do
			filename=crops/$img_cut+section$i_vert-$i_hor.jpg
			cp subspace.jpg $filename
			mogrify -crop 220x150+$((220*i_vert))+$((150*i_hor)) $filename
			#rm $img_section_$i_vert+$i_hor.jpg
		done
	done
done
