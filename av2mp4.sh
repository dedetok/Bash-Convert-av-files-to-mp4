#!/bin/bash

# August 27th, 2021

src="$1"
echo "Checking $src is directory."
if [[ ! -d "$src" ]];
then
  echo "$src is not directory."
  exit
fi


dst="$src-mp4"

#echo "$src"
#echo "$dst"

echo "Creating $dst"
mkdir "$dst"

# for each file di directory
for f in "$src"/*.av
do
  fname="$(basename -- $f)"
  #echo $f
  echo "ffmpeg -hide_banner -framerate 25 -i $f -c copy -y $dst/$fname.mp4"
  ffmpeg -hide_banner -framerate 25 -i $f -c copy -y $dst/$fname.mp4
done
