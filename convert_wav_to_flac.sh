#!/bin/bash
new_dir="${PWD##*/}_flac"
mkdir "$new_dir"
for i in *.wav; do ffmpeg -hide_banner -i "$i" -c:a flac "$new_dir"/"${i%.*}.flac"; done
