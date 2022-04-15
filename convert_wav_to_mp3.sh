#!/bin/bash
new_dir="${PWD##*/}_mp3"
mkdir "$new_dir"
for i in *.wav; do ffmpeg -hide_banner -i "$i" -vn -ar 44100 -b:a 320k "$new_dir"/"${i%.*}.mp3"; done
