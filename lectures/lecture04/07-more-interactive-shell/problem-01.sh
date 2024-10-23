#!/bin/bash

lecture_dir="$HOME/Desktop/repo dest/tfcb_2024/lectures/lecture04"
lecture_contents=$(ls "$lecture_dir")

echo "My username is $USER" > question01.txt
echo "My home directory is $HOME" >> question01.txt
echo "The contents of the tfcb_2024/lectures/lecture04/ directory are" >> question01.txt
echo "$lecture_contents" >> question01.txt

mkdir -p homework02

mv question01.txt homewor2

