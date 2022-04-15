#!/bin/bash
new_dir="${PWD##*/}_m4a"
mkdir "$new_dir"
for i in *.wav; do ffmpeg -hide_banner -i "$i" -vn -ar 44100 -c:a aac -b:a 320k "$new_dir"/"${i%.*}.m4a"; done
