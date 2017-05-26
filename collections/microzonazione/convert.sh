#!/bin/bash
dir="$1"
out="$2"
for i in $( ls $dir )
do 
filename="${i%.*}"
echo inkscape -z -e $out$i -w 1024 -h 1024 $dir$i
inkscape -z -e $out$filename.png -w 1024 -h 1024 $dir$i
done